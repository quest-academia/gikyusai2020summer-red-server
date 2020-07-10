
# coding: utf-8

quest1 = Quest.create!(id: 1,
  title: "自宅で出来るうまい焼肉",
  award: 1)

quest1.sub_quests.create!(
     [
      {id: 1,
       chapter: "chapter1",
       title: "焼肉のひっくり返し方",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: open("#{Rails.root}/db/fixtures/1.jpg")},
      {id: 2,
       chapter: "chapter2",
       title: "うまいタレの作り方",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )


quest2 = Quest.create!(id: 2,
  title: "寝ながら痩せるダイエット",
  award: 1)

quest2.sub_quests.create!(
     [
       {id: 3,
        chapter: "chapter1",
        title: "寝ながらスクワット",
        point: 1,
        content: "hogeしてhogeしたらhogeになる",
        image: open("#{Rails.root}/db/fixtures/1.jpg")},
       {id: 4,
        chapter: "chapter2",
        title: "寝ながら腹筋",
        point: 1,
        content: "hogeしてhogeしたらhogeになる",
        image: open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )


quest3 = Quest.create!(id: 3,
  title: "ミニ屋台の出し方",
  award: 1)

quest3.sub_quests.create!(
     [
       {id: 5,
       chapter: "chapter1",
       title: "スーパーボールすくい",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: open("#{Rails.root}/db/fixtures/1.jpg")},
       {id: 6,
       chapter: "chapter2",
       title: "わたがし屋",
       point: 1,
       content: "hogeしてhogeしたらhogeになる",
       image: open("#{Rails.root}/db/fixtures/2.jpg")}
     ]
   )

