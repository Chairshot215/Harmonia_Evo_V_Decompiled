.class public Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;
.super Landroid/app/Activity;
.source "TellHtcPrivacyStatementActivity.java"


# static fields
.field public static final DISPLAY_ACCEPT_BUTTON:Ljava/lang/String; = "display_accept_button"

.field public static final DISPLAY_ERROR_REPORT_TOS:Ljava/lang/String; = "display_error_report_tos"

.field public static final LOCAL_PRIVACY_STATEMENT:Ljava/lang/String; = "local_privacy_statement"

.field private static final PRIVACY_STATEMENT_HAS_RUN:Ljava/lang/String; = "PrivacyStatementHasRun"

.field private static final REQUEST_CODE_PRIVACY_USAGE:I = 0x3eb

.field public static final RESULT_CODE_ACCEPT:I = 0x7d0

.field public static final RESULT_CODE_BACK:I = 0x7d2

.field public static final RESULT_CODE_DECLINE:I = 0x7d1

.field public static final RESULT_CODE_SETTING:I = 0x7d3

.field private static final TAG:Ljava/lang/String; = "OOBE_TellHtcPrivacyStatementActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "setting"

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const-string v1, ""

    goto :goto_0
.end method

.method private haveConnected()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, result:Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 212
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    const-string v5, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v6, "haveConnected(): info.isConnected() is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return v4

    .line 219
    :cond_0
    const-string v6, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v7, "haveConnected(): info==null or info.isConnected() is false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 223
    .local v2, info3g:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    const-string v5, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v6, "haveConnected(): info3g.isConnected() is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    const-string v4, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v6, "haveConnected(): info3g==null or info3g.isConnected() is false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 232
    goto :goto_0
.end method

.method private setResultCode(II)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    .line 184
    invoke-super {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 185
    invoke-static {p1, p2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setTellHtcResult(II)V

    .line 186
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v1, 0x1

    .line 76
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startPrivacyStatement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.feedback"

    const-string v2, "com.htc.feedback.PrivacyPageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "display_accept_button"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    const-string v1, "display_error_report_tos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v1, "local_privacy_statement"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method

.method private writeUsageLog(Ljava/lang/String;)V
    .locals 6
    .parameter "isOptIn"

    .prologue
    .line 190
    const-string v1, "OOBE_TellHtcPrivacyStatementActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tell htc setting changed, isOptIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 195
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "feedback_usageOpt"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "is_optIn"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 201
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 204
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 205
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 123
    const-string v1, "OOBE_TellHtcPrivacyStatementActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "send_htc_application_log"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, mTellHtc:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->setResultCode(II)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->finish()V

    .line 180
    return-void

    .line 128
    :pswitch_0
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_3

    .line 130
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 132
    :cond_1
    const-string v1, "send_htc_application_log"

    const-string v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 134
    :cond_2
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    goto :goto_0

    .line 137
    :cond_3
    const/16 v1, 0x7d1

    if-ne p2, v1, :cond_6

    .line 139
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    .line 141
    :cond_4
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-nez v1, :cond_5

    const-string v1, "false"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 142
    :cond_5
    const-string v1, "send_htc_application_log"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    goto :goto_0

    .line 146
    :cond_6
    const/16 v1, 0x7d2

    if-ne p2, v1, :cond_9

    .line 148
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v0, :cond_0

    .line 150
    :cond_7
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-nez v1, :cond_8

    const-string v1, "false"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 151
    :cond_8
    const-string v1, "send_htc_application_log"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    goto :goto_0

    .line 155
    :cond_9
    const/16 v1, 0x7d3

    if-ne p2, v1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->haveConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    if-nez v0, :cond_0

    .line 166
    :cond_a
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-nez v1, :cond_b

    const-string v1, "false"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 167
    :cond_b
    const-string v1, "send_htc_application_log"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    sput-boolean v4, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const-string v0, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const/4 v0, 0x1

    const-string v1, "PrivacyStatementHasRun"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 88
    const-string v0, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v1, "Privacy Statement Has Run!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;->startPrivacyStatement()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 98
    const-string v0, "OOBE_TellHtcPrivacyStatementActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, "PrivacyStatementHasRun"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method
