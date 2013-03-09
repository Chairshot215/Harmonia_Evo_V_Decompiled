.class public Lcom/android/dmportread/DMCommandService;
.super Landroid/app/Service;
.source "DMCommandService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dmportread/DMCommandService$ConnectionRunnable;,
        Lcom/android/dmportread/DMCommandService$LoadCallsRunnable;,
        Lcom/android/dmportread/DMCommandService$LoadSmsRunnable;,
        Lcom/android/dmportread/DMCommandService$LoadContactsRunnable;,
        Lcom/android/dmportread/DMCommandService$DMServiceBinder;
    }
.end annotation


# static fields
.field public static final CUSTOM_ORIENTATION:Ljava/lang/String; = "custom_orientation"

.field private static final CUSTOM_ORIENTATION_ROTATION_DEFAULT:I = -0x1

.field private static final DBG:Z = true

.field public static final DM_MiscConfig:Ljava/lang/String; = "com.android.dmportread.DM_MiscConfig"

.field public static final DM_SEND_SMS_ACTION:Ljava/lang/String; = "DM_SEND_SMS"

.field public static final DM_SMS_SENT_ACTION:Ljava/lang/String; = "DM_SMS_SENT"

.field private static final IS_BTDISCOVERABLE:I = 0x2

.field private static final IS_BTENABLED:I = 0x1

.field private static final IS_BTSUPPORT:I = 0x80

.field private static final NEW_DRAFT:I = 0x64

.field private static SCREEN_ABOUTPHONE:Ljava/lang/String; = null

.field private static SCREEN_BROWSER:Ljava/lang/String; = null

.field private static SCREEN_DIALER:Ljava/lang/String; = null

.field private static SCREEN_DIALER2:Ljava/lang/String; = null

.field private static SCREEN_HOME:Ljava/lang/String; = null

.field private static SCREEN_HOME2:Ljava/lang/String; = null

.field private static SCREEN_MESSAGE:Ljava/lang/String; = null

.field private static SCREEN_SETTINGS:Ljava/lang/String; = null

.field private static SCREEN_SETTINGS_HC:Ljava/lang/String; = null

.field private static final SMS_SENT_STATUS_OK:I = -0x1

.field private static final SMS_SENT_STATUS_UNKNOWN:I = 0x64

.field private static final STATUS_ERR:B = 0x1t

.field private static final STATUS_LOCK_ENABLED:B = 0x1t

.field private static final STATUS_LOCK_NOT_ENABLED:B = 0x0t

.field private static final STATUS_OK:B = 0x0t

.field private static final STATUS_USBDEBUGGING_OFF:B = 0x0t

.field private static final STATUS_USBDEBUGGING_ON:B = 0x1t

.field public static final UPDATE_VIEW:Ljava/lang/String; = "com.android.dmportread.UPDATE_VIEW"

.field private static final loadCallsTag:Ljava/lang/String; = "loadCalls"

.field private static final loadContactsTag:Ljava/lang/String; = "loadContacts"

.field private static final loadSmsTag:Ljava/lang/String; = "loadSms"

.field private static mKeyEventMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentMailUri:Landroid/net/Uri; = null

.field private static mSmsSentStatus:I = 0x0

.field private static final queryMMSCFields:[Ljava/lang/String; = null

.field private static smsObsReged:Z = false

.field private static final tag:Ljava/lang/String; = "DMCmdSvs"


# instance fields
.field final EVENT_GET_SUBSIDY_LOCK_DONE:I

.field final EVENT_NETWORK_SCAN_COMPLETED:I

.field final EVENT_NETWORK_SELECTION_DONE:I

.field final EVENT_QUERY_SMSC_DONE:I

.field final EVENT_SET_SUBSIDY_LOCK_DONE:I

.field final EVENT_UPDATE_SMSC_DONE:I

.field final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I

.field final MESSAGE_SET_PREFERRED_NETWORK_AUTO:I

.field final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I

.field USBhandler:Landroid/os/Handler;

.field private contactIDTmp:J

.field private deletedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disableADB:Ljava/lang/Runnable;

.field private enableADB:Ljava/lang/Runnable;

.field private i:Landroid/content/Intent;

.field private level:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAllCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/CallsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mAllMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;"
        }
    .end annotation
.end field

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBinder:Lcom/android/dmportread/DMCommandService$DMServiceBinder;

.field private mBox:Lcom/android/dmportread/CurrentBox;

.field private final mCallsChangeObserver:Landroid/database/ContentObserver;

.field private mCallsChanged:Z

.field private mConnectionThread:Ljava/lang/Thread;

.field private mContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsChangeObserver:Landroid/database/ContentObserver;

.field private mContactsChanged:Z

.field private mContactsDirty:Z

.field private mContext:Landroid/content/Context;

.field private mHasPendingBtIntent:Z

.field private mInCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/CallsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLoadCallsThread:Ljava/lang/Thread;

.field private mLoadContactsThread:Ljava/lang/Thread;

.field private mLoadSmsThread:Ljava/lang/Thread;

.field private final mLockProperty:Ljava/lang/String;

.field private mNewMsg:Lcom/android/dmportread/TempSms;

.field private mNewSendMsg:Lcom/android/dmportread/TempSms;

.field private mOutCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/CallsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRxCnt:I

.field private mRxUSB:I

.field private mSMSChanged:Z

.field private mSMSDirty:Z

.field private mServerThread:Ljava/lang/Thread;

.field private final mSmsChangeObserver:Landroid/database/ContentObserver;

.field private mStartId:I

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mThread:Ljava/lang/Thread;

.field private mTxCnt:I

.field private mTxUSB:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWm:Landroid/view/IWindowManager;

.field private maximumContactNum:I

.field private plugType:I

.field private port:I

.field private present:Z

