.class public Lcom/htc/feedback/ReceiverService;
.super Landroid/app/IntentService;
.source "ReceiverService.java"


# static fields
.field private static final ACTION_AUTO_SEND_REPORT:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field private static final ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final ACTION_NOTIFY_SYSTEM_CRASH:Ljava/lang/String; = "com.android.updater.NOTIFY_SYSTEM_CRASH"

.field private static final ACTION_NOTIFY_SYSTEM_NATIVE_CRASH:Ljava/lang/String; = "android.htc.intent.action.NOTIFY_SYSTEM_NATIVE_CRASH"

.field private static final BOTH_NETWORK_OPTION:Ljava/lang/String; = "both_network_option"

.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final DISABLE:Ljava/lang/String; = "0"

.field private static final ENABLE:Ljava/lang/String; = "1"

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final KEY_DEVICE_INFO_DUMP_PATH:Ljava/lang/String; = "com.htc.INFO_PATH"

.field private static final LOG:Z = false

.field private static final SHOW_HTC_APPLICATION_LOG:Ljava/lang/String; = "show_htc_application_log"

.field private static final TAG:Ljava/lang/String; = "ReceiverService"


# instance fields
.field private autoSend:Z

.field private reportEnable:Z

.field private reportSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const-string v0, "ReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 47
    iput-boolean v1, p0, Lcom/htc/feedback/ReceiverService;->reportSetting:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/feedback/ReceiverService;->reportEnable:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/feedback/ReceiverService;->autoSend:Z

    .line 56
    return-void
.end method

