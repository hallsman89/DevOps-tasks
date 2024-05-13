#!/bin/bash
STAGE_TYPE=$1
BOT_TOKEN="6889783611:AAFFoeKYfY_Lehil4XF73-KLxsTh5iUCYQQ"
CHAT_ID="73155291"

sleep 5

if [ "$CI_JOB_STATUS" == "success" ]; then
  MESSAGE="✅ Стадия $STAGE_TYPE 👉$CI_JOB_NAME👈 успешно завершена ✅ $CI_PROJECT_URL/pipelines"
else
  MESSAGE="🚫 Стадия $STAGE_TYPE 👉$CI_JOB_NAME👈 завершилась с ошибкой! 🚫 $CI_PROJECT_URL/pipelines"
fi

curl -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d chat_id=$CHAT_ID -d text="$MESSAGE"
