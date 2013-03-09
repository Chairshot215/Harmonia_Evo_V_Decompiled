.class public Lcom/htc/CustomizationSetup/SetupService;
.super Landroid/app/Service;
.source "SetupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/CustomizationSetup/SetupService$3;,
        Lcom/htc/CustomizationSetup/SetupService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.HtcLocationService"

.field private static final BOOT_IMG_POSTFIX:Ljava/lang/String; = ".png"

.field private static final BOOT_IMG_PREFIX:Ljava/lang/String; = "/system/customize/resource/boot_"

.field private static final BROADCAST_INTENT_ACTION_CSL:Ljava/lang/String; = "com.htc.action.CSL"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_PICKER:Ljava/lang/String; = "com.htc.action.CustomizationPicker"

.field private static final CID_MAP_FILE:Ljava/lang/String; = "cid_map.xml"

.field private static final CSL_PROFILE_PATH:Ljava/lang/String; = "/system/customize/csl_mns_map.xml"

.field private static final CUSTOMIZATION_CID_ROOT:Ljava/lang/String; = "/system/customize/CID/"

.field private static final CUSTOMIZATION_MNS_ROOT:Ljava/lang/String; = "/system/customize/MNS/"

.field private static final CUSTOMIZATION_ROOT:Ljava/lang/String; = "/system/customize/"

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_MAPPED_MNS_PATH:Ljava/lang/String; = "MnsProfilePath"

.field private static final KEY_SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field private static final LOCALE_SHOW_MENU:Ljava/lang/String; = "Show Menu"

.field private static final LOG_TAG:Ljava/lang/String; = "Customization_SetupService"

.field private static final MNS_MAP_FILE:Ljava/lang/String; = "mns_map.xml"

.field private static final MSG_HANDLE_SIM_STATE:I = 0xa

.field private static final MSG_SIM_STATE_TIMEOUT:I = 0xb

.field private static final MVNO_MAP_FILE:Ljava/lang/String; = "mvno_map.xml"

.field private static final PREFS_NAME:Ljava/lang/String; = "CustomizePref"

.field private static final PREF_HAS_SETUP:Ljava/lang/String; = "HasSetup"

.field private static final SIM_STATE_TIMEOUT:Ljava/lang/String; = "SimState_Timeout"

.field private static final SIM_STATE_TIMEOUT_DURATION:J = 0xea60L

.field private static final USE_ASYNCTASK:Z = true


# instance fields
.field private MAX_WAITING_TIME:J

.field private isSetMvnoMap:Ljava/lang/Boolean;

.field private isTimeout:Ljava/lang/Boolean;

.field private mCustomizedReason:Ljava/lang/String;

.field private mGID:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegistered:Z

.field private mIsForeground:Z

.field private mLaunchByIcon:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMState:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private mStartServiceTime:J

.field private mbSIMChecked:Z

.field private profilePath:Ljava/lang/String;