.method private customizeCrashReport()V
    .locals 15

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/htc/feedback/ReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 245
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/htc/feedback/ReceiverService;->loadCustomizeData()Landroid/os/Bundle;

    move-result-object v3

    .line 246
    .local v3, customizationBundle:Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 247
    .local v11, tellHTCOff:Ljava/lang/String;
    const/4 v5, 0x0

    .line 248
    .local v5, errorReportOff:Ljava/lang/String;
    const/4 v7, 0x0

    .line 249
    .local v7, hideUsageReport:Ljava/lang/String;
    const/4 v9, 0x0

    .line 250
    .local v9, onlyWifiOption:Ljava/lang/String;
    const/4 v1, 0x0

    .line 251
    .local v1, autoReportPreference:Ljava/lang/String;
    const/4 v0, 0x0

    .line 253
    .local v0, allDataPreference:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 254
    const-string v12, "setting"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 255
    .local v10, setting:Landroid/os/Bundle;
    if-eqz v10, :cond_3

    .line 256
    const-string v12, "turn_off_tell_htc"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    const-string v12, "turn_off_report"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v12, "hide_usage_report"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    const-string v12, "only_wifi_option"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 260
    const-string v12, "enable_auto_report_preference"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v12, "all_data_connection_preference"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v12, "ReceiverService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tell HTC customization flag: turn_off_tell_htc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", turn_off_report = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", hide_usage_report = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", onlyWifiOption = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", enable_auto_report_preference = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", all_data_connection_preference = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v10           #setting:Landroid/os/Bundle;
    :goto_0
    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v13, "userdebug"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 273
    const-string v12, "ReceiverService"

    const-string v13, "debug mode: enable Tell HTC by default"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v12, "htc_error_report_setting"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    const-string v12, "send_htc_error_report"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    const-string v12, "ro.build.description"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, description:Ljava/lang/String;
    const/4 v8, 0x0

    .line 279
    .local v8, isDashboardBuild:Z
    if-eqz v4, :cond_0

    const-string v12, "0.1.0.0"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 280
    const/4 v8, 0x1

    .line 281
    :cond_0
    const-string v13, "htc_error_report_auto_send"

    if-nez v8, :cond_5

    const-string v12, "1"

    :goto_1
    invoke-direct {p0, v2, v13, v12}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    const-string v12, "show_htc_application_log"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    if-eqz v7, :cond_1

    const-string v12, "yes"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 285
    const-string v12, "show_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    const-string v12, "send_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    :cond_1
    const-string v12, "both_network_option"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    if-eqz v9, :cond_2

    const-string v12, "yes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 294
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    const-string v12, "both_network_option"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    .end local v4           #description:Ljava/lang/String;
    .end local v8           #isDashboardBuild:Z
    :cond_2
    :goto_2
    return-void

    .line 267
    .restart local v10       #setting:Landroid/os/Bundle;
    :cond_3
    const-string v12, "ReceiverService"

    const-string v13, "customization setting = null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v10           #setting:Landroid/os/Bundle;
    :cond_4
    const-string v12, "ReceiverService"

    const-string v13, "customizationBundle = null"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .restart local v4       #description:Ljava/lang/String;
    .restart local v8       #isDashboardBuild:Z
    :cond_5
    const-string v12, "0"

    goto :goto_1

    .line 300
    .end local v4           #description:Ljava/lang/String;
    .end local v8           #isDashboardBuild:Z
    :cond_6
    const-string v12, "htc_error_report_setting"

    invoke-direct {p0, v2, v12}, Lcom/htc/feedback/ReceiverService;->getValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, errorReportSetting:Ljava/lang/String;
    if-eqz v6, :cond_7

    const-string v12, "1"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 306
    :cond_7
    const-string v12, "htc_error_report_setting"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    const-string v12, "send_htc_error_report"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    const-string v12, "htc_error_report_auto_send"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    const-string v12, "show_htc_application_log"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    const-string v12, "both_network_option"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x92

    if-ne v12, v13, :cond_8

    .line 314
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    :goto_3
    if-eqz v11, :cond_9

    const-string v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 321
    const-string v12, "htc_error_report_setting"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    const-string v12, "send_htc_error_report"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    const-string v12, "show_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    const-string v12, "send_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 316
    :cond_8
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 328
    :cond_9
    if-eqz v5, :cond_a

    const-string v12, "yes"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 329
    const-string v12, "send_htc_error_report"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    :cond_a
    if-eqz v7, :cond_b

    const-string v12, "yes"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 332
    const-string v12, "show_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    const-string v12, "send_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    :cond_b
    if-eqz v1, :cond_c

    const-string v12, "yes"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 337
    const-string v12, "htc_error_report_auto_send"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    :cond_c
    if-eqz v0, :cond_d

    const-string v12, "yes"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 341
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    :cond_d
    if-eqz v9, :cond_2

    const-string v12, "yes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 345
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    const-string v12, "both_network_option"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 353
    :cond_e
    if-eqz v11, :cond_f

    const-string v12, "yes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 354
    const-string v12, "htc_error_report_setting"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    const-string v12, "send_htc_error_report"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    const-string v12, "show_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    const-string v12, "send_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 361
    :cond_f
    if-eqz v9, :cond_10

    const-string v12, "yes"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 362
    const-string v12, "htc_error_report_prefer_network"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 363
    const-string v12, "both_network_option"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    :cond_10
    if-eqz v7, :cond_11

    const-string v12, "yes"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 367
    const-string v12, "show_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    const-string v12, "send_htc_application_log"

    const-string v13, "0"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 371
    :cond_11
    const-string v12, "show_htc_application_log"

    const-string v13, "1"

    invoke-direct {p0, v2, v12, v13}, Lcom/htc/feedback/ReceiverService;->setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2
.end method

