# Riva TTS + LLM Toolkit

本專案整合了 **TTS (Text-to-Speech)** 與 **LLM (Large Language Model)** 的部署與測試腳本，包含 **NVIDIA Riva**、**CosyVoice**、以及 **LLaMA** 的安裝與操作流程。

> 本專案假設你擁有 **NVIDIA NGC 帳號** 並已申請 **NGC API Key**，用於存取模型與容器映像檔。

---

## 🔑 環境變數設定

本專案使用 `.env` 來存放私密金鑰，並在 `.gitignore` 中忽略。

1. 複製 `.env.template` 為 `.env`
   ```bash
   cp .env.template .env
   ```

2. 編輯 `.env` 並填入你的 **NGC API Key**
   ```bash
   nano .env
   ```

3. `.env.template` 範例：
   ```bash
   # .env.template
   # 請將此檔案複製成 .env 並填入你的 NGC API Key
   # cp .env.template .env && nano .env

   NGC_API_KEY=your_api_key_here
   ```

---

## 🚀 使用方式

1. 確保 `.env` 已正確設定
2. 執行需要的腳本，例如：
   ```bash
   bash llama/1-create-misc.sh
   ```
3. 腳本會自動載入 `.env` 中的變數：
   - 變數由 `scripts/load-env.sh` 載入
   - 找不到 `.env` 或變數未設定時，會停止執行並提示錯誤

---

## 🛠 功能模組

### 🎙 CosyVoice (TTS)
- 高品質語音合成
- 多語言與多音色支援
- 可用於文字轉語音測試與服務部署

### 🤖 LLaMA (LLM)
- LLaMA 模型安裝與推論
- NIM 部署支援
- Helm Chart 自動化部署

---

## ⚠ 注意事項
- `.env` 內含私密金鑰，**請勿上傳至任何公開 repo**
- 需要 NVIDIA GPU 與對應驅動
- 需要 NVIDIA NGC 帳號與 API Key

---

## 📜 授權
MIT License

---

**作者**  
Ray @ 2025
