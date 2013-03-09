.class public Lcom/htc/android/epst/EPST;
.super Landroid/app/Activity;
.source "EPST.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/EPST$LaunchIMEReceiver;,
        Lcom/htc/android/epst/EPST$ValidationTask;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_READ:I = 0x0

.field private static final ACTION_TYPE_READWRITE:I = 0x2

.field private static final ACTION_TYPE_WRITE:I = 0x1

.field private static final ACTIVITY_LIST_GROUPS:I = 0x1

.field private static final DIALOG_AUTH_PROGRESS:I = 0x2

.field private static final DIALOG_COMMIT_PROGRESS:I = 0x3

.field private static final DIALOG_PASSWORD:I = 0x1

.field private static final DIALOG_PROGRESS:I = 0x7

.field private static final DIALOG_PROMPT_REBOOT:I = 0x4

.field private static final DIALOG_SELECT_MODE:I = 0x5

.field private static final DIALOG_TURNON_PHONE:I = 0x6

.field public static final EDIT_MODE:I = 0x2

.field public static final FULL_MODE:I = 0x3

.field public static final GROUP:Ljava/lang/String; = "group"

.field private static final LOG_TAG:Ljava/lang/String; = "EPST"

.field public static final MODE:Ljava/lang/String; = "mode"

.field private static final MSG_INITIATE_EPST:I = 0x1

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_NOT_SUPPORT:I = 0x2

.field public static final STATUS_NO_RESPONSE:I = 0x5

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final VIEW_MODE:I = 0x1

.field public static inNextBacking:Z

.field private static final isTestBuild:Z

.field public static mContext:Landroid/content/Context;

.field private static mPassword:Ljava/lang/String;

.field public static mPhone:Lcom/android/internal/telephony/Phone;

.field private static mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field public static mRebootTime:I

.field private static mUnlockRetry:I

.field private static sModeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DBG:Z

.field private gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

.field private mSPCFailuresRebootSec:I

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/htc/android/epst/EPST;->mPassword:Ljava/lang/String;

    .line 95
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/epst/EPST;->mRebootTime:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    .line 99
    sput-object v1, Lcom/htc/android/epst/EPST;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 100
    sput-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->freezeNum()I

    move-result v0

    sput v0, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/epst/EPST;->inNextBacking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/android/epst/EPST;->mSPCFailuresRebootSec:I

    .line 110
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    .line 117
    new-instance v0, Lcom/htc/android/epst/EPST$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/EPST$1;-><init>(Lcom/htc/android/epst/EPST;)V

    iput-object v0, p0, Lcom/htc/android/epst/EPST;->mHandler:Landroid/os/Handler;

    .line 865
    invoke-static {}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->getSingleton()Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 876
    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/epst/EPST;Lcom/htc/android/epst/EPST$LaunchIMEReceiver;)Lcom/htc/android/epst/EPST$LaunchIMEReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/epst/EPST;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->isPhoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    return v0
.end method

.method static synthetic access$1010()I
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->blockAllKeyboardKeyEvent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/epst/EPST;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/android/epst/EPST;->mSPCFailuresRebootSec:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/epst/EPST;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/android/epst/EPST;->showShutDownDialog(I)V

    return-void
.end method

.method static synthetic access$1400()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/epst/EPST;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->getActionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/epst/EPST;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/android/epst/EPST;->startSettingUI(I)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/android/epst/EPST;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput-object p0, Lcom/htc/android/epst/EPST;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->authenticateAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/android/epst/EPST;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    return v0
.end method

