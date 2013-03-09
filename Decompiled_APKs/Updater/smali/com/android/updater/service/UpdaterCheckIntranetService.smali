.class public Lcom/android/updater/service/UpdaterCheckIntranetService;
.super Landroid/app/IntentService;
.source "UpdaterCheckIntranetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/service/UpdaterCheckIntranetService$EncryptedErrorCode;
    }
.end annotation


# static fields
.field public static final ACU_VAR_MANUAL:Ljava/lang/String; = "Manual"

.field public static final ACU_VAR_TRIGGER_TYPE:Ljava/lang/String; = "TriggerType"

.field public static final ENCRYPTED_VAR_ERROR:Ljava/lang/String; = "Err_Code"

.field private static final ENCRYPTED_VAR_FOTA_CANCEL:Ljava/lang/String; = "android.server.checkin.FOTA_CANCEL"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterCheckIntranetService"


# instance fields
.field private mCheckContext:Landroid/content/Context;

.field private mCheckIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "UpdaterCheckIntranetService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/service/UpdaterCheckIntranetService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/service/UpdaterCheckIntranetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/updater/service/UpdaterCheckIntranetService;->doCheckConfirmStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/updater/service/UpdaterCheckIntranetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/updater/service/UpdaterCheckIntranetService;->doCheckAcuConfirmStatus()V

    return-void
.end method

