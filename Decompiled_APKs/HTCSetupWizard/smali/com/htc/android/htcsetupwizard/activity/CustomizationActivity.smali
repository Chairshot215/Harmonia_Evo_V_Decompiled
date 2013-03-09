.class public Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;
.super Landroid/app/Activity;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_RESTORE:Ljava/lang/String; = "com.android.updater.CHECK_RESTORE"

.field private static final ACTION_START_RESTORE:Ljava/lang/String; = "com.android.updater.START_RESTORE"

.field private static final BOOT_IMG_POSTFIX:Ljava/lang/String; = ".png"

.field private static final BOOT_IMG_PREFIX:Ljava/lang/String; = "/system/customize/resource/boot_"

.field private static final BROADCAST_INTENT_ACTION_CSL:Ljava/lang/String; = "com.htc.action.CSL"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_PICKER:Ljava/lang/String; = "com.htc.action.CustomizationPicker"

.field private static final BROADCAST_INTENT_ROSIE_READY:Ljava/lang/String; = "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

.field private static final CASE_FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field private static final CLASS_CSL_SELECTION:Ljava/lang/String; = "com.htc.android.htcsetupwizard.csl.CslSelectionActivity"

.field private static final CLASS_CUSTOMIZATION_PICKER_SELECTION:Ljava/lang/String; = "com.htc.android.htcsetupwizard.activity.CustomizationPickerActivity"

.field private static final CSL_PROFILE_PATH:Ljava/lang/String; = "/system/customize/csl_mns_map.xml"

.field private static final CUSTOMIZATIONSETUP_CLASS_NAME:Ljava/lang/String; = "com.htc.CustomizationSetup"

.field private static final CUSTOMIZATIONSETUP_SETUP_SERVICE:Ljava/lang/String; = "com.htc.CustomizationSetup.SetupService"

.field private static final DIALOG_HTC_PROGRESS:I = 0x1

.field private static final KEY_CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field private static final MSG_DISMISS_DIALOG:I = 0xf

.field private static final MSG_SHOW_LOADING_PROGRESS_DIALOG:I = 0xd

.field private static final MSG_SHOW_UNLOCKING_PROGRESS_DIALOG:I = 0xc

.field private static final MSG_UPDATE_PRECENT:I = 0xe

.field private static final OMADM:I = 0x14

.field private static final PACKAGE_HTCSETUPWIZARD:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final REQUEST_CHECK_RESTORE:I = 0x0

.field private static final REQUEST_START_RESTORE:I = 0x1

.field private static final RESULT_RESTORE_ERROR:I = 0x21

.field private static final RESULT_RESTORE_NONE:I = 0x11

.field private static final RESULT_RESTORE_OK:I = 0x20

.field private static final RESULT_RESTORE_READY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "OOBE_CustomizationActivity"


# instance fields
.field isReceiverRegistered:Z

.field private mCustomizedReason:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

.field private mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

.field private mbSIMChecked:Z

.field private misRosieReady:Z

.field serviceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->misRosieReady:Z

    .line 106
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mbSIMChecked:Z

    .line 116
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 117
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 118
    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 120
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isReceiverRegistered:Z

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mCustomizedReason:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    .line 225
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mbSIMChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleSIMState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCSL()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationPicker()V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->misRosieReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->showUnlockingStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->showLoadingStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->updProgressPrecent(I)V

    return-void
.end method

.method private getFinalString(I)Ljava/lang/String;
    .locals 3
    .parameter "str_id"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, string:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isOpenChannelWorldPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "isOpenChannelWorldPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v1, "SIM"

    const-string v2, "UIM/SIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isCT:Z

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "CT Project"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLoadingProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 412
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "get loading progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 415
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const v1, 0x7f0a011b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setIndeterminate(Z)V

    .line 418
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setCancelable(Z)V

    .line 419
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    return-object v0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 396
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "get unlocking progress dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 399
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const v1, 0x7f0a00f8

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setIndeterminate(Z)V

    .line 402
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setCancelable(Z)V

    .line 403
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    return-object v0
.end method