.method private authenticateAction()V
    .locals 5

    .prologue
    .line 360
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 361
    .local v0, currentIndex:I
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    .line 363
    const-string v3, "EPST"

    const-string v4, "auth EPST_MSL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, pwd:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v2}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 367
    .local v2, updater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-interface {v2, p0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->anthenticate(Lcom/htc/android/epst/EPST;Ljava/lang/String;)V

    .line 383
    .end local v1           #pwd:Ljava/lang/String;
    .end local v2           #updater:Lcom/htc/android/epst/SettingValueUpdater;
    :goto_0
    return-void

    .line 368
    :cond_0
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 370
    const-string v3, "EPST"

    const-string v4, "auth EPST_OTKSL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1       #pwd:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v2}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 374
    .restart local v2       #updater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-interface {v2, p0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->anthenticateOTKSL(Lcom/htc/android/epst/EPST;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v1           #pwd:Ljava/lang/String;
    .end local v2           #updater:Lcom/htc/android/epst/SettingValueUpdater;
    :cond_1
    new-instance v3, Lcom/htc/android/epst/EPST$2;

    invoke-direct {v3, p0}, Lcom/htc/android/epst/EPST$2;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private blockAllKeyboardKeyEvent()V
    .locals 5

    .prologue
    .line 722
    const-string v2, "EPST"

    const-string v3, "freeze device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 729
    .local v1, tWm:Landroid/view/IWindowManager;
    const-string v2, "EPST"

    const-string v3, "blockInputEvents(true)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->blockInputEvents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1           #tWm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "EPST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "** Failed to generate action_down event! Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearGPS()V
    .locals 2

    .prologue
    .line 822
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 823
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 824
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-interface {v0, p0}, Lcom/htc/android/epst/SettingValueUpdater;->clearGPS(Lcom/htc/android/epst/EPST;)V

    .line 825
    return-void
.end method

.method private getActionType()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 290
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v3

    invoke-static {v3}, Lcom/htc/android/epst/GroupTable;->getMode(I)I

    move-result v0

    .line 291
    .local v0, mode:I
    if-ne v0, v1, :cond_1

    .line 292
    const/4 v1, 0x0

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    if-eq v0, v2, :cond_0

    move v1, v2

    .line 296
    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 340
    invoke-static {p0}, Lcom/htc/android/epst/Utility;->initialize(Landroid/app/Activity;)V

    .line 342
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->resetAllRecordState()V

    .line 344
    invoke-static {}, Lcom/htc/android/epst/internal/DataObject;->getSingleton()Lcom/htc/android/epst/internal/DataObject;

    .line 346
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    .line 347
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    .line 349
    sget-object v0, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    sget-object v1, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v1, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method private isAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 857
    const-string v0, "EPST"

    const-string v1, "Airplane mode now.No phone service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x1

    .line 860
    :cond_0
    return v0
.end method

.method private isPhoneOn()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method private showShutDownDialog(I)V
    .locals 5
    .parameter "iSec"

    .prologue
    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 741
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1084

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 744
    const-string v2, "com.htc.android.epst"

    const-class v3, Lcom/htc/android/epst/shutDownDevice;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    iget-boolean v2, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EPST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 747
    .local v1, shotDown:[I
    const-string v2, "second"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 749
    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->startActivity(Landroid/content/Intent;)V

    .line 751
    return-void
.end method

.method private startAction(Lcom/htc/android/epst/SettingGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "mode"

    .prologue
    .line 815
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v0, i:Landroid/content/Intent;
    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 817
    const-string v1, "mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->startActivity(Landroid/content/Intent;)V

    .line 819
    return-void
.end method

.method private startGroupAct(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/epst/HtcGroupEPST;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/EPST;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    return-void
.end method

.method private startSettingUI(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 760
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 761
    .local v0, currentIndex:I
    const-string v3, "EPST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startSettingUI>index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v2, ""

    .line 763
    .local v2, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 766
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/epst/EPST;->startGroupAct(I)V

    .line 767
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->finish()V

    .line 806
    :goto_0
    return-void

    .line 769
    :cond_1
    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 770
    invoke-direct {p0}, Lcom/htc/android/epst/EPST;->clearGPS()V

    goto :goto_0

    .line 772
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 773
    const v3, 0x7f0401e3

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    :goto_1
    new-instance v1, Lcom/htc/android/epst/SettingGroup;

    invoke-direct {v1, v2}, Lcom/htc/android/epst/SettingGroup;-><init>(Ljava/lang/String;)V

    .line 802
    .local v1, group:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/GroupTable;->getXML(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/android/epst/SettingGroup;->setItemXML(Ljava/lang/String;)V

    .line 803
    const-string v3, "EPST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-direct {p0, v1, p1}, Lcom/htc/android/epst/EPST;->startAction(Lcom/htc/android/epst/SettingGroup;I)V

    .line 805
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->finish()V

    goto :goto_0

    .line 774
    .end local v1           #group:Lcom/htc/android/epst/SettingGroup;
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 775
    const v3, 0x7f0401e4

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 776
    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 777
    const v3, 0x7f0401e5

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 778
    :cond_5
    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 779
    const v3, 0x7f0401e6

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 780
    :cond_6
    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    .line 781
    const v3, 0x7f0401e8

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 782
    :cond_7
    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    .line 783
    const v3, 0x7f0401e9

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 784
    :cond_8
    const/16 v3, 0x8

    if-ne v0, v3, :cond_9

    .line 785
    const v3, 0x7f0401ea

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 786
    :cond_9
    const/16 v3, 0xa

    if-ne v0, v3, :cond_a

    .line 787
    const v3, 0x7f0401eb

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 788
    :cond_a
    const/16 v3, 0xb

    if-ne v0, v3, :cond_b

    .line 789
    const v3, 0x7f0401ed

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 790
    :cond_b
    const/16 v3, 0xd

    if-ne v0, v3, :cond_c

    .line 791
    const v3, 0x7f0401ef

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 792
    :cond_c
    const/16 v3, 0xe

    if-ne v0, v3, :cond_d

    .line 793
    const v3, 0x7f0401f0

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 794
    :cond_d
    const/16 v3, 0xf

    if-ne v0, v3, :cond_e

    .line 795
    const v3, 0x7f0401f1

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 796
    :cond_e
    const/16 v3, 0x10

    if-ne v0, v3, :cond_f

    .line 797
    const v3, 0x7f0401f2

    invoke-virtual {p0, v3}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 799
    :cond_f
    const-string v3, "EPST"

    const-string v4, "No this GroupTable.Please check!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public authenticateResult(Z)V
    .locals 4
    .parameter "isSuccessful"

    .prologue
    .line 626
    iget-boolean v1, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EPST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticat result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    sget-object v1, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_1

    .line 628
    sget-object v1, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 636
    :cond_1
    if-eqz p1, :cond_2

    .line 638
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/android/epst/EPST;->startSettingUI(I)V

    .line 715
    :goto_0
    return-void

    .line 642
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/GroupTable;->getCurrentIndex()I

    move-result v0

    .line 643
    .local v0, currentIndex:I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 645
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->finish()V

    goto :goto_0

    .line 648
    :cond_4
    iget-boolean v1, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "EPST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnlockRetry-01:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_5
    new-instance v1, Lcom/htc/android/epst/EPST$12;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/EPST$12;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/EPST;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearGPSResult(Z)V
    .locals 1
    .parameter "isSuccessful"

    .prologue
    .line 833
    new-instance v0, Lcom/htc/android/epst/EPST$13;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/epst/EPST$13;-><init>(Lcom/htc/android/epst/EPST;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 844
    return-void
.end method

.method public launchIME()V
    .locals 3

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->retryCount:I

    .line 870
    iget-object v1, p0, Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-virtual {v1}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;->relaunchIME()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    invoke-direct {v1}, Lcom/htc/android/epst/EPST$LaunchIMEReceiver;-><init>()V

    iput-object v1, p0, Lcom/htc/android/epst/EPST;->mResultReceiver:Lcom/htc/android/epst/EPST$LaunchIMEReceiver;

    .line 873
    const-string v1, "EPST"

    const-string v2, "launchIME()renew IME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 321
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x104000a

    const v10, 0x1080027

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 430
    const-string v6, "EPST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OoO onCreateDialog get id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    packed-switch p1, :pswitch_data_0

    .line 611
    :goto_0
    return-object v3

    .line 435
    :pswitch_0
    const-string v6, "EPST"

    const-string v7, "OoO -> DIALOG_AUTH_PROGRESS"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_0

    .line 438
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 439
    sput-object v3, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 441
    :cond_0
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 442
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f04004f

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 443
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v9}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 444
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 445
    sget-object v3, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 448
    :pswitch_1
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_1

    .line 449
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 451
    :cond_1
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 452
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f04004e

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v9}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 454
    sget-object v6, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 455
    sget-object v3, Lcom/htc/android/epst/EPST;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 458
    :pswitch_2
    const-string v6, "EPST"

    const-string v7, "OoO -> DIALOG_PASSWORD"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 460
    .local v1, factory:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f02

    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 461
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 462
    .local v2, pwd:Landroid/widget/EditText;
    new-instance v6, Lcom/htc/android/epst/EPST$3;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/EPST$3;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 475
    new-instance v6, Lcom/htc/android/epst/EPST$4;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/EPST$4;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 485
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 486
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 487
    iput-object v2, p0, Lcom/htc/android/epst/EPST;->targetView:Landroid/view/View;

    .line 488
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->launchIME()V

    .line 490
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f040028

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/android/epst/EPST$6;

    invoke-direct {v7, p0}, Lcom/htc/android/epst/EPST$6;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v6, v12, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/htc/android/epst/EPST$5;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/EPST$5;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    .line 520
    .local v3, pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/android/epst/EPST$7;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/EPST$7;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 533
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #pwd:Landroid/widget/EditText;
    .end local v3           #pwdDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #textEntryView:Landroid/view/View;
    :pswitch_3
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f04004a

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 538
    .local v0, alertdialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/android/epst/EPST$8;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/EPST$8;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v3, v0

    .line 543
    goto/16 :goto_0

    .line 547
    .end local v0           #alertdialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_4
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x7f04

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f040016

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/htc/android/epst/EPST$9;

    invoke-direct {v7, p0}, Lcom/htc/android/epst/EPST$9;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v6, v12, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 561
    :pswitch_5
    const-string v6, "EPST"

    const-string v7, "OoO -> DIALOG_SELECT_MODE"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x7f04

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x7f02000b

    const v9, 0x1020014

    sget-object v10, Lcom/htc/android/epst/EPST;->sModeOptions:Ljava/util/List;

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v7, p0, v8, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v8, Lcom/htc/android/epst/EPST$10;

    invoke-direct {v8, p0}, Lcom/htc/android/epst/EPST$10;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 589
    .local v4, selDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/android/epst/EPST$11;

    invoke-direct {v6, p0}, Lcom/htc/android/epst/EPST$11;-><init>(Lcom/htc/android/epst/EPST;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v3, v4

    .line 594
    goto/16 :goto_0

    .line 598
    .end local v4           #selDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_6
    const-string v6, "EPST"

    const-string v7, "OoO -> DIALOG_PROGRESS"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v6, :cond_2

    .line 601
    iget-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 602
    iput-object v3, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 604
    :cond_2
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 605
    iget-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v7, 0x7f040004

    invoke-virtual {p0, v7}, Lcom/htc/android/epst/EPST;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v9}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 607
    iget-object v6, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6, v11}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 608
    iget-object v3, p0, Lcom/htc/android/epst/EPST;->gInitProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 401
    packed-switch p1, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 403
    :pswitch_0
    const-string v1, ""

    sput-object v1, Lcom/htc/android/epst/EPST;->mPassword:Ljava/lang/String;

    .line 404
    const v1, 0x7f060001

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 405
    .local v0, pwd:Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 329
    iget-object v0, p0, Lcom/htc/android/epst/EPST;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->freezeNum()I

    move-result v0

    sput v0, Lcom/htc/android/epst/EPST;->mUnlockRetry:I

    .line 335
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 848
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 849
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->clearStorage()V

    .line 850
    iget-boolean v0, p0, Lcom/htc/android/epst/EPST;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EPST"

    const-string v1, "EPST finish itself and remove message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/EPST;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    invoke-virtual {p0}, Lcom/htc/android/epst/EPST;->finish()V

    .line 853
    return-void
.end method