.method private getValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cr"
    .parameter "setting"

    .prologue
    .line 70
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ReceiverService"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTellHTCEnabled(Landroid/content/ContentResolver;)Z
    .locals 5
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableErrorRport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    :goto_0
    return v1

    .line 82
    :cond_0
    :try_start_0
    const-string v3, "htc_error_report_setting"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/htc/feedback/ReceiverService;->reportSetting:Z

    .line 83
    const-string v3, "send_htc_error_report"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/htc/feedback/ReceiverService;->reportEnable:Z

    .line 84
    const-string v3, "htc_error_report_auto_send"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/htc/feedback/ReceiverService;->autoSend:Z

    .line 88
    iget-boolean v2, p0, Lcom/htc/feedback/ReceiverService;->reportSetting:Z

    iget-boolean v1, p0, Lcom/htc/feedback/ReceiverService;->reportEnable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 82
    goto :goto_1

    :cond_2
    move v3, v1

    .line 83
    goto :goto_2

    :cond_3
    move v2, v1

    .line 84
    goto :goto_3

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private loadCustomizeData()Landroid/os/Bundle;
    .locals 13

    .prologue
    .line 207
    const-string v2, "content://customization_settings/SettingTable/application_Crash_Report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 209
    .local v8, customizationBundle:Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 210
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/feedback/ReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 214
    if-eqz v7, :cond_0

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 216
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 218
    .local v6, columnIndex:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 222
    .local v10, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 223
    .local v12, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v10

    invoke-virtual {v12, v10, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 225
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .local v9, customizationBundle:Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 232
    .end local v6           #columnIndex:I
    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .end local v10           #data:[B
    .end local v12           #parcel:Landroid/os/Parcel;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    :cond_0
    if-eqz v7, :cond_1

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_1
    const/4 v7, 0x0

    .line 237
    :goto_0
    return-object v8

    .line 229
    :catch_0
    move-exception v11

    .line 230
    .local v11, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "ReceiverService"

    const-string v3, "loadCustomizeData fail"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    if-eqz v7, :cond_2

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_2
    const/4 v7, 0x0

    .line 236
    goto :goto_0

    .line 232
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v7, :cond_3

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_3
    const/4 v7, 0x0

    throw v2

    .line 232
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v6       #columnIndex:I
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    .restart local v10       #data:[B
    .restart local v12       #parcel:Landroid/os/Parcel;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_2

    .line 229
    .end local v8           #customizationBundle:Landroid/os/Bundle;
    .restart local v9       #customizationBundle:Landroid/os/Bundle;
    :catch_1
    move-exception v11

    move-object v8, v9

    .end local v9           #customizationBundle:Landroid/os/Bundle;
    .restart local v8       #customizationBundle:Landroid/os/Bundle;
    goto :goto_1
.end method

.method private notifySystemCrash(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, isKernelCrash:Z
    const-string v8, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 183
    .local v5, report:Landroid/os/Parcelable;
    if-nez v5, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :cond_0
    const-string v8, "ReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isKernelCrash: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/htc/feedback/ReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    .local v0, appContext:Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/htc/feedback/SystemCrashActivity;

    invoke-direct {v6, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v6, systemCrashIntent:Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 191
    const-string v8, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    const/high16 v8, 0x7f07

    invoke-virtual {p0, v8}, Lcom/htc/feedback/ReceiverService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 194
    .local v7, title:Ljava/lang/CharSequence;
    const v8, 0x7f070053

    invoke-virtual {p0, v8}, Lcom/htc/feedback/ReceiverService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 195
    .local v2, message:Ljava/lang/CharSequence;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/htc/feedback/ReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 196
    .local v3, nm:Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 197
    .local v4, notification:Landroid/app/Notification;
    const/high16 v8, 0x7f02

    iput v8, v4, Landroid/app/Notification;->icon:I

    .line 198
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Landroid/app/Notification;->when:J

    .line 199
    iput-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 200
    const/16 v8, 0x12

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 201
    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v0, v8, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v0, v7, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 203
    const v8, 0x10802cd

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 204
    return-void
.end method

.method private setValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "cr"
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 60
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ReceiverService"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public autoSendReport(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 145
    const-string v7, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport;

    .line 147
    .local v5, report:Landroid/app/ApplicationErrorReport;
    const/4 v3, 0x0

    .line 148
    .local v3, doBugreport:Z
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->inSystem()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    new-instance v4, Lcom/htc/utils/ulog/UPolicy;

    const-string v7, "com.htc.feedback"

    invoke-direct {v4, v7}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 150
    .local v4, policy:Lcom/htc/utils/ulog/UPolicy;
    move-object v6, v5

    .line 151
    .local v6, reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    if-nez v5, :cond_0

    const-string v2, "LASTKMSG"

    .line 152
    .local v2, category:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/utils/ulog/UPolicy;->canLogErrorReport(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
    .end local v2           #category:Ljava/lang/String;
    .end local v4           #policy:Lcom/htc/utils/ulog/UPolicy;
    .end local v6           #reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    :goto_1
    return-void

    .line 151
    .restart local v4       #policy:Lcom/htc/utils/ulog/UPolicy;
    .restart local v6       #reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    :cond_0
    invoke-interface {v6}, Landroid/app/HtcIfApplicationErrorReport;->getDropBoxTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 158
    .restart local v2       #category:Ljava/lang/String;
    :cond_1
    const-string v7, "extra"

    const-string v8, "bugreport"

    invoke-virtual {v4, v7, v8}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 161
    .end local v2           #category:Ljava/lang/String;
    .end local v4           #policy:Lcom/htc/utils/ulog/UPolicy;
    .end local v6           #reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, autoSendIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 163
    const-string v7, "msg"

    const-string v8, "auto send"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/htc/feedback/ReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, appContext:Landroid/content/Context;
    if-eqz v5, :cond_4

    iget v7, v5, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v3, :cond_4

    .line 168
    :cond_3
    const-class v7, Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReceiverService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 172
    :cond_4
    const-class v7, Lcom/htc/feedback/FeedbackService;

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReceiverService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/htc/feedback/ReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v9, "com.android.updater.NOTIFY_SYSTEM_CRASH"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 104
    invoke-direct {p0, v2}, Lcom/htc/feedback/ReceiverService;->isTellHTCEnabled(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 107
    iget-boolean v9, p0, Lcom/htc/feedback/ReceiverService;->autoSend:Z

    if-eqz v9, :cond_2

    .line 108
    invoke-virtual {p0, p1}, Lcom/htc/feedback/ReceiverService;->autoSendReport(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/feedback/ReceiverService;->notifySystemCrash(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v9, "android.intent.action.APP_ERROR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 112
    invoke-direct {p0, v2}, Lcom/htc/feedback/ReceiverService;->isTellHTCEnabled(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    iget-boolean v9, p0, Lcom/htc/feedback/ReceiverService;->autoSend:Z

    if-eqz v9, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/feedback/ReceiverService;->autoSendReport(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_4
    const-string v9, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 118
    const-string v9, "CID"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 119
    .local v0, CID:Z
    const-string v9, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, customizedReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/htc/feedback/ReceiverService;->customizeCrashReport()V

    goto :goto_0

    .line 125
    .end local v0           #CID:Z
    .end local v3           #customizedReason:Ljava/lang/String;
    :cond_5
    const-string v9, "android.htc.intent.action.NOTIFY_SYSTEM_NATIVE_CRASH"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    const-string v9, "com.htc.INFO_PATH"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .local v7, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    const-string v9, "/data"

    invoke-static {v9, v7}, Lcom/htc/feedback/DeviceStatus;->dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 132
    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 137
    if-eqz v7, :cond_0

    .line 138
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v9

    goto :goto_0

    .line 133
    .end local v5           #file:Ljava/io/File;
    .end local v7           #fileWriter:Ljava/io/FileWriter;
    .end local v8           #path:Ljava/lang/String;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 134
    .local v4, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v9, "ReceiverService"

    const-string v10, "Dump device status error:"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    if-eqz v6, :cond_0

    .line 138
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 139
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 136
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 137
    :goto_2
    if-eqz v6, :cond_6

    .line 138
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    :cond_6
    :goto_3
    throw v9

    :catch_3
    move-exception v10

    goto :goto_3

    .line 136
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fileWriter:Ljava/io/FileWriter;
    .restart local v8       #path:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #fileWriter:Ljava/io/FileWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    goto :goto_2

    .line 133
    .end local v6           #fileWriter:Ljava/io/FileWriter;
    .restart local v7       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #fileWriter:Ljava/io/FileWriter;
    .restart local v6       #fileWriter:Ljava/io/FileWriter;
    goto :goto_1
.end method