.method private handleCSL()V
    .locals 8

    .prologue
    .line 313
    const-string v5, "OOBE_CustomizationActivity"

    const-string v6, "handleCSL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-eqz v5, :cond_0

    .line 315
    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v5}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->dismiss()V

    .line 318
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/system/customize/csl_mns_map.xml"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    .line 320
    .local v4, isFound:Z
    const-string v5, "OOBE_CustomizationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/customize/csl_mns_map.xml found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-nez v4, :cond_1

    .line 339
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v0, cslIntent:Landroid/content/Intent;
    const-string v5, "com.htc.android.htcsetupwizard"

    const-string v6, "com.htc.android.htcsetupwizard.csl.CslSelectionActivity"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/16 v5, 0x12d

    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "OOBE_CustomizationActivity"

    const-string v6, "ActivityNotFoundException: CslSelectionActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 335
    :catch_1
    move-exception v3

    .line 336
    .local v3, ie:Ljava/lang/InterruptedException;
    const-string v5, "OOBE_CustomizationActivity"

    const-string v6, "Should not InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCustomizationFinish()V
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/high16 v12, 0x80

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 428
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->setResult(I)V

    .line 430
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-ne v7, v10, :cond_a

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->hasOOBEstate()Z

    move-result v7

    if-nez v7, :cond_a

    .line 433
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasOOBEstate(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->hasOOBEstate()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v2, "0"

    .line 435
    .local v2, Lock_state:Ljava/lang/String;
    const-string v7, "ro.omadm.lockstate"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x95

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x21

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 439
    :cond_0
    const-string v7, "dm.hfa"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 444
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "Start OMADM_SUC"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v0, Asyncintent:Landroid/content/Intent;
    const-string v7, "Tag"

    const-string v8, "SETUP"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v7, "Option"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v7, "Status"

    invoke-virtual {v0, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v7, "DialogStyle"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v7, "Title"

    const-string v8, "Hands Free Activation"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v7, "Message"

    const-string v8, "Contacting network..."

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v7, "ButtonStyle"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 453
    const-string v7, "Button1_Text"

    const-string v8, "Cancel"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v7, "AcquirePower"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v7, "DisableKeyGuard"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    const-string v7, "AutoFinishActivity"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    const-string v7, "QueuePriority"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v7, "DisableBackKey"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    const-string v7, "DisableSearchKey"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    const-string v7, "DisableTouchEvent"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    const-string v7, "AutoResumeForegroundTime"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v7, "OOBECase"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    const-string v7, "com.redbend.vdmc"

    const-string v8, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v7, 0x14

    :try_start_0
    invoke-virtual {p0, v0, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 471
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.omadm.core.start"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v6, i:Landroid/content/Intent;
    const-string v7, "SESSION_TYPE"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v7, "com.redbend.vdmc"

    const-string v8, "com.htc.omadm.core.DMService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0           #Asyncintent:Landroid/content/Intent;
    .end local v6           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x91

    if-eq v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x93

    if-ne v7, v8, :cond_7

    .line 536
    :cond_2
    const-string v7, "dm.hfa"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 537
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "Start OMADM_SUC"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v1, HfaIntent:Landroid/content/Intent;
    const-string v7, "option"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v7, "status"

    invoke-virtual {v1, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v7, "context"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v7, "enableMenu"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    const-string v7, "com.htc.android.omadm.service"

    const-string v8, "com.htc.android.omadm.libgo.PreloadDialog"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const/16 v7, 0x14

    :try_start_1
    invoke-virtual {p0, v1, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 623
    .end local v1           #HfaIntent:Landroid/content/Intent;
    .end local v2           #Lock_state:Ljava/lang/String;
    :goto_1
    return-void

    .line 477
    .restart local v0       #Asyncintent:Landroid/content/Intent;
    .restart local v2       #Lock_state:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 478
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "OMADM_SUC, CHECK_RESTORE fail, exception occur."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_SUC exception cause , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_SUC exception , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    goto/16 :goto_0

    .line 488
    .end local v0           #Asyncintent:Landroid/content/Intent;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "Start OMADM_FUMO_DONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "omadm_has_fumo_done"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 490
    .local v5, fumoDone:I
    if-ne v5, v10, :cond_4

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 492
    .restart local v0       #Asyncintent:Landroid/content/Intent;
    const-string v7, "Tag"

    const-string v8, "SETUP"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v7, "Option"

    const/4 v8, 0x6

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v7, "Status"

    const/16 v8, 0x13

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v7, "DialogStyle"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v7, "Title"

    const-string v8, "Firmware Update"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v7, "Message"

    const-string v8, "Sending update status to server..."

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v7, "ButtonStyle"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const-string v7, "AcquirePower"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const-string v7, "DisableKeyGuard"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    const-string v7, "AutoFinishActivity"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    const-string v7, "QueuePriority"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v7, "DisableBackKey"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    const-string v7, "DisableSearchKey"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v7, "DisableTouchEvent"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v7, "AutoResumeForegroundTime"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v7, "OOBECase"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    const/high16 v7, 0x80

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    const-string v7, "com.redbend.vdmc"

    const-string v8, "com.htc.omadm.gui.ext.BaseDialog"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const/16 v7, 0x14

    invoke-virtual {p0, v0, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.omadm.core.start"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .restart local v6       #i:Landroid/content/Intent;
    const-string v7, "SESSION_TYPE"

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    const-string v7, "com.redbend.vdmc"

    const-string v8, "com.htc.omadm.core.DMService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 524
    .end local v0           #Asyncintent:Landroid/content/Intent;
    .end local v5           #fumoDone:I
    .end local v6           #i:Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 525
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "OMADM_FUMO_DONE, CHECK_RESTORE fail, exception occur."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_FUMO_DONE exception cause , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_FUMO_DONE exception , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    goto/16 :goto_0

    .line 520
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #fumoDone:I
    :cond_4
    :try_start_3
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "unexpect behavior, please check."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 549
    .end local v5           #fumoDone:I
    .restart local v1       #HfaIntent:Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 550
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "OMADM_SUC, CHECK_RESTORE fail, exception occur."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_SUC exception cause , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_SUC exception , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    .end local v1           #HfaIntent:Landroid/content/Intent;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.htc.android.omadm.service/fumo_done"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v4, file:Ljava/io/File;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "Start OMADM_FUMO_DONE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    .line 560
    .local v5, fumoDone:Z
    if-eqz v5, :cond_6

    .line 561
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 562
    .restart local v1       #HfaIntent:Landroid/content/Intent;
    const-string v7, "option"

    const/4 v8, 0x6

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    const-string v7, "status"

    const/16 v8, 0x13

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string v7, "context"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    const-string v7, "enableMenu"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    const-string v7, "com.htc.android.omadm.service"

    const-string v8, "com.htc.android.omadm.libgo.PreloadDialog"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/16 v7, 0x14

    :try_start_4
    invoke-virtual {p0, v1, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 572
    :catch_3
    move-exception v3

    .line 573
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "OMADM_FUMO_DONE, CHECK_RESTORE fail, exception occur."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_FUMO_DONE exception cause , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_FUMO_DONE exception , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 580
    .end local v1           #HfaIntent:Landroid/content/Intent;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "unexpect behavior, please check."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->finish()V

    goto/16 :goto_1

    .line 585
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fumoDone:Z
    :cond_7
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_9

    .line 586
    const-string v7, "dm.hfa"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 587
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "Start OMADM_HERC"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 589
    .restart local v1       #HfaIntent:Landroid/content/Intent;
    const-string v7, "Option"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v7, "Status"

    invoke-virtual {v1, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v7, "Context"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v7, "EnableMenu"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    const-string v7, "com.htc.android.omadm"

    const-string v8, "com.htc.android.omadm.gui.generaldialog.DMGuiHFADialog"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/16 v7, 0x14

    :try_start_5
    invoke-virtual {p0, v1, v7}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 601
    :catch_4
    move-exception v3

    .line 602
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "OOBE_CustomizationActivity"

    const-string v8, "OMADM_HERC, CHECK_RESTORE fail, exception occur."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_HERC exception cause , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v7, "OOBE_CustomizationActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OMADM_HERC exception , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 610
    .end local v1           #HfaIntent:Landroid/content/Intent;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_8
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    goto/16 :goto_1

    .line 615
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    goto/16 :goto_1

    .line 621
    .end local v2           #Lock_state:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    goto/16 :goto_1
.end method

.method private handleCustomizationPicker()V
    .locals 5

    .prologue
    .line 342
    const-string v3, "OOBE_CustomizationActivity"

    const-string v4, "handle CustomizationPicker"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->dismiss()V

    .line 346
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v0, customizationpickerIntent:Landroid/content/Intent;
    const-string v3, "com.htc.android.htcsetupwizard"

    const-string v4, "com.htc.android.htcsetupwizard.activity.CustomizationPickerActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const/16 v3, 0x28

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "OOBE_CustomizationActivity"

    const-string v4, "ActivityNotFoundException: activity.CustomizationPickerActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 356
    :catch_1
    move-exception v2

    .line 357
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v3, "OOBE_CustomizationActivity"

    const-string v4, "Should not InterruptedException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSIMState(Ljava/lang/String;)V
    .locals 4
    .parameter "strState"

    .prologue
    .line 304
    const-string v0, "OOBE_CustomizationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mbSIMChecked:Z

    .line 310
    :cond_0
    return-void
.end method

.method private hasOOBEstate()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 627
    const/4 v0, 0x0

    .line 629
    .local v0, HFA_FROM_OOBE:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v3

    .line 631
    :goto_0
    const-string v4, "OOBE_CustomizationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HFA will run by OOBE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 629
    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 634
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 635
    const-string v2, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cold boot] HFA will run by OOBE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 636
    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 164
    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->setContentView(I)V

    .line 166
    const-string v4, "ro.cid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, cid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/customize/resource/boot_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, pathName:Ljava/lang/String;
    const-string v4, "OOBE_CustomizationActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const v4, 0x7f0d0015

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 171
    .local v0, bk:Landroid/widget/ImageView;
    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 172
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "com.htc.action.CSL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v1, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v1, "com.htc.action.CustomizationPicker"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isReceiverRegistered:Z

    .line 272
    return-void
.end method

.method private showLoadingStatus()V
    .locals 2

    .prologue
    .line 372
    const v1, 0x7f0d0015

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    .local v0, bk:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 374
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getLoadingProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 377
    return-void
.end method

.method private showUnlockingStatus()V
    .locals 3

    .prologue
    .line 363
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "show unlocking progress dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const v1, 0x7f0d0015

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 365
    .local v0, bk:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 366
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 369
    return-void
.end method

.method private startHtcRestore()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 645
    const-string v4, "OOBE_CustomizationActivity"

    const-string v5, "Start Htc Restore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 648
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.updater.CHECK_RESTORE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, checkRestore:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isSkipSetupWizard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    const-string v4, "show_dialog"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    :cond_0
    const-string v4, "com.android.updater"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const/high16 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 654
    .local v2, info:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 657
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v4}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v0           #checkRestore:Landroid/content/Intent;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 659
    .restart local v0       #checkRestore:Landroid/content/Intent;
    .restart local v2       #info:Landroid/content/pm/ResolveInfo;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "OOBE_CustomizationActivity"

    const-string v5, "startHtcRestore(), CHECK_RESTORE fail, exception occur."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v4, "OOBE_CustomizationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHtcRestore() exception cause , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v4, "OOBE_CustomizationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHtcRestore() exception , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->finish()V

    goto :goto_0

    .line 671
    .end local v0           #checkRestore:Landroid/content/Intent;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->finish()V

    goto :goto_0
.end method

.method private updProgressPrecent(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 801
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    .line 802
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 804
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 806
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->misRosieReady:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 807
    add-int/lit8 v2, p1, 0x64

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 809
    :cond_0
    add-int/lit8 v2, p1, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 811
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    .line 812
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x6f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_1
    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    .line 815
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 214
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "Stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->stopService(Landroid/content/Intent;)Z

    .line 223
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "idata"

    .prologue
    const/4 v6, 0x1

    .line 677
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(), requestCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcOMADMFlag:Z

    if-ne v3, v6, :cond_0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startHtcRestore()V

    .line 748
    :goto_0
    return-void

    .line 683
    :cond_0
    const/16 v3, 0x12d

    if-ne p1, v3, :cond_2

    .line 684
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    const-string v1, ""

    .line 686
    .local v1, profilePath:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 687
    const-string v3, "MnsProfilePath"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    :cond_1
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get CSL result, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    .line 691
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v4, "com.htc.CustomizationSetup"

    const-string v5, "com.htc.CustomizationSetup.SetupService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v4, "MnsProfilePath"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 697
    .end local v1           #profilePath:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x28

    if-ne p1, v3, :cond_4

    .line 698
    const-string v1, ""

    .line 699
    .restart local v1       #profilePath:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 700
    const-string v3, "MnsProfilePath"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    :cond_3
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get CustomizationPicker result, path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    .line 703
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v4, "com.htc.CustomizationSetup"

    const-string v5, "com.htc.CustomizationSetup.SetupService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v4, "MnsProfilePath"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 709
    .end local v1           #profilePath:Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    if-ne v3, v6, :cond_8

    .line 710
    if-nez p1, :cond_9

    .line 711
    const/16 v3, 0x10

    if-ne p2, v3, :cond_7

    .line 712
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-eqz v3, :cond_5

    .line 713
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->dismiss()V

    .line 715
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-eqz v3, :cond_6

    .line 716
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mLoadingProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->dismiss()V

    .line 719
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.updater.START_RESTORE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v2, startRestore:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 722
    .end local v2           #startRestore:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "OOBE_CustomizationActivity"

    const-string v4, "onActivityResult(), START_RESTORE fail, exception occur."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() exception cause , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult() exception , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(), RESTORE failed. resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->finish()V

    goto/16 :goto_0

    .line 735
    :cond_9
    if-ne p1, v6, :cond_8

    .line 736
    const/16 v3, 0x20

    if-ne p2, v3, :cond_a

    .line 738
    invoke-virtual {p0, p2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->setResult(I)V

    goto :goto_1

    .line 742
    :cond_a
    const-string v3, "OOBE_CustomizationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(), RESTORE failed. resultCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 158
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 128
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->initialize()V

    .line 133
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->registerReceiver()V

    .line 135
    const-string v1, "com.htc.CustomizationSetup"

    invoke-static {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "CustomizationSetup package is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->handleCustomizationFinish()V

    .line 152
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    const-string v1, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mCustomizedReason:Ljava/lang/String;

    .line 143
    const-string v1, "OOBE_CustomizationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Customized reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    const-string v1, "OOBE_CustomizationActivity"

    const-string v2, "Start service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v2, "com.htc.CustomizationSetup"

    const-string v3, "com.htc.CustomizationSetup.SetupService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mCustomizedReason:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    const-string v2, "com.htc.CUSTOMIZED_REASON"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 785
    packed-switch p1, :pswitch_data_0

    .line 794
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 787
    :pswitch_0
    new-instance v0, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    .line 788
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setCancelable(Z)V

    .line 789
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setProgressStyle(I)V

    .line 790
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHtcProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 198
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isReceiverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->isReceiverRegistered:Z

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    :cond_0
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 753
    const-string v0, "OOBE_CustomizationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    sparse-switch p1, :sswitch_data_0

    .line 763
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 761
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 192
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 185
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 208
    const-string v0, "OOBE_CustomizationActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public oobeShowDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 768
    const-string v2, "OOBE_CustomizationActivity"

    const-string v3, "oobeShowDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mSimUnlockProgressDialog:Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/NoSearchProgressDialog;->dismiss()V

    .line 774
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->showDialog(I)V

    .line 775
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 776
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0xe

    iput v2, v1, Landroid/os/Message;->what:I

    .line 777
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 778
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_CustomizationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show dialog failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
