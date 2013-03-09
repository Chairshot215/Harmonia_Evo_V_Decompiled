.class Lcom/android/updater/service/AcuParserService$ParserThread;
.super Ljava/lang/Thread;
.source "AcuParserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/service/AcuParserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/service/AcuParserService;


# direct methods
.method private constructor <init>(Lcom/android/updater/service/AcuParserService;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/updater/service/AcuParserService;Lcom/android/updater/service/AcuParserService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/updater/service/AcuParserService$ParserThread;-><init>(Lcom/android/updater/service/AcuParserService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 74
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mJsonString:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/updater/service/AcuParserService;->access$000(Lcom/android/updater/service/AcuParserService;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v9, jsonResponse:Lorg/json/JSONObject;
    const-string v12, "apk"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 76
    .local v7, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_4

    .line 78
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 83
    .local v8, jsonObject:Lorg/json/JSONObject;
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    const-string v13, "source"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/updater/util/UpdaterUtil;->isNeedToProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 76
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const-string v12, "className"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, apkClassName:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #calls: Lcom/android/updater/service/AcuParserService;->getApkStatus(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v0}, Lcom/android/updater/service/AcuParserService;->access$100(Lcom/android/updater/service/AcuParserService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, apkStatus:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 96
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .local v1, apkIcon:Ljava/lang/String;
    :try_start_1
    const-string v12, "icon"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 105
    :goto_2
    :try_start_2
    const-string v11, ""

    .line 106
    .local v11, tempString:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appName"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "appSize"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "versionName"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "description"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "source"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@~"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 117
    :try_start_3
    const-string v12, "optionalCount"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, optionalCount:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 119
    const-string v10, "0"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :cond_2
    :goto_3
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 130
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/updater/service/AcuParserService;->access$200(Lcom/android/updater/service/AcuParserService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 154
    .end local v0           #apkClassName:Ljava/lang/String;
    .end local v1           #apkIcon:Ljava/lang/String;
    .end local v2           #apkStatus:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #jsonArray:Lorg/json/JSONArray;
    .end local v8           #jsonObject:Lorg/json/JSONObject;
    .end local v9           #jsonResponse:Lorg/json/JSONObject;
    .end local v10           #optionalCount:Ljava/lang/String;
    .end local v11           #tempString:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 155
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "UpdaterAPK | AcuParserService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ParserThread catch error!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    :goto_4
    return-void

    .line 100
    .restart local v0       #apkClassName:Ljava/lang/String;
    .restart local v1       #apkIcon:Ljava/lang/String;
    .restart local v2       #apkStatus:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v7       #jsonArray:Lorg/json/JSONArray;
    .restart local v8       #jsonObject:Lorg/json/JSONObject;
    .restart local v9       #jsonResponse:Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 101
    .restart local v5       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v12, "UpdaterAPK | AcuParserService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonObject get string error! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "empty"

    goto/16 :goto_2

    .line 121
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v11       #tempString:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 122
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v12, "UpdaterAPK | AcuParserService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonObject get optionalCount error!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v10, "0"

    .restart local v10       #optionalCount:Ljava/lang/String;
    goto :goto_3

    .line 134
    .end local v0           #apkClassName:Ljava/lang/String;
    .end local v1           #apkIcon:Ljava/lang/String;
    .end local v2           #apkStatus:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #optionalCount:Ljava/lang/String;
    .end local v11           #tempString:Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/updater/service/AcuParserService;->access$200(Lcom/android/updater/service/AcuParserService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 141
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    invoke-virtual {v12}, Lcom/android/updater/service/AcuParserService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    .local v4, cr:Landroid/content/ContentResolver;
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/updater/service/AcuParserService;->access$200(Lcom/android/updater/service/AcuParserService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/android/updater/db/FOTADetail;->setAllApkDetail(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 146
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    invoke-virtual {v12}, Lcom/android/updater/service/AcuParserService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/16 v13, 0x12

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 148
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.android.updater.ACU_CONFIRM_DOWNLOAD"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, confirmIntent:Landroid/content/Intent;
    const-string v12, "apkDetailList"

    iget-object v13, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mApkDetailList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/updater/service/AcuParserService;->access$200(Lcom/android/updater/service/AcuParserService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 150
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    #getter for: Lcom/android/updater/service/AcuParserService;->mIntent:Landroid/content/Intent;
    invoke-static {v12}, Lcom/android/updater/service/AcuParserService;->access$300(Lcom/android/updater/service/AcuParserService;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 151
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    invoke-virtual {v12, v3}, Lcom/android/updater/service/AcuParserService;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    iget-object v12, p0, Lcom/android/updater/service/AcuParserService$ParserThread;->this$0:Lcom/android/updater/service/AcuParserService;

    invoke-virtual {v12}, Lcom/android/updater/service/AcuParserService;->stopSelf()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4
.end method
