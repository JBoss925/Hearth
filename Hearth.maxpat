{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 10,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80,
      80,
      860,
      210
    ],
    "bgcolor": [
      0.08,
      0.075,
      0.07,
      1
    ],
    "openinpresentation": 1,
    "devicewidth": 860,
    "annotation": "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.",
    "gridonopen": 1,
    "gridsize": [
      15,
      15
    ],
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "panel",
          "patching_rect": [
            20,
            500,
            740,
            170
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            860,
            190
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "hearth_device_info",
          "annotation_name": "Hearth",
          "annotation": "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.",
          "hint": "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.",
          "bgcolor": [
            0.075,
            0.067,
            0.058,
            1
          ],
          "bordercolor": [
            0.18,
            0.15,
            0.12,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "panel",
          "patching_rect": [
            28,
            512,
            100,
            152
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            12,
            100,
            152
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "Hearth Overview",
          "annotation_name": "Hearth Overview",
          "annotation": "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.",
          "hint": "Hearth is a warmth-first adaptive saturation effect: input conditioning feeds shape controls, parallel Bloom and Flux lanes, a source-aware servo/tone stage, then final blend and level.",
          "rounded": 6,
          "bgcolor": [
            0.09,
            0.078,
            0.066,
            1
          ],
          "bordercolor": [
            1,
            0.64,
            0.31,
            0.42
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "panel",
          "patching_rect": [
            136,
            514,
            214,
            152
          ],
          "presentation": 1,
          "presentation_rect": [
            116,
            14,
            214,
            152
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "Shape",
          "annotation_name": "Shape",
          "annotation": "Shape controls set the gain, low-mid emphasis, main heat amount, and asymmetric tube-bias color before the parallel lanes.",
          "hint": "Shape controls set the gain, low-mid emphasis, main heat amount, and asymmetric tube-bias color before the parallel lanes.",
          "rounded": 6,
          "bgcolor": [
            0.22300000000000003,
            0.15868000000000002,
            0.09832000000000002,
            0.96
          ],
          "bordercolor": [
            0.88,
            0.82,
            0.72,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "panel",
          "patching_rect": [
            368,
            514,
            170,
            152
          ],
          "presentation": 1,
          "presentation_rect": [
            348,
            14,
            170,
            152
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "Lanes",
          "annotation_name": "Lanes",
          "annotation": "The Bloom, Flux, and Patina lanes add transient density, path-dependent memory, and subtle texture in parallel.",
          "hint": "The Bloom, Flux, and Patina lanes add transient density, path-dependent memory, and subtle texture in parallel.",
          "rounded": 6,
          "bgcolor": [
            0.1356,
            0.12136,
            0.17104,
            0.96
          ],
          "bordercolor": [
            0.88,
            0.82,
            0.72,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "panel",
          "patching_rect": [
            550,
            514,
            170,
            152
          ],
          "presentation": 1,
          "presentation_rect": [
            530,
            14,
            170,
            152
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "Servo / Tone",
          "annotation_name": "Servo / Tone",
          "annotation": "The servo and tone stage adapts to source brightness and roughness, then smooths, restores detail, and protects stereo width.",
          "hint": "The servo and tone stage adapts to source brightness and roughness, then smooths, restores detail, and protects stereo width.",
          "rounded": 6,
          "bgcolor": [
            0.1116,
            0.16216,
            0.13984,
            0.96
          ],
          "bordercolor": [
            0.88,
            0.82,
            0.72,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "panel",
          "patching_rect": [
            732,
            514,
            112,
            152
          ],
          "presentation": 1,
          "presentation_rect": [
            712,
            14,
            112,
            152
          ],
          "background": 1,
          "ignoreclick": 1,
          "varname": "Blend",
          "annotation_name": "Blend",
          "annotation": "Blend controls set wet/dry balance, output level, and automatic level compensation after processing.",
          "hint": "Blend controls set wet/dry balance, output level, and automatic level compensation after processing.",
          "rounded": 6,
          "bgcolor": [
            0.19330000000000003,
            0.18082000000000004,
            0.15348,
            0.96
          ],
          "bordercolor": [
            0.88,
            0.82,
            0.72,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "comment",
          "text": "HEARTH",
          "patching_rect": [
            40,
            714,
            80,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            24,
            80,
            22
          ],
          "fontsize": 18,
          "fontface": 1,
          "textjustification": 0,
          "textcolor": [
            1,
            0.64,
            0.31,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "comment",
          "text": "warmth-first",
          "patching_rect": [
            40,
            743,
            80,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            53,
            80,
            14
          ],
          "fontsize": 9,
          "fontface": 0,
          "textjustification": 0,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "comment",
          "text": "adaptive",
          "patching_rect": [
            40,
            758,
            80,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            68,
            80,
            14
          ],
          "fontsize": 9,
          "fontface": 0,
          "textjustification": 0,
          "textcolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "comment",
          "text": "saturator",
          "patching_rect": [
            40,
            773,
            80,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            83,
            80,
            14
          ],
          "fontsize": 9,
          "fontface": 0,
          "textjustification": 0,
          "textcolor": [
            1,
            0.42,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "comment",
          "text": "1  SHAPE",
          "patching_rect": [
            146,
            712,
            74,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            126,
            22,
            74,
            12
          ],
          "fontsize": 9,
          "fontface": 1,
          "textjustification": 0,
          "textcolor": [
            1,
            0.64,
            0.31,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "comment",
          "text": "input, emphasis, tube bias",
          "patching_rect": [
            224,
            712,
            112,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            204,
            22,
            112,
            12
          ],
          "fontsize": 8,
          "fontface": 0,
          "textjustification": 2,
          "textcolor": [
            0.61,
            0.55,
            0.47,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "comment",
          "text": "2  LANES",
          "patching_rect": [
            378,
            712,
            70,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            358,
            22,
            70,
            12
          ],
          "fontsize": 9,
          "fontface": 1,
          "textjustification": 0,
          "textcolor": [
            0.58,
            0.52,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "comment",
          "text": "density + memory",
          "patching_rect": [
            444,
            712,
            88,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            424,
            22,
            88,
            12
          ],
          "fontsize": 8,
          "fontface": 0,
          "textjustification": 2,
          "textcolor": [
            0.61,
            0.55,
            0.47,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "comment",
          "text": "3  SERVO / TONE",
          "patching_rect": [
            560,
            712,
            96,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            540,
            22,
            96,
            12
          ],
          "fontsize": 9,
          "fontface": 1,
          "textjustification": 0,
          "textcolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "comment",
          "text": "guard + polish",
          "patching_rect": [
            648,
            712,
            58,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            628,
            22,
            58,
            12
          ],
          "fontsize": 8,
          "fontface": 0,
          "textjustification": 2,
          "textcolor": [
            0.61,
            0.55,
            0.47,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "comment",
          "text": "4  BLEND",
          "patching_rect": [
            742,
            712,
            64,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            722,
            22,
            64,
            12
          ],
          "fontsize": 9,
          "fontface": 1,
          "textjustification": 0,
          "textcolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "comment",
          "text": "final stage",
          "patching_rect": [
            792,
            712,
            44,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            772,
            22,
            44,
            12
          ],
          "fontsize": 8,
          "fontface": 0,
          "textjustification": 2,
          "textcolor": [
            0.61,
            0.55,
            0.47,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "text": "plugin~",
          "numinlets": 0,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            34,
            92,
            74,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "text": "gen~ Hearth-Core.gendsp @cpumeasure 1",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            180,
            92,
            242,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "text": "plugout~ @chans 2",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            500,
            92,
            74,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "comment",
          "text": "Hearth - warm adaptive saturation for Max for Live 10+",
          "patching_rect": [
            32,
            22,
            420,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "text": "Save this patch as a Max Audio Effect (.amxd). Keep Hearth-Core.gendsp beside it.",
          "patching_rect": [
            32,
            46,
            530,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "newobj",
          "text": "loadmess presentation 1",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            32,
            72,
            140,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "text": "thispatcher",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            180,
            72,
            84,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "comment",
          "text": "Hearth",
          "patching_rect": [
            34,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            178,
            48,
            54,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            1,
            0.64,
            0.31,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            34,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            186,
            66,
            36,
            48
          ],
          "varname": "hearth_hearth",
          "parameter_enable": 1,
          "parameter_annotation_name": "Hearth",
          "parameter_info": "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color.",
          "parameter_longname": "Hearth",
          "parameter_shortname": "Hearth",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            35
          ],
          "annotation_name": "Hearth",
          "annotation": "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color.",
          "hint": "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            1,
            0.64,
            0.31,
            1
          ],
          "bordercolor": [
            1,
            0.64,
            0.31,
            0.55
          ],
          "focusbordercolor": [
            1,
            0.64,
            0.31,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Hearth",
              "parameter_shortname": "Hearth",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                35
              ],
              "parameter_info": "Main warmth and drive amount. Higher settings create denser saturation and stronger harmonic color."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            1,
            0.64,
            0.31,
            0.88
          ],
          "fgdialcolor": [
            1,
            0.64,
            0.31,
            0.2
          ],
          "activedialcolor": [
            1,
            0.64,
            0.31,
            1
          ],
          "activefgdialcolor": [
            1,
            0.64,
            0.31,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            1,
            0.64,
            0.31,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            88,
            175,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            34,
            216,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "message",
          "text": "hearth $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "text": "loadmess 35",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "comment",
          "text": "Body dB",
          "patching_rect": [
            152,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            232,
            48,
            52,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.95,
            0.76,
            0.45,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            152,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            240,
            66,
            36,
            48
          ],
          "varname": "hearth_body",
          "parameter_enable": 1,
          "parameter_annotation_name": "Body dB",
          "parameter_info": "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
          "parameter_longname": "Body dB",
          "parameter_shortname": "Body",
          "parameter_type": 0,
          "parameter_mmin": -6,
          "parameter_mmax": 6,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            1.5
          ],
          "annotation_name": "Body dB",
          "annotation": "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
          "hint": "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.95,
            0.76,
            0.45,
            1
          ],
          "bordercolor": [
            0.95,
            0.76,
            0.45,
            0.55
          ],
          "focusbordercolor": [
            0.95,
            0.76,
            0.45,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Body dB",
              "parameter_shortname": "Body",
              "parameter_type": 0,
              "parameter_mmin": -6,
              "parameter_mmax": 6,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1.5
              ],
              "parameter_info": "Low-mid body emphasis before the nonlinear stage. Positive values add weight; negative values thin the drive path.",
              "parameter_unitstyle": 4
            }
          },
          "parameter_unitstyle": 4,
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.95,
            0.76,
            0.45,
            0.88
          ],
          "fgdialcolor": [
            0.95,
            0.76,
            0.45,
            0.2
          ],
          "activedialcolor": [
            0.95,
            0.76,
            0.45,
            1
          ],
          "activefgdialcolor": [
            0.95,
            0.76,
            0.45,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.95,
            0.76,
            0.45,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            206,
            175,
            48,
            22
          ],
          "minimum": -6,
          "maximum": 6
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "message",
          "text": "body $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "newobj",
          "text": "loadmess 1.5",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "comment",
          "text": "Velvet",
          "patching_rect": [
            270,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            535,
            110,
            48,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.73,
            0.9,
            0.62,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            270,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            542,
            124,
            36,
            42
          ],
          "varname": "hearth_velvet",
          "parameter_enable": 1,
          "parameter_annotation_name": "Velvet",
          "parameter_info": "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy.",
          "parameter_longname": "Velvet",
          "parameter_shortname": "Velvet",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            28
          ],
          "annotation_name": "Velvet",
          "annotation": "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy.",
          "hint": "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "bordercolor": [
            0.73,
            0.9,
            0.62,
            0.55
          ],
          "focusbordercolor": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Velvet",
              "parameter_shortname": "Velvet",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                28
              ],
              "parameter_info": "Softens upper harmonics after saturation. Higher values make the tone smoother and less edgy."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.73,
            0.9,
            0.62,
            0.88
          ],
          "fgdialcolor": [
            0.73,
            0.9,
            0.62,
            0.2
          ],
          "activedialcolor": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "activefgdialcolor": [
            0.73,
            0.9,
            0.62,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.73,
            0.9,
            0.62,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            324,
            175,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            270,
            216,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "message",
          "text": "velvet $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-42",
          "maxclass": "newobj",
          "text": "loadmess 28",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-43",
          "maxclass": "comment",
          "text": "Bloom",
          "patching_rect": [
            388,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            356,
            48,
            50,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            1,
            0.42,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            388,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            363,
            66,
            36,
            48
          ],
          "varname": "hearth_bloom",
          "parameter_enable": 1,
          "parameter_annotation_name": "Bloom",
          "parameter_info": "Transient-local parallel density. Higher values make attacks feel fuller and more saturated.",
          "parameter_longname": "Bloom",
          "parameter_shortname": "Bloom",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            24
          ],
          "annotation_name": "Bloom",
          "annotation": "Transient-local parallel density. Higher values make attacks feel fuller and more saturated.",
          "hint": "Transient-local parallel density. Higher values make attacks feel fuller and more saturated.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            1,
            0.42,
            0.54,
            1
          ],
          "bordercolor": [
            1,
            0.42,
            0.54,
            0.55
          ],
          "focusbordercolor": [
            1,
            0.42,
            0.54,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Bloom",
              "parameter_shortname": "Bloom",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                24
              ],
              "parameter_info": "Transient-local parallel density. Higher values make attacks feel fuller and more saturated."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            1,
            0.42,
            0.54,
            0.88
          ],
          "fgdialcolor": [
            1,
            0.42,
            0.54,
            0.2
          ],
          "activedialcolor": [
            1,
            0.42,
            0.54,
            1
          ],
          "activefgdialcolor": [
            1,
            0.42,
            0.54,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            1,
            0.42,
            0.54,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            442,
            175,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            388,
            216,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "message",
          "text": "bloom $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "text": "loadmess 24",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "comment",
          "text": "Flux",
          "patching_rect": [
            506,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            410,
            48,
            44,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.58,
            0.52,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            506,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            417,
            66,
            36,
            48
          ],
          "varname": "hearth_flux",
          "parameter_enable": 1,
          "parameter_annotation_name": "Flux",
          "parameter_info": "Adds a path-dependent flux lane for tape-like movement and memory in the saturation.",
          "parameter_longname": "Flux",
          "parameter_shortname": "Flux",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            18
          ],
          "annotation_name": "Flux",
          "annotation": "Adds a path-dependent flux lane for tape-like movement and memory in the saturation.",
          "hint": "Adds a path-dependent flux lane for tape-like movement and memory in the saturation.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.58,
            0.52,
            1,
            1
          ],
          "bordercolor": [
            0.58,
            0.52,
            1,
            0.55
          ],
          "focusbordercolor": [
            0.58,
            0.52,
            1,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Flux",
              "parameter_shortname": "Flux",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                18
              ],
              "parameter_info": "Adds a path-dependent flux lane for tape-like movement and memory in the saturation."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.58,
            0.52,
            1,
            0.88
          ],
          "fgdialcolor": [
            0.58,
            0.52,
            1,
            0.2
          ],
          "activedialcolor": [
            0.58,
            0.52,
            1,
            1
          ],
          "activefgdialcolor": [
            0.58,
            0.52,
            1,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.58,
            0.52,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            560,
            175,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            506,
            216,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "message",
          "text": "flux $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "text": "loadmess 18",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "comment",
          "text": "Bias",
          "patching_rect": [
            624,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            286,
            48,
            42,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            1,
            0.54,
            0.69,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            624,
            160,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            294,
            66,
            36,
            48
          ],
          "varname": "hearth_bias",
          "parameter_enable": 1,
          "parameter_annotation_name": "Bias",
          "parameter_info": "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color.",
          "parameter_longname": "Bias",
          "parameter_shortname": "Bias",
          "parameter_type": 0,
          "parameter_mmin": -25,
          "parameter_mmax": 25,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            4
          ],
          "annotation_name": "Bias",
          "annotation": "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color.",
          "hint": "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            1,
            0.54,
            0.69,
            1
          ],
          "bordercolor": [
            1,
            0.54,
            0.69,
            0.55
          ],
          "focusbordercolor": [
            1,
            0.54,
            0.69,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Bias",
              "parameter_shortname": "Bias",
              "parameter_type": 0,
              "parameter_mmin": -25,
              "parameter_mmax": 25,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ],
              "parameter_info": "Asymmetry bias for the saturation curve. Use subtle amounts for richer even-harmonic color."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            1,
            0.54,
            0.69,
            0.88
          ],
          "fgdialcolor": [
            1,
            0.54,
            0.69,
            0.2
          ],
          "activedialcolor": [
            1,
            0.54,
            0.69,
            1
          ],
          "activefgdialcolor": [
            1,
            0.54,
            0.69,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            1,
            0.54,
            0.69,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            678,
            175,
            48,
            22
          ],
          "minimum": -25,
          "maximum": 25
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "text": "scale -25 25 -0.25 0.25",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            624,
            216,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "message",
          "text": "bias $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            624,
            242,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "text": "loadmess 4",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            624,
            268,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-61",
          "maxclass": "comment",
          "text": "Adapt",
          "patching_rect": [
            34,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            535,
            48,
            48,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            34,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            542,
            66,
            36,
            48
          ],
          "varname": "hearth_adapt",
          "parameter_enable": 1,
          "parameter_annotation_name": "Adapt",
          "parameter_info": "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough.",
          "parameter_longname": "Adapt",
          "parameter_shortname": "Adapt",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            62
          ],
          "annotation_name": "Adapt",
          "annotation": "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough.",
          "hint": "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "bordercolor": [
            0.38,
            0.86,
            0.74,
            0.55
          ],
          "focusbordercolor": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Adapt",
              "parameter_shortname": "Adapt",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                62
              ],
              "parameter_info": "Adaptive protection amount. Higher values back off harshness when the source gets bright or rough."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.38,
            0.86,
            0.74,
            0.88
          ],
          "fgdialcolor": [
            0.38,
            0.86,
            0.74,
            0.2
          ],
          "activedialcolor": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "activefgdialcolor": [
            0.38,
            0.86,
            0.74,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            88,
            287,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-64",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            34,
            328,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "message",
          "text": "adapt $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "text": "loadmess 62",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "comment",
          "text": "Detail",
          "patching_rect": [
            152,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            589,
            110,
            48,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.73,
            0.9,
            0.62,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            152,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            596,
            124,
            36,
            42
          ],
          "varname": "hearth_detail",
          "parameter_enable": 1,
          "parameter_annotation_name": "Detail",
          "parameter_info": "Restores a little presence after smoothing. Raise it when the result needs more articulation.",
          "parameter_longname": "Detail",
          "parameter_shortname": "Detail",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            58
          ],
          "annotation_name": "Detail",
          "annotation": "Restores a little presence after smoothing. Raise it when the result needs more articulation.",
          "hint": "Restores a little presence after smoothing. Raise it when the result needs more articulation.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "bordercolor": [
            0.73,
            0.9,
            0.62,
            0.55
          ],
          "focusbordercolor": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Detail",
              "parameter_shortname": "Detail",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                58
              ],
              "parameter_info": "Restores a little presence after smoothing. Raise it when the result needs more articulation."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.73,
            0.9,
            0.62,
            0.88
          ],
          "fgdialcolor": [
            0.73,
            0.9,
            0.62,
            0.2
          ],
          "activedialcolor": [
            0.73,
            0.9,
            0.62,
            1
          ],
          "activefgdialcolor": [
            0.73,
            0.9,
            0.62,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.73,
            0.9,
            0.62,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            206,
            287,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            152,
            328,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "message",
          "text": "detail $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "newobj",
          "text": "loadmess 58",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "comment",
          "text": "Dyn",
          "patching_rect": [
            270,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            589,
            48,
            42,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.72,
            0.61,
            0.94,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            270,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            596,
            66,
            36,
            48
          ],
          "varname": "hearth_dynamics",
          "parameter_enable": 1,
          "parameter_annotation_name": "Dynamics",
          "parameter_info": "Makes drive respond to level and envelope. Higher values push loud passages more dynamically.",
          "parameter_longname": "Dynamics",
          "parameter_shortname": "Dyn",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            42
          ],
          "annotation_name": "Dynamics",
          "annotation": "Makes drive respond to level and envelope. Higher values push loud passages more dynamically.",
          "hint": "Makes drive respond to level and envelope. Higher values push loud passages more dynamically.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "bordercolor": [
            0.72,
            0.61,
            0.94,
            0.55
          ],
          "focusbordercolor": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Dynamics",
              "parameter_shortname": "Dyn",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                42
              ],
              "parameter_info": "Makes drive respond to level and envelope. Higher values push loud passages more dynamically."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.72,
            0.61,
            0.94,
            0.88
          ],
          "fgdialcolor": [
            0.72,
            0.61,
            0.94,
            0.2
          ],
          "activedialcolor": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "activefgdialcolor": [
            0.72,
            0.61,
            0.94,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.72,
            0.61,
            0.94,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-75",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            324,
            287,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-76",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            270,
            328,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-77",
          "maxclass": "message",
          "text": "dynamics $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-78",
          "maxclass": "newobj",
          "text": "loadmess 42",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-79",
          "maxclass": "comment",
          "text": "Recovery",
          "patching_rect": [
            388,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            643,
            48,
            58,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.72,
            0.61,
            0.94,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            388,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            650,
            66,
            36,
            48
          ],
          "varname": "hearth_recovery",
          "parameter_enable": 1,
          "parameter_annotation_name": "Recovery ms",
          "parameter_info": "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
          "parameter_longname": "Recovery ms",
          "parameter_shortname": "Recov",
          "parameter_type": 0,
          "parameter_mmin": 20,
          "parameter_mmax": 600,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            140
          ],
          "annotation_name": "Recovery ms",
          "annotation": "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
          "hint": "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "bordercolor": [
            0.72,
            0.61,
            0.94,
            0.55
          ],
          "focusbordercolor": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Recovery ms",
              "parameter_shortname": "Recov",
              "parameter_type": 0,
              "parameter_mmin": 20,
              "parameter_mmax": 600,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                140
              ],
              "parameter_info": "Envelope recovery time in milliseconds for adaptive drive and flux movement.",
              "parameter_unitstyle": 2
            }
          },
          "parameter_unitstyle": 2,
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.72,
            0.61,
            0.94,
            0.88
          ],
          "fgdialcolor": [
            0.72,
            0.61,
            0.94,
            0.2
          ],
          "activedialcolor": [
            0.72,
            0.61,
            0.94,
            1
          ],
          "activefgdialcolor": [
            0.72,
            0.61,
            0.94,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.72,
            0.61,
            0.94,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            442,
            287,
            48,
            22
          ],
          "minimum": 20,
          "maximum": 600
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "message",
          "text": "recovery $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-83",
          "maxclass": "newobj",
          "text": "loadmess 140",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-84",
          "maxclass": "comment",
          "text": "Stereo",
          "patching_rect": [
            506,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            643,
            110,
            58,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-85",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            506,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            650,
            124,
            36,
            42
          ],
          "varname": "hearth_stereoProtect",
          "parameter_enable": 1,
          "parameter_annotation_name": "Stereo",
          "parameter_info": "Keeps the side channel from overdriving relative to the center, preserving stereo stability.",
          "parameter_longname": "Stereo",
          "parameter_shortname": "Stereo",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            70
          ],
          "annotation_name": "Stereo",
          "annotation": "Keeps the side channel from overdriving relative to the center, preserving stereo stability.",
          "hint": "Keeps the side channel from overdriving relative to the center, preserving stereo stability.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "bordercolor": [
            0.38,
            0.86,
            0.74,
            0.55
          ],
          "focusbordercolor": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Stereo",
              "parameter_shortname": "Stereo",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                70
              ],
              "parameter_info": "Keeps the side channel from overdriving relative to the center, preserving stereo stability."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.38,
            0.86,
            0.74,
            0.88
          ],
          "fgdialcolor": [
            0.38,
            0.86,
            0.74,
            0.2
          ],
          "activedialcolor": [
            0.38,
            0.86,
            0.74,
            1
          ],
          "activefgdialcolor": [
            0.38,
            0.86,
            0.74,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.38,
            0.86,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            560,
            287,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            506,
            328,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "message",
          "text": "stereoProtect $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "newobj",
          "text": "loadmess 70",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-90",
          "maxclass": "comment",
          "text": "Mix",
          "patching_rect": [
            624,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            721,
            48,
            40,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-91",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            624,
            272,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            724,
            66,
            36,
            48
          ],
          "varname": "hearth_mix",
          "parameter_enable": 1,
          "parameter_annotation_name": "Mix",
          "parameter_info": "Wet/dry blend between the input and Hearth's processed signal.",
          "parameter_longname": "Mix",
          "parameter_shortname": "Mix",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 100,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            100
          ],
          "annotation_name": "Mix",
          "annotation": "Wet/dry blend between the input and Hearth's processed signal.",
          "hint": "Wet/dry blend between the input and Hearth's processed signal.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "bordercolor": [
            0.92,
            0.88,
            0.74,
            0.55
          ],
          "focusbordercolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Mix",
              "parameter_shortname": "Mix",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                100
              ],
              "parameter_info": "Wet/dry blend between the input and Hearth's processed signal.",
              "parameter_unitstyle": 5
            }
          },
          "parameter_unitstyle": 5,
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.92,
            0.88,
            0.74,
            0.88
          ],
          "fgdialcolor": [
            0.92,
            0.88,
            0.74,
            0.2
          ],
          "activedialcolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "activefgdialcolor": [
            0.92,
            0.88,
            0.74,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-92",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            678,
            287,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 100
        }
      },
      {
        "box": {
          "id": "obj-93",
          "maxclass": "newobj",
          "text": "scale 0 100 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            624,
            328,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "message",
          "text": "mix $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            624,
            354,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-95",
          "maxclass": "newobj",
          "text": "loadmess 100",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            624,
            380,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-96",
          "maxclass": "comment",
          "text": "Output dB",
          "patching_rect": [
            34,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            775,
            48,
            48,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-97",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            34,
            384,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            778,
            66,
            36,
            48
          ],
          "varname": "hearth_output",
          "parameter_enable": 1,
          "parameter_annotation_name": "Output dB",
          "parameter_info": "Output trim after processing. Use this to level-match the processed signal.",
          "parameter_longname": "Output dB",
          "parameter_shortname": "Out",
          "parameter_type": 0,
          "parameter_mmin": -24,
          "parameter_mmax": 24,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            0
          ],
          "annotation_name": "Output dB",
          "annotation": "Output trim after processing. Use this to level-match the processed signal.",
          "hint": "Output trim after processing. Use this to level-match the processed signal.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "bordercolor": [
            0.92,
            0.88,
            0.74,
            0.55
          ],
          "focusbordercolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Output dB",
              "parameter_shortname": "Out",
              "parameter_type": 0,
              "parameter_mmin": -24,
              "parameter_mmax": 24,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_info": "Output trim after processing. Use this to level-match the processed signal.",
              "parameter_unitstyle": 4
            }
          },
          "parameter_unitstyle": 4,
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.92,
            0.88,
            0.74,
            0.88
          ],
          "fgdialcolor": [
            0.92,
            0.88,
            0.74,
            0.2
          ],
          "activedialcolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "activefgdialcolor": [
            0.92,
            0.88,
            0.74,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-98",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            88,
            399,
            48,
            22
          ],
          "minimum": -24,
          "maximum": 24
        }
      },
      {
        "box": {
          "id": "obj-99",
          "maxclass": "message",
          "text": "output $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            466,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-100",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            34,
            492,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-101",
          "maxclass": "comment",
          "text": "Quality",
          "patching_rect": [
            152,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            26,
            105,
            66,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            1,
            0.64,
            0.31,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-102",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "anything",
            "float"
          ],
          "patching_rect": [
            152,
            384,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            122,
            66,
            19
          ],
          "varname": "hearth_quality",
          "parameter_enable": 1,
          "parameter_annotation_name": "Quality",
          "parameter_info": "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
          "parameter_longname": "Quality",
          "parameter_shortname": "Qual",
          "parameter_type": 2,
          "parameter_mmin": 0,
          "parameter_mmax": 2,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            1
          ],
          "annotation_name": "Quality",
          "annotation": "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
          "hint": "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            1,
            0.64,
            0.31,
            1
          ],
          "bordercolor": [
            1,
            0.64,
            0.31,
            0.55
          ],
          "focusbordercolor": [
            1,
            0.64,
            0.31,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Quality",
              "parameter_shortname": "Qual",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_info": "Anti-aliasing quality for the tube lane: Eco, Live, or High. Higher quality costs more CPU.",
              "parameter_enum": [
                "Eco",
                "Live",
                "High"
              ]
            }
          },
          "parameter_enum": [
            "Eco",
            "Live",
            "High"
          ],
          "items": [
            "Eco",
            "Live",
            "High"
          ],
          "activebgcolor": [
            0.055,
            0.052,
            0.048,
            1
          ],
          "hltcolor": [
            1,
            0.64,
            0.31,
            1
          ],
          "hlttextcolor": [
            0.075,
            0.067,
            0.058,
            1
          ],
          "tricolor": [
            1,
            0.64,
            0.31,
            1
          ],
          "bgcolor": [
            0.045,
            0.042,
            0.039,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-103",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            206,
            399,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 2
        }
      },
      {
        "box": {
          "id": "obj-104",
          "maxclass": "message",
          "text": "quality $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            466,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-105",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            152,
            492,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-106",
          "maxclass": "comment",
          "text": "Auto",
          "patching_rect": [
            270,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            747,
            119,
            46,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-107",
          "maxclass": "live.toggle",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            270,
            384,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            758,
            137,
            24,
            24
          ],
          "varname": "hearth_autoTrim",
          "parameter_enable": 1,
          "parameter_annotation_name": "Auto Trim",
          "parameter_info": "Automatically compensates output level against the input envelope for easier level matching.",
          "parameter_longname": "Auto Trim",
          "parameter_shortname": "Auto",
          "parameter_type": 2,
          "parameter_mmin": 0,
          "parameter_mmax": 1,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            1
          ],
          "annotation_name": "Auto Trim",
          "annotation": "Automatically compensates output level against the input envelope for easier level matching.",
          "hint": "Automatically compensates output level against the input envelope for easier level matching.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "bordercolor": [
            0.92,
            0.88,
            0.74,
            0.55
          ],
          "focusbordercolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Auto Trim",
              "parameter_shortname": "Auto",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_info": "Automatically compensates output level against the input envelope for easier level matching.",
              "parameter_enum": [
                "Off",
                "On"
              ]
            }
          },
          "parameter_enum": [
            "Off",
            "On"
          ],
          "activebgcolor": [
            0.045,
            0.042,
            0.039,
            1
          ],
          "activebgoncolor": [
            0.92,
            0.88,
            0.74,
            1
          ],
          "bgcolor": [
            0.045,
            0.042,
            0.039,
            1
          ],
          "bgoncolor": [
            0.92,
            0.88,
            0.74,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-108",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            324,
            399,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 1
        }
      },
      {
        "box": {
          "id": "obj-109",
          "maxclass": "message",
          "text": "autoTrim $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            466,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-110",
          "maxclass": "newobj",
          "text": "loadmess 1",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            270,
            492,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-111",
          "maxclass": "comment",
          "text": "Patina",
          "patching_rect": [
            388,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            464,
            48,
            50,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.7,
            0.62,
            0.48,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-112",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            388,
            384,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            471,
            66,
            36,
            48
          ],
          "varname": "hearth_patina",
          "parameter_enable": 1,
          "parameter_annotation_name": "Patina",
          "parameter_info": "Adds a very subtle deterministic low-level texture. Keep low for clean material.",
          "parameter_longname": "Patina",
          "parameter_shortname": "Patina",
          "parameter_type": 0,
          "parameter_mmin": 0,
          "parameter_mmax": 10,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            0
          ],
          "annotation_name": "Patina",
          "annotation": "Adds a very subtle deterministic low-level texture. Keep low for clean material.",
          "hint": "Adds a very subtle deterministic low-level texture. Keep low for clean material.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.7,
            0.62,
            0.48,
            1
          ],
          "bordercolor": [
            0.7,
            0.62,
            0.48,
            0.55
          ],
          "focusbordercolor": [
            0.7,
            0.62,
            0.48,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Patina",
              "parameter_shortname": "Patina",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 10,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_info": "Adds a very subtle deterministic low-level texture. Keep low for clean material."
            }
          },
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.7,
            0.62,
            0.48,
            0.88
          ],
          "fgdialcolor": [
            0.7,
            0.62,
            0.48,
            0.2
          ],
          "activedialcolor": [
            0.7,
            0.62,
            0.48,
            1
          ],
          "activefgdialcolor": [
            0.7,
            0.62,
            0.48,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.7,
            0.62,
            0.48,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-113",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            442,
            399,
            48,
            22
          ],
          "minimum": 0,
          "maximum": 10
        }
      },
      {
        "box": {
          "id": "obj-114",
          "maxclass": "newobj",
          "text": "scale 0 10 0. 1.",
          "numinlets": 6,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            388,
            440,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-115",
          "maxclass": "message",
          "text": "patina $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            466,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-116",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            388,
            492,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-117",
          "maxclass": "comment",
          "text": "Input dB",
          "patching_rect": [
            506,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            48,
            50,
            12
          ],
          "fontsize": 9,
          "textjustification": 1,
          "textcolor": [
            0.56,
            0.78,
            0.96,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-118",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "patching_rect": [
            506,
            384,
            50,
            48
          ],
          "presentation": 1,
          "presentation_rect": [
            132,
            66,
            36,
            48
          ],
          "varname": "hearth_input",
          "parameter_enable": 1,
          "parameter_annotation_name": "Input dB",
          "parameter_info": "Input trim before the saturation core. Use this to hit Hearth harder or back off hot material.",
          "parameter_longname": "Input dB",
          "parameter_shortname": "In",
          "parameter_type": 0,
          "parameter_mmin": -24,
          "parameter_mmax": 24,
          "parameter_initial_enable": 1,
          "parameter_initial": [
            0
          ],
          "annotation_name": "Input dB",
          "annotation": "Input trim before the saturation core. Use this to hit Hearth harder or back off hot material.",
          "hint": "Input trim before the saturation core. Use this to hit Hearth harder or back off hot material.",
          "fontsize": 9,
          "textcolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "color": [
            0.56,
            0.78,
            0.96,
            1
          ],
          "bordercolor": [
            0.56,
            0.78,
            0.96,
            0.55
          ],
          "focusbordercolor": [
            0.56,
            0.78,
            0.96,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Input dB",
              "parameter_shortname": "In",
              "parameter_type": 0,
              "parameter_mmin": -24,
              "parameter_mmax": 24,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_info": "Input trim before the saturation core. Use this to hit Hearth harder or back off hot material.",
              "parameter_unitstyle": 4
            }
          },
          "parameter_unitstyle": 4,
          "showname": 0,
          "shownumber": 1,
          "valuepopup": 1,
          "valuepopuplabel": 3,
          "dialcolor": [
            0.56,
            0.78,
            0.96,
            0.88
          ],
          "fgdialcolor": [
            0.56,
            0.78,
            0.96,
            0.2
          ],
          "activedialcolor": [
            0.56,
            0.78,
            0.96,
            1
          ],
          "activefgdialcolor": [
            0.56,
            0.78,
            0.96,
            0.24
          ],
          "needlecolor": [
            0.88,
            0.82,
            0.72,
            0.72
          ],
          "activeneedlecolor": [
            0.88,
            0.82,
            0.72,
            1
          ],
          "panelcolor": [
            0.018,
            0.017,
            0.016,
            0.86
          ],
          "tricolor": [
            0.56,
            0.78,
            0.96,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-119",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            560,
            399,
            48,
            22
          ],
          "minimum": -24,
          "maximum": 24
        }
      },
      {
        "box": {
          "id": "obj-120",
          "maxclass": "message",
          "text": "input $1",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            466,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "obj-121",
          "maxclass": "newobj",
          "text": "loadmess 0",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            506,
            492,
            104,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-19",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-19",
            1
          ],
          "destination": [
            "obj-20",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-20",
            0
          ],
          "destination": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-20",
            1
          ],
          "destination": [
            "obj-21",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-24",
            0
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-27",
            0
          ],
          "destination": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-27",
            0
          ],
          "destination": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-29",
            0
          ],
          "destination": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-30",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-31",
            0
          ],
          "destination": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-33",
            0
          ],
          "destination": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-33",
            0
          ],
          "destination": [
            "obj-35",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-35",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-36",
            0
          ],
          "destination": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-38",
            0
          ],
          "destination": [
            "obj-39",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-38",
            0
          ],
          "destination": [
            "obj-40",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-40",
            0
          ],
          "destination": [
            "obj-41",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-41",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-42",
            0
          ],
          "destination": [
            "obj-38",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-44",
            0
          ],
          "destination": [
            "obj-45",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-44",
            0
          ],
          "destination": [
            "obj-46",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-46",
            0
          ],
          "destination": [
            "obj-47",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-47",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-48",
            0
          ],
          "destination": [
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-50",
            0
          ],
          "destination": [
            "obj-51",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-50",
            0
          ],
          "destination": [
            "obj-52",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-52",
            0
          ],
          "destination": [
            "obj-53",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-53",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-54",
            0
          ],
          "destination": [
            "obj-50",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-56",
            0
          ],
          "destination": [
            "obj-57",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-56",
            0
          ],
          "destination": [
            "obj-58",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-58",
            0
          ],
          "destination": [
            "obj-59",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-59",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-60",
            0
          ],
          "destination": [
            "obj-56",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            0
          ],
          "destination": [
            "obj-63",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            0
          ],
          "destination": [
            "obj-64",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-64",
            0
          ],
          "destination": [
            "obj-65",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-65",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-66",
            0
          ],
          "destination": [
            "obj-62",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-68",
            0
          ],
          "destination": [
            "obj-69",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-68",
            0
          ],
          "destination": [
            "obj-70",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-70",
            0
          ],
          "destination": [
            "obj-71",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-71",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-72",
            0
          ],
          "destination": [
            "obj-68",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-74",
            0
          ],
          "destination": [
            "obj-75",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-74",
            0
          ],
          "destination": [
            "obj-76",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-76",
            0
          ],
          "destination": [
            "obj-77",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-77",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-78",
            0
          ],
          "destination": [
            "obj-74",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-80",
            0
          ],
          "destination": [
            "obj-81",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-80",
            0
          ],
          "destination": [
            "obj-82",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-82",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-83",
            0
          ],
          "destination": [
            "obj-80",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-85",
            0
          ],
          "destination": [
            "obj-86",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-85",
            0
          ],
          "destination": [
            "obj-87",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-87",
            0
          ],
          "destination": [
            "obj-88",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-88",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-89",
            0
          ],
          "destination": [
            "obj-85",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-91",
            0
          ],
          "destination": [
            "obj-92",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-91",
            0
          ],
          "destination": [
            "obj-93",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-93",
            0
          ],
          "destination": [
            "obj-94",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-94",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-95",
            0
          ],
          "destination": [
            "obj-91",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-97",
            0
          ],
          "destination": [
            "obj-98",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-97",
            0
          ],
          "destination": [
            "obj-99",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-99",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-100",
            0
          ],
          "destination": [
            "obj-97",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-102",
            0
          ],
          "destination": [
            "obj-103",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-102",
            0
          ],
          "destination": [
            "obj-104",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-104",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-105",
            0
          ],
          "destination": [
            "obj-102",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-107",
            0
          ],
          "destination": [
            "obj-108",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-107",
            0
          ],
          "destination": [
            "obj-109",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-109",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-110",
            0
          ],
          "destination": [
            "obj-107",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-112",
            0
          ],
          "destination": [
            "obj-113",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-112",
            0
          ],
          "destination": [
            "obj-114",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-114",
            0
          ],
          "destination": [
            "obj-115",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-115",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-116",
            0
          ],
          "destination": [
            "obj-112",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-118",
            0
          ],
          "destination": [
            "obj-119",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-118",
            0
          ],
          "destination": [
            "obj-120",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-120",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-121",
            0
          ],
          "destination": [
            "obj-118",
            0
          ]
        }
      }
    ]
  }
}