.field private serviceThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mLaunchByIcon:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 85
    iput-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHasRegistered:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mStartServiceTime:J

    .line 89
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/htc/CustomizationSetup/SetupService;->MAX_WAITING_TIME:J

    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->isSetMvnoMap:Ljava/lang/Boolean;

    .line 104
    iput-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mIsForeground:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/htc/CustomizationSetup/SetupService$1;

    invoke-direct {v0, p0}, Lcom/htc/CustomizationSetup/SetupService$1;-><init>(Lcom/htc/CustomizationSetup/SetupService;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/htc/CustomizationSetup/SetupService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SetupService;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/CustomizationSetup/SetupService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/CustomizationSetup/SetupService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/SetupService;->handleSIMState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/CustomizationSetup/SetupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SetupService;->registerSIMStateReceiver()V

    return-void
.end method

.method private static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method private getTotalMNSProfilesCount()I
    .locals 6

    .prologue
    .line 271
    const-string v2, "/system/customize/mns_map.xml"

    .line 272
    .local v2, xml:Ljava/lang/String;
    new-instance v1, Lcom/htc/CustomizationSetup/ParseMap;

    invoke-direct {v1}, Lcom/htc/CustomizationSetup/ParseMap;-><init>()V

    .line 275
    .local v1, parseMap:Lcom/htc/CustomizationSetup/ParseMap;
    invoke-virtual {v1, v2}, Lcom/htc/CustomizationSetup/ParseMap;->getProfilesCount(Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, count:I
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profiles count in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v0
.end method

.method private handleSIMState(Ljava/lang/String;)V
    .locals 14
    .parameter "strState"

    .prologue
    .line 298
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSIMState SIM state == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mbSIMChecked = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v3, 0x0

    .line 302
    .local v3, isNeedCustomizationPicker:Z
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 303
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 304
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "SimState_Timeout"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    const-string v10, "Customization_SetupService"

    const-string v11, "SIM state should not timeout !!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/htc/CustomizationSetup/SetupService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 335
    const-string v10, "Customization_SetupService"

    const-string v11, "Should not be in airplane mode"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 339
    :cond_1
    const-string v8, ""

    .line 340
    .local v8, strOperator:Ljava/lang/String;
    const-string v7, ""

    .line 341
    .local v7, strImsi:Ljava/lang/String;
    const-string v10, "ABSENT"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 342
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 395
    :cond_2
    :goto_1
    iget-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    if-eqz v10, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.htc.action.CustomizationPicker"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 397
    .local v2, isCustomizationPickerRunning:I
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    if-nez v10, :cond_e

    const-string v10, "LOADED"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    .line 399
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.htc.action.CustomizationPicker"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, customizationpickerIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/CustomizationSetup/SetupService;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.htc.action.CustomizationPicker"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    const-string v10, "Customization_SetupService"

    const-string v11, "Customization Picker case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->stopSelf()V

    .line 420
    .end local v1           #customizationpickerIntent:Landroid/content/Intent;
    .end local v2           #isCustomizationPickerRunning:I
    :cond_3
    :goto_2
    return-void

    .line 309
    .end local v7           #strImsi:Ljava/lang/String;
    .end local v8           #strOperator:Ljava/lang/String;
    :cond_4
    const-string v10, "ABSENT"

    iget-object v11, p0, Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "LOADED"

    iget-object v11, p0, Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "LOCKED"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 312
    :cond_5
    const-string v10, "LOCKED"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v11, 0x9b

    if-eq v10, v11, :cond_6

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    .line 315
    :cond_6
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;

    .line 316
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 317
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "SimState_Timeout"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    const-string v10, "Customization_SetupService"

    const-string v11, "Force SIM state timeout !!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_7
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "SimState_Timeout"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 325
    :cond_8
    const-string v10, "ro.kernel.qemu"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 326
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    goto/16 :goto_0

    .line 329
    :cond_9
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 330
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    const/16 v11, 0xb

    const-wide/32 v12, 0xea60

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 343
    .restart local v7       #strImsi:Ljava/lang/String;
    .restart local v8       #strOperator:Ljava/lang/String;
    :cond_a
    const-string v10, "LOADED"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 344
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 345
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/htc/CustomizationSetup/SetupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 346
    .local v9, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_c

    .line 348
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 350
    :cond_b
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 353
    :goto_3
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 360
    :cond_c
    const-string v4, "/system/customize/mvno_map.xml"

    .line 361
    .local v4, mvnoMapPath:Ljava/lang/String;
    new-instance v6, Lcom/htc/CustomizationSetup/ParseMvnoMap;

    invoke-direct {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;-><init>()V

    .line 362
    .local v6, parseMvnoMap:Lcom/htc/CustomizationSetup/ParseMvnoMap;
    iget-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;

    invoke-virtual {v6, v4, v8, v10}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v5, myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v10, Lcom/htc/CustomizationSetup/SetupService$3;->$SwitchMap$com$htc$CustomizationSetup$ParseMvnoMap$ParseCase:[I

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 367
    :pswitch_0
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": getFileName(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " getOperatorName():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "mvno_operator"

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    .line 370
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": profilePath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " operator form Settings.System: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mvno_operator"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v4           #mvnoMapPath:Ljava/lang/String;
    .end local v5           #myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #parseMvnoMap:Lcom/htc/CustomizationSetup/ParseMvnoMap;
    :cond_d
    iget-object v8, p0, Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;

    goto/16 :goto_3

    .line 376
    .restart local v4       #mvnoMapPath:Ljava/lang/String;
    .restart local v5       #myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #parseMvnoMap:Lcom/htc/CustomizationSetup/ParseMvnoMap;
    :pswitch_1
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": getOpDisplayNamelist().size():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v3, 0x1

    .line 378
    goto/16 :goto_1

    .line 381
    :pswitch_2
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": getOpDisplayNamelist().size():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v3, 0x1

    .line 383
    goto/16 :goto_1

    .line 387
    :pswitch_3
    const-string v10, "Customization_SetupService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 408
    .end local v4           #mvnoMapPath:Ljava/lang/String;
    .end local v5           #myarraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #parseMvnoMap:Lcom/htc/CustomizationSetup/ParseMvnoMap;
    .end local v9           #teleMgr:Landroid/telephony/TelephonyManager;
    .restart local v2       #isCustomizationPickerRunning:I
    :cond_e
    invoke-direct {p0, v8}, Lcom/htc/CustomizationSetup/SetupService;->isCSLSupported(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 409
    const-string v10, "Customization_SetupService"

    const-string v11, "CSL case"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.htc.action.CSL"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, cslIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/CustomizationSetup/SetupService;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.htc.action.CSL"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->stopSelf()V

    goto/16 :goto_2

    .line 417
    .end local v0           #cslIntent:Landroid/content/Intent;
    :cond_f
    invoke-direct {p0, v8, v7}, Lcom/htc/CustomizationSetup/SetupService;->parseData(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SetupService;->postExecution()V

    goto/16 :goto_2

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCSLSupported(Ljava/lang/String;)Z
    .locals 8
    .parameter "strOperator"

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x12

    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.action.CSL"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 425
    .local v0, didCSL:I
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Htc_PROJECT_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PROJECT_G0003_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Htc_PROJECT_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PROJECT_C0003_flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v3, v7, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/htc/CustomizationSetup/SetupService;->mLaunchByIcon:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    const-string v3, "45400"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "45402"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "45410"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 432
    :cond_1
    const-string v3, "Customization_SetupService"

    const-string v4, "isCSLSupported check fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :goto_0
    return v2

    .line 437
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/customize/csl_mns_map.xml"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 439
    .local v2, isFound:Z
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/customize/csl_mns_map.xml found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 31
    .parameter "strOperator"
    .parameter "strImsi"

    .prologue
    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 453
    .local v24, now:J
    new-instance v26, Lcom/htc/CustomizationSetup/ParseMap;

    invoke-direct/range {v26 .. v26}, Lcom/htc/CustomizationSetup/ParseMap;-><init>()V

    .line 454
    .local v26, parseMap:Lcom/htc/CustomizationSetup/ParseMap;
    new-instance v27, Lcom/htc/CustomizationSetup/ParseXml;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/CustomizationSetup/ParseXml;-><init>(Landroid/content/Context;)V

    .line 457
    .local v27, parseXml:Lcom/htc/CustomizationSetup/ParseXml;
    const-string v19, ""

    .line 458
    .local v19, itemInCidMapPath:Ljava/lang/String;
    const/16 v17, 0x0

    .line 459
    .local v17, hasSupportedInCidMap:Z
    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, cid:Ljava/lang/String;
    const-string v13, "/system/customize/cid_map.xml"

    .line 461
    .local v13, cidMapPath:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v12}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, cidMapXml:Ljava/lang/String;
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CID map path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Mapped xml in CID map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz v14, :cond_0

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/customize/CID/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 466
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    move-result v17

    .line 467
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save to DB, parse path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    if-nez v17, :cond_1

    .line 471
    const-string v19, "/system/customize/CID/default.xml"

    .line 472
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    .line 473
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No mapped xml, save default to DB, parse path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    const-string v20, ""

    .line 479
    .local v20, itemInMnsMapPath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 480
    .local v18, hasSupportedInMnsMap:Z
    const-string v22, "/system/customize/mns_map.xml"

    .line 481
    .local v22, mnsMapPath:Ljava/lang/String;
    const/16 v23, 0x0

    .line 484
    .local v23, mnsMapXml:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 499
    :cond_2
    :goto_0
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapped xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz v23, :cond_9

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/system/customize/MNS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 503
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    move-result v18

    .line 504
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save to DB, parse path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :goto_1
    if-nez v18, :cond_3

    .line 509
    const-string v20, "/system/customize/MNS/default.xml"

    .line 510
    const/4 v3, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    .line 511
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No mapped xml, save default to DB, parse path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_3
    const-string v3, "Customization_SetupService"

    const-string v4, "Start customization wizard part."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v28, Lcom/htc/sie/tool/RunX;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/sie/tool/RunX;-><init>(Landroid/content/Context;)V

    .line 518
    .local v28, runx:Lcom/htc/sie/tool/RunX;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1, v3}, Lcom/htc/sie/tool/RunX;->applyCWData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 519
    const-string v3, "Customization_SetupService"

    const-string v4, "End customization wizard part."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 523
    const-string p1, "default"

    .line 527
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sim_imsi"

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 530
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 531
    .local v10, bundle:Landroid/os/Bundle;
    const-string v3, "operator"

    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v3, "mcc_mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/CustomizationSetup/SetupService;->saveToDb(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 534
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save operator \' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \' to DB, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v15, Lcom/htc/CustomizationSetup/CustomizeCase;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;-><init>(Landroid/content/Context;)V

    .line 540
    .local v15, customizeCase:Lcom/htc/CustomizationSetup/CustomizeCase;
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->isAutoDetectLocale()Z

    move-result v9

    .line 542
    .local v9, autoDetectLocale:Z
    const/16 v30, 0x0

    .line 543
    .local v30, strPreferLocale:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/htc/CustomizationSetup/LocaleAssistant;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 548
    :cond_5
    if-eqz v15, :cond_6

    .line 550
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doSDNotificationInit()Z

    .line 551
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do SD notification init, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    const-string v4, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 555
    const-string v3, "Customization_SetupService"

    const-string v4, "FOTA upgrade case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.socialnetwork.account.DO_UPGRADE"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const-string v3, "Customization_SetupService"

    const-string v4, "Query twitter db to do upgrade."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.htc.chirp.provider.Tweet/tweetaccounts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "defaultaccount=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 560
    .local v11, c:Landroid/database/Cursor;
    const-string v3, "Customization_SetupService"

    const-string v4, "Query plurk db to do upgrade."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://plurks/accounts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "user_id"

    aput-object v7, v5, v6

    const-string v6, "default_account=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 564
    :try_start_0
    const-string v3, "Customization_SetupService"

    const-string v4, "Get Facebook client to query db to do upgrade."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v3, "facebook"

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/htc/socialnetwork/SocialNetworkFactory;->getSNClientByName(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/socialnetwork/SocialNetworkClient;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_2
    new-instance v29, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;-><init>(Landroid/content/Context;)V

    .line 573
    .local v29, scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->onSimChanged()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    :goto_3
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do media scan, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v11           #c:Landroid/database/Cursor;
    :goto_4
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse data total time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 487
    .end local v9           #autoDetectLocale:Z
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v15           #customizeCase:Lcom/htc/CustomizationSetup/CustomizeCase;
    .end local v28           #runx:Lcom/htc/sie/tool/RunX;
    .end local v29           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    .end local v30           #strPreferLocale:Ljava/lang/String;
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 488
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 491
    if-nez v23, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 492
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 493
    .local v21, mcc:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 494
    goto/16 :goto_0

    .line 496
    .end local v21           #mcc:Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 506
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 566
    .restart local v9       #autoDetectLocale:Z
    .restart local v10       #bundle:Landroid/os/Bundle;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v15       #customizeCase:Lcom/htc/CustomizationSetup/CustomizeCase;
    .restart local v28       #runx:Lcom/htc/sie/tool/RunX;
    .restart local v30       #strPreferLocale:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 567
    .local v16, e:Lcom/htc/socialnetwork/SocialNetworkException;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/socialnetwork/SocialNetworkException;->printStackTrace()V

    goto/16 :goto_2

    .line 575
    .end local v16           #e:Lcom/htc/socialnetwork/SocialNetworkException;
    .restart local v29       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :catch_1
    move-exception v16

    .line 576
    .local v16, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Customization_SetupService"

    const-string v4, "NoSuchMethodError on scanner.onSimChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 581
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #e:Ljava/lang/NoSuchMethodError;
    .end local v29           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :cond_a
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoDetectLocale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",get default locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;->doLocaleCustomized(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 588
    :cond_b
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do locale customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v15, :cond_c

    .line 593
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doIMECustomized()Z

    .line 596
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doDateTimeFormatInit()Z

    .line 597
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do date time format customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doDateTimeFormatShortInit()Z

    .line 601
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do date time format short customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doAutoTimeInit()Z

    .line 605
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do auto time customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doAutoTimeZoneInit()Z

    .line 609
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do auto time zone customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doTime1224Init()Z

    .line 613
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do time 12/24 customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doTimeZoneInit()Z

    .line 617
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do time zone customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v15}, Lcom/htc/CustomizationSetup/CustomizeCase;->doScreenTimeOutInit()Z

    .line 621
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do screen timeout customization, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_5
    new-instance v29, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;-><init>(Landroid/content/Context;)V

    .line 630
    .restart local v29       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->onSimChanged()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2

    .line 635
    :goto_6
    const-string v3, "Customization_SetupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do media scan, time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v24

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 625
    .end local v29           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :cond_c
    const-string v3, "Customization_SetupService"

    const-string v4, "customizeCase == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 632
    .restart local v29       #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :catch_2
    move-exception v16

    .line 633
    .restart local v16       #e:Ljava/lang/NoSuchMethodError;
    const-string v3, "Customization_SetupService"

    const-string v4, "NoSuchMethodError on scanner.onSimChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private postExecution()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 644
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v1, forceIntent:Landroid/content/Intent;
    const-string v3, "CID"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 647
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :cond_0
    invoke-virtual {p0, v1, v5}, Lcom/htc/CustomizationSetup/SetupService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 651
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 653
    const-string v3, "com.htc.CUSTOMIZED_REASON"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    :goto_0
    invoke-virtual {p0, v2, v5}, Lcom/htc/CustomizationSetup/SetupService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    const-string v4, "com.htc.FOTA_UPGRADE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    const-string v3, "Customization_SetupService"

    const-string v4, "FOTA case, sync all services"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "force"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 663
    invoke-static {v5, v5, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 666
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.action.CustomizationPicker"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.action.CSL"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    const-string v3, "Customization_SetupService"

    const-string v4, "Stop service by self"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->stopSelf()V

    .line 674
    return-void

    .line 655
    :cond_2
    const-string v3, "com.htc.COME_FROM_OOBE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerSIMStateReceiver()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/CustomizationSetup/SetupService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SetupService;->mHasRegistered:Z

    .line 141
    return-void
.end method

.method private requestGetGID1()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 680
    :try_start_0
    const-string v6, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 694
    .local v0, clsHtcTelephonyManager:Ljava/lang/Class;
    :try_start_1
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 708
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 709
    .local v4, objHtcTelephonyManager:Ljava/lang/Object;
    if-nez v4, :cond_0

    move-object v2, v5

    .line 756
    .end local v0           #clsHtcTelephonyManager:Ljava/lang/Class;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #objHtcTelephonyManager:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 681
    :catch_0
    move-exception v1

    .line 682
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 683
    const-string v6, "Customization_SetupService"

    const-string v7, "Class.forName exception: ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 684
    goto :goto_0

    .line 685
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 686
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    const-string v6, "Customization_SetupService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class.forName exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 688
    goto :goto_0

    .line 695
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clsHtcTelephonyManager:Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 696
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 697
    const-string v6, "Customization_SetupService"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 698
    goto :goto_0

    .line 699
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 700
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 701
    const-string v6, "Customization_SetupService"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 702
    goto :goto_0

    .line 712
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v1

    .line 713
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 714
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 715
    goto :goto_0

    .line 716
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 717
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 718
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 719
    goto :goto_0

    .line 720
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 721
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 722
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 723
    goto :goto_0

    .line 728
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v4       #objHtcTelephonyManager:Ljava/lang/Object;
    :cond_0
    :try_start_3
    const-string v6, "requestGetGID1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v3

    .line 742
    const/4 v6, 0x0

    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_b

    .local v2, gid1:Ljava/lang/String;
    goto :goto_0

    .line 729
    .end local v2           #gid1:Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 730
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 731
    const-string v6, "Customization_SetupService"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 732
    goto/16 :goto_0

    .line 733
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_8
    move-exception v1

    .line 734
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 735
    const-string v6, "Customization_SetupService"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 736
    goto/16 :goto_0

    .line 743
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v1

    .line 744
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 745
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 746
    goto/16 :goto_0

    .line 747
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    .line 748
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 749
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 750
    goto/16 :goto_0

    .line 751
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_b
    move-exception v1

    .line 752
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 753
    const-string v6, "Customization_SetupService"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 754
    goto/16 :goto_0
.end method

.method private saveToDb(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "key"
    .parameter "bundle"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SetupService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "value"

    invoke-static {p2}, Lcom/htc/CustomizationSetup/SetupService;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 286
    const-string v3, "content://customization_settings/SettingTable"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 287
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 288
    return-void
.end method

.method private setupForeground(Z)V
    .locals 7
    .parameter "bForeground"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 761
    const-string v2, "Customization_SetupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-eqz p1, :cond_1

    .line 764
    iget-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mIsForeground:Z

    if-nez v2, :cond_0

    .line 765
    iput-boolean v5, p0, Lcom/htc/CustomizationSetup/SetupService;->mIsForeground:Z

    .line 767
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108008a

    const-string v3, "CustomizationSetup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 768
    .local v0, note:Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 769
    .local v1, pi:Landroid/app/PendingIntent;
    const-string v2, "CustomizationSetup"

    const-string v3, "applying customization..."

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 770
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 772
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/htc/CustomizationSetup/SetupService;->startForeground(ILandroid/app/Notification;)V

    .line 782
    .end local v0           #note:Landroid/app/Notification;
    .end local v1           #pi:Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mIsForeground:Z

    if-eqz v2, :cond_0

    .line 778
    iput-boolean v6, p0, Lcom/htc/CustomizationSetup/SetupService;->mIsForeground:Z

    .line 779
    invoke-virtual {p0, v5}, Lcom/htc/CustomizationSetup/SetupService;->stopForeground(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "Customization_SetupService"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/CustomizationSetup/SetupService;->setupForeground(Z)V

    .line 180
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/htc/CustomizationSetup/SetupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 182
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/htc/CustomizationSetup/SetupService$2;

    const-string v2, "SetupService"

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/CustomizationSetup/SetupService$2;-><init>(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;Landroid/telephony/TelephonyManager;)V

    iput-object v1, p0, Lcom/htc/CustomizationSetup/SetupService;->serviceThread:Ljava/lang/Thread;

    .line 208
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 239
    const-string v2, "Customization_SetupService"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v2, "CustomizePref"

    invoke-virtual {p0, v2, v4}, Lcom/htc/CustomizationSetup/SetupService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 243
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "HasSetup"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_1
    iget-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mHasRegistered:Z

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/CustomizationSetup/SetupService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    iput-boolean v4, p0, Lcom/htc/CustomizationSetup/SetupService;->mHasRegistered:Z

    .line 257
    :cond_2
    iput-boolean v4, p0, Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z

    .line 259
    invoke-direct {p0, v4}, Lcom/htc/CustomizationSetup/SetupService;->setupForeground(Z)V

    .line 261
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 262
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 219
    const-string v0, "Customization_SetupService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "Customization_SetupService"

    const-string v1, "service restarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    .line 227
    const-string v0, "MnsProfilePath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    .line 228
    const-string v0, "LaunchByIcon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mLaunchByIcon:Z

    .line 229
    const-string v0, "Customization_SetupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->profilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLaunchByIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mLaunchByIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "com.htc.CUSTOMIZED_REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    .line 231
    const-string v0, "Customization_SetupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Customized reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService;->mCustomizedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
