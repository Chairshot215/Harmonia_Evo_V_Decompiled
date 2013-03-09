.class public Lcom/htc/sie/tool/COTAActivity;
.super Landroid/app/Activity;
.source "COTAActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sie/tool/COTAActivity$1;,
        Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;
    }
.end annotation


# static fields
.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "COTAActivity"


# instance fields
.field private mCustomizedReason:Ljava/lang/String;

.field private mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sie/tool/COTAActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 51
    return-void
.end method

.method private COTA_changeCustomizationSetup()V
    .locals 13

    .prologue
    .line 85
    const-string v9, "COTAActivity"

    const-string v10, "COTA_changeCustomizationSetup+"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 99
    .local v4, nStartParsingTime:J
    const-string v9, "COTAActivity"

    const-string v10, "[COTA_changeCustomizationSetup]Start COTA_customization wizard part."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v9, "ro.cid"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, cid:Ljava/lang/String;
    const-string v7, ""

    .line 102
    .local v7, strOperator:Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/htc/sie/tool/COTAActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 103
    .local v8, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_0

    .line 104
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 105
    const-string v9, "COTAActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[COTA_changeCustomizationSetup]Current MCC + MNC = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    const-string v9, "COTAActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[COTA_changeCustomizationSetup]CID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,MNS:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v6, Lcom/htc/sie/tool/RunX;

    invoke-direct {v6, p0}, Lcom/htc/sie/tool/RunX;-><init>(Landroid/content/Context;)V

    .line 109
    .local v6, runx:Lcom/htc/sie/tool/RunX;
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v9}, Lcom/htc/sie/tool/RunX;->applyCWData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    const-string v9, "COTAActivity"

    const-string v10, "[COTA_changeCustomizationSetup]End COTA_customization wizard part."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 114
    .local v1, currentTime:J
    const-string v9, "COTAActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[COTA_changeCustomizationSetup]total COTA_customization parsing time == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v1, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v9, "COTAActivity"

    const-string v10, "COTA_changeCustomizationSetup-"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #cid:Ljava/lang/String;
    .end local v1           #currentTime:J
    .end local v4           #nStartParsingTime:J
    .end local v6           #runx:Lcom/htc/sie/tool/RunX;
    .end local v7           #strOperator:Ljava/lang/String;
    .end local v8           #teleMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v3

    .line 164
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "COTAActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[COTA_changeCustomizationSetup]Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sie/tool/COTAActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/sie/tool/COTAActivity;->COTA_changeCustomizationSetup()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sie/tool/COTAActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/sie/tool/COTAActivity;->postExecution()V

    return-void
.end method

.method private cleanUp(Z)V
    .locals 4
    .parameter "resetNotify"

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/htc/sie/tool/COTAActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    invoke-virtual {p0}, Lcom/htc/sie/tool/COTAActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "COTAActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cleanUp]Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postExecution()V
    .locals 6

    .prologue
    .line 205
    const-string v3, "COTAActivity"

    const-string v4, "postExecution"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    const-string v3, "com.htc.FOTA_UPGRADE"

    iput-object v3, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, forceIntent:Landroid/content/Intent;
    const-string v3, "CID"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    iget-object v4, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/htc/sie/tool/COTAActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 217
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    iget-object v4, p0, Lcom/htc/sie/tool/COTAActivity;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sie/tool/COTAActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 219
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/sie/tool/COTAActivity;->cleanUp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1           #forceIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "COTAActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[postExecution]Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 170
    const-string v2, "COTAActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sie/tool/COTAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, strLoadingMessage:Ljava/lang/String;
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sie/tool/COTAActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 194
    new-instance v2, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;-><init>(Lcom/htc/sie/tool/COTAActivity;Lcom/htc/sie/tool/COTAActivity$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->execute([Ljava/lang/Object;)Lcom/htc/CustomizationSetup/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1           #strLoadingMessage:Ljava/lang/String;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "COTAActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onCreate]Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "COTAActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method
