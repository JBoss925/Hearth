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
      770,
      190
    ],
    "bgcolor": [
      0.08,
      0.075,
      0.07,
      1
    ],
    "openinpresentation": 1,
    "devicewidth": 770,
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
            770,
            170
          ],
          "background": 1,
          "ignoreclick": 1,
          "bgcolor": [
            0.105,
            0.095,
            0.082,
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
          "maxclass": "comment",
          "text": "HEARTH",
          "patching_rect": [
            35,
            505,
            100,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            23,
            98,
            24
          ],
          "fontsize": 18,
          "textcolor": [
            1,
            0.72,
            0.43,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "comment",
          "text": "warm adaptive saturation",
          "patching_rect": [
            35,
            531,
            165,
            18
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            49,
            118,
            34
          ],
          "fontsize": 10,
          "textcolor": [
            0.78,
            0.69,
            0.58,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "comment",
          "text": "TONE",
          "patching_rect": [
            35,
            555,
            80,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            94,
            70,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.52,
            0.77,
            0.7,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "comment",
          "text": "MOTION",
          "patching_rect": [
            35,
            573,
            80,
            14
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            114,
            70,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.62,
            0.88,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-6",
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
          "id": "obj-7",
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
          "id": "obj-8",
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
          "id": "obj-9",
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
          "id": "obj-10",
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
          "id": "obj-11",
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
          "id": "obj-12",
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
          "id": "obj-13",
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
            190,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-14",
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
            198,
            31,
            42,
            48
          ],
          "varname": "hearth_hearth",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-15",
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
          "id": "obj-16",
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
          "id": "obj-17",
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
          "id": "obj-18",
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
          "id": "obj-19",
          "maxclass": "comment",
          "text": "Body",
          "patching_rect": [
            152,
            138,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            256,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
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
            264,
            31,
            42,
            48
          ],
          "varname": "hearth_body",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Body dB",
              "parameter_shortname": "Body dB",
              "parameter_type": 0,
              "parameter_mmin": -6,
              "parameter_mmax": 6,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1.5
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-21",
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
          "id": "obj-22",
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
          "id": "obj-23",
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
          "id": "obj-24",
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
            388,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-25",
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
            396,
            31,
            42,
            48
          ],
          "varname": "hearth_velvet",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-26",
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
          "id": "obj-27",
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
          "id": "obj-28",
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
          "id": "obj-29",
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
          "id": "obj-30",
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
            156,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-31",
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
            164,
            96,
            42,
            48
          ],
          "varname": "hearth_bloom",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-32",
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
          "id": "obj-33",
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
          "id": "obj-34",
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
          "id": "obj-35",
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
          "id": "obj-36",
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
            228,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-37",
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
            236,
            96,
            42,
            48
          ],
          "varname": "hearth_flux",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-38",
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
          "id": "obj-39",
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
          "id": "obj-40",
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
          "id": "obj-41",
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
          "id": "obj-42",
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
            322,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-43",
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
            330,
            31,
            42,
            48
          ],
          "varname": "hearth_bias",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-44",
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
          "id": "obj-45",
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
          "id": "obj-46",
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
          "id": "obj-47",
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
          "id": "obj-48",
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
            300,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-49",
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
            308,
            96,
            42,
            48
          ],
          "varname": "hearth_adapt",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-50",
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
          "id": "obj-51",
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
          "id": "obj-52",
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
          "id": "obj-53",
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
          "id": "obj-54",
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
            454,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-55",
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
            462,
            31,
            42,
            48
          ],
          "varname": "hearth_detail",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-56",
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
          "id": "obj-57",
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
          "id": "obj-58",
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
          "id": "obj-59",
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
          "id": "obj-60",
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
            520,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-61",
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
            528,
            31,
            42,
            48
          ],
          "varname": "hearth_dynamics",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Dynamics",
              "parameter_shortname": "Dynamics",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                42
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-62",
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
          "id": "obj-63",
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
          "id": "obj-64",
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
          "id": "obj-65",
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
          "id": "obj-66",
          "maxclass": "comment",
          "text": "Recover",
          "patching_rect": [
            388,
            250,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            586,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-67",
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
            594,
            31,
            42,
            48
          ],
          "varname": "hearth_recovery",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Recovery ms",
              "parameter_shortname": "Recovery ms",
              "parameter_type": 0,
              "parameter_mmin": 20,
              "parameter_mmax": 600,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                140
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-68",
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
          "id": "obj-69",
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
          "id": "obj-70",
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
          "id": "obj-71",
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
            372,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-72",
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
            380,
            96,
            42,
            48
          ],
          "varname": "hearth_stereoProtect",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-73",
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
          "id": "obj-74",
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
          "id": "obj-75",
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
          "id": "obj-76",
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
          "id": "obj-77",
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
            444,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-78",
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
            452,
            96,
            42,
            48
          ],
          "varname": "hearth_mix",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-79",
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
          "id": "obj-80",
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
          "id": "obj-81",
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
          "id": "obj-82",
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
          "id": "obj-83",
          "maxclass": "comment",
          "text": "Output",
          "patching_rect": [
            34,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            652,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-84",
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
            660,
            31,
            42,
            48
          ],
          "varname": "hearth_output",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Output dB",
              "parameter_shortname": "Output dB",
              "parameter_type": 0,
              "parameter_mmin": -24,
              "parameter_mmax": 24,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-85",
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
          "id": "obj-86",
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
          "id": "obj-87",
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
          "id": "obj-88",
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
            516,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
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
            524,
            96,
            42,
            48
          ],
          "varname": "hearth_quality",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Quality",
              "parameter_shortname": "Quality",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 2,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-90",
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
          "id": "obj-91",
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
          "id": "obj-92",
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
          "id": "obj-93",
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
            588,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-94",
          "maxclass": "live.dial",
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
            596,
            96,
            42,
            48
          ],
          "varname": "hearth_autoTrim",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Auto Trim",
              "parameter_shortname": "Auto Trim",
              "parameter_type": 0,
              "parameter_mmin": 0,
              "parameter_mmax": 1,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-95",
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
          "id": "obj-96",
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
          "id": "obj-97",
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
          "id": "obj-98",
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
            660,
            148,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-99",
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
            668,
            96,
            42,
            48
          ],
          "varname": "hearth_patina",
          "parameter_enable": 1,
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
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-100",
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
          "id": "obj-101",
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
          "id": "obj-102",
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
          "id": "obj-103",
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
          "id": "obj-104",
          "maxclass": "comment",
          "text": "Input",
          "patching_rect": [
            506,
            362,
            104,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            83,
            58,
            14
          ],
          "fontsize": 9,
          "textcolor": [
            0.84,
            0.78,
            0.68,
            1
          ]
        }
      },
      {
        "box": {
          "id": "obj-105",
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
            31,
            42,
            48
          ],
          "varname": "hearth_input",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Input dB",
              "parameter_shortname": "Input dB",
              "parameter_type": 0,
              "parameter_mmin": -24,
              "parameter_mmax": 24,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-106",
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
          "id": "obj-107",
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
          "id": "obj-108",
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
            "obj-6",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-6",
            1
          ],
          "destination": [
            "obj-7",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-7",
            0
          ],
          "destination": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-7",
            1
          ],
          "destination": [
            "obj-8",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-11",
            0
          ],
          "destination": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-16",
            0
          ],
          "destination": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            0
          ],
          "destination": [
            "obj-14",
            0
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
            0
          ],
          "destination": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-23",
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
            "obj-25",
            0
          ],
          "destination": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-25",
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
            "obj-28",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-25",
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
            "obj-32",
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
            "obj-33",
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
            "obj-34",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-37",
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
            "obj-37",
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
            "obj-39",
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
            "obj-7",
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
            "obj-37",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-43",
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
            "obj-43",
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
            "obj-45",
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
            "obj-7",
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
            "obj-43",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-49",
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
            "obj-49",
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
            "obj-51",
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
            "obj-7",
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
            "obj-49",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-55",
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
            "obj-55",
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
            "obj-57",
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
            "obj-7",
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
            "obj-55",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-61",
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
            "obj-61",
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
            "obj-63",
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
            "obj-7",
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
            "obj-61",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
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
            "obj-67",
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
            "obj-69",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-67",
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
            "obj-73",
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
            "obj-74",
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
            "obj-75",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-72",
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
            "obj-79",
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
            "obj-80",
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
            "obj-81",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-78",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-84",
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
            "obj-84",
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
            "obj-86",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-84",
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
            "obj-90",
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
            "obj-91",
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
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-92",
            0
          ],
          "destination": [
            "obj-89",
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
            "obj-95",
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
            "obj-96",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-96",
            0
          ],
          "destination": [
            "obj-7",
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
            "obj-94",
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
            "obj-100",
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
            "obj-101",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-101",
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
            "obj-102",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-103",
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
            "obj-105",
            0
          ],
          "destination": [
            "obj-106",
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
            "obj-107",
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
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-108",
            0
          ],
          "destination": [
            "obj-105",
            0
          ]
        }
      }
    ]
  }
}