.method private doCheckAcuConfirmStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 252
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v0

    .line 253
    .local v0, checkinStatus:I
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 256
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 316
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "from_notify"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 262
    .local v3, isFromNotify:Z
    if-eq v0, v10, :cond_1

    if-eqz v3, :cond_3

    .line 263
    :cond_1
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "apkDetailList"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 265
    .local v5, tempString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "isFOTA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v5, v7}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDownloadPathInsideIntranet(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/updater/util/UpdaterNetworkCheck;->isOutIntranetError(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/updater/util/UpdaterNetworkCheck;->displayOutIntranetErrorMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 274
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #tempString:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/android/updater/util/NotificationUtil;->cancelAcuNotification(Landroid/content/Context;Z)V

    .line 275
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/updater/util/UpdaterUtil;->isInPhoneCall(Landroid/content/Context;)Z

    move-result v4

    .line 278
    .local v4, isInPhoneCall:Z
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "com.android.updater.ACU_CONFIRM_DOWNLOAD"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    new-instance v1, Landroid/content/ComponentName;

    const-string v7, "com.android.updater"

    const-string v8, "com.android.updater.UpdaterReceiver"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v1, comp:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 285
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "TriggerType"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, triggerType:Ljava/lang/String;
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v8, "TriggerType"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Manual"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    invoke-direct {p0, v3, v4}, Lcom/android/updater/service/UpdaterCheckIntranetService;->showAcuConfirmActivity(ZZ)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/updater/util/UpdaterUtil;->getTriggerFromIndividualFlag(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 295
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/updater/util/UpdaterUtil;->getShowDownloadDialogFlag(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 296
    invoke-direct {p0, v3, v4}, Lcom/android/updater/service/UpdaterCheckIntranetService;->showAcuConfirmActivity(ZZ)V

    goto/16 :goto_0

    .line 298
    :cond_5
    iget-object v7, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/android/updater/util/UpdaterUtil;->setShowDownloadDialogFlag(Landroid/content/Context;Z)V

    .line 299
    invoke-direct {p0, v4}, Lcom/android/updater/service/UpdaterCheckIntranetService;->setNotify(Z)V

    goto/16 :goto_0

    .line 304
    :cond_6
    if-eq v0, v10, :cond_7

    if-nez v3, :cond_7

    .line 311
    invoke-direct {p0, v4}, Lcom/android/updater/service/UpdaterCheckIntranetService;->setNotify(Z)V

    goto/16 :goto_0

    .line 314
    :cond_7
    invoke-direct {p0, v3, v4}, Lcom/android/updater/service/UpdaterCheckIntranetService;->showAcuConfirmActivity(ZZ)V

    goto/16 :goto_0
.end method

.method private doCheckConfirmStatus()V
    .locals 24

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "backup_action_string"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, strAction:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "backup_uri_string"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, strUri:Ljava/lang/String;
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->getCheckinStatus()I

    move-result v4

    .line 82
    .local v4, checkinStatus:I
    invoke-static {}, Lcom/android/updater/util/UpdaterUtil;->stopCheckin()V

    .line 85
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "Err_Code"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 92
    .local v8, errorCode:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    if-eqz v16, :cond_3

    const-string v20, "android.server.checkin.FOTA_CANCEL"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_2

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v8, v0, :cond_2

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v8, v0, :cond_3

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v8}, Lcom/android/updater/service/UpdaterCheckIntranetService;->encryptedPackageError(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 101
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v18

    .line 102
    .local v18, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    if-eqz v17, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v7

    .line 104
    .local v7, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-eqz v7, :cond_5

    iget v0, v7, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 105
    new-instance v19, Ljava/io/File;

    iget-object v0, v7, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v19, updateFile:Ljava/io/File;
    iget-object v0, v7, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadPath:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/cache/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 107
    .local v9, isCacheFile:Z
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    if-eqz v9, :cond_5

    .line 108
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7, v9}, Lcom/android/updater/util/UpdaterUtil;->verifyExistFOTAPackage(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;Lcom/android/updater/util/UpdaterUtil$DownloadInfo;Z)V

    goto/16 :goto_0

    .line 116
    .end local v7           #di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    .end local v9           #isCacheFile:Z
    .end local v19           #updateFile:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "from_notify"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 117
    .local v10, isFromNotify:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    if-eqz v10, :cond_7

    .line 118
    :cond_6
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/updater/util/UpdaterNetworkCheck;->isDownloadPathInsideIntranet(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterNetworkCheck;->isOutIntranetError(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterNetworkCheck;->displayOutIntranetErrorMessage(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 126
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterUtil;->isInPhoneCall(Landroid/content/Context;)Z

    move-result v11

    .line 130
    .local v11, isInPhoneCall:Z
    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/updater/util/UpdaterUtil;->isNeedToProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 140
    const/4 v12, 0x0

    .line 141
    .local v12, promptSizeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "promptSize"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v15

    .line 142
    .local v15, sizeMB:F
    const/16 v20, 0x0

    cmpl-float v20, v15, v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "promptVersion"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v15

    .line 143
    :cond_8
    const/16 v20, 0x0

    cmpl-float v20, v15, v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "package_size"

    const-wide/16 v22, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4980

    div-float v15, v20, v21

    .line 144
    :cond_9
    const/16 v20, 0x0

    cmpl-float v20, v15, v20

    if-lez v20, :cond_a

    .line 145
    const/high16 v20, 0x4480

    mul-float v20, v20, v15

    const/high16 v21, 0x4480

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 146
    .local v14, sizeByte:I
    invoke-static {v14}, Lcom/android/updater/util/UpdaterUtil;->byteToMBString(I)Ljava/lang/String;

    move-result-object v12

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "promptSize"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .end local v14           #sizeByte:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 155
    .local v6, cr:Landroid/content/ContentResolver;
    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 156
    const/16 v20, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "download_sdcard"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 157
    const/16 v20, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "promptVersion"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 158
    const/16 v20, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "promptFeature"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 159
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v6, v0, v12}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 160
    const/16 v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "force_update"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    .line 161
    const/16 v20, 0x7

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 163
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-string v20, "com.android.updater.DOWNLOAD_CHECK"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, alertIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 169
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDAUserTrial()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 170
    const-string v20, "wifiOnly"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    :goto_1
    const-string v20, "message"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f060005

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    .end local v3           #alertIntent:Landroid/content/Intent;
    :goto_2
    const/16 v20, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "optional"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/updater/db/FOTASettings;->putString(Landroid/content/ContentResolver;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 172
    .restart local v3       #alertIntent:Landroid/content/Intent;
    :cond_b
    const-string v20, "wifiOnly"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 183
    .end local v3           #alertIntent:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "com.android.updater.FOTA_CONFIRM_DOWNLOAD"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    new-instance v5, Landroid/content/ComponentName;

    const-string v20, "com.android.updater"

    const-string v21, "com.android.updater.UpdaterReceiver"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v5, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_e

    if-nez v10, :cond_e

    .line 189
    if-eqz v11, :cond_d

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/updater/util/NotificationUtil;->notifyDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 192
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/updater/util/NotificationUtil;->notifyDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_2

    .line 196
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    if-nez v10, :cond_f

    if-nez v11, :cond_f

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/NotificationUtil;->notifyDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "from_notify"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-class v22, Lcom/android/updater/ui/ConfirmActivity;

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/high16 v21, 0x1000

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 196
    :cond_f
    const/16 v20, 0x0

    goto :goto_3

    .line 209
    .end local v5           #comp:Landroid/content/ComponentName;
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v12           #promptSizeString:Ljava/lang/String;
    .end local v15           #sizeMB:F
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_0

    .line 211
    if-nez v16, :cond_11

    .line 212
    new-instance v13, Landroid/content/Intent;

    const-string v20, "com.android.updater.FOTA_ALERT"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v13, resultIntent:Landroid/content/Intent;
    const-string v20, "alert_type"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    :goto_4
    const/high16 v20, 0x1000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    .end local v13           #resultIntent:Landroid/content/Intent;
    :cond_11
    new-instance v13, Landroid/content/Intent;

    const-string v20, "com.android.updater.FOTA_ALERT"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v13       #resultIntent:Landroid/content/Intent;
    const-string v20, "alert_type"

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4
.end method

.method private encryptedPackageError(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "errorCode"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.FOTA_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, alertIntent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/updater/util/NotificationUtil;->cancelUpdateNotification(Landroid/content/Context;)V

    .line 235
    packed-switch p3, :pswitch_data_0

    .line 246
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void

    .line 237
    :pswitch_0
    const-string v1, "alert_type"

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v1, "alert_type"

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 243
    :pswitch_2
    const-string v1, "alert_type"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setNotify(Z)V
    .locals 3
    .parameter "isInPhoneCall"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/NotificationUtil;->notifyAcuDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/updater/util/NotificationUtil;->notifyAcuDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private showAcuConfirmActivity(ZZ)V
    .locals 3
    .parameter "isFromNotify"
    .parameter "isInPhoneCall"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/updater/util/NotificationUtil;->notifyAcuDownload(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 332
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    const-class v2, Lcom/android/updater/ui/AcuConfirmActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const-string v1, "from_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 56
    iput-object p0, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/android/updater/service/UpdaterCheckIntranetService;->mCheckIntent:Landroid/content/Intent;

    .line 59
    new-instance v0, Lcom/android/updater/service/UpdaterCheckIntranetService$1;

    invoke-direct {v0, p0}, Lcom/android/updater/service/UpdaterCheckIntranetService$1;-><init>(Lcom/android/updater/service/UpdaterCheckIntranetService;)V

    .line 73
    .local v0, checkThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method
