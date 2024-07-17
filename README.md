### kintone APIとRailsでのデータ追加機能

このリポジトリは、kintone APIとRuby on Railsを使用してデータを追加する機能を提供するプロジェクトです。以下の手順で環境をセットアップし、データ追加機能を利用できます。

## セットアップ手順

1. **リポジトリのクローン:**
   ```bash
   git clone https://github.com/yourusername/kintone-rails-integration.git
   cd kintone-rails-integration
   ```

2. **依存関係のインストール:**
   ```bash
   bundle install
   ```

3. **データベースのセットアップ:**
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **kintone APIトークンの設定:**
   - `config/secrets.yml` に以下のようにkintoneのAPIトークンを設定します。
     ```yaml
     development:
       kintone_api_token: 'your_kintone_api_token'
     ```

5. **サーバーの起動:**
   ```bash
   rails server
   ```

## 使用方法

### データの追加
- データ追加のためのエンドポイントは `/api/add` です。
- 以下のようなリクエストを送信することで、kintoneにデータを追加できます。

#### HTTPリクエスト例 (cURL)
```bash
curl -X POST http://localhost:3000/api/add \
     -H "Content-Type: application/json" \
     -d '{
           "name": "John Doe",
           "email": "john.doe@example.com"
         }'
```

### レスポンス
- 成功時には、追加されたレコードの詳細が返されます。
- 失敗時には、エラーメッセージが返されます。

## 主要ファイルとディレクトリ

- `app/controllers/api_controller.rb` - データ追加のためのAPIエンドポイントを定義。
- `app/services/kintone_service.rb` - kintone APIとの通信を管理。
- `config/secrets.yml` - kintone APIトークンを管理。