.field resultFields:[Z

.field private scale:I

.field selfChanged:Z

.field private server:Ljava/net/ServerSocket;

.field private setValue:I

.field private shareContactNum:I

.field private status:I

.field private tech:Ljava/lang/String;

.field tempCount:I

.field private tempRecInd:I

.field private tmpId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    sput-boolean v3, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    .line 159
    :try_start_0
    const-string v1, "JNI"

    const-string v2, "Trying to load libDMCmd.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "DMCmd"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x64

    sput v1, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    .line 4126
    const/4 v1, 0x0

    sput-object v1, Lcom/android/dmportread/DMCommandService;->mKeyEventMap:Ljava/util/HashMap;

    .line 5357
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mmsc"

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/dmportread/DMCommandService;->queryMMSCFields:[Ljava/lang/String;

    .line 5405
    const-string v1, "com.htc.launcher.Launcher"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_HOME:Ljava/lang/String;

    .line 5406
    const-string v1, "com.android.launcher2.Launcher"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_HOME2:Ljava/lang/String;

    .line 5407
    const-string v1, "com.android.settings.framework.activity.HtcSettings"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_SETTINGS:Ljava/lang/String;

    .line 5408
    const-string v1, "com.android.settings.Settings"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_SETTINGS_HC:Ljava/lang/String;

    .line 5409
    const-string v1, "com.android.htcdialer"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_DIALER:Ljava/lang/String;

    .line 5410
    const-string v1, "com.android.htccontacts.DialerTabActivity"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_DIALER2:Ljava/lang/String;

    .line 5411
    const-string v1, "com.android.browser"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_BROWSER:Ljava/lang/String;

    .line 5412
    const-string v1, "HtcAboutPhoneSettings"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_ABOUTPHONE:Ljava/lang/String;

    .line 5413
    const-string v1, "com.android.mms"

    sput-object v1, Lcom/android/dmportread/DMCommandService;->SCREEN_MESSAGE:Ljava/lang/String;

    return-void

    .line 161
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 162
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libDMCmd.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 127
    new-instance v0, Lcom/android/dmportread/DMCommandService$DMServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMCommandService$DMServiceBinder;-><init>(Lcom/android/dmportread/DMCommandService;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mBinder:Lcom/android/dmportread/DMCommandService$DMServiceBinder;

    .line 143
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z

    .line 147
    const/16 v0, 0x2607

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->port:I

    .line 149
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mServerThread:Ljava/lang/Thread;

    .line 150
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mConnectionThread:Ljava/lang/Thread;

    .line 153
    const-string v0, "ril.customa.rotation.locked"

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mLockProperty:Ljava/lang/String;

    .line 380
    iput v5, p0, Lcom/android/dmportread/DMCommandService;->setValue:I

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.dmportread.UPDATE_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    .line 464
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    .line 465
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mContactsDirty:Z

    .line 487
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;

    .line 488
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z

    .line 490
    new-instance v0, Lcom/android/dmportread/DMCommandService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dmportread/DMCommandService$1;-><init>(Lcom/android/dmportread/DMCommandService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContactsChangeObserver:Landroid/database/ContentObserver;

    .line 521
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    .line 522
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    .line 669
    iput v4, p0, Lcom/android/dmportread/DMCommandService;->shareContactNum:I

    .line 670
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I

    .line 781
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->tempCount:I

    .line 782
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->resultFields:[Z

    .line 901
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 1024
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    .line 1577
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    .line 1578
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mNewMsg:Lcom/android/dmportread/TempSms;

    .line 1651
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mLoadSmsThread:Ljava/lang/Thread;

    .line 1652
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    .line 1653
    new-instance v0, Lcom/android/dmportread/DMCommandService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dmportread/DMCommandService$3;-><init>(Lcom/android/dmportread/DMCommandService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mSmsChangeObserver:Landroid/database/ContentObserver;

    .line 2513
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    .line 3206
    iput-object v3, p0, Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;

    .line 3207
    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mCallsChanged:Z

    .line 3208
    new-instance v0, Lcom/android/dmportread/DMCommandService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/dmportread/DMCommandService$4;-><init>(Lcom/android/dmportread/DMCommandService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mCallsChangeObserver:Landroid/database/ContentObserver;

    .line 3597
    new-instance v0, Lcom/android/dmportread/DMCommandService$5;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMCommandService$5;-><init>(Lcom/android/dmportread/DMCommandService;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5064
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->USBhandler:Landroid/os/Handler;

    .line 5065
    new-instance v0, Lcom/android/dmportread/DMCommandService$6;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMCommandService$6;-><init>(Lcom/android/dmportread/DMCommandService;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->enableADB:Ljava/lang/Runnable;

    .line 5071
    new-instance v0, Lcom/android/dmportread/DMCommandService$7;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMCommandService$7;-><init>(Lcom/android/dmportread/DMCommandService;)V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->disableADB:Ljava/lang/Runnable;

    .line 5713
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->EVENT_NETWORK_SCAN_COMPLETED:I

    .line 5714
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->EVENT_GET_SUBSIDY_LOCK_DONE:I

    .line 5715
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->EVENT_SET_SUBSIDY_LOCK_DONE:I

    .line 5716
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->MESSAGE_GET_PREFERRED_NETWORK_TYPE:I

    .line 5717
    iput v4, p0, Lcom/android/dmportread/DMCommandService;->MESSAGE_SET_PREFERRED_NETWORK_TYPE:I

    .line 5718
    const/16 v0, 0x1e7

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->MESSAGE_SET_PREFERRED_NETWORK_AUTO:I

    .line 5719
    iput v5, p0, Lcom/android/dmportread/DMCommandService;->EVENT_QUERY_SMSC_DONE:I

    .line 5720
    iput v6, p0, Lcom/android/dmportread/DMCommandService;->EVENT_UPDATE_SMSC_DONE:I

    .line 5721
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->EVENT_NETWORK_SELECTION_DONE:I

    .line 182
    return-void
.end method

.method private CB_BTRestart(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 4908
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4909
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4910
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4911
    .local v0, result:[B
    return-object v0
.end method

.method private CB_BatteryState(I)[B
    .locals 10
    .parameter "rvCnt"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3646
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3648
    const/4 v1, -0x1

    .line 3649
    .local v1, percent:I
    iget v5, p0, Lcom/android/dmportread/DMCommandService;->scale:I

    if-eqz v5, :cond_0

    .line 3650
    iget v5, p0, Lcom/android/dmportread/DMCommandService;->level:I

    mul-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/android/dmportread/DMCommandService;->scale:I

    div-int v1, v5, v6

    .line 3651
    :cond_0
    const/4 v0, -0x1

    .line 3653
    .local v0, battery_flag:I
    iget v5, p0, Lcom/android/dmportread/DMCommandService;->status:I

    if-ne v5, v4, :cond_5

    .line 3654
    const/16 v0, 0xff

    .line 3670
    :cond_1
    :goto_0
    const/4 v5, 0x7

    new-array v2, v5, [B

    const/4 v5, -0x3

    aput-byte v5, v2, v3

    aput-byte v9, v2, v4

    aput-byte v4, v2, v7

    aput-byte v3, v2, v8

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/dmportread/DMCommandService;->plugType:I

    if-eq v6, v4, :cond_2

    iget v6, p0, Lcom/android/dmportread/DMCommandService;->plugType:I

    if-ne v6, v7, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    int-to-byte v3, v3

    aput-byte v3, v2, v5

    int-to-byte v3, v0

    aput-byte v3, v2, v9

    const/4 v3, 0x6

    int-to-byte v5, v1

    aput-byte v5, v2, v3

    .line 3676
    .local v2, result:[B
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 3677
    aput-byte v4, v2, v8

    .line 3678
    :cond_4
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3679
    return-object v2

    .line 3656
    .end local v2           #result:[B
    :cond_5
    iget-boolean v5, p0, Lcom/android/dmportread/DMCommandService;->present:Z

    if-nez v5, :cond_6

    .line 3657
    const/16 v0, 0x80

    goto :goto_0

    .line 3659
    :cond_6
    iget v5, p0, Lcom/android/dmportread/DMCommandService;->status:I

    if-ne v5, v7, :cond_7

    .line 3660
    const/16 v0, 0x8

    goto :goto_0

    .line 3662
    :cond_7
    const/16 v5, 0x1e

    if-le v1, v5, :cond_8

    .line 3663
    const/4 v0, 0x1

    goto :goto_0

    .line 3665
    :cond_8
    const/16 v5, 0xf

    if-le v1, v5, :cond_9

    .line 3666
    const/4 v0, 0x2

    goto :goto_0

    .line 3668
    :cond_9
    const/16 v5, 0xf

    if-gt v1, v5, :cond_1

    .line 3669
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private CB_BindOMADMService(I)V
    .locals 3
    .parameter "rvCnt"

    .prologue
    .line 5519
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.DM.intent.action.startFutureDial"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5520
    .local v0, passIntent:Landroid/content/Intent;
    const-string v1, "dest"

    const-string v2, "127.0.0.1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5521
    const-string v1, "port"

    const/16 v2, 0x140e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5522
    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5523
    return-void
.end method

.method private CB_ByteCounter(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 3777
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3778
    const/16 v1, 0xc

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3786
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3787
    return-object v0

    .line 3778
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x8t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CalendarCount(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 2950
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2951
    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 2958
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2959
    return-object v0

    .line 2951
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CalendarRecDelete(II)[B
    .locals 4
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 3100
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3101
    const/16 v2, 0x8

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 3109
    .local v1, result:[B
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3114
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3115
    return-object v1

    .line 3110
    :catch_0
    move-exception v0

    .line 3111
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    goto :goto_0

    .line 3101
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x3t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CalendarRecFieldAppend(II)[B
    .locals 2
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 3026
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3027
    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3034
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3035
    return-object v0

    .line 3027
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CalendarRecFieldRead(III)[B
    .locals 7
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "rvCnt"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 3000
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3001
    const/16 v2, 0x109

    new-array v1, v2, [B

    .line 3002
    .local v1, result:[B
    const/4 v2, -0x3

    aput-byte v2, v1, v4

    .line 3003
    aput-byte v3, v1, v5

    .line 3004
    const/4 v2, 0x2

    aput-byte v3, v1, v2

    .line 3005
    int-to-byte v2, p2

    aput-byte v2, v1, v6

    .line 3006
    const/16 v2, 0x8

    aput-byte v4, v1, v2

    .line 3009
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3014
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3015
    return-object v1

    .line 3010
    :catch_0
    move-exception v0

    .line 3011
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v5, v1, v6

    goto :goto_0
.end method

.method private CB_CalendarRecFieldSet(III)[B
    .locals 8
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 3048
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3049
    const/16 v2, 0x9

    new-array v1, v2, [B

    const/4 v2, -0x3

    aput-byte v2, v1, v3

    aput-byte v4, v1, v5

    const/4 v2, 0x2

    aput-byte v6, v1, v2

    aput-byte v3, v1, v4

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    aput-byte v3, v1, v6

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    int-to-byte v2, p2

    aput-byte v2, v1, v7

    const/16 v2, 0x8

    aput-byte v3, v1, v2

    .line 3057
    .local v1, result:[B
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3063
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3064
    return-object v1

    .line 3058
    :catch_0
    move-exception v0

    .line 3059
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v5, v1, v7

    goto :goto_0
.end method

.method private CB_CalendarRecFieldStatus(I[ZI)[B
    .locals 8
    .parameter "recInd"
    .parameter "fields"
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2973
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2974
    const/16 v2, 0x88

    new-array v1, v2, [B

    .line 2975
    .local v1, result:[B
    const/4 v2, -0x3

    aput-byte v2, v1, v3

    .line 2976
    aput-byte v6, v1, v4

    .line 2977
    aput-byte v5, v1, v5

    .line 2978
    aput-byte v3, v1, v7

    .line 2981
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2986
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2987
    return-object v1

    .line 2982
    :catch_0
    move-exception v0

    .line 2983
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v4, v1, v7

    goto :goto_0
.end method

.method private CB_CalendarRecFieldUpdate(II)[B
    .locals 4
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 3075
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3076
    const/16 v2, 0x8

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 3083
    .local v1, result:[B
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3089
    return-object v1

    .line 3084
    :catch_0
    move-exception v0

    .line 3085
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    goto :goto_0

    .line 3076
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x3t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CallHistoryCount(III)[B
    .locals 8
    .parameter "calltype"
    .parameter "rvCnt"
    .parameter "totalDataCall"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3232
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3233
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3234
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadCalls()V

    .line 3256
    const/4 v0, -0x1

    .line 3257
    .local v0, numcalls:I
    if-nez p1, :cond_0

    .line 3258
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v2, p3

    .line 3259
    :cond_0
    if-ne p1, v3, :cond_1

    .line 3260
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3261
    :cond_1
    if-ne p1, v6, :cond_2

    .line 3262
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3266
    :cond_2
    const/16 v2, 0x9

    new-array v1, v2, [B

    const/4 v2, -0x3

    aput-byte v2, v1, v4

    const/16 v2, 0x15

    aput-byte v2, v1, v3

    aput-byte v3, v1, v6

    const/4 v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    aput-byte v2, v1, v5

    aput-byte v4, v1, v7

    const/4 v2, 0x6

    aput-byte v4, v1, v2

    const/4 v2, 0x7

    aput-byte v4, v1, v2

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    .line 3276
    .local v1, result:[B
    if-ltz v0, :cond_3

    .line 3278
    aput-byte v4, v1, v5

    .line 3279
    int-to-byte v2, v0

    aput-byte v2, v1, v7

    .line 3280
    const/4 v2, 0x6

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3281
    const/4 v2, 0x7

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3282
    const/16 v2, 0x8

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 3292
    :goto_0
    return-object v1

    .line 3287
    :cond_3
    const/16 v2, 0x10

    aput-byte v2, v1, v5

    goto :goto_0
.end method

.method private CB_CallHistoryRecDelete(III)[B
    .locals 10
    .parameter "calltype"
    .parameter "recind"
    .parameter "rvCnt"

    .prologue
    .line 3507
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3508
    const/16 v4, 0x9

    new-array v1, v4, [B

    const/4 v4, 0x0

    const/4 v5, -0x3

    aput-byte v5, v1, v4

    const/4 v4, 0x1

    const/16 v5, 0x15

    aput-byte v5, v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    int-to-byte v5, p1

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v1, v4

    .line 3516
    .local v1, result:[B
    if-nez p1, :cond_0

    .line 3519
    const/4 v4, 0x4

    :try_start_0
    invoke-static {v1, p2, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 3520
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 3521
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3540
    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 3542
    const/4 v4, 0x4

    invoke-static {v1, p2, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 3543
    const/4 v4, -0x1

    if-ne p2, v4, :cond_5

    .line 3544
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "type=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3546
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "type=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3559
    :cond_1
    :goto_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 3561
    const/4 v4, 0x4

    invoke-static {v1, p2, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 3562
    const/4 v4, -0x1

    if-ne p2, v4, :cond_7

    .line 3563
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "type=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3576
    :cond_2
    :goto_2
    array-length v4, v1

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3577
    return-object v1

    .line 3528
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/CallsHistory;

    .line 3529
    .local v2, tmpCalls:Lcom/android/dmportread/CallsHistory;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget v5, v2, Lcom/android/dmportread/CallsHistory;->_id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3530
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    .line 3531
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3536
    .end local v2           #tmpCalls:Lcom/android/dmportread/CallsHistory;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 3537
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    goto :goto_0

    .line 3533
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #tmpCalls:Lcom/android/dmportread/CallsHistory;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_4
    const/16 v4, 0x8

    const/4 v5, 0x1

    :try_start_2
    aput-byte v5, v1, v4
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3549
    .end local v2           #tmpCalls:Lcom/android/dmportread/CallsHistory;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/CallsHistory;

    .line 3550
    .restart local v2       #tmpCalls:Lcom/android/dmportread/CallsHistory;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget v5, v2, Lcom/android/dmportread/CallsHistory;->_id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3551
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 3552
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3554
    :cond_6
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    goto :goto_1

    .line 3566
    .end local v2           #tmpCalls:Lcom/android/dmportread/CallsHistory;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_7
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/CallsHistory;

    .line 3567
    .restart local v2       #tmpCalls:Lcom/android/dmportread/CallsHistory;
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget v5, v2, Lcom/android/dmportread/CallsHistory;->_id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3568
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_8

    .line 3569
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3571
    :cond_8
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-byte v5, v1, v4

    goto/16 :goto_2
.end method

.method private CB_CallHistoryRecRead(IIII)[B
    .locals 11
    .parameter "calltype"
    .parameter "recind"
    .parameter "rvCnt"
    .parameter "totalDataCall"

    .prologue
    .line 3392
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3393
    const/16 v7, 0x54

    new-array v5, v7, [B

    .line 3394
    .local v5, result:[B
    const/4 v7, 0x0

    const/4 v8, -0x3

    aput-byte v8, v5, v7

    .line 3395
    const/4 v7, 0x1

    const/16 v8, 0x15

    aput-byte v8, v5, v7

    .line 3396
    const/4 v7, 0x2

    const/4 v8, 0x2

    aput-byte v8, v5, v7

    .line 3397
    const/4 v7, 0x3

    int-to-byte v8, p1

    aput-byte v8, v5, v7

    .line 3398
    const/16 v7, 0x8

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3399
    const/16 v7, 0x9

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3400
    const/16 v7, 0xd

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3401
    const/16 v7, 0x11

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3402
    const/16 v7, 0x15

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3403
    const/16 v7, 0x19

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3404
    const/16 v7, 0x1a

    const/4 v8, 0x2

    aput-byte v8, v5, v7

    .line 3405
    const/16 v7, 0x1b

    const/4 v8, 0x4

    aput-byte v8, v5, v7

    .line 3407
    const/16 v7, 0x1c

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3408
    const/16 v7, 0x1e

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3409
    const/16 v7, 0x20

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3410
    const/16 v7, 0x22

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3411
    const/16 v7, 0x24

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3412
    const/16 v7, 0x26

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3413
    const/16 v7, 0x28

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3414
    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3415
    const/16 v7, 0x2e

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3416
    const/16 v7, 0x3e

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    .line 3419
    const/4 v6, 0x0

    .line 3420
    .local v6, tmpcall:Lcom/android/dmportread/CallsHistory;
    if-nez p2, :cond_0

    .line 3421
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadCalls()V

    .line 3423
    :cond_0
    const/4 v7, 0x4

    :try_start_0
    invoke-static {v5, p2, v7}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 3425
    packed-switch p1, :pswitch_data_0

    .line 3455
    :goto_0
    if-eqz v6, :cond_2

    .line 3460
    iget-wide v7, v6, Lcom/android/dmportread/CallsHistory;->date:J

    const/16 v9, 0x1c

    invoke-static {v5, v7, v8, v9}, Lcom/android/dmportread/DMCommandService;->fillStartTime([BJI)V

    .line 3463
    iget-wide v7, v6, Lcom/android/dmportread/CallsHistory;->duration:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3465
    .local v2, dr:I
    const/16 v7, 0x9

    int-to-byte v8, v2

    aput-byte v8, v5, v7

    .line 3466
    const/16 v7, 0xa

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3467
    const/16 v7, 0xb

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3468
    const/16 v7, 0xc

    shr-int/lit8 v8, v2, 0x18

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3471
    const/16 v7, 0xd

    int-to-byte v8, v2

    aput-byte v8, v5, v7

    .line 3472
    const/16 v7, 0xe

    shr-int/lit8 v8, v2, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3473
    const/16 v7, 0xf

    shr-int/lit8 v8, v2, 0x10

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3474
    const/16 v7, 0x10

    shr-int/lit8 v8, v2, 0x18

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 3476
    iget-object v7, v6, Lcom/android/dmportread/CallsHistory;->number:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3477
    .local v1, bytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 3478
    add-int/lit8 v7, v4, 0x3e

    aget-byte v8, v1, v4

    aput-byte v8, v5, v7

    .line 3477
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3427
    .end local v1           #bytes:[B
    .end local v2           #dr:I
    .end local v4           #i:I
    :pswitch_0
    sub-int v7, p2, p4

    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 3428
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    sub-int v8, p2, p4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/dmportread/CallsHistory;

    move-object v6, v0

    goto :goto_0

    .line 3432
    :cond_1
    const/16 v7, 0x8

    const/16 v8, 0x13

    aput-byte v8, v5, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3482
    :catch_0
    move-exception v3

    .line 3483
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v7, 0x8

    const/4 v8, 0x1

    aput-byte v8, v5, v7

    .line 3487
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    array-length v7, v5

    invoke-direct {p0, v7}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3488
    return-object v5

    .line 3436
    :pswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p2, v7, :cond_3

    .line 3437
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/dmportread/CallsHistory;

    move-object v6, v0

    goto/16 :goto_0

    .line 3441
    :cond_3
    const/16 v7, 0x8

    const/16 v8, 0x13

    aput-byte v8, v5, v7

    goto/16 :goto_0

    .line 3445
    :pswitch_2
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p2, v7, :cond_4

    .line 3446
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/dmportread/CallsHistory;

    move-object v6, v0

    goto/16 :goto_0

    .line 3450
    :cond_4
    const/16 v7, 0x8

    const/16 v8, 0x13

    aput-byte v8, v5, v7
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized CB_ContactsCount(I)[B
    .locals 4
    .parameter "rvCnt"

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1036
    const/16 v2, 0x8

    new-array v1, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v1, :array_0

    .line 1044
    .local v1, result:[B
    :try_start_1
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadContacts()V

    .line 1046
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1052
    :goto_0
    :try_start_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1053
    monitor-exit p0

    return-object v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1050
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1035
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1036
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_ContactsRecDelete(II)[B
    .locals 9
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 1489
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1490
    const/16 v5, 0x8

    new-array v3, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v3, :array_0

    .line 1498
    .local v3, result:[B
    const/4 v5, 0x3

    :try_start_1
    invoke-static {v3, p1, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1499
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 1500
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1505
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    .line 1506
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1566
    :cond_0
    :goto_0
    :try_start_2
    array-length v5, v3

    invoke-direct {p0, v5}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1567
    monitor-exit p0

    return-object v3

    .line 1513
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dmportread/TempContact;

    .line 1515
    .local v0, contact:Lcom/android/dmportread/TempContact;
    if-nez v0, :cond_2

    .line 1517
    const/4 v5, 0x7

    const/4 v6, 0x2

    aput-byte v6, v3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1563
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :catch_0
    move-exception v1

    .line 1564
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v5, 0x7

    const/4 v6, 0x1

    :try_start_4
    aput-byte v6, v3, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1489
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #result:[B
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1521
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    .restart local v3       #result:[B
    :cond_2
    :try_start_5
    iget-object v4, v0, Lcom/android/dmportread/TempContact;->mUri:Landroid/net/Uri;

    .line 1522
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 1525
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1528
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    if-nez v5, :cond_3

    .line 1530
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    .line 1531
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1532
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addLast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1537
    :cond_3
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le p1, v5, :cond_5

    .line 1539
    :cond_4
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1543
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1546
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge p1, v5, :cond_6

    .line 1548
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1549
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1543
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1559
    .end local v2           #i:I
    :cond_7
    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-byte v6, v3, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1490
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x1t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_ContactsRecFieldAppend(II)[B
    .locals 11
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 1366
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1367
    const/16 v1, 0x8

    new-array v10, v1, [B

    fill-array-data v10, :array_0

    .line 1374
    .local v10, result:[B
    const v1, 0xffff

    if-gt p1, v1, :cond_0

    const/4 v1, -0x1

    if-ge p1, v1, :cond_1

    .line 1375
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-byte v2, v10, v1

    .line 1404
    :goto_0
    array-length v1, v10

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-object v10

    .line 1378
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/dmportread/TempContact;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/dmportread/TempContact;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    .local v0, contact:Lcom/android/dmportread/TempContact;
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1383
    :cond_2
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v10, v1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1384
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 1385
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1398
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :catch_0
    move-exception v9

    .line 1399
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x7

    const/4 v2, 0x1

    :try_start_2
    aput-byte v2, v10, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1366
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v10           #result:[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1390
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    .restart local v10       #result:[B
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1391
    .local v8, addIn:I
    iput v8, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 1394
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete deletedList= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1400
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    .end local v8           #addIn:I
    :catch_1
    move-exception v9

    .line 1401
    .local v9, e:Ljava/lang/Exception;
    const/4 v1, 0x7

    const/4 v2, 0x1

    :try_start_4
    aput-byte v2, v10, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1367
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x1t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_ContactsRecFieldRead(III)[B
    .locals 5
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "rvCnt"

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1208
    const/16 v3, 0x109

    new-array v2, v3, [B

    .line 1209
    .local v2, result:[B
    const/4 v3, 0x0

    const/4 v4, -0x3

    aput-byte v4, v2, v3

    .line 1210
    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 1211
    const/4 v3, 0x2

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    .line 1212
    const/4 v3, 0x7

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    .line 1213
    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-byte v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    const/4 v3, 0x3

    :try_start_1
    invoke-static {v2, p1, v3}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1217
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dmportread/TempContact;

    .line 1219
    .local v0, contact:Lcom/android/dmportread/TempContact;
    if-nez v0, :cond_0

    .line 1221
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1354
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :goto_0
    :try_start_2
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1355
    monitor-exit p0

    return-object v2

    .line 1226
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1336
    :pswitch_0
    const/16 v3, 0x8

    const/4 v4, 0x2

    :try_start_3
    aput-byte v4, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1349
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :catch_0
    move-exception v1

    .line 1350
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v3, 0x8

    const/4 v4, 0x1

    :try_start_4
    aput-byte v4, v2, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1207
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v2           #result:[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1228
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    .restart local v2       #result:[B
    :pswitch_1
    :try_start_5
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1229
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1351
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :catch_1
    move-exception v1

    .line 1352
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const/16 v3, 0x8

    const/4 v4, 0x1

    :try_start_6
    aput-byte v4, v2, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1231
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x2

    :try_start_7
    aput-byte v4, v2, v3

    goto :goto_0

    .line 1234
    :pswitch_2
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1235
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto :goto_0

    .line 1237
    :cond_2
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto :goto_0

    .line 1240
    :pswitch_3
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1241
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto :goto_0

    .line 1243
    :cond_3
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto :goto_0

    .line 1246
    :pswitch_4
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1247
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1249
    :cond_4
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1252
    :pswitch_5
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1253
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1255
    :cond_5
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1258
    :pswitch_6
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1259
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1261
    :cond_6
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1264
    :pswitch_7
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1265
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1267
    :cond_7
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1270
    :pswitch_8
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1271
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1273
    :cond_8
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1276
    :pswitch_9
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1277
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1279
    :cond_9
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1282
    :pswitch_a
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1283
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1285
    :cond_a
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1288
    :pswitch_b
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1289
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1291
    :cond_b
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1294
    :pswitch_c
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1295
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1297
    :cond_c
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1300
    :pswitch_d
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1301
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1303
    :cond_d
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1306
    :pswitch_e
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1307
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1309
    :cond_e
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1312
    :pswitch_f
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1313
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1315
    :cond_f
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1318
    :pswitch_10
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1319
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1321
    :cond_10
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1324
    :pswitch_11
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1325
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1327
    :cond_11
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1330
    :pswitch_12
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1331
    iget-object v3, v0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V

    goto/16 :goto_0

    .line 1333
    :cond_12
    const/16 v3, 0x8

    const/4 v4, 0x2

    aput-byte v4, v2, v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 1226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized CB_ContactsRecFieldSet(IILjava/lang/String;I)[B
    .locals 4
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "data"
    .parameter "rvCnt"

    .prologue
    .line 1418
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1420
    iget p1, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 1422
    const/16 v2, 0x9

    new-array v1, v2, [B

    const/4 v2, 0x0

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x5

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    .local v1, result:[B
    const/4 v2, 0x3

    :try_start_1
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1432
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/TempContact;

    invoke-static {p2, p3, v2}, Lcom/android/dmportread/TempContact;->setField(ILjava/lang/String;Lcom/android/dmportread/TempContact;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1433
    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-byte v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1440
    :cond_0
    :goto_0
    :try_start_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1441
    monitor-exit p0

    return-object v1

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v2, 0x8

    const/4 v3, 0x1

    :try_start_3
    aput-byte v3, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1418
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized CB_ContactsRecFieldStatus(I[ZI)[B
    .locals 8
    .parameter "recInd"
    .parameter "fields"
    .parameter "rvCnt"

    .prologue
    const/16 v7, 0xb

    .line 1068
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1069
    div-int/lit16 v4, p1, 0x12c

    .line 1071
    .local v4, tmp300Ind:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1073
    iget v5, p0, Lcom/android/dmportread/DMCommandService;->shareContactNum:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    iget v5, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v4, v5, :cond_0

    .line 1076
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1071
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DMCmdSvs"

    const-string v6, "wait error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1068
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v4           #tmp300Ind:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1088
    .restart local v2       #i:I
    .restart local v4       #tmp300Ind:I
    :cond_0
    const/16 v5, 0x88

    :try_start_3
    new-array v3, v5, [B

    .line 1089
    .local v3, result:[B
    const/4 v5, 0x0

    const/4 v6, -0x3

    aput-byte v6, v3, v5

    .line 1090
    const/4 v5, 0x1

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1091
    const/4 v5, 0x2

    const/4 v6, 0x2

    aput-byte v6, v3, v5

    .line 1092
    const/4 v5, 0x7

    const/4 v6, 0x0

    aput-byte v6, v3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1095
    const/4 v5, 0x3

    :try_start_4
    invoke-static {v3, p1, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1098
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dmportread/TempContact;

    .line 1099
    .local v0, contact:Lcom/android/dmportread/TempContact;
    if-nez v0, :cond_2

    .line 1101
    const/4 v5, 0x7

    const/4 v6, 0x2

    aput-byte v6, v3, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1194
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :cond_1
    :goto_2
    :try_start_5
    array-length v5, v3

    invoke-direct {p0, v5}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1195
    monitor-exit p0

    return-object v3

    .line 1105
    .restart local v0       #contact:Lcom/android/dmportread/TempContact;
    :cond_2
    :try_start_6
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mFName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1107
    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1109
    :cond_3
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mMName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1111
    const/16 v5, 0x9

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1113
    :cond_4
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mLName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1115
    const/16 v5, 0xa

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1117
    :cond_5
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mBTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1119
    const/16 v5, 0xb

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1121
    :cond_6
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mBFN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1123
    const/16 v5, 0xc

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1125
    :cond_7
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE1A:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1127
    const/16 v5, 0xd

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1129
    :cond_8
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mMTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1131
    const/16 v5, 0xe

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1137
    :cond_9
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mHTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1139
    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1141
    :cond_a
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mPN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1143
    const/16 v5, 0x11

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1145
    :cond_b
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mCarTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1147
    const/16 v5, 0x12

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1149
    :cond_c
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mHFN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1151
    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1153
    :cond_d
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mCompanyTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1155
    const/16 v5, 0x14

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1157
    :cond_e
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mB2TN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1159
    const/16 v5, 0x15

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1161
    :cond_f
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    if-eqz v5, :cond_10

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mH2TN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1163
    const/16 v5, 0x16

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1165
    :cond_10
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mRTN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1167
    const/16 v5, 0x17

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1169
    :cond_11
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE2A:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1171
    const/16 v5, 0x18

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1173
    :cond_12
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mE3A:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1175
    const/16 v5, 0x19

    const/4 v6, 0x1

    aput-byte v6, v3, v5

    .line 1177
    :cond_13
    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/dmportread/TempContact;->mATN:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1179
    const/16 v5, 0x1a

    const/4 v6, 0x1

    aput-byte v6, v3, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1190
    .end local v0           #contact:Lcom/android/dmportread/TempContact;
    :catch_1
    move-exception v1

    .line 1191
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1192
    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-byte v6, v3, v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method private declared-synchronized CB_ContactsRecFieldUpdate(II)[B
    .locals 4
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 1455
    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 1456
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1457
    const/16 v2, 0x8

    new-array v1, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v1, :array_0

    .line 1464
    .local v1, result:[B
    const/4 v2, 0x3

    :try_start_1
    invoke-static {v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1468
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/TempContact;

    invoke-static {v3, v2}, Lcom/android/dmportread/TempContact;->insertNewContact(Landroid/content/ContentResolver;Lcom/android/dmportread/TempContact;)V

    .line 1469
    iget v2, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I

    div-int/lit16 v3, p1, 0x12c

    if-ge v2, v3, :cond_0

    .line 1470
    div-int/lit16 v2, p1, 0x12c

    iput v2, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1477
    :cond_0
    :goto_0
    :try_start_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1478
    monitor-exit p0

    return-object v1

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    :try_start_3
    aput-byte v3, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1455
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1474
    .restart local v1       #result:[B
    :catch_1
    move-exception v0

    .line 1475
    .local v0, e:Lcom/android/dmportread/DMServiceException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    :try_start_4
    aput-byte v3, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1457
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x1t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_CreateDir(Ljava/lang/String;I)[B
    .locals 3
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4463
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4464
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4465
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4467
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4470
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4469
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4470
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_CreateFile(Ljava/lang/String;I)[B
    .locals 3
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4543
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4544
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4545
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4547
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4550
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4549
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4550
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_CurOperatorName(I)[B
    .locals 8
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 4828
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4830
    const/16 v3, 0x84

    new-array v2, v3, [B

    .line 4831
    .local v2, result:[B
    const/4 v3, -0x3

    aput-byte v3, v2, v6

    .line 4832
    const/16 v3, 0x11

    aput-byte v3, v2, v4

    .line 4833
    aput-byte v7, v2, v7

    .line 4834
    aput-byte v6, v2, v5

    .line 4837
    :try_start_0
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 4840
    .local v1, operatorName:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4853
    .end local v1           #operatorName:Ljava/lang/String;
    :goto_0
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4854
    return-object v2

    .line 4842
    :catch_0
    move-exception v0

    .line 4843
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v4, v2, v5

    .line 4844
    const-string v3, "DMCmdSvs"

    const-string v4, "Index Out of bound"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4845
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 4846
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    aput-byte v4, v2, v5

    .line 4847
    const-string v3, "DMCmdSvs"

    const-string v4, "UnsupportedEncodingException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4848
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 4849
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4850
    aput-byte v4, v2, v5

    goto :goto_0
.end method

.method private CB_DMRouterInforGet(I)V
    .locals 1
    .parameter "rvCnt"

    .prologue
    .line 5459
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5460
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5461
    return-void
.end method

.method private CB_DeviceInfo(I)[B
    .locals 9
    .parameter "rvCnt"

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3983
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3984
    const/16 v4, 0x49

    new-array v1, v4, [B

    .line 3985
    .local v1, result:[B
    const/4 v4, -0x3

    aput-byte v4, v1, v5

    .line 3986
    const/16 v4, 0xb

    aput-byte v4, v1, v7

    .line 3987
    const/4 v4, 0x2

    aput-byte v7, v1, v4

    .line 3988
    aput-byte v5, v1, v8

    .line 3989
    aput-byte v5, v1, v6

    .line 3994
    :try_start_0
    const-string v4, "ro.revision"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3995
    .local v2, val:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3996
    new-instance v4, Lcom/android/dmportread/DMServiceException;

    const-string v5, "content length too long"

    invoke-direct {v4, v5}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4024
    .end local v2           #val:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4025
    .local v0, e:Ljava/lang/Exception;
    aput-byte v7, v1, v8

    .line 4028
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    array-length v4, v1

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4029
    return-object v1

    .line 4000
    .restart local v2       #val:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x4

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 4006
    const-string v4, "ro.product.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4008
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_2

    .line 4009
    :cond_1
    new-instance v4, Lcom/android/dmportread/DMServiceException;

    const-string v5, "content length too long"

    invoke-direct {v4, v5}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4011
    :cond_2
    const-string v4, "UTF-16LE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 4012
    .local v3, valBytes:[B
    const/4 v4, 0x0

    const/4 v5, 0x5

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4016
    const-string v4, "ro.bootloader"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4017
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x24

    if-le v4, v5, :cond_4

    .line 4018
    :cond_3
    new-instance v4, Lcom/android/dmportread/DMServiceException;

    const-string v5, "content length too long"

    invoke-direct {v4, v5}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4020
    :cond_4
    const-string v4, "UTF-16LE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 4021
    const/4 v4, 0x0

    const/16 v5, 0x25

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private CB_DispInfoGet(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 4043
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4044
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4045
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4046
    .local v0, result:[B
    return-object v0
.end method

.method private CB_DispRead(II)[B
    .locals 4
    .parameter "blockInd"
    .parameter "rvCnt"

    .prologue
    .line 4057
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4058
    const/16 v1, 0x20c

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4059
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "12.2 Display Read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4061
    .local v0, result:[B
    return-object v0
.end method

.method private CB_GetAndroidIdentifier(I)[B
    .locals 14
    .parameter "rvCnt"

    .prologue
    const/4 v13, -0x3

    const/16 v12, -0x52

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 5094
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5095
    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 5096
    .local v4, serialNumber:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 5097
    const/4 v2, 0x0

    .line 5099
    .local v2, bytesID:[B
    :try_start_0
    const-string v7, "ASCII"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5103
    :goto_0
    if-nez v2, :cond_0

    move v3, v6

    .line 5104
    .local v3, len:I
    :goto_1
    const/16 v7, 0x200

    if-gt v3, v7, :cond_1

    if-lez v3, :cond_1

    .line 5105
    add-int/lit8 v7, v3, 0x7

    new-array v0, v7, [B

    .line 5107
    .local v0, DM:[B
    aput-byte v13, v0, v6

    .line 5108
    aput-byte v12, v0, v10

    .line 5109
    const/4 v7, 0x2

    aput-byte v10, v0, v7

    .line 5110
    aput-byte v10, v0, v11

    .line 5111
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aput-byte v6, v0, v7

    .line 5112
    const/4 v7, 0x4

    invoke-static {v0, v3, v7}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 5113
    const/4 v7, 0x6

    array-length v8, v2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5114
    aput-byte v6, v0, v11

    .line 5115
    array-length v6, v0

    invoke-direct {p0, v6}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5133
    .end local v0           #DM:[B
    .end local v2           #bytesID:[B
    .end local v3           #len:I
    :goto_2
    return-object v0

    .line 5100
    .restart local v2       #bytesID:[B
    :catch_0
    move-exception v5

    .line 5101
    .local v5, ue:Ljava/io/UnsupportedEncodingException;
    const-string v7, "DMCmdSvs"

    const-string v8, "CB_GetAndroidIdentifier:UnsupportedEncodingException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5103
    .end local v5           #ue:Ljava/io/UnsupportedEncodingException;
    :cond_0
    array-length v3, v2

    goto :goto_1

    .line 5118
    .restart local v3       #len:I
    :cond_1
    const-string v7, "DMCmdSvs"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SERIAL length is invalid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    .end local v2           #bytesID:[B
    .end local v3           #len:I
    :goto_3
    const/4 v7, 0x7

    new-array v1, v7, [B

    .line 5125
    .local v1, DMerr:[B
    aput-byte v13, v1, v6

    .line 5126
    aput-byte v12, v1, v10

    .line 5127
    const/4 v7, 0x2

    aput-byte v10, v1, v7

    .line 5128
    aput-byte v10, v1, v11

    .line 5129
    const/4 v7, 0x4

    aput-byte v6, v1, v7

    .line 5130
    const/4 v7, 0x5

    aput-byte v6, v1, v7

    .line 5131
    const/4 v7, 0x6

    aput-byte v6, v1, v7

    .line 5132
    array-length v6, v1

    invoke-direct {p0, v6}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    move-object v0, v1

    .line 5133
    goto :goto_2

    .line 5121
    .end local v1           #DMerr:[B
    :cond_2
    const-string v7, "DMCmdSvs"

    const-string v8, "SERIAL is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private CB_GetBTStatus(I)[B
    .locals 6
    .parameter "rvCnt"

    .prologue
    const/4 v3, 0x0

    .line 5270
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5271
    const/4 v2, 0x5

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 5272
    .local v0, result:[B
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 5273
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 5275
    :cond_0
    const/16 v1, 0x80

    .line 5276
    .local v1, stateBT:I
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v1, v2

    .line 5277
    const-string v2, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stateBT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5278
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    const/16 v4, 0x17

    if-ne v2, v4, :cond_1

    const/4 v3, 0x2

    :cond_1
    add-int/2addr v1, v3

    .line 5279
    const/4 v2, 0x4

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 5281
    array-length v2, v0

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5282
    return-object v0

    :cond_2
    move v2, v3

    .line 5276
    goto :goto_0

    .line 5271
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xa5t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_GetCurWorkingDir(Ljava/lang/String;I)[B
    .locals 6
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4412
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4413
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4414
    const/16 v3, 0xa

    new-array v2, v3, [B

    .line 4415
    .local v2, result:[B
    const-string v3, "FS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF8_to_UTF16(Ljava/lang/String;)[B

    move-result-object v0

    .line 4424
    .local v0, a:[B
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF8_to_UTF16(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4428
    .end local v0           #a:[B
    .end local v2           #result:[B
    :goto_0
    return-object v2

    .line 4426
    .restart local v2       #result:[B
    :catch_0
    move-exception v1

    .line 4427
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "FS"

    const-string v4, "unsupport encoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CB_GetDirList(Ljava/lang/String;I)[B
    .locals 3
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4707
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4708
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4709
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4711
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4714
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4713
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4714
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetDirReadOnly(Ljava/lang/String;I)[B
    .locals 3
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4503
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4504
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4505
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4507
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4510
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4509
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4510
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetFileCreateDate(Ljava/lang/String;I)[B
    .locals 3
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4745
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4746
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4747
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4749
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4752
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4751
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4752
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetFileData(II)[B
    .locals 2
    .parameter "blockInd"
    .parameter "rvCnt"

    .prologue
    .line 4643
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4644
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4645
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4646
    .local v0, result:[B
    return-object v0
.end method

.method private CB_GetFileInfo(Ljava/lang/String;I)[B
    .locals 5
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4623
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4624
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4625
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4627
    .local v1, result:[B
    :try_start_0
    const-string v2, "file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4631
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4630
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4631
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetFileList(Ljava/lang/String;I)[B
    .locals 3
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4726
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4727
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4728
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4730
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4733
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4732
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4733
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetFileReadOnly(Ljava/lang/String;I)[B
    .locals 3
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4583
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4584
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4585
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4587
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4590
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4589
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4590
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_GetGpsStatus(I)[B
    .locals 6
    .parameter "rvCnt"

    .prologue
    const/4 v3, 0x1

    .line 5234
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5235
    const/4 v2, 0x5

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 5237
    .local v1, result:[B
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "gpsone_allowed"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    aput-byte v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5242
    :goto_1
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5243
    return-object v1

    .line 5237
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 5238
    :catch_0
    move-exception v0

    .line 5239
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5240
    const/4 v2, 0x3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 5235
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xa4t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_GetLocale(I)I
    .locals 6
    .parameter "rvCnt"

    .prologue
    .line 5318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5319
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5320
    .local v1, config:Landroid/content/res/Configuration;
    const-string v3, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5321
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5323
    const/4 v3, 0x0

    .line 5335
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return v3

    .line 5325
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_0
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 5327
    const/4 v3, 0x1

    goto :goto_0

    .line 5330
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 5332
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private CB_GetMMSC(I)[B
    .locals 13
    .parameter "rvCnt"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 5365
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "current"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/dmportread/DMCommandService;->queryMMSCFields:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5367
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, ""

    .line 5368
    .local v8, mmsc:Ljava/lang/String;
    const/16 v0, 0x103

    new-array v9, v0, [B

    .line 5369
    .local v9, result:[B
    const/4 v0, -0x3

    aput-byte v0, v9, v10

    .line 5370
    const/16 v0, -0x59

    aput-byte v0, v9, v11

    .line 5371
    const/4 v0, 0x2

    aput-byte v11, v9, v0

    .line 5372
    aput-byte v10, v9, v12

    .line 5374
    if-eqz v6, :cond_1

    .line 5375
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5376
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5377
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmsc >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    :cond_0
    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "UTF-16LE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5386
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5388
    :cond_1
    return-object v9

    .line 5381
    :catch_0
    move-exception v7

    .line 5383
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    const/4 v0, -0x1

    aput-byte v0, v9, v12

    goto :goto_0
.end method

.method private CB_GetScreenLockStatus(I)[B
    .locals 12
    .parameter "rvCnt"

    .prologue
    const/4 v11, 0x1

    .line 5008
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5009
    const/4 v8, 0x4

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    .line 5011
    .local v7, result:[B
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5012
    .local v2, bIsLock:Ljava/lang/Boolean;
    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 5013
    .local v6, kManager:Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    .line 5014
    .local v1, KeyguardIsShowing:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 5017
    .local v5, isKeyguardLocked:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "iskeyguardLocked"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5025
    :goto_0
    if-nez v5, :cond_0

    .line 5027
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "keyguardIsShowing"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 5035
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 5036
    const/4 v8, 0x0

    :try_start_2
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5046
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5047
    const/4 v8, 0x3

    aput-byte v11, v7, v8

    .line 5049
    :cond_2
    array-length v8, v7

    invoke-direct {p0, v8}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5050
    return-object v7

    .line 5018
    :catch_0
    move-exception v3

    .line 5019
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 5020
    .local v4, eMsg:Ljava/lang/String;
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CB_GetScreenLockStatus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5022
    const/4 v5, 0x0

    goto :goto_0

    .line 5028
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #eMsg:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 5029
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 5030
    .restart local v4       #eMsg:Ljava/lang/String;
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CB_GetScreenLockStatus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 5037
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #eMsg:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_1

    .line 5038
    const/4 v8, 0x0

    :try_start_3
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 5040
    :catch_2
    move-exception v3

    .line 5041
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 5042
    .restart local v4       #eMsg:Ljava/lang/String;
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CB_GetScreenLockStatus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5044
    const/4 v5, 0x0

    goto :goto_2

    .line 5009
    :array_0
    .array-data 0x1
        0xfdt
        0xabt
        0x1t
        0x0t
    .end array-data
.end method

.method private CB_GetScreenTimeout(I)[B
    .locals 8
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 4922
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4923
    const/4 v2, 0x6

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 4924
    .local v0, result:[B
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const v4, 0xea60

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 4925
    .local v1, timeout:I
    const-string v2, "DMCmdSvs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    sparse-switch v1, :sswitch_data_0

    .line 4952
    :goto_0
    array-length v2, v0

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4953
    return-object v0

    .line 4928
    :sswitch_0
    const/16 v2, 0xf

    aput-byte v2, v0, v7

    .line 4929
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4932
    :sswitch_1
    const/16 v2, 0x1e

    aput-byte v2, v0, v7

    .line 4933
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4936
    :sswitch_2
    const/16 v2, 0x3c

    aput-byte v2, v0, v7

    .line 4937
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4940
    :sswitch_3
    const/16 v2, 0x78

    aput-byte v2, v0, v7

    .line 4941
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4944
    :sswitch_4
    const/16 v2, 0x58

    aput-byte v2, v0, v7

    .line 4945
    const/4 v2, 0x5

    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 4946
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4949
    :sswitch_5
    aput-byte v5, v0, v6

    goto :goto_0

    .line 4923
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xa2t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 4926
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x927c0 -> :sswitch_4
    .end sparse-switch
.end method

.method private CB_GetUIScreenID(I)[B
    .locals 12
    .parameter "rvCnt"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 5418
    const-string v4, "DMCmdSvs"

    const-string v5, "CB_GetUIScreenID"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5420
    new-array v1, v11, [B

    fill-array-data v1, :array_0

    .line 5421
    .local v1, result:[B
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/dmportread/DMCommandService;->mActivityManager:Landroid/app/ActivityManager;

    .line 5422
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 5423
    .local v2, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5424
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5425
    .local v0, baseAct:Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5426
    .local v3, topAct:Ljava/lang/String;
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "base:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5428
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_HOME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_HOME2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5429
    :cond_0
    aput-byte v8, v1, v7

    .line 5445
    .end local v0           #baseAct:Ljava/lang/String;
    .end local v3           #topAct:Ljava/lang/String;
    :cond_1
    :goto_0
    array-length v4, v1

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5446
    return-object v1

    .line 5430
    .restart local v0       #baseAct:Ljava/lang/String;
    .restart local v3       #topAct:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_SETTINGS_HC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5431
    :cond_3
    aput-byte v9, v1, v7

    goto :goto_0

    .line 5432
    :cond_4
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_DIALER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_DIALER2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5433
    :cond_5
    const/4 v4, 0x2

    aput-byte v4, v1, v7

    goto :goto_0

    .line 5434
    :cond_6
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_BROWSER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5435
    aput-byte v10, v1, v7

    goto :goto_0

    .line 5436
    :cond_7
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_ABOUTPHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5437
    aput-byte v7, v1, v7

    goto :goto_0

    .line 5438
    :cond_8
    sget-object v4, Lcom/android/dmportread/DMCommandService;->SCREEN_MESSAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5439
    aput-byte v11, v1, v7

    goto :goto_0

    .line 5441
    :cond_9
    aput-byte v9, v1, v10

    goto :goto_0

    .line 5420
    :array_0
    .array-data 0x1
        0xfdt
        0xa8t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_GetUSBDebuggingStatus(I)[B
    .locals 5
    .parameter "rvCnt"

    .prologue
    .line 5053
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5054
    const/4 v2, 0x4

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 5056
    .local v1, result:[B
    const/4 v0, 0x0

    .line 5057
    .local v0, nEnable:I
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5058
    if-eqz v0, :cond_0

    .line 5059
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 5061
    :cond_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5062
    return-object v1

    .line 5054
    :array_0
    .array-data 0x1
        0xfdt
        0xact
        0x1t
        0x0t
    .end array-data
.end method

.method private CB_GetWifiStatus(I)[B
    .locals 3
    .parameter "rvCnt"

    .prologue
    .line 4983
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4984
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4985
    .local v0, result:[B
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/dmportread/DMCommandService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4986
    const/4 v2, 0x4

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    aput-byte v1, v0, v2

    .line 4987
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4988
    return-object v0

    .line 4986
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4984
    :array_0
    .array-data 0x1
        0xfdt
        0xa3t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_HangupCall(I)V
    .locals 7
    .parameter "rvCnt"

    .prologue
    .line 5490
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 5491
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5492
    .local v2, fg:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5493
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5495
    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5513
    :cond_0
    :goto_0
    return-void

    .line 5496
    :catch_0
    move-exception v1

    .line 5497
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call hangup: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5499
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5501
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5502
    :catch_1
    move-exception v1

    .line 5503
    .restart local v1       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call hangup: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5505
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5507
    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5508
    :catch_2
    move-exception v1

    .line 5509
    .restart local v1       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call hangup: caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private CB_KeyPress(III)[B
    .locals 9
    .parameter "holdtype"
    .parameter "keyCode"
    .parameter "rvCnt"

    .prologue
    .line 4188
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4189
    const/4 v7, 0x5

    new-array v6, v7, [B

    fill-array-data v6, :array_0

    .line 4196
    .local v6, result:[B
    const/16 v7, 0x60

    if-ne p2, v7, :cond_1

    .line 4198
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4199
    .local v5, multiIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4200
    const-string v7, "vnd.android-dir/mms-sms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4201
    const/high16 v7, 0x1000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4203
    if-nez p1, :cond_0

    .line 4204
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 4205
    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    .line 4206
    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 4209
    :goto_0
    const/4 v7, 0x3

    const/16 v8, 0x60

    aput-byte v8, v6, v7

    .line 4211
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/dmportread/DMCommandService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4217
    .end local v5           #multiIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    const/16 v7, 0xa2

    if-ne p2, v7, :cond_3

    .line 4219
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4220
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "com.android.camera"

    const-string v8, "com.android.camera.VideoCamera"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4222
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4224
    if-nez p1, :cond_2

    .line 4225
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v6, v7

    .line 4226
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_7

    .line 4227
    const/4 v7, 0x2

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    .line 4230
    :goto_2
    const/4 v7, 0x3

    const/16 v8, -0x5e

    aput-byte v8, v6, v7

    .line 4232
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/dmportread/DMCommandService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4239
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    :goto_3
    const/16 v7, 0x73

    if-eq p2, v7, :cond_5

    const/16 v7, 0x72

    if-eq p2, v7, :cond_5

    const/16 v7, 0xe7

    if-eq p2, v7, :cond_5

    const/16 v7, 0x6b

    if-eq p2, v7, :cond_5

    const/16 v7, 0x74

    if-eq p2, v7, :cond_5

    .line 4242
    :try_start_2
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mWm:Landroid/view/IWindowManager;

    if-nez v7, :cond_4

    .line 4243
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dmportread/DMCommandService;->mWm:Landroid/view/IWindowManager;

    .line 4245
    invoke-static {}, Lcom/android/dmportread/DMCommandService;->intiKeyEventMap()V

    .line 4247
    :cond_4
    sget-object v7, Lcom/android/dmportread/DMCommandService;->mKeyEventMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4248
    .local v4, key:Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 4249
    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-byte v8, v6, v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4278
    .end local v4           #key:Ljava/lang/Integer;
    :cond_5
    :goto_4
    array-length v7, v6

    invoke-direct {p0, v7}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4279
    return-object v6

    .line 4208
    .restart local v5       #multiIntent:Landroid/content/Intent;
    :cond_6
    const/4 v7, 0x2

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    goto :goto_0

    .line 4212
    :catch_0
    move-exception v0

    .line 4214
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "DMCmdSvs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4229
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #multiIntent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v7, 0x2

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    goto :goto_2

    .line 4233
    :catch_1
    move-exception v0

    .line 4235
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "DMCmdSvs"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4251
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #key:Ljava/lang/Integer;
    :cond_8
    const/4 v1, 0x0

    .line 4259
    .local v1, event:Landroid/view/KeyEvent;
    :try_start_3
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #event:Landroid/view/KeyEvent;
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4260
    .restart local v1       #event:Landroid/view/KeyEvent;
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mWm:Landroid/view/IWindowManager;

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 4261
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1           #event:Landroid/view/KeyEvent;
    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/view/KeyEvent;-><init>(II)V

    .line 4262
    .restart local v1       #event:Landroid/view/KeyEvent;
    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mWm:Landroid/view/IWindowManager;

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 4268
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v4           #key:Ljava/lang/Integer;
    :catch_2
    move-exception v2

    .line 4269
    .local v2, ex:Landroid/os/RemoteException;
    const-string v7, "DMCmdSvs"

    const-string v8, "key pressing failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    goto :goto_4

    .line 4271
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 4272
    .local v0, e:Lcom/android/dmportread/DMServiceException;
    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    goto :goto_4

    .line 4273
    .end local v0           #e:Lcom/android/dmportread/DMServiceException;
    :catch_4
    move-exception v0

    .line 4274
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4275
    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-byte v8, v6, v7

    goto :goto_4

    .line 4189
    :array_0
    .array-data 0x1
        0xfdt
        0xdt
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_MiscConfig8(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 5535
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.dmportread.DM_MiscConfig"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5536
    .local v0, dm_misc_i:Landroid/content/Intent;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5537
    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5538
    return-void
.end method

.method private CB_ModemDataCallStateGet(I)[B
    .locals 3
    .parameter "rvCnt"

    .prologue
    const/4 v2, 0x4

    .line 3921
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3922
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3928
    .local v0, result:[B
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3929
    const/4 v1, 0x1

    aput-byte v1, v0, v2

    .line 3934
    :goto_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3935
    return-object v0

    .line 3931
    :cond_0
    const/4 v1, 0x0

    aput-byte v1, v0, v2

    goto :goto_0

    .line 3922
    :array_0
    .array-data 0x1
        0xfdt
        0x9t
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_ModemLockCodeChange(Ljava/lang/String;I)[B
    .locals 5
    .parameter "code"
    .parameter "rvCnt"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 3878
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3881
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 3887
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3893
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3895
    const/16 v1, 0xa

    aput-byte v1, v0, v3

    .line 3912
    :goto_0
    return-object v0

    .line 3897
    :cond_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3902
    :cond_1
    const/4 v1, 0x0

    aput-byte v1, v0, v3

    goto :goto_0

    .line 3904
    :cond_2
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3906
    const/16 v1, 0x21

    aput-byte v1, v0, v3

    goto :goto_0

    .line 3909
    :cond_3
    const/16 v1, 0x24

    aput-byte v1, v0, v3

    goto :goto_0

    .line 3881
    :array_0
    .array-data 0x1
        0xfdt
        0x9t
        0x3t
        0x1t
    .end array-data
.end method

.method private CB_ModemLockStateGet(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 3801
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3802
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3808
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3809
    return-object v0

    .line 3802
    :array_0
    .array-data 0x1
        0xfdt
        0x9t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_ModemLockStateSet(IILjava/lang/String;I)[B
    .locals 8
    .parameter "changedCode"
    .parameter "lockState"
    .parameter "code"
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 3822
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3826
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    .line 3831
    .local v0, result:[B
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3834
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->htcModemLinkOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3836
    const/16 v1, 0x21

    aput-byte v1, v0, v4

    .line 3837
    const-string v1, "DMCmdSvs"

    const-string v2, "connected! "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :goto_0
    return-object v0

    .line 3850
    :cond_0
    if-ne p1, v6, :cond_1

    .line 3852
    aput-byte v5, v0, v4

    goto :goto_0

    .line 3854
    :cond_1
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-ne v1, v6, :cond_2

    .line 3856
    const/16 v1, 0xa

    aput-byte v1, v0, v4

    goto :goto_0

    .line 3858
    :cond_2
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3863
    :cond_3
    aput-byte v5, v0, v4

    goto :goto_0

    .line 3865
    :cond_4
    const/16 v1, 0x24

    aput-byte v1, v0, v4

    goto :goto_0

    .line 3826
    :array_0
    .array-data 0x1
        0xfdt
        0x9t
        0x2t
        0x1t
    .end array-data
.end method

.method private CB_OTAMsgId(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 4863
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4865
    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4893
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4894
    return-object v0

    .line 4865
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x11t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_OriginateCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "rvCnt"

    .prologue
    .line 5475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5477
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5478
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.PrivilegedOutgoingCallBroadcaster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5479
    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->startActivity(Landroid/content/Intent;)V

    .line 5480
    return-void
.end method

.method private CB_PhoneStatus(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 4789
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4791
    const/16 v1, 0x30

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4818
    .local v0, result:[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4819
    return-object v0

    .line 4791
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x11t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_PowerOff(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 3693
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3694
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3700
    .local v0, result:[B
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 3703
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3704
    return-object v0

    .line 3694
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x6t
        0x1t
        0x1t
    .end array-data
.end method

.method private CB_RadioStateGet(I)[B
    .locals 3
    .parameter "rvCnt"

    .prologue
    .line 3718
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3719
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 3726
    .local v0, result:[B
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3727
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 3730
    :cond_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3731
    return-object v0

    .line 3719
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x7t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_RemoveDir(ZLjava/lang/String;I)[B
    .locals 3
    .parameter "forceflag"
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4484
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4485
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4486
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4488
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4491
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4490
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4491
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_RemoveFile(ZLjava/lang/String;I)[B
    .locals 3
    .parameter "forceflag"
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4564
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4565
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4566
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4568
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4571
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4570
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4571
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SMSCallBack(I)[B
    .locals 6
    .parameter "rvCnt"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2633
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2635
    sget-boolean v1, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    if-nez v1, :cond_0

    .line 2636
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mSmsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2637
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mSmsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2638
    sput-boolean v4, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    .line 2641
    :cond_0
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 2647
    .local v0, result:[B
    iget-boolean v1, p0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    if-eqz v1, :cond_2

    .line 2649
    iput-boolean v5, p0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    .line 2650
    iput-boolean v5, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    .line 2657
    :cond_1
    :goto_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2658
    return-object v0

    .line 2652
    :cond_2
    iget-boolean v1, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    if-eqz v1, :cond_1

    .line 2653
    const/4 v1, 0x4

    aput-byte v4, v0, v1

    .line 2654
    iput-boolean v5, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    goto :goto_0

    .line 2641
    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0xct
        0x0t
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_SMSCount(III)[B
    .locals 6
    .parameter "dm_smstype"
    .parameter "dm_readtype"
    .parameter "rvCnt"

    .prologue
    .line 1684
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1685
    const/16 v2, 0xa

    new-array v1, v2, [B

    const/4 v2, 0x0

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput-byte v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    .local v1, result:[B
    :try_start_1
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadTempSms()V

    .line 1699
    new-instance v2, Lcom/android/dmportread/CurrentBox;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    int-to-short v4, p1

    int-to-short v5, p2

    invoke-direct {v2, v3, v4, v5}, Lcom/android/dmportread/CurrentBox;-><init>(Ljava/util/ArrayList;SS)V

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    .line 1707
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v2}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v2

    iput v2, p0, Lcom/android/dmportread/DMCommandService;->tempCount:I

    .line 1709
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v2}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1717
    :goto_0
    :try_start_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1718
    monitor-exit p0

    return-object v1

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1714
    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-byte v3, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1684
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private CB_SMSCountAll(I)[B
    .locals 10
    .parameter "rvCnt"

    .prologue
    const/4 v9, 0x1

    .line 2692
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2694
    const/16 v5, 0x30

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    .line 2712
    .local v3, result:[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadTempSms()V

    .line 2715
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    if-nez v5, :cond_0

    .line 2716
    new-instance v5, Lcom/android/dmportread/CurrentBox;

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-direct {v5, v6, v7, v8}, Lcom/android/dmportread/CurrentBox;-><init>(Ljava/util/ArrayList;SS)V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    .line 2723
    :goto_0
    const/4 v4, 0x0

    .line 2724
    .local v4, total:I
    const/4 v0, 0x0

    .line 2726
    .local v0, boxSize:I
    const/4 v2, 0x2

    .local v2, i:S
    :goto_1
    const/4 v5, 0x5

    if-gt v2, v5, :cond_1

    .line 2728
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V

    .line 2729
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v5}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v0

    .line 2730
    add-int/2addr v4, v0

    .line 2731
    mul-int/lit8 v5, v2, 0x8

    invoke-static {v3, v0, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2734
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V

    .line 2735
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v5}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v0

    .line 2736
    add-int/2addr v4, v0

    .line 2737
    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-static {v3, v0, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2726
    add-int/lit8 v5, v2, 0x1

    int-to-short v2, v5

    goto :goto_1

    .line 2719
    .end local v0           #boxSize:I
    .end local v2           #i:S
    .end local v4           #total:I
    :cond_0
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2743
    :catch_0
    move-exception v1

    .line 2744
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x3

    aput-byte v9, v3, v5

    .line 2746
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    array-length v5, v3

    invoke-direct {p0, v5}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2747
    return-object v3

    .line 2740
    .restart local v0       #boxSize:I
    .restart local v2       #i:S
    .restart local v4       #total:I
    :cond_1
    const/4 v5, 0x4

    :try_start_1
    invoke-static {v3, v4, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2741
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2694
    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0xet
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_SMSEntireRecRead(IIII)[B
    .locals 20
    .parameter "dm_smstype"
    .parameter "dm_readtype"
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 2804
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2809
    const/16 v2, 0xa

    new-array v0, v2, [B

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/4 v4, -0x3

    aput-byte v4, v16, v2

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput-byte v4, v16, v2

    const/4 v2, 0x2

    const/16 v4, 0xf

    aput-byte v4, v16, v2

    const/4 v2, 0x3

    move/from16 v0, p1

    int-to-byte v4, v0

    aput-byte v4, v16, v2

    const/4 v2, 0x4

    move/from16 v0, p2

    int-to-byte v4, v0

    aput-byte v4, v16, v2

    const/4 v2, 0x5

    const/4 v4, 0x0

    aput-byte v4, v16, v2

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput-byte v4, v16, v2

    const/4 v2, 0x7

    const/4 v4, 0x0

    aput-byte v4, v16, v2

    const/16 v2, 0x8

    const/4 v4, 0x0

    aput-byte v4, v16, v2

    const/16 v2, 0x9

    const/4 v4, 0x0

    aput-byte v4, v16, v2

    .line 2820
    .local v16, result:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    move/from16 v0, p1

    int-to-short v5, v0

    move/from16 v0, p2

    int-to-short v6, v0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/dmportread/CurrentBox;->getMsg(I)Lcom/android/dmportread/TempSms;

    move-result-object v15

    .line 2823
    .local v15, msg:Lcom/android/dmportread/TempSms;
    invoke-virtual {v15}, Lcom/android/dmportread/TempSms;->getMsgId()I

    move-result v2

    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-static {v0, v2, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2824
    if-eqz v15, :cond_8

    .line 2825
    const/4 v2, 0x6

    new-array v13, v2, [B

    fill-array-data v13, :array_0

    .line 2827
    .local v13, ids:[B
    const/4 v2, 0x6

    new-array v14, v2, [S

    .line 2830
    .local v14, lens:[S
    const/4 v2, 0x6

    new-array v9, v2, [B

    fill-array-data v9, :array_1

    .line 2832
    .local v9, codes:[B
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2834
    .local v10, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, v16

    array-length v2, v0

    array-length v4, v13

    add-int/2addr v2, v4

    array-length v4, v14

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    array-length v4, v9

    add-int v19, v2, v4

    .line 2836
    .local v19, totalSize:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v12, v2, :cond_5

    .line 2837
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v17, v0

    .line 2838
    .local v17, tempData:[B
    const/4 v2, 0x0

    const/4 v4, -0x1

    aput-byte v4, v17, v2

    .line 2839
    const/4 v2, 0x3

    if-ne v12, v2, :cond_1

    .line 2841
    invoke-virtual {v15}, Lcom/android/dmportread/TempSms;->getDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/dmportread/DMCommandService;->setSMSTime(J)[B

    move-result-object v17

    .line 2871
    :cond_0
    :goto_1
    const/4 v2, 0x0

    aget-byte v2, v17, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 2874
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2875
    const/4 v2, 0x0

    aput-short v2, v14, v12

    .line 2836
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2843
    :cond_1
    const/4 v2, 0x5

    if-ne v12, v2, :cond_3

    .line 2846
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 2847
    .local v18, tempPriority:[B
    invoke-virtual {v15}, Lcom/android/dmportread/TempSms;->getPriority()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2849
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput-byte v4, v18, v2

    .line 2856
    :goto_3
    move-object/from16 v17, v18

    .line 2858
    goto :goto_1

    .line 2853
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-byte v4, v18, v2
    :try_end_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 2904
    .end local v9           #codes:[B
    .end local v10           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v12           #i:I
    .end local v13           #ids:[B
    .end local v14           #lens:[S
    .end local v15           #msg:Lcom/android/dmportread/TempSms;
    .end local v17           #tempData:[B
    .end local v18           #tempPriority:[B
    .end local v19           #totalSize:I
    :catch_0
    move-exception v11

    .line 2905
    .local v11, e:Lcom/android/dmportread/DMServiceException;
    const/16 v2, 0x9

    const/4 v4, 0x1

    aput-byte v4, v16, v2

    .line 2913
    .end local v11           #e:Lcom/android/dmportread/DMServiceException;
    :goto_4
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2914
    return-object v16

    .line 2861
    .restart local v9       #codes:[B
    .restart local v10       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v12       #i:I
    .restart local v13       #ids:[B
    .restart local v14       #lens:[S
    .restart local v15       #msg:Lcom/android/dmportread/TempSms;
    .restart local v17       #tempData:[B
    .restart local v19       #totalSize:I
    :cond_3
    :try_start_1
    invoke-virtual {v15, v12}, Lcom/android/dmportread/TempSms;->getField(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v15, v12}, Lcom/android/dmportread/TempSms;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2863
    invoke-virtual {v15, v12}, Lcom/android/dmportread/TempSms;->getField(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-16LE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    goto :goto_1

    .line 2879
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    move-object/from16 v0, v17

    array-length v2, v0

    int-to-short v2, v2

    aput-short v2, v14, v12

    .line 2881
    move-object/from16 v0, v17

    array-length v2, v0

    add-int v19, v19, v2

    goto :goto_2

    .line 2885
    .end local v17           #tempData:[B
    :cond_5
    move/from16 v0, v19

    new-array v3, v0, [B

    .line 2886
    .local v3, totalResult:[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2887
    move-object/from16 v0, v16

    array-length v8, v0

    .line 2888
    .local v8, from:I
    const/4 v12, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v12, v2, :cond_7

    .line 2889
    aget-short v2, v14, v12

    if-eqz v2, :cond_6

    .line 2891
    aget-byte v4, v13, v12

    aget-short v5, v14, v12

    aget-byte v6, v9, v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/dmportread/DMCommandService;->fillInFieldData([BBSB[BI)I

    move-result v8

    .line 2888
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2896
    :cond_6
    const-string v2, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "do not fill "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 2906
    .end local v3           #totalResult:[B
    .end local v8           #from:I
    .end local v9           #codes:[B
    .end local v10           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v12           #i:I
    .end local v13           #ids:[B
    .end local v14           #lens:[S
    .end local v15           #msg:Lcom/android/dmportread/TempSms;
    .end local v19           #totalSize:I
    :catch_1
    move-exception v11

    .line 2907
    .local v11, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "DMCmdSvs"

    const-string v4, "indexOutofBounds"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const/16 v2, 0x9

    const/4 v4, 0x1

    aput-byte v4, v16, v2

    goto/16 :goto_4

    .line 2899
    .end local v11           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #totalResult:[B
    .restart local v8       #from:I
    .restart local v9       #codes:[B
    .restart local v10       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .restart local v12       #i:I
    .restart local v13       #ids:[B
    .restart local v14       #lens:[S
    .restart local v15       #msg:Lcom/android/dmportread/TempSms;
    .restart local v19       #totalSize:I
    :cond_7
    move-object/from16 v16, v3

    .line 2900
    goto/16 :goto_4

    .line 2901
    .end local v3           #totalResult:[B
    .end local v8           #from:I
    .end local v9           #codes:[B
    .end local v10           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v12           #i:I
    .end local v13           #ids:[B
    .end local v14           #lens:[S
    .end local v19           #totalSize:I
    :cond_8
    const/16 v2, 0x9

    const/4 v4, 0x1

    :try_start_2
    aput-byte v4, v16, v2
    :try_end_2
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 2909
    .end local v15           #msg:Lcom/android/dmportread/TempSms;
    :catch_2
    move-exception v11

    .line 2910
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "DMCmdSvs"

    const-string v4, "unsuppoerted encoding"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    const/16 v2, 0x9

    const/4 v4, 0x1

    aput-byte v4, v16, v2

    goto/16 :goto_4

    .line 2825
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
    .end array-data

    .line 2830
    nop

    :array_1
    .array-data 0x1
        0x80t
        0x80t
        0x80t
        0x0t
        0x80t
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_SMSRecDelete(IIII)[B
    .locals 11
    .parameter "dm_smstype"
    .parameter "dm_readtype"
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 2176
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2180
    const/16 v8, 0xa

    new-array v4, v8, [B

    const/4 v8, 0x0

    const/4 v9, -0x3

    aput-byte v9, v4, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aput-byte v9, v4, v8

    const/4 v8, 0x2

    const/4 v9, 0x7

    aput-byte v9, v4, v8

    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v4, v8

    const/4 v8, 0x4

    int-to-byte v9, p2

    aput-byte v9, v4, v8

    const/4 v8, 0x5

    const/4 v9, 0x0

    aput-byte v9, v4, v8

    const/4 v8, 0x6

    const/4 v9, 0x0

    aput-byte v9, v4, v8

    const/4 v8, 0x7

    const/4 v9, 0x0

    aput-byte v9, v4, v8

    const/16 v8, 0x8

    const/4 v9, 0x0

    aput-byte v9, v4, v8

    const/16 v8, 0x9

    const/4 v9, 0x0

    aput-byte v9, v4, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2190
    .local v4, result:[B
    const/4 v8, 0x3

    :try_start_1
    invoke-static {v4, p3, v8}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2197
    const/4 v8, -0x1

    if-ne p3, v8, :cond_1

    .line 2198
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v8}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v6

    .line 2199
    .local v6, totalInBox:I
    if-lez v6, :cond_0

    .line 2200
    invoke-direct {p0, p1, p2}, Lcom/android/dmportread/DMCommandService;->generateWhereClause(II)Ljava/lang/String;

    move-result-object v7

    .line 2201
    .local v7, where:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v7, v10}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 2202
    new-instance v8, Landroid/database/SQLException;

    const-string v9, "Unable to delete this msg"

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2285
    .end local v6           #totalInBox:I
    .end local v7           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2286
    .local v0, e:Lcom/android/dmportread/DMServiceException;
    const/16 v8, 0x9

    const/4 v9, 0x1

    :try_start_2
    aput-byte v9, v4, v8

    .line 2296
    .end local v0           #e:Lcom/android/dmportread/DMServiceException;
    :cond_0
    :goto_0
    array-length v8, v4

    invoke-direct {p0, v8}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2297
    :goto_1
    monitor-exit p0

    return-object v4

    .line 2207
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 2209
    const-string v8, "DMCmdSvs"

    const-string v9, "No msg to delete "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-byte v9, v4, v8

    .line 2212
    :cond_2
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/TempSms;

    .line 2214
    .local v2, msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 2216
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    check-cast v2, Lcom/android/dmportread/TempSms;

    .line 2217
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getMsgId()I

    move-result v8

    if-ne v8, p3, :cond_4

    .line 2220
    :cond_3
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getMsgId()I

    move-result v8

    if-eq v8, p3, :cond_5

    .line 2222
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to find this msg to delete recind"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    const/16 v8, 0x9

    const/16 v9, 0x43

    aput-byte v9, v4, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 2287
    .end local v1           #i:I
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    :catch_1
    move-exception v0

    .line 2288
    .local v0, e:Landroid/database/SQLException;
    const/16 v8, 0x9

    const/4 v9, 0x1

    :try_start_4
    aput-byte v9, v4, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2176
    .end local v0           #e:Landroid/database/SQLException;
    .end local v4           #result:[B
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2214
    .restart local v1       #i:I
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    .restart local v4       #result:[B
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2226
    :cond_5
    const/16 v5, 0xa

    .line 2227
    .local v5, smstype:I
    const/16 v8, 0xa

    if-eq p1, v8, :cond_6

    .line 2229
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->convertDMMsgType(I)I

    move-result v5

    .line 2231
    :cond_6
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getType()I

    move-result v8

    if-eq v5, v8, :cond_7

    const/16 v8, 0xa

    if-eq v5, v8, :cond_7

    .line 2233
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wrong type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/16 v8, 0x9

    const/16 v9, 0x43

    aput-byte v9, v4, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 2289
    .end local v1           #i:I
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    .end local v5           #smstype:I
    :catch_2
    move-exception v0

    .line 2290
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v8, 0x9

    const/4 v9, 0x1

    :try_start_6
    aput-byte v9, v4, v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 2237
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #i:I
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    .restart local v5       #smstype:I
    :cond_7
    :try_start_7
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 2241
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->isRead()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2243
    const/4 v8, 0x1

    if-eq p2, v8, :cond_9

    const/16 v8, 0xa

    if-eq p2, v8, :cond_9

    .line 2245
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inbox "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not been read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const/16 v8, 0x9

    const/16 v9, 0x43

    aput-byte v9, v4, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 2291
    .end local v1           #i:I
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    .end local v5           #smstype:I
    :catch_3
    move-exception v0

    .line 2292
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2293
    const/16 v8, 0x9

    const/4 v9, 0x1

    aput-byte v9, v4, v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 2252
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    .restart local v5       #smstype:I
    :cond_8
    const/4 v8, 0x2

    if-eq p2, v8, :cond_9

    const/16 v8, 0xa

    if-eq p2, v8, :cond_9

    .line 2254
    :try_start_9
    const-string v8, "DMCmdSvs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inbox "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has been read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/16 v8, 0x9

    const/16 v9, 0x43

    aput-byte v9, v4, v8

    goto/16 :goto_1

    .line 2261
    :cond_9
    if-eqz v2, :cond_c

    .line 2265
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getSmsId()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2268
    .local v3, msgUri:Landroid/net/Uri;
    sget-boolean v8, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 2269
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    .line 2272
    :cond_a
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v8, v3, v9, v10}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b

    .line 2274
    new-instance v8, Landroid/database/SQLException;

    const-string v9, "Unable to delete this msg"

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2279
    :cond_b
    iget-object v8, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2281
    .end local v3           #msgUri:Landroid/net/Uri;
    :cond_c
    const-string v8, "DMCmdSvs"

    const-string v9, "unable to find this msg"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    new-instance v8, Lcom/android/dmportread/DMServiceException;

    const-string v9, "unable to find this msg"

    invoke-direct {v8, v9}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
.end method

.method private declared-synchronized CB_SMSRecFieldAppend(II)[B
    .locals 4
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    .line 1870
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1872
    const/16 v2, 0x8

    new-array v1, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v1, :array_0

    .line 1882
    .local v1, result:[B
    :try_start_1
    new-instance v2, Lcom/android/dmportread/TempSms;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/dmportread/TempSms;-><init>(I)V

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mNewMsg:Lcom/android/dmportread/TempSms;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1894
    :goto_0
    :try_start_2
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1895
    monitor-exit p0

    return-object v1

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, e:Lcom/android/dmportread/DMServiceException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    :try_start_3
    aput-byte v3, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1870
    .end local v0           #e:Lcom/android/dmportread/DMServiceException;
    .end local v1           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1887
    .restart local v1       #result:[B
    :catch_1
    move-exception v0

    .line 1888
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x7

    const/4 v3, 0x1

    :try_start_4
    aput-byte v3, v1, v2

    goto :goto_0

    .line 1889
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 1890
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1891
    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-byte v3, v1, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1872
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0x4t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
    .end array-data
.end method

.method private declared-synchronized CB_SMSRecFieldRead(III)[B
    .locals 6
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "rvCnt"

    .prologue
    .line 1807
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1812
    const/16 v4, 0x149

    new-array v3, v4, [B

    .line 1813
    .local v3, result:[B
    const/4 v4, 0x0

    const/4 v5, -0x3

    aput-byte v5, v3, v4

    .line 1814
    const/4 v4, 0x1

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    .line 1815
    const/4 v4, 0x2

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    .line 1816
    const/4 v4, 0x7

    int-to-byte v5, p2

    aput-byte v5, v3, v4

    .line 1817
    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1819
    const/4 v4, 0x3

    :try_start_1
    invoke-static {v3, p1, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1821
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v4, p1}, Lcom/android/dmportread/CurrentBox;->getMsg(I)Lcom/android/dmportread/TempSms;

    move-result-object v2

    .line 1822
    .local v2, msg:Lcom/android/dmportread/TempSms;
    if-eqz v2, :cond_0

    .line 1823
    invoke-virtual {v2, p2}, Lcom/android/dmportread/TempSms;->getField(I)Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, data:Ljava/lang/String;
    const/16 v4, 0x9

    invoke-static {v3, v0, v4}, Lcom/android/dmportread/DMCommandService;->cpyStrTobytes([BLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1838
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    :goto_0
    :try_start_2
    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1839
    monitor-exit p0

    return-object v3

    .line 1826
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x1

    :try_start_3
    aput-byte v5, v3, v4

    .line 1827
    const-string v4, "DMCmdSvs"

    const-string v5, "unable to find this msg"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1829
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    :catch_0
    move-exception v1

    .line 1830
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v4, 0x8

    const/4 v5, 0x1

    :try_start_4
    aput-byte v5, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1807
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #result:[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1831
    .restart local v3       #result:[B
    :catch_1
    move-exception v1

    .line 1832
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const/16 v4, 0x8

    const/4 v5, 0x1

    :try_start_5
    aput-byte v5, v3, v4

    goto :goto_0

    .line 1833
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 1834
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1835
    const/16 v4, 0x8

    const/4 v5, 0x1

    aput-byte v5, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized CB_SMSRecFieldSet(IILjava/lang/String;I)[B
    .locals 6
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "data"
    .parameter "rvCnt"

    .prologue
    const/4 v5, 0x5

    .line 1914
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1921
    const/16 v3, 0x9

    new-array v2, v3, [B

    const/4 v3, 0x0

    const/4 v4, -0x3

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x5

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-byte v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1930
    .local v2, result:[B
    :try_start_1
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v3}, Lcom/android/dmportread/CurrentBox;->getSize()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1932
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mNewMsg:Lcom/android/dmportread/TempSms;

    .line 1933
    .local v1, msg:Lcom/android/dmportread/TempSms;
    if-eqz v1, :cond_2

    .line 1935
    if-ne p2, v5, :cond_1

    .line 1937
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    .line 1940
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/dmportread/TempSms;->setPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1962
    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    :goto_0
    :try_start_2
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1963
    monitor-exit p0

    return-object v2

    .line 1945
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    :cond_0
    const/4 v3, 0x2

    :try_start_3
    invoke-virtual {v1, v3}, Lcom/android/dmportread/TempSms;->setPriority(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1956
    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    :catch_0
    move-exception v0

    .line 1957
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const/16 v3, 0x8

    const/4 v4, 0x1

    :try_start_4
    aput-byte v4, v2, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1914
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v2           #result:[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1950
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    .restart local v2       #result:[B
    :cond_1
    :try_start_5
    invoke-virtual {v1, p2, p3}, Lcom/android/dmportread/TempSms;->setField(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1958
    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    :catch_1
    move-exception v0

    .line 1959
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1960
    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-byte v4, v2, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1953
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    :cond_2
    :try_start_7
    const-string v3, "DMCmdSvs"

    const-string v4, "unable to find this msg"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-byte v4, v2, v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method private declared-synchronized CB_SMSRecFieldStatus(III[ZI)[B
    .locals 9
    .parameter "dm_smstype"
    .parameter "dm_readtype"
    .parameter "recInd"
    .parameter "fields"
    .parameter "rvCnt"

    .prologue
    const/4 v8, 0x1

    .line 1753
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p5}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1755
    const/16 v4, 0x1a

    new-array v3, v4, [B

    const/4 v4, 0x0

    const/4 v5, -0x3

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    const/4 v4, 0x4

    int-to-byte v5, p2

    aput-byte v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xc

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xe

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x10

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x11

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x12

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x13

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x14

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x15

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x17

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x18

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    const/16 v4, 0x19

    const/4 v5, 0x0

    aput-byte v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    .local v3, result:[B
    const/4 v4, 0x5

    :try_start_1
    invoke-static {v3, p3, v4}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1772
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    int-to-short v6, p1

    int-to-short v7, p2

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/dmportread/CurrentBox;->updateBox(Ljava/util/ArrayList;SS)V

    .line 1773
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v4, p3}, Lcom/android/dmportread/CurrentBox;->getMsg(I)Lcom/android/dmportread/TempSms;

    move-result-object v2

    .line 1774
    .local v2, msg:Lcom/android/dmportread/TempSms;
    if-eqz v2, :cond_1

    .line 1775
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_2

    .line 1776
    aget-boolean v4, p4, v1

    if-ne v4, v8, :cond_0

    .line 1777
    invoke-virtual {v2, v1}, Lcom/android/dmportread/TempSms;->getField(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1778
    add-int/lit8 v4, v1, 0xa

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 1780
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->resultFields:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 1775
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1786
    .end local v1           #i:I
    :cond_1
    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-byte v5, v3, v4

    .line 1787
    const-string v4, "DMCmdSvs"

    const-string v5, "unable to find this msg"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1793
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    :cond_2
    :goto_1
    :try_start_2
    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1794
    monitor-exit p0

    return-object v3

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1791
    const/16 v4, 0x9

    const/4 v5, 0x1

    aput-byte v5, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1753
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #result:[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized CB_SMSRecFieldUpdate(II)[B
    .locals 24
    .parameter "recInd"
    .parameter "rvCnt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 1982
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 1985
    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    fill-array-data v19, :array_0

    .line 1992
    .local v19, result:[B
    const/4 v2, 0x3

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dmportread/DMCommandService;->mNewMsg:Lcom/android/dmportread/TempSms;

    move-object/from16 v17, v0

    .line 1995
    .local v17, msg:Lcom/android/dmportread/TempSms;
    const/16 v18, 0x0

    .line 1996
    .local v18, msgUri:Landroid/net/Uri;
    if-eqz v17, :cond_5

    .line 1997
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1999
    .local v3, temp_addr:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 2001
    .local v4, temp_body:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getDate()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 2003
    .local v21, temp_date:J
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v2, v21, v5

    if-nez v2, :cond_1

    .line 2004
    :cond_0
    const-string v2, "DMCmdSvs"

    const-string v5, "miss fileds"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2046
    new-instance v2, Lcom/android/dmportread/DMServiceException;

    const-string v5, "Unable to create new msg for this type"

    invoke-direct {v2, v5}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2061
    .end local v3           #temp_addr:Ljava/lang/String;
    .end local v4           #temp_body:Ljava/lang/String;
    .end local v17           #msg:Lcom/android/dmportread/TempSms;
    .end local v18           #msgUri:Landroid/net/Uri;
    .end local v21           #temp_date:J
    :catch_0
    move-exception v16

    .line 2062
    .local v16, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    const-string v2, "DMCmdSvs"

    const-string v5, "indexOutOfBound"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    const/4 v2, 0x7

    const/4 v5, 0x1

    aput-byte v5, v19, v2

    .line 2072
    .end local v16           #e:Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    move-object/from16 v0, v19

    array-length v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2073
    monitor-exit p0

    return-object v19

    .line 2009
    .restart local v3       #temp_addr:Ljava/lang/String;
    .restart local v4       #temp_body:Ljava/lang/String;
    .restart local v17       #msg:Lcom/android/dmportread/TempSms;
    .restart local v18       #msgUri:Landroid/net/Uri;
    .restart local v21       #temp_date:J
    :pswitch_0
    :try_start_3
    const-string v2, "DMCmdSvs"

    const-string v5, "new one draft"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2012
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    const-string v2, "body"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const-string v2, "type"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2017
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getPriority()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 2021
    const-string v2, "priority"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2023
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getCallbackNum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2026
    const-string v2, "callback_number"

    invoke-virtual/range {v17 .. v17}, Lcom/android/dmportread/TempSms;->getCallbackNum()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 2049
    .end local v23           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2051
    .local v20, smsid:I
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/dmportread/TempSms;->setMsgId(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2064
    .end local v3           #temp_addr:Ljava/lang/String;
    .end local v4           #temp_body:Ljava/lang/String;
    .end local v17           #msg:Lcom/android/dmportread/TempSms;
    .end local v18           #msgUri:Landroid/net/Uri;
    .end local v20           #smsid:I
    .end local v21           #temp_date:J
    :catch_1
    move-exception v16

    .line 2065
    .local v16, e:Lcom/android/dmportread/DMServiceException;
    :try_start_4
    const-string v2, "DMCmdSvs"

    const-string v5, "DM exception"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v2, 0x7

    const/4 v5, 0x1

    aput-byte v5, v19, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1982
    .end local v16           #e:Lcom/android/dmportread/DMServiceException;
    .end local v19           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2033
    .restart local v3       #temp_addr:Ljava/lang/String;
    .restart local v4       #temp_body:Ljava/lang/String;
    .restart local v17       #msg:Lcom/android/dmportread/TempSms;
    .restart local v18       #msgUri:Landroid/net/Uri;
    .restart local v19       #result:[B
    .restart local v21       #temp_date:J
    :pswitch_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    invoke-virtual {v2}, Lcom/android/dmportread/CurrentBox;->getRead()S

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    const/4 v7, 0x1

    .line 2034
    .local v7, isRead:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, ""

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v18

    .line 2035
    goto :goto_1

    .line 2033
    .end local v7           #isRead:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 2037
    :pswitch_2
    const/4 v13, 0x0

    .line 2038
    .local v13, reportRequired:Z
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    .line 2039
    .local v14, threadId:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const-string v11, ""

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v8 .. v15}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v18

    .line 2041
    goto :goto_1

    .line 2043
    .end local v13           #reportRequired:Z
    .end local v14           #threadId:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, ""

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v18

    .line 2044
    goto :goto_1

    .line 2057
    .end local v3           #temp_addr:Ljava/lang/String;
    .end local v4           #temp_body:Ljava/lang/String;
    .end local v21           #temp_date:J
    :cond_5
    const-string v2, "DMCmdSvs"

    const-string v5, "unable to create new"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    new-instance v2, Lcom/android/dmportread/DMServiceException;

    const-string v5, "Unable to create new msg for this type"

    invoke-direct {v2, v5}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2067
    .end local v17           #msg:Lcom/android/dmportread/TempSms;
    .end local v18           #msgUri:Landroid/net/Uri;
    :catch_2
    move-exception v16

    .line 2068
    .local v16, e:Landroid/database/SQLException;
    :try_start_6
    const-string v2, "DMCmdSvs"

    const-string v5, "SQLException"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    const/4 v2, 0x7

    const/4 v5, 0x1

    aput-byte v5, v19, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1985
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 2007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private CB_SMSRecSendAppend(II)[B
    .locals 7
    .parameter "recInd"
    .parameter "rvCnt"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 2378
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2380
    const/16 v2, 0x8

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 2388
    .local v1, result:[B
    :try_start_0
    new-instance v2, Lcom/android/dmportread/TempSms;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/dmportread/TempSms;-><init>(I)V

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    .line 2389
    const-string v2, "DMCmdSvs"

    const-string v3, "created mNewSendMsg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/dmportread/DMServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2403
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2404
    return-object v1

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    .local v0, e:Lcom/android/dmportread/DMServiceException;
    aput-byte v4, v1, v6

    goto :goto_0

    .line 2398
    .end local v0           #e:Lcom/android/dmportread/DMServiceException;
    :catch_1
    move-exception v0

    .line 2399
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v4, v1, v6

    .line 2400
    invoke-static {v1, p1, v5}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    goto :goto_0

    .line 2380
    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0x9t
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
    .end array-data
.end method

.method private CB_SMSRecSendSet(IILjava/lang/String;I)[B
    .locals 9
    .parameter "recInd"
    .parameter "fieldId"
    .parameter "data"
    .parameter "rvCnt"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2422
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2429
    const/16 v3, 0x9

    new-array v2, v3, [B

    const/4 v3, -0x3

    aput-byte v3, v2, v5

    aput-byte v7, v2, v6

    const/16 v3, 0xa

    aput-byte v3, v2, v7

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    aput-byte v5, v2, v8

    .line 2440
    .local v2, result:[B
    :try_start_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    .line 2442
    .local v1, msg:Lcom/android/dmportread/TempSms;
    if-eqz v1, :cond_2

    .line 2443
    const/4 v3, 0x5

    if-ne p2, v3, :cond_1

    .line 2445
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-nez v3, :cond_0

    .line 2448
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/dmportread/TempSms;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    :goto_0
    array-length v3, v2

    invoke-direct {p0, v3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2468
    return-object v2

    .line 2453
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    :cond_0
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/dmportread/TempSms;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2464
    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    :catch_0
    move-exception v0

    .line 2465
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    aput-byte v6, v2, v8

    goto :goto_0

    .line 2458
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    :cond_1
    :try_start_2
    invoke-virtual {v1, p2, p3}, Lcom/android/dmportread/TempSms;->setField(ILjava/lang/String;)V

    goto :goto_0

    .line 2461
    :cond_2
    const-string v3, "DMCmdSvs"

    const-string v4, "unable to find this msg"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    const/16 v3, 0x8

    const/4 v4, 0x1

    aput-byte v4, v2, v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private CB_SMSRecSendUpdate(II)[B
    .locals 17
    .parameter "recInd"
    .parameter "rvCnt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 2516
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2518
    const/16 v15, 0x8

    new-array v8, v15, [B

    fill-array-data v8, :array_0

    .line 2525
    .local v8, result:[B
    const/16 v15, 0x64

    const/16 v16, 0x3

    :try_start_0
    move/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2527
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    if-eqz v15, :cond_8

    .line 2529
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    .line 2530
    .local v7, msg:Lcom/android/dmportread/TempSms;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/dmportread/DMCommandService;->mNewSendMsg:Lcom/android/dmportread/TempSms;

    .line 2532
    invoke-virtual {v7}, Lcom/android/dmportread/TempSms;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 2533
    .local v9, temp_addr:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/dmportread/TempSms;->getBody()Ljava/lang/String;

    move-result-object v10

    .line 2534
    .local v10, temp_body:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/dmportread/TempSms;->getPriority()I

    move-result v14

    .line 2535
    .local v14, temp_priority:I
    invoke-virtual {v7}, Lcom/android/dmportread/TempSms;->getCallbackNum()Ljava/lang/String;

    move-result-object v11

    .line 2536
    .local v11, temp_callback_num:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/dmportread/TempSms;->getDate()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2538
    .local v12, temp_date:J
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 2539
    :cond_0
    new-instance v15, Lcom/android/dmportread/DMServiceException;

    const-string v16, "missing required fields"

    invoke-direct/range {v15 .. v16}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2616
    .end local v7           #msg:Lcom/android/dmportread/TempSms;
    .end local v9           #temp_addr:Ljava/lang/String;
    .end local v10           #temp_body:Ljava/lang/String;
    .end local v11           #temp_callback_num:Ljava/lang/String;
    .end local v12           #temp_date:J
    .end local v14           #temp_priority:I
    :catch_0
    move-exception v2

    .line 2617
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v15, 0x7

    const/16 v16, 0x1

    aput-byte v16, v8, v15

    .line 2622
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    array-length v15, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2623
    return-object v8

    .line 2542
    .restart local v7       #msg:Lcom/android/dmportread/TempSms;
    .restart local v9       #temp_addr:Ljava/lang/String;
    .restart local v10       #temp_body:Ljava/lang/String;
    .restart local v11       #temp_callback_num:Ljava/lang/String;
    .restart local v12       #temp_date:J
    .restart local v14       #temp_priority:I
    :cond_1
    const-wide v15, 0x7fffffffffffffffL

    cmp-long v15, v12, v15

    if-nez v15, :cond_2

    .line 2543
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2559
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND_SMS"

    invoke-direct {v4, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2560
    .local v4, intent:Landroid/content/Intent;
    const-string v15, "dest"

    invoke-virtual {v4, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2561
    const-string v15, "msg"

    invoke-virtual {v4, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2562
    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 2565
    const-string v15, "priority"

    const-string v16, "high"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2573
    :goto_1
    const-string v15, "callback"

    invoke-virtual {v4, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2574
    const-string v15, "ack_dm"

    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    sget-boolean v15, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2577
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    .line 2579
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2581
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/16 v15, 0x32

    if-ge v3, v15, :cond_4

    .line 2582
    sget v15, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 2589
    :cond_4
    sget v15, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 2591
    const/16 v15, 0x64

    sput v15, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2618
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #msg:Lcom/android/dmportread/TempSms;
    .end local v9           #temp_addr:Ljava/lang/String;
    .end local v10           #temp_body:Ljava/lang/String;
    .end local v11           #temp_callback_num:Ljava/lang/String;
    .end local v12           #temp_date:J
    .end local v14           #temp_priority:I
    :catch_1
    move-exception v2

    .line 2619
    .local v2, e:Ljava/lang/Exception;
    const/4 v15, 0x7

    const/16 v16, 0x1

    aput-byte v16, v8, v15

    goto :goto_0

    .line 2570
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v7       #msg:Lcom/android/dmportread/TempSms;
    .restart local v9       #temp_addr:Ljava/lang/String;
    .restart local v10       #temp_body:Ljava/lang/String;
    .restart local v11       #temp_callback_num:Ljava/lang/String;
    .restart local v12       #temp_date:J
    .restart local v14       #temp_priority:I
    :cond_5
    :try_start_2
    const-string v15, "priority"

    const-string v16, "normal"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2585
    .restart local v3       #i:I
    :cond_6
    const-wide/16 v15, 0x1f4

    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    .line 2581
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2595
    :cond_7
    sget-object v15, Lcom/android/dmportread/DMCommandService;->mSentMailUri:Landroid/net/Uri;

    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 2597
    .local v5, mSmsId:J
    long-to-int v15, v5

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v8, v15, v0}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2609
    const/16 v15, 0x64

    sput v15, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    goto/16 :goto_0

    .line 2613
    .end local v3           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mSmsId:J
    .end local v7           #msg:Lcom/android/dmportread/TempSms;
    .end local v9           #temp_addr:Ljava/lang/String;
    .end local v10           #temp_body:Ljava/lang/String;
    .end local v11           #temp_callback_num:Ljava/lang/String;
    .end local v12           #temp_date:J
    .end local v14           #temp_priority:I
    :cond_8
    new-instance v15, Lcom/android/dmportread/DMServiceException;

    const-string v16, "Unable to create send such  message"

    invoke-direct/range {v15 .. v16}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2518
    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_SMSRefresh(I)[B
    .locals 4
    .parameter "rvCnt"

    .prologue
    .line 2667
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2669
    const/4 v2, 0x4

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 2676
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadTempSms()V

    .line 2677
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/dmportread/CurrentBox;->refreshList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2682
    :goto_0
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 2683
    return-object v1

    .line 2678
    :catch_0
    move-exception v0

    .line 2679
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    goto :goto_0

    .line 2669
    :array_0
    .array-data 0x1
        0xfdt
        0x2t
        0xdt
        0x0t
    .end array-data
.end method

.method private CB_SMSSetReadStatus(III)[B
    .locals 12
    .parameter "recInd"
    .parameter "readtype"
    .parameter "rvCnt"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/16 v10, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2309
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 2312
    const/16 v6, 0x9

    new-array v4, v6, [B

    const/4 v6, -0x3

    aput-byte v6, v4, v8

    aput-byte v7, v4, v9

    aput-byte v10, v4, v7

    aput-byte v8, v4, v11

    const/4 v6, 0x4

    aput-byte v8, v4, v6

    const/4 v6, 0x5

    aput-byte v8, v4, v6

    const/4 v6, 0x6

    aput-byte v8, v4, v6

    const/4 v6, 0x7

    int-to-byte v7, p2

    aput-byte v7, v4, v6

    aput-byte v8, v4, v10

    .line 2320
    .local v4, result:[B
    const/4 v6, 0x3

    :try_start_0
    invoke-static {v4, p1, v6}, Lcom/android/dmportread/DMCommandService;->intToByteArray([BII)[B

    .line 2323
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2325
    const-string v6, "DMCmdSvs"

    const-string v7, "No msg to change status"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-byte v7, v4, v6

    .line 2328
    :cond_0
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/TempSms;

    .line 2329
    .local v2, msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getMsgId()I

    move-result v6

    if-eq v6, p1, :cond_1

    .line 2331
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    check-cast v2, Lcom/android/dmportread/TempSms;

    .line 2329
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2333
    :cond_1
    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getMsgId()I

    move-result v6

    if-eq v6, p1, :cond_2

    .line 2335
    const-string v6, "DMCmdSvs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to find this msg to change status recind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/16 v6, 0x8

    const/4 v7, 0x1

    aput-byte v7, v4, v6

    .line 2364
    .end local v1           #i:I
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    :goto_1
    return-object v4

    .line 2341
    .restart local v1       #i:I
    .restart local v2       #msg:Lcom/android/dmportread/TempSms;
    :cond_2
    int-to-short v6, p2

    invoke-virtual {v2, v6}, Lcom/android/dmportread/TempSms;->setRead(S)V

    .line 2342
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getSmsId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2345
    .local v3, msgUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2347
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "read"

    invoke-virtual {v2}, Lcom/android/dmportread/TempSms;->getRead()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 2349
    sget-boolean v6, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    if-ne v6, v9, :cond_3

    .line 2350
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/dmportread/DMCommandService;->selfChanged:Z

    .line 2352
    :cond_3
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2363
    .end local v1           #i:I
    .end local v2           #msg:Lcom/android/dmportread/TempSms;
    .end local v3           #msgUri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    array-length v6, v4

    invoke-direct {p0, v6}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    goto :goto_1

    .line 2356
    :catch_0
    move-exception v0

    .line 2357
    .local v0, e:Ljava/lang/NullPointerException;
    aput-byte v9, v4, v10

    .line 2358
    const-string v6, "DMCmdSvs"

    const-string v7, "unable to find this msg from DB"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2359
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2360
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2361
    aput-byte v9, v4, v10

    goto :goto_2
.end method

.method private CB_ScreenMode(I)[B
    .locals 4
    .parameter "rvCnt"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 4293
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4294
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4301
    .local v0, result:[B
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 4309
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 4312
    :goto_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4313
    return-object v0

    .line 4303
    :pswitch_0
    aput-byte v2, v0, v3

    goto :goto_0

    .line 4306
    :pswitch_1
    const/4 v1, 0x0

    aput-byte v1, v0, v3

    goto :goto_0

    .line 4294
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xet
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 4301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private CB_SetBTStatus(II)[B
    .locals 8
    .parameter "enable"
    .parameter "rvCnt"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5286
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5287
    const/4 v6, 0x4

    new-array v3, v6, [B

    fill-array-data v3, :array_0

    .line 5288
    .local v3, result:[B
    const/4 v0, 0x1

    .line 5289
    .local v0, blResult:Z
    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v6, :cond_0

    .line 5290
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 5292
    :cond_0
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_1

    move v1, v4

    .line 5293
    .local v1, enableBT:Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v2, v4

    .line 5295
    .local v2, enableBTDiscoverable:Z
    :goto_1
    if-eqz v1, :cond_4

    .line 5296
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 5297
    const-string v5, "DMCmdSvs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bt state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    if-eqz v2, :cond_3

    .line 5299
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 5300
    iput-boolean v4, p0, Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z

    .line 5304
    :goto_2
    const-string v4, "DMCmdSvs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    :goto_3
    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5310
    return-object v3

    .end local v1           #enableBT:Z
    .end local v2           #enableBTDiscoverable:Z
    :cond_1
    move v1, v5

    .line 5292
    goto :goto_0

    .restart local v1       #enableBT:Z
    :cond_2
    move v2, v5

    .line 5293
    goto :goto_1

    .line 5302
    .restart local v2       #enableBTDiscoverable:Z
    :cond_3
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_2

    .line 5306
    :cond_4
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    :goto_4
    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_4

    .line 5287
    :array_0
    .array-data 0x1
        0xfdt
        0xa5t
        0x2t
        0x0t
    .end array-data
.end method

.method private CB_SetCurWorkingDir(Ljava/lang/String;I)[B
    .locals 6
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4440
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4441
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4442
    const/4 v3, 0x1

    new-array v2, v3, [B

    .line 4443
    .local v2, result:[B
    const-string v3, "FS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 4446
    .local v0, a:[B
    const-string v3, "FS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " utf8 array = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4451
    .end local v0           #a:[B
    .end local v2           #result:[B
    :goto_0
    return-object v2

    .line 4449
    .restart local v2       #result:[B
    :catch_0
    move-exception v1

    .line 4450
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "FS"

    const-string v4, "unsupport encoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CB_SetDirReadOnly(ZLjava/lang/String;I)[B
    .locals 3
    .parameter "readOnly"
    .parameter "dir"
    .parameter "rvCnt"

    .prologue
    .line 4524
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4525
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4526
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4528
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4531
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4530
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4531
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SetFile(IILjava/lang/String;I)[B
    .locals 3
    .parameter "blocklInd"
    .parameter "dataSize"
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4688
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4689
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4690
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4692
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4695
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4694
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4695
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SetFileCreateDate(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 3
    .parameter "date"
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4766
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4767
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4768
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4770
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4773
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4772
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4773
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SetFileInfo(IIILjava/lang/String;I)[B
    .locals 3
    .parameter "fileSize"
    .parameter "blockSize"
    .parameter "totalBlock"
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4664
    invoke-direct {p0, p5}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4665
    invoke-direct {p0, p5}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4666
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4668
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4671
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4670
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4671
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SetFileReadOnly(ZLjava/lang/String;I)[B
    .locals 3
    .parameter "readOnly"
    .parameter "file"
    .parameter "rvCnt"

    .prologue
    .line 4604
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4605
    invoke-direct {p0, p3}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4606
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 4608
    .local v1, result:[B
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4611
    .end local v1           #result:[B
    :goto_0
    return-object v1

    .line 4610
    .restart local v1       #result:[B
    :catch_0
    move-exception v0

    .line 4611
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private CB_SetGpsStatus(II)[B
    .locals 8
    .parameter "enable"
    .parameter "rvCnt"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5247
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5248
    const/4 v2, 0x4

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 5250
    .local v1, result:[B
    if-eq p1, v5, :cond_0

    if-nez p1, :cond_1

    .line 5251
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5252
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "MtGpsSetting"

    if-ne p1, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5253
    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5255
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "gpsone_allowed"

    invoke-static {v2, v6, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5256
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    if-ne p1, v5, :cond_3

    move v2, v5

    :goto_1
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 5257
    aput-byte v3, v1, v4

    .line 5259
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5260
    return-object v1

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    move v2, v4

    .line 5252
    goto :goto_0

    :cond_3
    move v2, v3

    .line 5256
    goto :goto_1

    .line 5248
    :array_0
    .array-data 0x1
        0xfdt
        0xa4t
        0x2t
        0x1t
    .end array-data
.end method

.method private CB_SetLocale(II)V
    .locals 7
    .parameter "rvCnt"
    .parameter "locale"

    .prologue
    const/4 v6, 0x1

    .line 5338
    const-string v3, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Locale"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5341
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5342
    .local v1, config:Landroid/content/res/Configuration;
    if-nez p2, :cond_1

    .line 5343
    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5346
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5347
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5354
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 5344
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_1
    if-ne p2, v6, :cond_0

    .line 5345
    new-instance v3, Ljava/util/Locale;

    const-string v4, "es"

    const-string v5, "US"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5349
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 5351
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "DMCmdSvs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private CB_SetScreenOrientationLock(II)[B
    .locals 12
    .parameter "orientation_mode"
    .parameter "rvCnt"

    .prologue
    .line 5136
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5137
    const/4 v9, 0x4

    new-array v8, v9, [B

    fill-array-data v8, :array_0

    .line 5138
    .local v8, result:[B
    const/4 v0, 0x0

    .line 5140
    .local v0, bResult:Z
    const/4 v4, 0x1

    .line 5141
    .local v4, enableAutoRotate:I
    move v7, p1

    .line 5143
    .local v7, mode:I
    const/4 v1, -0x1

    .line 5145
    .local v1, custom_orientation:I
    const-string v9, "DMCmdSvs"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CB_SetScreenOrientationLock:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    if-eqz v7, :cond_0

    .line 5148
    const/4 v4, 0x0

    .line 5149
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 5150
    const/4 v1, 0x0

    .line 5160
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 5161
    const/4 v4, 0x1

    .line 5162
    const/4 v1, -0x1

    .line 5167
    :cond_1
    if-nez v7, :cond_6

    const/4 v5, 0x0

    .line 5168
    .local v5, enable_FW_Lock:Z
    :goto_1
    :try_start_0
    const-string v9, "ril.customa.rotation.locked"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5169
    const-string v9, "ril.customa.rotation.locked"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eq v5, v9, :cond_2

    .line 5170
    const-string v9, "DMCmdSvs"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot access rotation prop"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    :cond_2
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "custom_orientation"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5175
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accelerometer_rotation"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5178
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 5181
    const-string v9, "window"

    invoke-virtual {p0, v9}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 5182
    .local v2, d:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 5184
    .local v6, mCurrOrientation:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_8

    if-eq v6, v1, :cond_8

    .line 5193
    const-string v9, "DMCmdSvs"

    const-string v10, "wait Forground Ap 400 sec"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    const-wide/16 v9, 0x190

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 5195
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 5196
    if-eq v6, v1, :cond_7

    .line 5197
    const-string v9, "DMCmdSvs"

    const-string v10, "Forground Ap does not support this mode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "custom_orientation"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5201
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accelerometer_rotation"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5205
    const-string v9, "ril.customa.rotation.locked"

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    const-string v9, "DMCmdSvs"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Forground Ap: orientation:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Lock in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "failed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5219
    .end local v2           #d:Landroid/view/Display;
    .end local v6           #mCurrOrientation:I
    :goto_2
    if-eqz v0, :cond_3

    .line 5220
    const-string v9, "DMCmdSvs"

    const-string v10, "CB_SetScreenOrientationLock:OK"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    .line 5224
    const-wide/16 v9, 0x12c

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 5227
    :cond_3
    array-length v9, v8

    invoke-direct {p0, v9}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5228
    .end local v5           #enable_FW_Lock:Z
    :goto_3
    return-object v8

    .line 5151
    :cond_4
    const/4 v9, 0x2

    if-ne v7, v9, :cond_5

    .line 5152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5154
    :cond_5
    const-string v9, "DMCmdSvs"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid orientation_mode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5167
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 5209
    .restart local v2       #d:Landroid/view/Display;
    .restart local v5       #enable_FW_Lock:Z
    .restart local v6       #mCurrOrientation:I
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 5212
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 5214
    .end local v2           #d:Landroid/view/Display;
    .end local v6           #mCurrOrientation:I
    :catch_0
    move-exception v3

    .line 5215
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5216
    const/4 v9, 0x3

    const/4 v10, 0x1

    aput-byte v10, v8, v9

    goto :goto_2

    .line 5137
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xaat
        0x1t
        0x1t
    .end array-data
.end method

.method private CB_SetScreenTimeout(II)[B
    .locals 4
    .parameter "timeout"
    .parameter "rvCnt"

    .prologue
    .line 4957
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4958
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4960
    .local v0, result:[B
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    mul-int/lit16 p1, p1, 0x3e8

    .line 4962
    sparse-switch p1, :sswitch_data_0

    .line 4975
    :cond_0
    :goto_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4976
    return-object v0

    .line 4969
    :sswitch_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 4970
    :cond_1
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4971
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_0

    .line 4958
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xa2t
        0x2t
        0x1t
    .end array-data

    .line 4962
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_0
        0xea60 -> :sswitch_0
        0x1d4c0 -> :sswitch_0
        0x927c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private CB_SetUSBDebuggingStatus(II)[B
    .locals 7
    .parameter "adb_enable"
    .parameter "rvCnt"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 5078
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 5079
    const/4 v2, 0x4

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 5080
    .local v1, result:[B
    const/4 v0, 0x0

    .line 5081
    .local v0, bResult:Z
    const-string v2, "DMCmdSvs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CB_SetUSBDebuggingStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    if-nez p1, :cond_0

    .line 5083
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->USBhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->disableADB:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5087
    :goto_0
    const-string v2, "DMCmdSvs"

    const-string v3, "CB_SetUSBDebuggingStatus--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5089
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5090
    return-object v1

    .line 5085
    :cond_0
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->USBhandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->enableADB:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5079
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xact
        0x2t
        0x0t
    .end array-data
.end method

.method private CB_SetWifiStatus(II)[B
    .locals 5
    .parameter "enable"
    .parameter "rvCnt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4992
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4993
    const/4 v2, 0x4

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    .line 4994
    .local v1, result:[B
    const/4 v0, 0x0

    .line 4995
    .local v0, enabledResult:Z
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4996
    if-ne p1, v4, :cond_2

    .line 4997
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    .line 5001
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 5002
    const/4 v2, 0x3

    aput-byte v3, v1, v2

    .line 5004
    :cond_1
    array-length v2, v1

    invoke-direct {p0, v2}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 5005
    return-object v1

    .line 4998
    :cond_2
    if-nez p1, :cond_0

    .line 4999
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    goto :goto_0

    .line 4993
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xa3t
        0x2t
        0x1t
    .end array-data
.end method

.method private CB_TextMsgAlertState(I)[B
    .locals 8
    .parameter "rvCnt"

    .prologue
    const/4 v2, 0x0

    .line 4327
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4328
    const/4 v0, 0x5

    new-array v7, v0, [B

    fill-array-data v7, :array_0

    .line 4334
    .local v7, result:[B
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "read = 0 & type = 1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4336
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4338
    const/4 v0, 0x4

    const/4 v1, 0x1

    aput-byte v1, v7, v0

    .line 4356
    :cond_0
    array-length v0, v7

    invoke-direct {p0, v0}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4357
    return-object v7

    .line 4328
    nop

    :array_0
    .array-data 0x1
        0xfdt
        0xft
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_TimeZone(I)[B
    .locals 8
    .parameter "rvCnt"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3949
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3952
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, -0xea60

    div-int v1, v4, v5

    .line 3954
    .local v1, bias:I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 3957
    .local v2, daylight_saving:Z
    if-ne v2, v6, :cond_0

    .line 3958
    const/4 v0, 0x2

    .line 3962
    .local v0, TIME_ZONE_ID:I
    :goto_0
    const/16 v4, 0x9

    new-array v3, v4, [B

    const/4 v4, -0x3

    aput-byte v4, v3, v7

    const/16 v4, 0xa

    aput-byte v4, v3, v6

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    aput-byte v7, v3, v4

    const/4 v4, 0x4

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    const/4 v4, 0x5

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    const/4 v4, 0x6

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 3968
    .local v3, result:[B
    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 3969
    return-object v3

    .line 3960
    .end local v0           #TIME_ZONE_ID:I
    .end local v3           #result:[B
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #TIME_ZONE_ID:I
    goto :goto_0
.end method

.method private CB_VoiceMsgAlertState(I)[B
    .locals 3
    .parameter "rvCnt"

    .prologue
    .line 4366
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4367
    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 4374
    .local v0, result:[B
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4376
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 4388
    :cond_0
    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4389
    return-object v0

    .line 4367
    :array_0
    .array-data 0x1
        0xfdt
        0xft
        0x2t
        0x0t
        0x0t
    .end array-data
.end method

.method private CB_ZIPDispInfoGet(I)[B
    .locals 2
    .parameter "rvCnt"

    .prologue
    .line 4099
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->zipfile()V

    .line 4100
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4101
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4102
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4103
    .local v0, result:[B
    return-object v0
.end method

.method private CB_ZIPDispRead(II)[B
    .locals 2
    .parameter "blockInd"
    .parameter "rvCnt"

    .prologue
    .line 4114
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 4115
    const/16 v1, 0x20c

    invoke-direct {p0, v1}, Lcom/android/dmportread/DMCommandService;->incTxCnt(I)V

    .line 4117
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 4118
    .local v0, result:[B
    return-object v0
.end method

.method private CB_cleanInternalStorage(I)V
    .locals 11
    .parameter "tx"

    .prologue
    const-wide/16 v9, 0x2710

    const-wide/16 v7, 0xbb8

    .line 5571
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x21

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xad

    if-ne v5, v6, :cond_3

    .line 5572
    :cond_0
    const-string v5, "DMCmdSvs"

    const-string v6, " unmount phone storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 5576
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v5}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V

    .line 5577
    const-string v5, "DMCmdSvs"

    const-string v6, " success unmount UsbMassStorageEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5583
    :goto_0
    const-string v5, "DMCmdSvs"

    const-string v6, " success unmount phone storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 5586
    if-eqz v2, :cond_2

    .line 5588
    :try_start_1
    const-string v5, "DMCmdSvs"

    const-string v6, " mount service != null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5589
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 5590
    .local v4, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 5591
    .local v3, path:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5592
    const-string v5, "DMCmdSvs"

    const-string v6, " MEDIA_MOUNT "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v2, v3, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 5594
    const-wide/16 v5, 0x2710

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 5596
    :cond_1
    const-string v5, "DMCmdSvs"

    const-string v6, " before format "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 5598
    const-string v5, "DMCmdSvs"

    const-string v6, " format "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5606
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :goto_1
    const-wide/16 v5, 0x445c

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 5608
    :try_start_2
    const-string v5, "DMCmdSvs"

    const-string v6, " begin mount "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5610
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V

    .line 5611
    const-string v5, "DMCmdSvs"

    const-string v6, " after mount "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5657
    :goto_2
    const/4 v5, 0x2

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    .line 5658
    .local v0, DM:[B
    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendDM([B)V

    .line 5691
    return-void

    .line 5580
    .end local v0           #DM:[B
    :catch_0
    move-exception v1

    .line 5581
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "DMCmdSvs"

    const-string v6, " ERROR : mount phone storage "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5599
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 5601
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "DMCmdSvs"

    const-string v6, "Unable to invoke IMountService.formatMedia(internal storage)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5604
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v5, "DMCmdSvs"

    const-string v6, "Unable to locate IMountService"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5613
    :catch_2
    move-exception v1

    .line 5614
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "DMCmdSvs"

    const-string v6, " ERROR : mount phone storage "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5620
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_3
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 5629
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 5631
    if-eqz v2, :cond_5

    .line 5633
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v4

    .line 5634
    .restart local v4       #status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 5635
    .restart local v3       #path:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5636
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v2, v3, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 5637
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 5639
    :cond_4
    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5647
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :goto_3
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 5640
    :catch_3
    move-exception v1

    .line 5642
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "DMCmdSvs"

    const-string v6, "Unable to invoke IMountService.formatMedia(internal storage)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5645
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v5, "DMCmdSvs"

    const-string v6, "Unable to locate IMountService"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5657
    :array_0
    .array-data 0x1
        0xfbt
        0x3t
    .end array-data
.end method

.method private CB_coreBoot(I)V
    .locals 2
    .parameter "tx"

    .prologue
    .line 5547
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    .line 5548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.FOTA_WIPE_DATA_VZW_HPST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5568
    :goto_0
    return-void

    .line 5551
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private CB_countTxRx(II)V
    .locals 1
    .parameter "tx"
    .parameter "rx"

    .prologue
    .line 5527
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->mTxUSB:I

    .line 5528
    iput p2, p0, Lcom/android/dmportread/DMCommandService;->mRxUSB:I

    .line 5529
    const-string v0, "com.android.dmportread.UPDATE_VIEW"

    invoke-direct {p0, v0}, Lcom/android/dmportread/DMCommandService;->notifyChange(Ljava/lang/String;)V

    .line 5530
    return-void
.end method

.method private CB_reboot(I)V
    .locals 3
    .parameter "tx"

    .prologue
    .line 5694
    const-string v1, "DMCmdSvs"

    const-string v2, "reboot PM "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5700
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 5702
    return-void
.end method

.method private CB_sendModeDM(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 5705
    const-string v0, "DMCmdSvs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send DM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    return-void
.end method

.method private Convert_UTF16_to_UTF8(Ljava/lang/String;)[B
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 4399
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private Convert_UTF8_to_UTF16(Ljava/lang/String;)[B
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 4404
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/dmportread/DMCommandService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mContactsChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadContacts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadTempSms()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/dmportread/DMCommandService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dmportread/DMCommandService;)Lcom/android/dmportread/CurrentBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mBox:Lcom/android/dmportread/CurrentBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService;->mLoadSmsThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mSMSDirty:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/dmportread/DMCommandService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/dmportread/DMCommandService;->mCallsChanged:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mCallsChanged:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadCalls()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService;->mLoadCallsThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->plugType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/dmportread/DMCommandService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->level:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/dmportread/DMCommandService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService;->mLoadContactsThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->scale:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->status:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->present:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/dmportread/DMCommandService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService;->tech:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/dmportread/DMCommandService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/dmportread/DMCommandService;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/dmportread/DMCommandService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mHasPendingBtIntent:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mContactsDirty:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/dmportread/DMCommandService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/dmportread/DMCommandService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    return-wide p1
.end method

.method static synthetic access$510(Lcom/android/dmportread/DMCommandService;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/dmportread/DMCommandService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->shareContactNum:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/dmportread/DMCommandService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/dmportread/DMCommandService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/dmportread/DMCommandService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z

    return p1
.end method

.method private appendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "field0"
    .parameter "field1"
    .parameter "field2"
    .parameter "field3"

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x14

    .line 836
    iput v3, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 838
    const/4 v0, -0x1

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldAppend(II)[B

    .line 840
    if-eqz p1, :cond_0

    .line 841
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldSet(IILjava/lang/String;I)[B

    .line 844
    :cond_0
    if-eqz p2, :cond_1

    .line 845
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldSet(IILjava/lang/String;I)[B

    .line 848
    :cond_1
    if-eqz p3, :cond_2

    .line 849
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldSet(IILjava/lang/String;I)[B

    .line 852
    :cond_2
    if-eqz p4, :cond_3

    .line 853
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldSet(IILjava/lang/String;I)[B

    .line 856
    :cond_3
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldUpdate(II)[B

    .line 857
    iput v3, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 858
    return-void
.end method

.method private callBack()V
    .locals 14

    .prologue
    const/16 v13, 0x6f

    const/16 v12, 0x1e

    const/4 v3, 0x0

    const/4 v11, 0x2

    .line 904
    const/16 v0, 0x30

    const/4 v10, 0x5

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 905
    const/16 v0, 0xa2

    const/4 v10, 0x6

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 906
    const/16 v0, 0x50

    const/4 v10, 0x7

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 907
    const/16 v0, 0x8f

    const/16 v10, 0x8

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 908
    const/4 v0, 0x1

    const/16 v10, 0x9

    invoke-direct {p0, v0, v13, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 909
    const/16 v0, 0xa

    invoke-direct {p0, v3, v13, v0}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 910
    const/16 v0, 0x31

    const/16 v10, 0xb

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 911
    const/16 v0, 0x2a

    const/16 v10, 0xc

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 912
    const/16 v0, 0x23

    const/16 v10, 0xd

    invoke-direct {p0, v11, v0, v10}, Lcom/android/dmportread/DMCommandService;->CB_KeyPress(III)[B

    .line 914
    const/4 v1, 0x3

    .line 915
    .local v1, msgtype:I
    const/16 v2, 0xa

    .line 916
    .local v2, read:I
    const/4 v5, 0x2

    .line 919
    .local v5, byteCnt:I
    const/4 v0, 0x4

    new-array v4, v0, [Z

    fill-array-data v4, :array_0

    .line 921
    .local v4, trueFields:[Z
    invoke-direct {p0, v1, v2, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSCount(III)[B

    move-object v0, p0

    .line 923
    invoke-direct/range {v0 .. v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldStatus(III[ZI)[B

    .line 924
    invoke-direct {p0, v3, v11, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldRead(III)[B

    .line 983
    const/16 v0, 0x18

    new-array v8, v0, [Z

    fill-array-data v8, :array_1

    .line 986
    .local v8, fields:[Z
    const/4 v9, 0x0

    .line 987
    .local v9, recInd:I
    const/4 v7, 0x6

    .line 989
    .local v7, fieldId:I
    invoke-direct {p0, v12}, Lcom/android/dmportread/DMCommandService;->CB_DeviceInfo(I)[B

    .line 990
    invoke-direct {p0, v12}, Lcom/android/dmportread/DMCommandService;->CB_TextMsgAlertState(I)[B

    .line 992
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->testDM_2_1()V

    .line 1014
    const-wide/16 v10, 0xbb8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    const-string v0, "DMCmdSvs"

    const-string v3, "calling callBack"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    return-void

    .line 1015
    :catch_0
    move-exception v6

    .line 1017
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 919
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    .line 983
    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private clearFields([Z)V
    .locals 2
    .parameter "fields"

    .prologue
    .line 890
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 891
    const/4 v1, 0x0

    aput-boolean v1, p1, v0

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_0
    return-void
.end method

.method private convertDMMsgType(I)I
    .locals 2
    .parameter "dm_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 2085
    packed-switch p1, :pswitch_data_0

    .line 2095
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Invalid Msg type"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2087
    :pswitch_0
    const/4 v0, 0x3

    .line 2093
    :goto_0
    return v0

    .line 2089
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2091
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 2093
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 2085
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static cpyStrTobytes([BLjava/lang/String;I)V
    .locals 4
    .parameter "result"
    .parameter "data"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    array-length v3, p0

    if-le v2, v3, :cond_0

    .line 1845
    const-string v2, "DMCmdSvs"

    const-string v3, "Data length too long"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "unable copy string into respose"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1849
    :cond_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1851
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1852
    add-int v2, p2, v1

    aget-byte v3, v0, v1

    aput-byte v3, p0, v2

    .line 1851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1855
    :cond_1
    return-void
.end method

.method private static dateToSystemtime([BJI)V
    .locals 16
    .parameter "result"
    .parameter "callHistoryDate"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 3309
    add-int/lit8 v13, p3, 0xf

    move-object/from16 v0, p0

    array-length v14, v0

    if-lt v13, v14, :cond_0

    .line 3310
    new-instance v13, Ljava/lang/IndexOutOfBoundsException;

    const-string v14, "arrayindex out of bound"

    invoke-direct {v13, v14}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 3312
    :cond_0
    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 3313
    .local v10, calldate:Ljava/util/Date;
    new-instance v9, Ljava/util/GregorianCalendar;

    const-string v13, "GMT+00:00"

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3314
    .local v9, callcalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v9, v10}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 3315
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 3316
    .local v8, call_year:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3319
    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 3320
    .local v6, call_month:I
    add-int/lit8 v13, v6, 0x1

    add-int/lit8 v14, p3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3323
    const/4 v13, 0x7

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 3324
    .local v3, call_day:I
    add-int/lit8 v13, v3, -0x1

    add-int/lit8 v14, p3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3327
    const/4 v13, 0x5

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 3328
    .local v2, call_date:I
    add-int/lit8 v13, p3, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3331
    const/16 v13, 0xb

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 3332
    .local v4, call_hour:I
    add-int/lit8 v13, p3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v4, v13}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3335
    const/16 v13, 0xc

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 3336
    .local v5, call_min:I
    add-int/lit8 v13, p3, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v5, v13}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3339
    const/16 v13, 0xd

    invoke-virtual {v9, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 3340
    .local v7, call_sec:I
    add-int/lit8 v13, p3, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v7, v13}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3342
    const-wide/16 v13, 0x3e8

    rem-long v11, p1, v13

    .line 3343
    .local v11, millisecCall:J
    add-int/lit8 v13, p3, 0xe

    long-to-int v14, v11

    int-to-byte v14, v14

    aput-byte v14, p0, v13

    .line 3344
    add-int/lit8 v13, p3, 0xf

    const/16 v14, 0x8

    ushr-long v14, v11, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, p0, v13

    .line 3346
    return-void
.end method

.method private fillInFieldData([BBSB[BI)I
    .locals 2
    .parameter "result"
    .parameter "id"
    .parameter "len"
    .parameter "code"
    .parameter "data"
    .parameter "from"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2920
    aput-byte p2, p1, p6

    .line 2921
    add-int/lit8 p6, p6, 0x1

    .line 2924
    int-to-byte v0, p3

    aput-byte v0, p1, p6

    .line 2925
    add-int/lit8 v0, p6, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2926
    add-int/lit8 p6, p6, 0x2

    .line 2929
    aput-byte p4, p1, p6

    .line 2930
    add-int/lit8 p6, p6, 0x1

    .line 2933
    const/4 v0, 0x0

    array-length v1, p5

    invoke-static {p5, v0, p1, p6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2934
    array-length v0, p5

    add-int/2addr p6, v0

    .line 2936
    return p6
.end method

.method private static fillStartTime([BJI)V
    .locals 11
    .parameter "result"
    .parameter "callHistoryDate"
    .parameter "pos"

    .prologue
    .line 3349
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3350
    .local v8, calldate:Ljava/util/Date;
    new-instance v7, Ljava/util/GregorianCalendar;

    const-string v9, "GMT+00:00"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3351
    .local v7, callcalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 3352
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 3353
    .local v6, call_year:I
    invoke-static {p0, v6, p3}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3356
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 3357
    .local v3, call_month:I
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, p3, 0x2

    invoke-static {p0, v9, v10}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3360
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 3361
    .local v0, call_date:I
    add-int/lit8 v9, p3, 0x4

    invoke-static {p0, v0, v9}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3364
    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 3365
    .local v1, call_hour:I
    add-int/lit8 v9, p3, 0x6

    invoke-static {p0, v1, v9}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3368
    const/16 v9, 0xc

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 3369
    .local v2, call_min:I
    add-int/lit8 v9, p3, 0x8

    invoke-static {p0, v2, v9}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3372
    const/16 v9, 0xd

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 3373
    .local v5, call_sec:I
    add-int/lit8 v9, p3, 0xa

    invoke-static {p0, v5, v9}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3376
    const/16 v9, 0xe

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 3377
    .local v4, call_msec:I
    add-int/lit8 v9, p3, 0xc

    invoke-static {p0, v5, v9}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 3380
    return-void
.end method

.method private generateWhereClause(II)Ljava/lang/String;
    .locals 5
    .parameter "dm_type"
    .parameter "read_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 2148
    const/4 v1, 0x0

    .line 2149
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->msgType_condition(I)Ljava/lang/String;

    move-result-object v2

    .line 2150
    .local v2, type_cond:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->readType_condition(I)Ljava/lang/String;

    move-result-object v0

    .line 2152
    .local v0, read_cond:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 2153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2160
    :cond_0
    :goto_0
    return-object v1

    .line 2154
    :cond_1
    if-eqz v2, :cond_2

    .line 2155
    move-object v1, v2

    goto :goto_0

    .line 2156
    :cond_2
    if-eqz v0, :cond_0

    .line 2157
    move-object v1, v0

    goto :goto_0
.end method

.method private getOrCreateThreadId(Ljava/lang/String;)J
    .locals 3
    .parameter "number"

    .prologue
    .line 2472
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2473
    .local v0, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2474
    invoke-static {p0, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method private incRxCnt(I)V
    .locals 1
    .parameter "rxCnt"

    .prologue
    .line 440
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    .line 441
    return-void
.end method

.method private incTxCnt(I)V
    .locals 1
    .parameter "txCnt"

    .prologue
    .line 433
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    .line 437
    return-void
.end method

.method private static intToByteArray([BII)[B
    .locals 2
    .parameter "resp"
    .parameter "value"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1724
    add-int/lit8 v0, p2, 0x3

    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "arrayindex out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_0
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1728
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1729
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1730
    add-int/lit8 v0, p2, 0x0

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 1732
    return-object p0
.end method

.method private static intiKeyEventMap()V
    .locals 5

    .prologue
    const/16 v4, 0x54

    const/16 v3, 0x52

    .line 4130
    sget-object v1, Lcom/android/dmportread/DMCommandService;->mKeyEventMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 4131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/dmportread/DMCommandService;->mKeyEventMap:Ljava/util/HashMap;

    .line 4132
    sget-object v0, Lcom/android/dmportread/DMCommandService;->mKeyEventMap:Ljava/util/HashMap;

    .line 4135
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4137
    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4138
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4141
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4142
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4143
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4147
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    const/16 v1, 0xb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    const/16 v1, 0xb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4163
    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    const/16 v1, 0xb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    :cond_0
    return-void
.end method

.method private loadCalls()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 3141
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 3144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    .line 3147
    :cond_0
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 3148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    .line 3151
    :cond_1
    iget-object v5, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 3152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    .line 3155
    :cond_2
    iget-object v4, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    .line 3156
    .local v4, totallist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/CallsHistory;>;"
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mInCalls:Ljava/util/ArrayList;

    .line 3158
    .local v2, inlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/CallsHistory;>;"
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mOutCalls:Ljava/util/ArrayList;

    .line 3160
    .local v3, outlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/CallsHistory;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3161
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3163
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3164
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3166
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3167
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3170
    :cond_5
    invoke-static {p0}, Lcom/android/dmportread/CallsHistory;->initiColInd(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 3171
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3172
    const-string v5, "DMCmdSvs"

    const-string v6, "Cursor not before first!! "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    new-instance v5, Landroid/database/SQLException;

    const-string v6, "Cursor not before first!! "

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3177
    :cond_6
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3179
    new-instance v1, Lcom/android/dmportread/CallsHistory;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v1, p0, v0, v5}, Lcom/android/dmportread/CallsHistory;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 3180
    .local v1, ch:Lcom/android/dmportread/CallsHistory;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3181
    iget-short v5, v1, Lcom/android/dmportread/CallsHistory;->type:S

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    iget-short v5, v1, Lcom/android/dmportread/CallsHistory;->type:S

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 3182
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3183
    :cond_8
    iget-short v5, v1, Lcom/android/dmportread/CallsHistory;->type:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 3184
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3186
    .end local v1           #ch:Lcom/android/dmportread/CallsHistory;
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3187
    return-void
.end method

.method private declared-synchronized loadContacts()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    .line 529
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/dmportread/DMCommandService;->deletedList:Ljava/util/LinkedList;

    .line 531
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dmportread/TempContact;->TEMP_PEOPLE_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/name"

    aput-object v6, v4, v5

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 544
    .local v9, cur:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 545
    new-instance v1, Lcom/android/dmportread/DMServiceException;

    const-string v2, "Unable to get TEMP_PEOPLE_PROJECTION from DB"

    invoke-direct {v1, v2}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .end local v9           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 548
    .restart local v9       #cur:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    .line 550
    .local v0, record:Lcom/android/dmportread/TempContact;
    const/4 v8, 0x0

    .line 551
    .local v8, contactNumTmp:I
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    iget-wide v1, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 556
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    .line 558
    add-int/lit8 v8, v8, 0x1

    .line 559
    const/16 v1, 0x12e

    if-ne v8, v1, :cond_3

    .line 561
    iget-wide v1, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    iput-wide v1, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    .line 564
    :cond_3
    new-instance v0, Lcom/android/dmportread/TempContact;

    .end local v0           #record:Lcom/android/dmportread/TempContact;
    iget-wide v1, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/android/dmportread/TempContact;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .restart local v0       #record:Lcom/android/dmportread/TempContact;
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 588
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/dmportread/DMCommandService;->tmpId:J

    .line 591
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadPhonesEntries()V

    .line 593
    invoke-direct {p0}, Lcom/android/dmportread/DMCommandService;->loadEmailEntries()V

    .line 594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dmportread/DMCommandService;->mContactsDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized loadEmailEntries()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dmportread/TempContact;->TEMP_EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "vnd.android.cursor.item/email_v2"

    aput-object v14, v4, v5

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 685
    .local v8, cur:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 686
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Unable to get TEMP_EMAIL_PROJECTION from DB"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    .end local v8           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 689
    .restart local v8       #cur:Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x0

    .line 690
    .local v6, contact:Lcom/android/dmportread/TempContact;
    const/4 v7, 0x0

    .line 695
    .local v7, contactInd:I
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 697
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 698
    .local v9, data:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 699
    .local v13, type:I
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 702
    .local v10, person_id:J
    :goto_1
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #contact:Lcom/android/dmportread/TempContact;
    check-cast v6, Lcom/android/dmportread/TempContact;

    .line 704
    .restart local v6       #contact:Lcom/android/dmportread/TempContact;
    iget-wide v0, v6, Lcom/android/dmportread/TempContact;->mId:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 711
    :cond_2
    if-eqz v6, :cond_1

    .line 712
    invoke-virtual {v6, v13, v9}, Lcom/android/dmportread/TempContact;->addEmailEntry(ILjava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_3
    const/4 v6, 0x0

    .line 709
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 715
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #person_id:J
    .end local v13           #type:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 717
    iget-wide v0, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 719
    new-instance v12, Lcom/android/dmportread/DMCommandService$2;

    invoke-direct {v12, p0}, Lcom/android/dmportread/DMCommandService$2;-><init>(Lcom/android/dmportread/DMCommandService;)V

    .line 775
    .local v12, t:Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    .end local v12           #t:Ljava/lang/Thread;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized loadPhonesEntries()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dmportread/TempContact;->TEMP_PHONES_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype=? AND raw_contact_id < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/dmportread/DMCommandService;->contactIDTmp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "vnd.android.cursor.item/phone_v2"

    aput-object v13, v4, v5

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 627
    .local v8, cur:Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_1

    .line 628
    const-string v0, "DMCmdSvs"

    const-string v1, "no Cursor "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Unable to get TEMP_PHONES_PROJECTION from DB"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .end local v8           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 617
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dmportread/TempContact;->TEMP_PHONES_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "vnd.android.cursor.item/phone_v2"

    aput-object v13, v4, v5

    const-string v5, "raw_contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8       #cur:Landroid/database/Cursor;
    goto :goto_0

    .line 633
    :cond_1
    if-eqz v8, :cond_6

    .line 634
    const/4 v6, 0x0

    .line 635
    .local v6, contact:Lcom/android/dmportread/TempContact;
    const/4 v7, 0x0

    .line 641
    .local v7, contactInd:I
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 643
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 644
    .local v9, data:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 645
    .local v12, type:I
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 648
    .local v10, person_id:J
    :goto_2
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #contact:Lcom/android/dmportread/TempContact;
    check-cast v6, Lcom/android/dmportread/TempContact;

    .line 650
    .restart local v6       #contact:Lcom/android/dmportread/TempContact;
    iget-wide v0, v6, Lcom/android/dmportread/TempContact;->mId:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    .line 657
    :cond_3
    if-eqz v6, :cond_2

    .line 658
    invoke-static {v12, v9, v6}, Lcom/android/dmportread/TempContact;->addPhoneEntry(ILjava/lang/String;Lcom/android/dmportread/TempContact;)V

    goto :goto_1

    .line 653
    :cond_4
    const/4 v6, 0x0

    .line 655
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 661
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #person_id:J
    .end local v12           #type:I
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    .end local v6           #contact:Lcom/android/dmportread/TempContact;
    .end local v7           #contactInd:I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized loadTempSms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1608
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1609
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    .line 1614
    :cond_0
    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mAllMsgs:Ljava/util/ArrayList;

    .line 1616
    .local v1, totallist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1617
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1620
    :cond_1
    iget-object v2, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/dmportread/TempSms;->initiColInd(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1621
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1622
    const-string v2, "DMCmdSvs"

    const-string v3, "Cursor not before first!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v2, Landroid/database/SQLException;

    const-string v3, "Cursor not before first!! "

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #totallist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1626
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #totallist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1627
    invoke-static {p0, v0, v1}, Lcom/android/dmportread/TempSms;->CreateTempSms(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1629
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1630
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/dmportread/DMCommandService;->mSMSDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1631
    monitor-exit p0

    return-void
.end method

.method private msgType_condition(I)Ljava/lang/String;
    .locals 4
    .parameter "dm_type"

    .prologue
    const/4 v3, 0x4

    .line 2127
    const/4 v0, 0x0

    .line 2130
    .local v0, type_cond:Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2137
    :cond_0
    :goto_0
    return-object v0

    .line 2134
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/dmportread/DMCommandService;->convertDMMsgType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 3
    .parameter "what"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    const-string v1, "txCnt"

    iget v2, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    const-string v1, "rxCnt"

    iget v2, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    const-string v1, "txUSB"

    iget v2, p0, Lcom/android/dmportread/DMCommandService;->mTxUSB:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    const-string v1, "rxUSB"

    iget v2, p0, Lcom/android/dmportread/DMCommandService;->mRxUSB:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method private readType_condition(I)Ljava/lang/String;
    .locals 3
    .parameter "read_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 2107
    const/4 v0, 0x0

    .line 2109
    .local v0, read_cond:Ljava/lang/String;
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 2118
    :goto_0
    return-object v0

    .line 2111
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2112
    const-string v0, "read = 1"

    goto :goto_0

    .line 2113
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2114
    const-string v0, "read = 0"

    goto :goto_0

    .line 2116
    :cond_2
    new-instance v1, Lcom/android/dmportread/DMServiceException;

    const-string v2, "Invalid read type"

    invoke-direct {v1, v2}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "field0"
    .parameter "field1"
    .parameter "field2"
    .parameter "field3"

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x14

    .line 863
    iput v3, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 865
    const/4 v0, -0x1

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendAppend(II)[B

    .line 867
    if-eqz p1, :cond_0

    .line 868
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendSet(IILjava/lang/String;I)[B

    .line 871
    :cond_0
    if-eqz p2, :cond_1

    .line 872
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendSet(IILjava/lang/String;I)[B

    .line 875
    :cond_1
    if-eqz p3, :cond_2

    .line 876
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendSet(IILjava/lang/String;I)[B

    .line 879
    :cond_2
    if-eqz p4, :cond_3

    .line 880
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4, v2}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendSet(IILjava/lang/String;I)[B

    .line 883
    :cond_3
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecSendUpdate(II)[B

    .line 884
    iput v3, p0, Lcom/android/dmportread/DMCommandService;->tempRecInd:I

    .line 885
    return-void
.end method

.method private static setSMSTime(J)[B
    .locals 14
    .parameter "callHistoryDate"

    .prologue
    const/16 v13, 0xc

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 2750
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2751
    .local v8, calldate:Ljava/util/Date;
    new-instance v7, Ljava/util/GregorianCalendar;

    const-string v10, "GMT+00:00"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 2752
    .local v7, callcalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 2753
    const/16 v10, 0x10

    new-array v9, v10, [B

    .line 2754
    .local v9, result:[B
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    .line 2755
    .local v6, call_year:I
    invoke-static {v9, v6, v11}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2758
    invoke-virtual {v7, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 2759
    .local v4, call_month:I
    add-int/lit8 v10, v4, 0x1

    invoke-static {v9, v10, v12}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2762
    const/4 v10, 0x7

    invoke-virtual {v7, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2763
    .local v1, call_day_of_week:I
    const/4 v10, 0x4

    invoke-static {v9, v1, v10}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2766
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 2767
    .local v0, call_date:I
    const/4 v10, 0x6

    invoke-static {v9, v0, v10}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2770
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 2771
    .local v2, call_hour:I
    const/16 v10, 0x8

    invoke-static {v9, v2, v10}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2774
    invoke-virtual {v7, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 2775
    .local v3, call_min:I
    const/16 v10, 0xa

    invoke-static {v9, v3, v10}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2778
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 2779
    .local v5, call_sec:I
    invoke-static {v9, v5, v13}, Lcom/android/dmportread/DMCommandService;->wordToByteArray([BII)[B

    .line 2786
    const/16 v10, 0xe

    aput-byte v11, v9, v10

    .line 2787
    const/16 v10, 0xf

    aput-byte v11, v9, v10

    .line 2788
    return-object v9
.end method

.method private testDM_2_1()V
    .locals 15

    .prologue
    const/4 v0, 0x4

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/16 v13, 0xa

    .line 785
    const/16 v5, 0xa

    .line 786
    .local v5, byteCnt:I
    new-array v4, v0, [Z

    .line 787
    .local v4, falseFields:[Z
    new-array v10, v0, [Z

    fill-array-data v10, :array_0

    .line 790
    .local v10, trueFields:[Z
    const-string v0, "7654321"

    const-string v6, "Send SMS test"

    invoke-direct {p0, v7, v0, v6, v7}, Lcom/android/dmportread/DMCommandService;->sendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "0911266401"

    const-string v6, "Send SMS test"

    invoke-direct {p0, v0, v7, v6, v7}, Lcom/android/dmportread/DMCommandService;->sendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "1234556"

    const-string v6, "7654321"

    const-string v7, "Send SMS test"

    const-string v8, "33256863"

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/android/dmportread/DMCommandService;->sendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/16 v1, 0xa

    .line 795
    .local v1, msgtype:I
    const/16 v2, 0xa

    .line 796
    .local v2, read:I
    invoke-direct {p0, v1, v2, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSCount(III)[B

    .line 797
    const/4 v3, 0x0

    .local v3, recInd:I
    :goto_0
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempCount:I

    if-ge v3, v0, :cond_0

    move-object v0, p0

    .line 798
    invoke-direct/range {v0 .. v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldStatus(III[ZI)[B

    move-object v6, p0

    move v7, v1

    move v8, v2

    move v9, v3

    move v11, v5

    .line 799
    invoke-direct/range {v6 .. v11}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldStatus(III[ZI)[B

    .line 797
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    :cond_0
    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x5

    if-gt v1, v0, :cond_5

    .line 803
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v13, :cond_4

    .line 804
    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    const/16 v2, 0xa

    .line 805
    :cond_1
    invoke-direct {p0, v1, v2, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSCount(III)[B

    .line 806
    const/4 v3, 0x0

    :goto_3
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->tempCount:I

    if-ge v3, v0, :cond_3

    move-object v0, p0

    .line 807
    invoke-direct/range {v0 .. v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldStatus(III[ZI)[B

    .line 809
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->resultFields:[Z

    invoke-direct {p0, v0}, Lcom/android/dmportread/DMCommandService;->clearFields([Z)V

    move-object v6, p0

    move v7, v1

    move v8, v2

    move v9, v3

    move v11, v5

    .line 810
    invoke-direct/range {v6 .. v11}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldStatus(III[ZI)[B

    .line 811
    const/4 v12, 0x0

    .local v12, fieldId:I
    :goto_4
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->resultFields:[Z

    array-length v0, v0

    if-ge v12, v0, :cond_2

    .line 813
    invoke-direct {p0, v3, v12, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecFieldRead(III)[B

    .line 811
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 806
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 816
    .end local v12           #fieldId:I
    :cond_3
    const-string v0, "1234556"

    const-string v6, "7654321"

    const-string v7, "inbox test"

    const-string v8, "33256863"

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/android/dmportread/DMCommandService;->appendOneSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, v14, v13, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSSetReadStatus(III)[B

    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v14, v0, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSSetReadStatus(III)[B

    .line 819
    const/4 v0, 0x2

    invoke-direct {p0, v14, v0, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSSetReadStatus(III)[B

    .line 803
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 802
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 824
    :cond_5
    const/4 v0, -0x1

    invoke-direct {p0, v13, v13, v0, v5}, Lcom/android/dmportread/DMCommandService;->CB_SMSRecDelete(IIII)[B

    .line 831
    return-void

    .line 787
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private testDM_2_2()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method private static wordToByteArray([BII)[B
    .locals 2
    .parameter "resp"
    .parameter "value"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 3298
    add-int/lit8 v0, p2, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 3299
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "arrayindex out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3302
    :cond_0
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 3303
    add-int/lit8 v0, p2, 0x0

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 3305
    return-object p0
.end method

.method private zipfile()V
    .locals 9

    .prologue
    .line 4066
    :try_start_0
    const-string v4, "/data/x1.bmp"

    .line 4067
    .local v4, source:Ljava/lang/String;
    const-string v5, "/data/data/com.android.dmportread/screen.zip"

    .line 4069
    .local v5, target:Ljava/lang/String;
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4070
    .local v6, zos:Ljava/util/zip/ZipOutputStream;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4073
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 4075
    const/4 v3, 0x0

    .line 4076
    .local v3, size:I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 4080
    .local v0, buffer:[B
    :goto_0
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 4081
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4089
    .end local v0           #buffer:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #size:I
    .end local v4           #source:Ljava/lang/String;
    .end local v5           #target:Ljava/lang/String;
    .end local v6           #zos:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 4090
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4092
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 4084
    .restart local v0       #buffer:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #size:I
    .restart local v4       #source:Ljava/lang/String;
    .restart local v5       #target:Ljava/lang/String;
    .restart local v6       #zos:Ljava/util/zip/ZipOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 4085
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 4088
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public CB_RadioStateSet(ZI)[B
    .locals 6
    .parameter "state"
    .parameter "rvCnt"

    .prologue
    const/4 v5, 0x1

    .line 3742
    invoke-direct {p0, p2}, Lcom/android/dmportread/DMCommandService;->incRxCnt(I)V

    .line 3743
    const/4 v3, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    .line 3750
    .local v2, result:[B
    :try_start_0
    iget-object v3, p0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 3752
    if-ne p1, v5, :cond_0

    .line 3753
    const/4 v1, 0x0

    .line 3757
    .local v1, flag:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3763
    .end local v1           #flag:I
    :goto_1
    return-object v2

    .line 3755
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #flag:I
    goto :goto_0

    .line 3759
    .end local v1           #flag:I
    :catch_0
    move-exception v0

    .line 3760
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3761
    const/4 v3, 0x3

    aput-byte v5, v2, v3

    goto :goto_1

    .line 3743
    :array_0
    .array-data 0x1
        0xfdt
        0x7t
        0x2t
        0x0t
    .end array-data
.end method

.method public CB_SetMMSC(ILjava/lang/String;)V
    .locals 5
    .parameter "rvCnt"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 5395
    const-string v1, "DMCmdSvs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMMSC ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5398
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mmsc"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "current"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5403
    return-void
.end method

.method public getRxCnt()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    return v0
.end method

.method public getRxUSB()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mRxUSB:I

    return v0
.end method

.method public getTxCnt()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    return v0
.end method

.method public getTxUSB()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->mTxUSB:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 377
    const-string v0, "DMCmdSvs"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mBinder:Lcom/android/dmportread/DMCommandService$DMServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 187
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/dmportread/DMCommandService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    const-string v0, "DMPORTC"

    const-string v1, "DM CMD 1.0.7.4 start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    .line 196
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    .line 198
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mRxUSB:I

    .line 199
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mTxUSB:I

    .line 201
    iput-object p0, p0, Lcom/android/dmportread/DMCommandService;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    sget-boolean v0, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    if-ne v0, v3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mSmsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    sput-boolean v2, Lcom/android/dmportread/DMCommandService;->smsObsReged:Z

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mContacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mContactsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mAllCalls:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/dmportread/DMCommandService;->mCallsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    :cond_3
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->setEndFlag()V

    .line 236
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mTxCnt:I

    .line 237
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mRxCnt:I

    .line 239
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mRxUSB:I

    .line 240
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->mTxUSB:I

    .line 241
    iput v3, p0, Lcom/android/dmportread/DMCommandService;->shareContactNum:I

    .line 242
    iput v2, p0, Lcom/android/dmportread/DMCommandService;->maximumContactNum:I

    .line 243
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 253
    const-string v0, "DMCmdSvs"

    const-string v1, "destroying service-end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 16
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 258
    invoke-super/range {p0 .. p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, action:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 265
    :cond_0
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dmportread/DMCommandService;->setValue:I

    .line 266
    const-string v13, "DMCmdSvs"

    const-string v14, " open servcie  "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    new-instance v10, Ljava/io/FileWriter;

    const-string v13, "/data/data/com.android.dmportread/BT_flag"

    invoke-direct {v10, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 271
    .local v10, fstream:Ljava/io/FileWriter;
    new-instance v11, Ljava/io/BufferedWriter;

    invoke-direct {v11, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 272
    .local v11, out:Ljava/io/BufferedWriter;
    const-string v13, "0"

    invoke-virtual {v11, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v10           #fstream:Ljava/io/FileWriter;
    .end local v11           #out:Ljava/io/BufferedWriter;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService;->mThread:Ljava/lang/Thread;

    if-nez v13, :cond_1

    .line 358
    new-instance v13, Ljava/lang/Thread;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/dmportread/DMCommandService;->mThread:Ljava/lang/Thread;

    .line 359
    const-string v13, "DMCmdSvs"

    const-string v14, "creating service"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/dmportread/DMCommandService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/dmportread/DMCommandService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/dmportread/DMCommandService;->mResolver:Landroid/content/ContentResolver;

    .line 362
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/dmportread/DMCommandService;->mSMSDirty:Z

    .line 363
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/dmportread/DMCommandService;->mContactsDirty:Z

    .line 364
    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/dmportread/DMCommandService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/dmportread/DMCommandService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dmportread/DMCommandService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 373
    :cond_1
    :goto_1
    return-void

    .line 276
    :catch_0
    move-exception v6

    .line 277
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const-string v13, "ACTION_BTDIAG"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 282
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dmportread/DMCommandService;->setValue:I

    .line 287
    :try_start_1
    new-instance v10, Ljava/io/FileWriter;

    const-string v13, "/data/data/com.android.dmportread/BT_flag"

    invoke-direct {v10, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 288
    .restart local v10       #fstream:Ljava/io/FileWriter;
    new-instance v11, Ljava/io/BufferedWriter;

    invoke-direct {v11, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 289
    .restart local v11       #out:Ljava/io/BufferedWriter;
    const-string v13, "1"

    invoke-virtual {v11, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 293
    .end local v10           #fstream:Ljava/io/FileWriter;
    .end local v11           #out:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v6

    .line 294
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const-string v13, "ACTION_DIAG"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 299
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dmportread/DMCommandService;->setValue:I

    .line 300
    const-string v13, "DMCmdSvs"

    const-string v14, " start diag  "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :try_start_2
    new-instance v10, Ljava/io/FileWriter;

    const-string v13, "/data/data/com.android.dmportread/BT_flag"

    invoke-direct {v10, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v10       #fstream:Ljava/io/FileWriter;
    new-instance v11, Ljava/io/BufferedWriter;

    invoke-direct {v11, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 306
    .restart local v11       #out:Ljava/io/BufferedWriter;
    const-string v13, "0"

    invoke-virtual {v11, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 310
    .end local v10           #fstream:Ljava/io/FileWriter;
    .end local v11           #out:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v6

    .line 311
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 314
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const-string v13, "DM_SMS_SENT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget v13, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    const/16 v14, 0x64

    if-ne v13, v14, :cond_5

    .line 316
    const-string v13, "mResultCode"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/android/dmportread/DMCommandService;->mSmsSentStatus:I

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    sput-object v13, Lcom/android/dmportread/DMCommandService;->mSentMailUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 323
    :cond_5
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "a = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :cond_6
    const-string v13, "DMCmdSvs"

    const-string v14, " re service"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v8, 0x0

    .line 330
    .local v8, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 331
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 333
    .local v4, dis:Ljava/io/DataInputStream;
    new-instance v7, Ljava/io/File;

    const-string v13, "/data/data/com.android.dmportread/BT_flag"

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v7, file:Ljava/io/File;
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 336
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 337
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 338
    .end local v4           #dis:Ljava/io/DataInputStream;
    .local v5, dis:Ljava/io/DataInputStream;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v12

    .line 339
    .local v12, temp:I
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 340
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 341
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 342
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " read BT "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v13, 0x31

    if-ne v12, v13, :cond_7

    .line 345
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dmportread/DMCommandService;->setValue:I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 349
    .end local v12           #temp:I
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 351
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/FileNotFoundException;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_2
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " boot  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #dis:Ljava/io/DataInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #temp:I
    :cond_7
    const/4 v13, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dmportread/DMCommandService;->setValue:I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 352
    .end local v12           #temp:I
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5           #dis:Ljava/io/DataInputStream;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .line 354
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_3
    const-string v13, "DMCmdSvs"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " read boot "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    goto :goto_3

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 349
    :catch_8
    move-exception v6

    goto :goto_2

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_a
    move-exception v6

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public native readComPort(I)V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcom/android/dmportread/DMCommandService;->setValue:I

    invoke-virtual {p0, v0}, Lcom/android/dmportread/DMCommandService;->readComPort(I)V

    .line 422
    const-string v0, "DMCMD"

    const-string v1, "Thread ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/dmportread/DMCommandService;->stopSelf()V

    .line 424
    return-void
.end method

.method public native sendDM([B)V
.end method

.method public native setEndFlag()V
.end method
