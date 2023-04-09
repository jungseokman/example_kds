const dummyData = [
  {
    "table_number": 1,
    "time": "15:30",
    "orderType": "매장",
    "comment": '쫄면 덜 맵게 해주시고 앞접시 하나만 가져다 주세요~',
    "food": [
      {
        "name": "김치찌개",
        "amount": 2,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "된장찌개",
        "amount": 1,
        "additional_ingredients": [
          {'name': "감자", "amount": 1},
          {'name': "호박", "amount": 3},
        ]
      },
      {
        "name": "비빔밥",
        "amount": 1,
        "additional_ingredients": [
          {'name': "계란", "amount": 2},
          {'name': "목살", "amount": 1},
        ]
      },
      {
        "name": "불고기",
        "amount": 1,
        "additional_ingredients": [],
      },
      {"name": "제육볶음", "amount": 3, "additional_ingredients": []}
    ]
  },
  {
    "table_number": 2,
    "orderType": "포장",
    "time": "16:00",
    "comment": '30분후에 도착할거 같습니다.',
    "food": [
      {"name": "된장찌개", "amount": 1, "additional_ingredients": []},
      {
        "name": "비빔밥",
        "amount": 2,
        "additional_ingredients": [
          {'name': "양상수", "amount": 4},
          {'name': "고수", "amount": 1},
        ]
      },
      {
        "name": "불고기",
        "additional_ingredients": [],
        "amount": 1,
      },
      {"name": "제육볶음", "amount": 2, "additional_ingredients": []},
      {
        "name": "김치찌개",
        "amount": 3,
        "additional_ingredients": [
          {'name': "딸기", "amount": 2},
          {'name': "포도", "amount": 3},
        ]
      }
    ]
  },
  {
    "table_number": 3,
    "orderType": "매장",
    "time": "16:15",
    "comment": '야채 다 빼주시고 고기 많이 주세여!',
    "food": [
      {
        "name": "비빔밥",
        "amount": 1,
        "additional_ingredients": [
          {'name': "계란", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "불고기",
        "additional_ingredients": [],
        "amount": 1,
      },
      {
        "name": "제육볶음",
        "amount": 1,
        "additional_ingredients": [
          {'name': "김치", "amount": 1},
          {'name': "단무지", "amount": 2},
        ]
      },
      {
        "name": "김치찌개",
        "amount": 2,
        "additional_ingredients": [
          {'name': "고수", "amount": 2},
          {'name': "양파", "amount": 1},
        ]
      },
      {
        "name": "된장찌개",
        "amount": 1,
        "additional_ingredients": [
          {'name': "버섯", "amount": 1},
          {'name': "콜라", "amount": 10},
        ]
      }
    ]
  },
  {
    "table_number": 4,
    "time": "17:00",
    "orderType": "배달",
    "comment": '리뷰이벤트 신청합니다. 콜라 사이즈 업이여',
    "food": [
      {
        "name": "불고기",
        "additional_ingredients": [],
        "amount": 4,
      },
      {
        "name": "제육볶음",
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ],
        "amount": 1,
      },
      {
        "name": "김치찌개",
        "amount": 2,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "된장찌개",
        "amount": 1,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "비빔밥",
        "amount": 1,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "비빔밥",
        "amount": 1,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      },
      {
        "name": "비빔밥",
        "amount": 1,
        "additional_ingredients": [
          {'name': "두부", "amount": 1},
          {'name': "돼지고기", "amount": 1},
        ]
      }
    ]
  },
  // {
  //   "table_number": 5,
  //   "time": "17:30",
  //   "food": [
  //     {
  //       "name": "제육볶음",
  //       "additional_ingredients": ["양파", "고추장"]
  //     },
  //     {
  //       "name": "김치찌개",
  //       "additional_ingredients": ["두부", "돼지고기"]
  //     },
  //     {
  //       "name": "된장찌개",
  //       "additional_ingredients": ["감자", "호박"]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "additional_ingredients": ["계란", "고기"]
  //     },
  //     {"name": "불고기", "additional_ingredients": []}
  //   ]
  // },
  // {
  //   "table_number": 3,
  //   "orderType": "매장",
  //   "time": "16:15",
  //   "comment": '야채 다 빼주시고 고기 많이 주세여!',
  //   "food": [
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "계란", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "불고기",
  //       "additional_ingredients": [],
  //       "amount": 1,
  //     },
  //     {
  //       "name": "제육볶음",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "김치", "amount": 1},
  //         {'name': "단무지", "amount": 2},
  //       ]
  //     },
  //     {
  //       "name": "김치찌개",
  //       "amount": 2,
  //       "additional_ingredients": [
  //         {'name': "고수", "amount": 2},
  //         {'name': "양파", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "된장찌개",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "버섯", "amount": 1},
  //         {'name': "콜라", "amount": 10},
  //       ]
  //     }
  //   ]
  // },
  // {
  //   "table_number": 4,
  //   "time": "17:00",
  //   "orderType": "배달",
  //   "comment": '리뷰이벤트 신청합니다. 콜라 사이즈 업이여',
  //   "food": [
  //     {
  //       "name": "불고기",
  //       "additional_ingredients": [],
  //       "amount": 4,
  //     },
  //     {
  //       "name": "제육볶음",
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ],
  //       "amount": 1,
  //     },
  //     {
  //       "name": "김치찌개",
  //       "amount": 2,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "된장찌개",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     }
  //   ]
  // },
  // {
  //   "table_number": 3,
  //   "orderType": "매장",
  //   "time": "16:15",
  //   "comment": '야채 다 빼주시고 고기 많이 주세여!',
  //   "food": [
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "계란", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "불고기",
  //       "additional_ingredients": [],
  //       "amount": 1,
  //     },
  //     {
  //       "name": "제육볶음",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "김치", "amount": 1},
  //         {'name': "단무지", "amount": 2},
  //       ]
  //     },
  //     {
  //       "name": "김치찌개",
  //       "amount": 2,
  //       "additional_ingredients": [
  //         {'name': "고수", "amount": 2},
  //         {'name': "양파", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "된장찌개",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "버섯", "amount": 1},
  //         {'name': "콜라", "amount": 10},
  //       ]
  //     }
  //   ]
  // },
  // {
  //   "table_number": 4,
  //   "time": "17:00",
  //   "orderType": "배달",
  //   "comment": '리뷰이벤트 신청합니다. 콜라 사이즈 업이여',
  //   "food": [
  //     {
  //       "name": "불고기",
  //       "additional_ingredients": [],
  //       "amount": 4,
  //     },
  //     {
  //       "name": "제육볶음",
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ],
  //       "amount": 1,
  //     },
  //     {
  //       "name": "김치찌개",
  //       "amount": 2,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "된장찌개",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     },
  //     {
  //       "name": "비빔밥",
  //       "amount": 1,
  //       "additional_ingredients": [
  //         {'name': "두부", "amount": 1},
  //         {'name': "돼지고기", "amount": 1},
  //       ]
  //     }
  //   ]
  // },
];
