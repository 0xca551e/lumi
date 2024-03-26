import birdie
import gleeunit
import lumi
import lumi/colorspace/hsl
import lumi/colorspace/hsluv
import lumi/colorspace/hsv
import lumi/colorspace/lab
import lumi/colorspace/lchab
import lumi/colorspace/lchuv
import lumi/colorspace/luv
import lumi/colorspace/rgb
import lumi/colorspace/xyz
import pprint

pub fn main() {
  gleeunit.main()
}

pub fn hsl_to_rgb_1_test() {
  hsl.to_rgb(lumi.Hsl(h: 187.0, s: 87.0, l: 46.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsl to rgb #1")
}

pub fn hsl_to_rgb_2_test() {
  hsl.to_rgb(lumi.Hsl(h: 3.0, s: 48.0, l: 16.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsl to rgb #2")
}

pub fn hsl_to_rgb_3_test() {
  hsl.to_rgb(lumi.Hsl(h: 328.0, s: 95.0, l: 55.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsl to rgb #3")
}

pub fn hsluv_to_lchuv_1_test() {
  hsluv.to_lchuv(lumi.Hsluv(h: 101.4, s: 98.8, luv: 75.2))
  |> pprint.format()
  |> birdie.snap(title: "convert hsluv to lchuv #1")
}

pub fn hsluv_to_lchuv_2_test() {
  hsluv.to_lchuv(lumi.Hsluv(h: 277.6, s: 98.6, luv: 37.3))
  |> pprint.format()
  |> birdie.snap(title: "convert hsluv to lchuv #2")
}

pub fn hsluv_to_lchuv_3_test() {
  hsluv.to_lchuv(lumi.Hsluv(h: 165.6, s: 36.8, luv: 83.3))
  |> pprint.format()
  |> birdie.snap(title: "convert hsluv to lchuv #3")
}

pub fn hsv_to_rgb_1_test() {
  hsv.to_rgb(lumi.Hsv(h: 48.0, s: 76.0, v: 63.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsv to rgb #1")
}

pub fn hsv_to_rgb_2_test() {
  hsv.to_rgb(lumi.Hsv(h: 215.0, s: 80.0, v: 31.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsv to rgb #2")
}

pub fn hsv_to_rgb_3_test() {
  hsv.to_rgb(lumi.Hsv(h: 276.0, s: 47.0, v: 93.0))
  |> pprint.format()
  |> birdie.snap(title: "convert hsv to rgb #3")
}

pub fn lab_to_lchab_1_test() {
  lab.to_lchab(lumi.Lab(
    l: 54.65939262412688,
    a: 21.502095486806706,
    b: -37.07029728105942,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to lchab #1")
}

pub fn lab_to_lchab_2_test() {
  lab.to_lchab(lumi.Lab(
    l: 84.60648866404257,
    a: 22.68265164834493,
    b: -9.7129167873796,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to lchab #2")
}

pub fn lab_to_lchab_3_test() {
  lab.to_lchab(lumi.Lab(
    l: 49.50735729920183,
    a: 48.39310115204054,
    b: -63.449440760920986,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to lchab #3")
}

pub fn lab_to_xyz_1_test() {
  lab.to_xyz(lumi.Lab(
    l: 31.10150721997116,
    a: 30.50210504247733,
    b: 19.077788702906595,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to xyz #1")
}

pub fn lab_to_xyz_2_test() {
  lab.to_xyz(lumi.Lab(
    l: 78.59774641622037,
    a: -29.228029206534334,
    b: -29.947390230459913,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to xyz #2")
}

pub fn lab_to_xyz_3_test() {
  lab.to_xyz(lumi.Lab(
    l: 44.82356674240908,
    a: 70.26117591121967,
    b: 26.845373225674983,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lab to xyz #3")
}

pub fn lchab_to_lab_1_test() {
  lchab.to_lab(lumi.Lchab(
    l: 49.094787700553425,
    c: 75.34989188485902,
    h: 15.912811694525548,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lchab to lab #1")
}

pub fn lchab_to_lab_2_test() {
  lchab.to_lab(lumi.Lchab(
    l: 87.88995717111811,
    c: 105.5537810331177,
    h: 139.9598992662609,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lchab to lab #2")
}

pub fn lchab_to_lab_3_test() {
  lchab.to_lab(lumi.Lchab(
    l: 32.80830557048628,
    c: 20.521344431101785,
    h: 17.908542462850722,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert lchab to lab #3")
}

pub fn lchuv_to_hsluv_1_test() {
  lchuv.to_hsluv(lumi.Lchuv(l: 39.94, c: 23.04, h: 166.22))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to hsluv #1")
}

pub fn lchuv_to_hsluv_2_test() {
  lchuv.to_hsluv(lumi.Lchuv(l: 47.14, c: 143.89, h: 9.86))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to hsluv #2")
}

pub fn lchuv_to_hsluv_3_test() {
  lchuv.to_hsluv(lumi.Lchuv(l: 60.03, c: 83.26, h: 126.0))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to hsluv #3")
}

pub fn lchuv_to_luv_1_test() {
  lchuv.to_luv(lumi.Lchuv(l: 70.91, c: 26.85, h: 48.87))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to luv #1")
}

pub fn lchuv_to_luv_2_test() {
  lchuv.to_luv(lumi.Lchuv(l: 42.97, c: 112.42, h: 259.99))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to luv #2")
}

pub fn lchuv_to_luv_3_test() {
  lchuv.to_luv(lumi.Lchuv(l: 57.66, c: 24.71, h: 281.89))
  |> pprint.format()
  |> birdie.snap(title: "convert lchuv to luv #3")
}

pub fn luv_to_lchuv_1_test() {
  luv.to_lchuv(lumi.Luv(l: 81.78, u: -75.16, v: 93.9))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to lchuv #1")
}

pub fn luv_to_lchuv_2_test() {
  luv.to_lchuv(lumi.Luv(l: 73.13, u: -59.08, v: 29.31))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to lchuv #2")
}

pub fn luv_to_lchuv_3_test() {
  luv.to_lchuv(lumi.Luv(l: 66.84, u: -36.31, v: -28.38))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to lchuv #3")
}

pub fn luv_to_xyz_1_test() {
  luv.to_xyz(lumi.Luv(
    l: 72.60775907565741,
    u: 21.97612676234426,
    v: -18.747791025677067,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to xyz #1")
}

pub fn luv_to_xyz_2_test() {
  luv.to_xyz(lumi.Luv(
    l: 91.91540838845215,
    u: -27.4222238696201,
    v: 26.904336223148196,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to xyz #2")
}

pub fn luv_to_xyz_3_test() {
  luv.to_xyz(lumi.Luv(
    l: 38.9751980305473,
    u: -9.728417664381519,
    v: -109.96065192962112,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert luv to xyz #3")
}

pub fn rgb_to_hsl_1_test() {
  rgb.to_hsl(lumi.Rgb(r: 113.0, g: 205.0, b: 242.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsl #1")
}

pub fn rgb_to_hsl_2_test() {
  rgb.to_hsl(lumi.Rgb(r: 92.0, g: 216.0, b: 170.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsl #2")
}

pub fn rgb_to_hsl_3_test() {
  rgb.to_hsl(lumi.Rgb(r: 237.0, g: 79.0, b: 25.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsl #3")
}

pub fn rgb_to_hsv_1_test() {
  rgb.to_hsv(lumi.Rgb(r: 218.0, g: 59.0, b: 149.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsv #1")
}

pub fn rgb_to_hsv_2_test() {
  rgb.to_hsv(lumi.Rgb(r: 191.0, g: 167.0, b: 153.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsv #2")
}

pub fn rgb_to_hsv_3_test() {
  rgb.to_hsv(lumi.Rgb(r: 164.0, g: 178.0, b: 16.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to hsv #3")
}

pub fn rgb_to_xyz_1_test() {
  rgb.to_xyz(lumi.Rgb(r: 37.0, g: 66.0, b: 45.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to xyz #1")
}

pub fn rgb_to_xyz_2_test() {
  rgb.to_xyz(lumi.Rgb(r: 94.0, g: 28.0, b: 102.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to xyz #2")
}

pub fn rgb_to_xyz_3_test() {
  rgb.to_xyz(lumi.Rgb(r: 56.0, g: 64.0, b: 73.0))
  |> pprint.format()
  |> birdie.snap(title: "convert rgb to xyz #3")
}

pub fn xyz_to_lab_1_test() {
  xyz.to_lab(lumi.Xyz(
    x: 25.31975124893321,
    y: 18.612389237251392,
    z: 90.25374160725626,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to lab #1")
}

pub fn xyz_to_lab_2_test() {
  xyz.to_lab(lumi.Xyz(
    x: 62.16856109394083,
    y: 78.26931025091368,
    z: 73.45887483439186,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to lab #2")
}

pub fn xyz_to_lab_3_test() {
  xyz.to_lab(lumi.Xyz(
    x: 29.39049923288672,
    y: 16.27587166162315,
    z: 1.678653822334454,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to lab #3")
}

pub fn xyz_to_luv_1_test() {
  xyz.to_luv(lumi.Xyz(x: 7.12, y: 4.63, z: 25.33))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to luv #1")
}

pub fn xyz_to_luv_2_test() {
  xyz.to_luv(lumi.Xyz(x: 2.6, y: 2.55, z: 6.32))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to luv #2")
}

pub fn xyz_to_luv_3_test() {
  xyz.to_luv(lumi.Xyz(x: 18.58, y: 9.93, z: 64.56))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to luv #3")
}

pub fn xyz_to_rgb_1_test() {
  xyz.to_rgb(lumi.Xyz(
    x: 5.334134007002286,
    y: 5.499581927145364,
    z: 15.248384397640443,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to rgb #1")
}

pub fn xyz_to_rgb_2_test() {
  xyz.to_rgb(lumi.Xyz(
    x: 2.0860091296047436,
    y: 2.083369124382922,
    z: 3.424153159045694,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to rgb #2")
}

pub fn xyz_to_rgb_3_test() {
  xyz.to_rgb(lumi.Xyz(
    x: 11.027946159370556,
    y: 19.916796714872685,
    z: 9.057445371325112,
  ))
  |> pprint.format()
  |> birdie.snap(title: "convert xyz to rgb #3")
}
