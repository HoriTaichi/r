# API TOKEN発行：https://api.slack.com/custom-integrations/legacy-tokens
# 参考ソース：https://github.com/hrbrmstr/slackr
library(slackr)

# 現在のバージョン
packageVersion("slackr")

# Slack設定
slackrSetup(channel="#hori_test", 
            incoming_webhook_url="https://hooks.slack.com/services/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")

slackr(str(iris))

