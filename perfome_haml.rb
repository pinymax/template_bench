require 'erb'
require 'pry'
require 'haml'

class PerfomeHaml
  DATA = {
    PERFORM: {
                   LIST: [
                               {
                                 NAME: 'line000001',
                                 ODD: 1,
                                 RID: 1,
                                 SUB: [
                                            {
                                              XXX: 'subline000001',
                                              value: '*** zwsu ***'
                                            },
                                            {
                                              XXX: 'subline000002',
                                              value: '*** wkuq ***'
                                            },
                                            {
                                              XXX: 'subline000003',
                                              value: '*** sguo ***'
                                            },
                                            {
                                              XXX: 'subline000004',
                                              value: '*** yare ***'
                                            },
                                            {
                                              XXX: 'subline000005',
                                              value: '*** ebla ***'
                                            },
                                            {
                                              XXX: 'subline000006',
                                              value: '*** hinb ***'
                                            },
                                            {
                                              XXX: 'subline000007',
                                              value: '*** jurc ***'
                                            },
                                            {
                                              XXX: 'subline000008',
                                              value: '*** wbtf ***'
                                            },
                                            {
                                              XXX: 'subline000009',
                                              value: '*** vqfs ***'
                                            },
                                            {
                                              XXX: 'subline000010',
                                              value: '*** mpfe ***'
                                            }
                                          ],
                                 time: 1478340881,
                                 value: 'nokgkzdahwzbspbwbczl'
                               },
                               {
                                 DOT: [
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### dpxtkt ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### clctrn ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### wsdmws ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### rmjtaq ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### jekjre ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### fvlafr ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### phitkk ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### iwwhtb ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### ccfntb ###'
                                                                          }
                                                                }
                                                      }
                                            },
                                            {
                                              DA: {
                                                        DB: {
                                                                  DC: {
                                                                            DD: '### aihcui ###'
                                                                          }
                                                                }
                                                      }
                                            }
                                          ],
                                 NAME: 'line000002',
                                 ODD: 0,
                                 RID: 2,
                                 time: 1478340881,
                                 value: 'fgqziaskzlpyguihzqeq'
                               },
                               {
                                 NAME: 'line000003',
                                 ODD: 1,
                                 RID: 3,
                                 time: 1478340881,
                                 value: 'swunujtyfdturfzhierb'
                               },
                               {
                                 NAME: 'line000004',
                                 ODD: 0,
                                 RID: 4,
                                 time: 1478340881,
                                 value: 'rkeuaznzjawbivvfwcuh'
                               },
                               {
                                 NAME: 'line000005',
                                 ODD: 1,
                                 RID: 5,
                                 time: 1478340881,
                                 value: 'cvmkwgwdhnwucuzhkbbj'
                               },
                               {
                                 NAME: 'line000006',
                                 ODD: 0,
                                 RID: 6,
                                 time: 1478340881,
                                 value: 'uofkimuormkhcjnkwhbv'
                               },
                               {
                                 NAME: 'line000007',
                                 ODD: 1,
                                 RID: 7,
                                 time: 1478340881,
                                 value: 'lbctucesinbredyypgbg'
                               },
                               {
                                 NAME: 'line000008',
                                 ODD: 0,
                                 RID: 8,
                                 time: 1478340881,
                                 value: 'ohqshcgdmyttipjhuwcx'
                               },
                               {
                                 NAME: 'line000009',
                                 ODD: 1,
                                 RID: 9,
                                 time: 1478340881,
                                 value: 'itvnwqegrcvyjubcaegs'
                               },
                               {
                                 NAME: 'line000010',
                                 ODD: 0,
                                 RID: 10,
                                 time: 1478340881,
                                 value: 'pbvbowmwqdnxlplcdqqc'
                               },
                               {
                                 NAME: 'line000011',
                                 ODD: 1,
                                 RID: 11,
                                 time: 1478340881,
                                 value: 'eshlvzlokjgktabmlbxo'
                               },
                               {
                                 NAME: 'line000012',
                                 ODD: 0,
                                 RID: 12,
                                 time: 1478340881,
                                 value: 'ixiosgjckskceqjdhxty'
                               }
                             ]
                 },
    mode: '*** TEST ***'
  }

  def build
    b = binding
    engine = Haml::Engine.new("
- if data[:PERFORM]
  - data[:PERFORM][:LIST].each do |item|
    %p
    = item[:RID]
    = item[:ODD]
    - if item[:NAME] == 'line000001'
      - if item[:SUB]
        - item[:SUB].each do |sub|
          %br/
          = sub[:XXX] = sub[:VALUE]
          - if item[:DOT]
            - item[:DOT].each do |dot|
              %br/
              dot[:DA][:DB][:DC][:DD]").render(Object.new, data: DATA)
  end
end
