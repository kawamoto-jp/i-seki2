# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| sex_id             | integer | null: false |
| email              | string  | null: false |
| password           | string  | null: false |

### Association

- has_one  :user_info





## user_infos テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| people_num       | integer    | null: false                    |
| area_id          | integer    | null: false                    |
| text             | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :rooms, through: room_user_infos
- has_many :messages
- has_many :relationship





## relationships テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| following_id | references | null: false, foreign_key: true |
| follower_id  | references | null: false, foreign_key: true |

### Association

- belongs_to :user_info
- has_one    :rooms





##  rooms テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| name           | string     | null: false                    |
| relationship   | references | null: false, foreign_key: true |

### Association

- has_many   :room_users
- has_many   :user_infos, through: room_user_infos
- has_many   :messages
- belongs_to :relationships





##  messages テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     |                                |
| user       | references | null: false, foreign_key: true |
| room       | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user





## room_users テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user_infos   | references | null: false, foreign_key: true |
| room         | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user