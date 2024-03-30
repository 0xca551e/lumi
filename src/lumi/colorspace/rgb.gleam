import gleam/float
import gleam/int
import gleam/list
import gleam/result
import gleam/string
import lumi
import util

pub fn to_hex(rgb: lumi.Rgb, with_hash: Bool) {
  let prefix = case with_hash {
    True -> "#"
    False -> ""
  }
  let format = fn(x) {
    float.round(x)
    |> int.to_base16()
    |> string.pad_left(2, "0")
  }
  let r = format(rgb.r)
  let g = format(rgb.g)
  let b = format(rgb.b)
  prefix <> r <> g <> b
}

fn hsl_hsv_hclv(rgb: lumi.Rgb) {
  let r = rgb.r /. 255.0
  let g = rgb.g /. 255.0
  let b = rgb.b /. 255.0

  let min = list.fold([r, g, b], 1.1, float.min)
  let max = list.fold([r, g, b], -0.1, float.max)
  let c = max -. min

  let l = { min +. max } /. 2.0

  let h =
    case Nil {
      _ if max == r ->
        { { g -. b } /. c }
        |> util.fmod(6.0)
      _ if max == g -> { b -. r } /. c +. 2.0
      _ if max == b -> { r -. g } /. c +. 4.0
      _ -> 0.0
    }
    |> float.multiply(60.0)

  #(h, c, l, max)
}

pub fn to_hsl(rgb: lumi.Rgb) {
  let #(h, c, l, v) = hsl_hsv_hclv(rgb)

  let s = case c {
    _ if c <=. 0.0001 -> 0.0
    _ if c >=. 0.9999 -> 0.0
    _ -> c /. { 1.0 -. float.absolute_value(2.0 *. v -. c -. 1.0) }
  }

  lumi.Hsl(h: h, s: s *. 100.0, l: l *. 100.0)
}

pub fn to_hsv(rgb: lumi.Rgb) {
  let #(h, c, _, v) = hsl_hsv_hclv(rgb)

  let s = case v {
    0.0 -> 0.0
    _ -> c /. v
  }

  lumi.Hsv(h: util.wrap_to_range(h, 0.0, 360.0), s: s *. 100.0, v: v *. 100.0)
}

pub fn to_xyz(rgb: lumi.Rgb) {
  let c = fn(c) {
    case Nil {
      _ if c <=. 0.0404 -> c /. 12.92
      _ ->
        float.power({ c +. 0.055 } /. 1.055, 2.4)
        |> result.unwrap(0.0)
    }
  }

  let r = c(rgb.r /. 255.0)
  let g = c(rgb.g /. 255.0)
  let b = c(rgb.b /. 255.0)

  let x = r *. 0.4124 +. g *. 0.3576 +. b *. 0.1805
  let y = r *. 0.2126 +. g *. 0.7152 +. b *. 0.0722
  let z = r *. 0.0193 +. g *. 0.1192 +. b *. 0.9505

  lumi.Xyz(x: x *. 100.0, y: y *. 100.0, z: z *. 100.0)
}
