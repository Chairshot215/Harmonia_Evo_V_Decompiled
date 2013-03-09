.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$StateListener;,
        Lcom/android/phone/NotificationMgr$WorkingHandler;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$NotifyMissedCall;,
        Lcom/android/phone/NotificationMgr$StatusBarMgr;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_MISSCALL_COUNT:Ljava/lang/String; = "com.android.phone.action.update_misscall_count"

.field static final CALL_FORWARD_NOTIFICATION:I = 0x6

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_TOKEN:I = -0x1

.field private static final CLOSE_CURSOR_MSG:I = 0x2

.field private static final CONTACT_TOKEN:I = -0x2

.field static final DATA_DISCONNECTED_ROAMING_NOTIFICATION:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field static final IN_CALL_NOTIFICATION:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NotificationMgr"

.field private static final MAX_VM_NUMBER_RETRIES:I = 0x5

.field private static final MISSCALL_COUNT:Ljava/lang/String; = "misscall_count"

.field static final MISSED_CALL_NOTIFICATION:I = 0x1

.field static final MMI_NOTIFICATION:I = 0x3

.field static final MOBILE_DATA_CONNECTED_NOTIFICATION:I = 0xc

.field static final NETWORK_SELECTION_NOTIFICATION:I = 0x4

.field private static final NOTIFICATION_MSG:I = 0x1

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field static final SELECTED_OPERATOR_FAIL_NOTIFICATION:I = 0x8

.field static final SMART_DATA_ROAMING_CONNECTED_NOTIFICATION:I = 0x9

.field static final SMART_DATA_ROAMING_SEARCH_NO_NETWORK_NOTIFICATION:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_INCALL_LEFT_STATUS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_INCALL_TOP_EVENT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_MWI_VIBRATION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_NOTIFICATION_END_CALL:Z = false

.field private static final VM_NUMBER_RETRY_DELAY_MILLIS:I = 0x2710

.field static final VOICEMAIL_NOTIFICATION:I = 0x5

.field private static final VVM_ENGING_DB_URI_SETTING:Ljava/lang/String; = "content://com.tmobile.vvm.application.settingprovider"

.field private static mWorkingHandler:Landroid/os/Handler;

.field private static sMe:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentGlowMode:I

.field private mInCallResId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mRejectCall:Z

.field private mSelectedUnavailableNotify:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStateListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/NotificationMgr$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    sput-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    .line 108
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "date"

    aput-object v3, v0, v5

    const-string v3, "duration"

    aput-object v3, v0, v4

    const-string v3, "type"

    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string v4, "photo_id"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "contact_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "display_name"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "city_id"

    aput-object v4, v0, v3

    :goto_0
    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 142
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x18

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x19

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x39

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x60

    if-eq v0, v3, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x90

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    .line 194
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_LEFT_STATUS:Z

    .line 199
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    const/high16 v3, 0x4000

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    .line 226
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/phone/NotificationMgr;->SUPPORT_MWI_VIBRATION:Z

    .line 372
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v0, v2

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 108
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "number"

    aput-object v3, v0, v1

    const-string v3, "date"

    aput-object v3, v0, v5

    const-string v3, "duration"

    aput-object v3, v0, v4

    const-string v3, "type"

    aput-object v3, v0, v6

    const/4 v3, 0x5

    const-string v4, "photo_id"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "contact_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "display_name"

    aput-object v4, v0, v3

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 142
    goto :goto_1

    :cond_2
    move v0, v2

    .line 194
    goto :goto_2

    :cond_3
    move v0, v2

    .line 199
    goto :goto_3

    :cond_4
    move v0, v2

    .line 226
    goto :goto_4
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 180
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 183
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 188
    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    .line 202
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    .line 231
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 232
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 235
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 237
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 238
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 239
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 240
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->htcConstructor()V

    .line 242
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method static synthetic access$412(Lcom/android/phone/NotificationMgr;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NotificationMgr;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendCityId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cityIdIn"
    .parameter "number"

    .prologue
    .line 2381
    move-object v2, p2

    .line 2382
    .local v2, resultNumber:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_1

    .line 2383
    move-object v0, p1

    .line 2384
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2385
    new-instance v1, Lcom/htc/util/phone/CityIdInfo;

    invoke-direct {v1}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    .line 2386
    .local v1, info:Lcom/htc/util/phone/CityIdInfo;
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 2387
    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/htc/util/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2389
    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2391
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2392
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2393
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2397
    .end local v0           #cityId:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method

.method private cancelHtcNotification(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 2363
    sget-boolean v0, Lcom/android/phone/util/BuildUtils;->NEW_NOTIFICATION:Z

    if-eqz v0, :cond_0

    .line 2364
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyNewHTCLockScreen()V

    .line 2366
    :cond_0
    return-void
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 1169
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1170
    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 1173
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1174
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1177
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    if-eqz v0, :cond_1

    .line 1178
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 1181
    :cond_1
    return-void
.end method

.method private cancelLSNotification()V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 1445
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1741
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1742
    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1744
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1800
    sget-object v1, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1802
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1803
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .parameter "note"

    .prologue
    .line 562
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 563
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 564
    return-void
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 1910
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1911
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1912
    .local v0, height:I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v10, 0x0

    .line 1917
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1920
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x2080702

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1922
    .local v2, dFrame:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f0c00f2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v3, v9

    .line 1923
    .local v3, fl:I
    const v9, 0x7f0c00f3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 1924
    .local v6, pl:I
    sub-int v9, v3, v6

    div-int/lit8 v8, v9, 0x2

    .line 1927
    .local v8, sl:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10, v10, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1928
    .local v4, frameRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    sub-int v9, v3, v8

    sub-int v10, v3, v8

    invoke-direct {v5, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1930
    .local v5, photoRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1931
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1933
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1934
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1935
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1936
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1938
    invoke-direct {p0, v7, v5, v4, v1}, Lcom/android/phone/NotificationMgr;->getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 1939
    return-object v0
.end method

.method private createViewCallHistoyPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 2402
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 2403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2406
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.ViewCallHistory"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2413
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 2409
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2410
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2411
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 1951
    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1952
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1953
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1955
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1956
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1958
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1959
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1960
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1962
    if-eqz v1, :cond_0

    .line 1963
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1964
    const/4 v1, 0x0

    .line 1966
    :cond_0
    if-eqz v0, :cond_1

    .line 1967
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1968
    const/4 v0, 0x0

    .line 1970
    :cond_1
    if-eqz p2, :cond_2

    .line 1971
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1973
    :cond_2
    return-object v2
.end method

.method public static getDefault()Lcom/android/phone/NotificationMgr;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    return-object v0
.end method

.method private getMaskedCanvas(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "res"
    .parameter "photoRect"
    .parameter "frameRect"
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 2417
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2418
    .local v2, erasePaint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2419
    const v4, 0x2080703

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2420
    .local v1, dMask:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2421
    .local v0, bMask:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2422
    .local v3, maskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2423
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2424
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2425
    invoke-virtual {p4, v0, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2426
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2427
    return-void
.end method

.method private getReflectedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1943
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1944
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1945
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p1

    move v4, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1947
    .local v7, bitmap:Landroid/graphics/Bitmap;
    return-object v7
.end method

.method private getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "photo"
    .parameter "res"

    .prologue
    .line 2060
    const v2, 0x7f0c00f1

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 2061
    .local v0, reflectHeight:I
    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr;->getReflectedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f0200ac

    invoke-direct {p0, p2, v2, v3}, Lcom/android/phone/NotificationMgr;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2063
    .local v1, reflection:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method private getVVMEnabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1202
    const-string v0, "content://com.tmobile.vvm.application.settingprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1203
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1204
    .local v7, result:Z
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "ENABLED"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1206
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    const-string v0, "ENABLED"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v8, :cond_3

    move v7, v8

    .line 1210
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1213
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VVM setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1215
    :cond_2
    return v7

    :cond_3
    move v7, v9

    .line 1208
    goto :goto_0
.end method

.method private glow(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2172
    packed-switch p1, :pswitch_data_0

    .line 2185
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected glow mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->glow(I)V

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 2176
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->glow(I)V

    goto :goto_0

    .line 2172
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private htcConstructor()V
    .locals 3

    .prologue
    .line 2199
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationMgrThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    .line 2201
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2202
    new-instance v0, Lcom/android/phone/NotificationMgr$WorkingHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$WorkingHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->mWorkingHandler:Landroid/os/Handler;

    .line 2204
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    .line 2205
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    .line 248
    sget-object v0, Lcom/android/phone/NotificationMgr;->sMe:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 249
    return-void
.end method

.method private isPhoneInUsed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2288
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v1, :cond_0

    .line 2289
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2292
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1792
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NotificationMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return-void
.end method

.method private notifyHTCLockScreen(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "date"
    .parameter "title"
    .parameter "description"
    .parameter "id"
    .parameter "missedname"
    .parameter "cityId"
    .parameter "missedCount"
    .parameter "photo"

    .prologue
    .line 2316
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-direct {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 2317
    .local v0, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    .line 2323
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020057

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2325
    .local v2, largeIcon:Landroid/graphics/Bitmap;
    if-eqz p9, :cond_0

    .line 2326
    instance-of v3, p9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 2327
    check-cast p9, Landroid/graphics/drawable/BitmapDrawable;

    .end local p9
    invoke-virtual {p9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2328
    const v3, 0x7f020059

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 2333
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 2339
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createViewCallHistoyPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 2340
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_5

    .line 2341
    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDropPendingIntent(Landroid/app/PendingIntent;)V

    .line 2347
    :goto_1
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v3, :cond_1

    .line 2348
    const-string v3, "NotificationMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missedDescription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", missedname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_1
    invoke-virtual {v0, p6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setFrom(Ljava/lang/String;)V

    .line 2351
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setContent(Ljava/lang/String;)V

    .line 2352
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2353
    invoke-virtual {v0, p7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLocation(Ljava/lang/String;)V

    .line 2355
    :cond_2
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, p5, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 2356
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->NEW_NOTIFICATION:Z

    if-eqz v3, :cond_3

    .line 2357
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyNewHTCLockScreen()V

    .line 2359
    :cond_3
    return-void

    .line 2330
    .end local v1           #intent:Landroid/app/PendingIntent;
    .restart local p9
    :cond_4
    const-string v3, "NotificationMgr"

    const-string v4, "notifyHTCLockScreen() photo is not a instance of BitmapDrawable"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2343
    .end local p9
    .restart local v1       #intent:Landroid/app/PendingIntent;
    :cond_5
    const-string v3, "NotificationMgr"

    const-string v4, "notifyHTCLockScreen() createViewCallHistoyPendingIntent = null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyMuteStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1870
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1871
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1872
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1873
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NotificationMgr$StateListener;

    .line 1874
    .local v1, listener:Lcom/android/phone/NotificationMgr$StateListener;
    if-eqz v1, :cond_0

    .line 1875
    invoke-interface {v1, p1}, Lcom/android/phone/NotificationMgr$StateListener;->muteStateChange(Z)V

    .line 1872
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1879
    .end local v0           #index:I
    .end local v1           #listener:Lcom/android/phone/NotificationMgr$StateListener;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method private notifySpeakerStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1858
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1860
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1861
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/NotificationMgr$StateListener;

    .line 1862
    .local v1, listener:Lcom/android/phone/NotificationMgr$StateListener;
    if-eqz v1, :cond_0

    .line 1863
    invoke-interface {v1, p1}, Lcom/android/phone/NotificationMgr$StateListener;->speakerStateChange(Z)V

    .line 1860
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1867
    .end local v0           #index:I
    .end local v1           #listener:Lcom/android/phone/NotificationMgr$StateListener;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method private sendMuteBroadcast(Z)V
    .locals 2
    .parameter "muteOn"

    .prologue
    .line 2214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MUTE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2216
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2217
    return-void
.end method

.method private setLSNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resId"
    .parameter "notificationTitle"
    .parameter "notificationText"

    .prologue
    .line 1451
    const/4 v0, 0x1

    .line 1452
    .local v0, displayTextOnLS:Z
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "setLSNotification with voicemail"

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1454
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_new_message_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1461
    :goto_0
    if-eqz v0, :cond_1

    .line 1462
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1464
    .local v3, largeIcon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 1466
    .local v2, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 1467
    invoke-virtual {v2, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v2, p3}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    .line 1469
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-static {v4, v5, v2}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 1471
    .end local v2           #htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    .end local v3           #largeIcon:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 1456
    :catch_0
    move-exception v1

    .line 1457
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "NotificationMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setupInCallNotificationEndCall(Landroid/widget/RemoteViews;Landroid/app/Notification;)V
    .locals 5
    .parameter "contentView"
    .parameter "notification"

    .prologue
    const/4 v4, 0x0

    .line 2261
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->isPhoneInUsed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2262
    const v3, 0x7f080116

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2264
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.util.contacts.Intent.ACTION_END_CALL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2265
    .local v1, endCallIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2269
    .local v2, pi:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/NotificationButtonAction;

    invoke-direct {v0}, Landroid/app/NotificationButtonAction;-><init>()V

    .line 2270
    .local v0, btnAction:Landroid/app/NotificationButtonAction;
    const v3, 0x7f080117

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 2271
    iput-object v0, p2, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 2273
    sget-boolean v3, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    if-eqz v3, :cond_0

    .line 2274
    iget v3, p2, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x2

    or-int/2addr v3, v4

    iput v3, p2, Landroid/app/Notification;->flags:I

    .line 2277
    .end local v0           #btnAction:Landroid/app/NotificationButtonAction;
    .end local v1           #endCallIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private showNetworkSelection(Ljava/lang/String;)V
    .locals 9
    .parameter "operator"

    .prologue
    const/4 v8, 0x0

    .line 1711
    sget-boolean v5, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v5, :cond_0

    .line 1712
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showNetworkSelection("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1715
    .local v4, titleText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e03b1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, expandedText:Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1719
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1720
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 1721
    const/4 v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1722
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1725
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1728
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.NetworkSetting"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1730
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1732
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1734
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1735
    return-void
.end method

.method private updateContactPhoto(Lcom/android/phone/PhoneUtils$CallerInfoToken;Landroid/widget/RemoteViews;)V
    .locals 7
    .parameter "cit"
    .parameter "contentView"

    .prologue
    const/4 v6, 0x0

    .line 2015
    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_2

    .line 2017
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 2018
    .local v1, photo:Landroid/graphics/Bitmap;
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 2019
    .local v3, reflection:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2021
    .local v4, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 2023
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 2025
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5, v6, v6}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2028
    invoke-direct {p0, v1, v4}, Lcom/android/phone/NotificationMgr;->getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2031
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoSmall:Landroid/graphics/Bitmap;

    .line 2032
    iget-object v5, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->cachedRefPhotoSmall:Landroid/graphics/Bitmap;

    .line 2048
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2049
    const v5, 0x7f08005d

    invoke-virtual {p2, v5, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2051
    :cond_1
    if-eqz v3, :cond_2

    .line 2052
    const v5, 0x7f080115

    invoke-virtual {p2, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2055
    .end local v1           #photo:Landroid/graphics/Bitmap;
    .end local v3           #reflection:Landroid/graphics/Bitmap;
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_2
    return-void

    .line 2035
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    .restart local v3       #reflection:Landroid/graphics/Bitmap;
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_3
    const-string v5, "com.anddroid.contacts.sim"

    iget-object v6, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/CallerInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2037
    .local v0, isSim:Z
    if-eqz v0, :cond_4

    const v2, 0x208025a

    .line 2040
    .local v2, photoRes:I
    :goto_1
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2042
    invoke-direct {p0, v1, v4}, Lcom/android/phone/NotificationMgr;->getSmallReflectionPhoto(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 2037
    .end local v2           #photoRes:I
    :cond_4
    const v2, 0x2080846

    goto :goto_1
.end method

.method private updateGlow(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 2111
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2112
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update glow from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v0, p1, :cond_1

    .line 2115
    iput p1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    .line 2116
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2118
    :cond_1
    return-void
.end method

.method private updateHtcIncallNotification(Ljava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 13
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2296
    const/4 v12, 0x0

    .line 2297
    .local v12, updated:Z
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v10, 0x1

    .line 2298
    .local v10, hasActiveCall:Z
    :goto_0
    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 2299
    .local v8, currentCall:Lcom/android/internal/telephony/Call;
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 2300
    .local v9, currentConn:Lcom/android/internal/telephony/Connection;
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 2301
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 2302
    .local v6, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v6

    .line 2303
    .local v2, chronometerBaseTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 2304
    .local v5, start:Z
    :goto_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 2305
    .local v11, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p1

    .line 2306
    check-cast v0, Landroid/widget/RemoteViews;

    const v1, 0x7f080114

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 2308
    const/4 v12, 0x1

    .line 2311
    .end local v2           #chronometerBaseTime:J
    .end local v5           #start:Z
    .end local v6           #callDurationMsec:J
    .end local v11           #name:Ljava/lang/String;
    :cond_0
    return v12

    .line 2297
    .end local v8           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v9           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v10           #hasActiveCall:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 2298
    .restart local v10       #hasActiveCall:Z
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    goto :goto_1

    .line 2303
    .restart local v2       #chronometerBaseTime:J
    .restart local v6       #callDurationMsec:J
    .restart local v8       #currentCall:Lcom/android/internal/telephony/Call;
    .restart local v9       #currentConn:Lcom/android/internal/telephony/Connection;
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private updateHtcNotificationLine2(Landroid/widget/RemoteViews;J)V
    .locals 8
    .parameter "contentView"
    .parameter "chronometerBaseTimeResult"

    .prologue
    const-wide/16 v2, 0x0

    const v1, 0x7f080114

    const/4 v5, 0x0

    .line 2229
    const/4 v4, 0x0

    .line 2230
    .local v4, expandedViewLine2:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2231
    .local v6, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0e0399

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    .line 2236
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 2247
    :goto_0
    return-void

    .line 2239
    :cond_0
    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    .line 2242
    .local v5, start:Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (%s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-wide v2, p2

    .line 2244
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto :goto_0

    .line 2239
    .end local v5           #start:Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateIncallGlow(ZZ)V
    .locals 2
    .parameter "hasActiveCall"
    .parameter "hasHoldingCall"

    .prologue
    .line 2097
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2098
    .local v1, onlyHoldingCall:Z
    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x12

    .line 2099
    .local v0, glowMode:I
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 2100
    return-void

    .line 2097
    .end local v0           #glowMode:I
    .end local v1           #onlyHoldingCall:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2098
    .restart local v1       #onlyHoldingCall:Z
    :cond_1
    const/16 v0, 0x11

    goto :goto_1
.end method


# virtual methods
.method addStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    :cond_0
    return-void
.end method

.method cancelCallInProgressNotification()V
    .locals 2

    .prologue
    .line 1184
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1185
    const-string v0, "cancelCallInProgressNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1186
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 1193
    :goto_0
    return-void

    .line 1190
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1192
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    const/16 v1, 0x1771

    .line 711
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 714
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 715
    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->cancelHtcNotification(I)V

    .line 716
    return-void
.end method

.method cancelMute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 771
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 773
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->sendMuteBroadcast(Z)V

    .line 777
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->notifyMuteStateChange(Z)V

    .line 778
    return-void
.end method

.method cancelSpeakerphone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 731
    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 734
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->notifySpeakerStateChange(Z)V

    .line 735
    return-void
.end method

.method cleanGlow()V
    .locals 2

    .prologue
    .line 2157
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2158
    const-string v0, "NotificationMgr"

    const-string v1, "clean glow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2161
    return-void
.end method

.method clearSDRNotfication()V
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1685
    return-void
.end method

.method getNumberMissedCalls()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    return v0
.end method

.method getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarMgr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarMgr:Lcom/android/phone/NotificationMgr$StatusBarMgr;

    return-object v0
.end method

.method handleInCallGlow(Z)V
    .locals 7
    .parameter "isPhoneForeground"

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2070
    sget-boolean v4, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    if-eqz v4, :cond_0

    .line 2071
    if-eqz p1, :cond_1

    .line 2072
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4

    .line 2075
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 2076
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 2077
    .local v1, hasHoldingCall:Z
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/phone/NotificationMgr;->updateIncallGlow(ZZ)V

    goto :goto_0

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_2
    move v0, v3

    .line 2075
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_3
    move v1, v3

    .line 2076
    goto :goto_2

    .line 2079
    .end local v0           #hasActiveCall:Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->updateGlow(I)V

    goto :goto_0
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1598
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1599
    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1601
    return-void
.end method

.method hideMobileDataConnected()V
    .locals 2

    .prologue
    .line 1624
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 1625
    const-string v0, "hideMobileDataConnected()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1627
    return-void
.end method

.method hideSmartDataRoamingConnected()V
    .locals 2

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1680
    return-void
.end method

.method hideSmartDataRoamingNoNetwork()V
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1701
    return-void
.end method

.method notifyMissedCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "totalNumber"
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 572
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 574
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 589
    return-void
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 26
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .parameter "cityId"
    .parameter "photo"

    .prologue
    .line 595
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v11

    .line 600
    .local v11, callLogIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v4, :cond_1

    .line 601
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "notifyMissedCall: non-voice-capable device, not posting notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_phone_notification_preview"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v23

    .line 607
    .local v23, preview:Z
    if-eqz v23, :cond_0

    .line 618
    const/16 v24, 0x0

    .line 621
    .local v24, showCityId:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 625
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    move-object/from16 v22, p1

    .line 637
    .local v22, callName:Ljava/lang/String;
    :goto_1
    if-eqz v24, :cond_5

    move-object/from16 v18, p2

    .line 642
    .local v18, missedName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 643
    const v25, 0x7f0e03a5

    .line 644
    .local v25, titleResId:I
    move-object/from16 v10, v22

    .line 652
    .local v10, expandedText:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 653
    .local v9, title:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x108007f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e03a8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v22, v8, v12

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v11}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 664
    .local v3, note:Landroid/app/Notification;
    const-string v4, "NotificationMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- mRejectCall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    if-nez v4, :cond_2

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtils;->setupFlashForMissedCall(Landroid/content/Context;Landroid/app/Notification;)V

    .line 671
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    iput v4, v3, Landroid/app/Notification;->number:I

    .line 672
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "lockscreen_title"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "lockscreen_text"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x1771

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 679
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1771

    if-eqz v24, :cond_7

    move-object/from16 v19, p6

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    move/from16 v20, v0

    move-object/from16 v12, p0

    move-wide/from16 v13, p4

    move-object/from16 v16, v10

    move-object/from16 v21, p7

    invoke-direct/range {v12 .. v21}, Lcom/android/phone/NotificationMgr;->notifyHTCLockScreen(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 627
    .end local v3           #note:Landroid/app/Notification;
    .end local v9           #title:Ljava/lang/CharSequence;
    .end local v10           #expandedText:Ljava/lang/String;
    .end local v18           #missedName:Ljava/lang/String;
    .end local v22           #callName:Ljava/lang/String;
    .end local v25           #titleResId:I
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->appendCityId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 631
    .restart local v22       #callName:Ljava/lang/String;
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 635
    .end local v22           #callName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e022b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #callName:Ljava/lang/String;
    goto/16 :goto_1

    :cond_5
    move-object/from16 v18, v22

    .line 637
    goto/16 :goto_2

    .line 646
    .restart local v18       #missedName:Ljava/lang/String;
    :cond_6
    const v25, 0x7f0e03a6

    .line 647
    .restart local v25       #titleResId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e03a7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #expandedText:Ljava/lang/String;
    goto/16 :goto_3

    .line 679
    .restart local v3       #note:Landroid/app/Notification;
    .restart local v9       #title:Ljava/lang/CharSequence;
    :cond_7
    const-string v19, ""

    goto :goto_4
.end method

.method notifyMute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 756
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e047b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 759
    iput-boolean v6, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 761
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->sendMuteBroadcast(Z)V

    .line 765
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->notifyMuteStateChange(Z)V

    .line 766
    return-void
.end method

.method public notifyNewHTCLockScreen()V
    .locals 5

    .prologue
    .line 2369
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.action.update_misscall_count"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2370
    .local v0, countIntent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 2371
    .local v1, missedCallCount:I
    const-string v2, "misscall_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2372
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2373
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_0

    .line 2374
    const-string v2, "NotificationMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast missed call count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/phone/notification/PhoneNotification;->updatePhoneShortcutWithMissedCall(Landroid/content/Context;I)V

    .line 2378
    return-void
.end method

.method notifyRejectMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"
    .parameter "cityId"
    .parameter "photo"

    .prologue
    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    .line 692
    invoke-virtual/range {p0 .. p7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mRejectCall:Z

    .line 695
    return-void
.end method

.method notifySpeakerphone()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 719
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0e047a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 722
    iput-boolean v6, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 725
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->notifySpeakerStateChange(Z)V

    .line 726
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 1135
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1136
    const-string v1, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1138
    :cond_0
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_1

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1140
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- ci: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1143
    :cond_2
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/android/phone/NotificationMgr;->updateHtcIncallNotification(Ljava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 1144
    .local v0, updated:Z
    :goto_0
    if-nez v0, :cond_5

    .line 1145
    if-ne p2, p0, :cond_7

    .line 1151
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_3

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- compactName is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1157
    :cond_3
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_4

    .line 1158
    const-string v1, "- updating notification after query complete..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1159
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1166
    :cond_5
    :goto_1
    return-void

    .line 1143
    .end local v0           #updated:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1161
    .restart local v0       #updated:Z
    :cond_7
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method pauseGlow()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 2126
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v2, v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 2128
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2129
    const-string v0, "NotificationMgr"

    const-string v1, "pauseGlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->glow(I)V

    .line 2134
    :cond_1
    return-void
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "notifyId"
    .parameter "msg"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1788
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1789
    return-void
.end method

.method removeStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStateListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1907
    :cond_0
    return-void
.end method

.method resumeGlow()V
    .locals 3

    .prologue
    .line 2142
    const/16 v0, 0x10

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    if-eq v0, v1, :cond_1

    .line 2143
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 2144
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeGlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mCurrentGlowMode:I

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->glow(I)V

    .line 2148
    :cond_1
    return-void
.end method

.method showCWDataConnected()V
    .locals 8

    .prologue
    const v7, 0x7f0200bb

    .line 1630
    const-string v4, "showCWDataConnected()..."

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1632
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v1, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WifiSettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1635
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1644
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1646
    .local v3, pi:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1647
    .local v2, notification:Landroid/app/Notification;
    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 1648
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x10900c9

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1650
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v4, 0x1020006

    invoke-virtual {v0, v4, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1652
    const v4, 0x1020064

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1653
    const v4, 0x1020016

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1655
    const v4, 0x1020046

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01a1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1657
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1658
    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1659
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1660
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1661
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 10

    .prologue
    .line 1578
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1579
    const-string v1, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1581
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1582
    .local v8, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1584
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e02db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e02de

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1591
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1592
    return-void
.end method

.method showMobileDataConnected(Ljava/lang/String;)V
    .locals 9
    .parameter "apnName"

    .prologue
    .line 1605
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 1606
    const-string v1, "showMobileDataConnected()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1608
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v8, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1612
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0200b9

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1619
    .local v0, notification:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1620
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1621
    return-void
.end method

.method showSmartDataRoamingConnected()V
    .locals 10

    .prologue
    .line 1667
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1669
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0096

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0097

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1674
    .local v0, notification:Landroid/app/Notification;
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1675
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1676
    return-void
.end method

.method showSmartDataRoamingNoNetwork()V
    .locals 10

    .prologue
    .line 1689
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1691
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0098

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0099

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1696
    .local v0, notification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1697
    return-void
.end method

.method updateCfi(Z)V
    .locals 16
    .parameter "visible"

    .prologue
    .line 1481
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_0

    .line 1482
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateCfi(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1483
    :cond_0
    if-eqz p1, :cond_2

    .line 1496
    const/4 v9, 0x1

    .line 1498
    .local v9, showExpandedNotification:Z
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v5, intent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1500
    const-string v12, "com.android.phone"

    const-string v13, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    new-instance v6, Landroid/app/Notification;

    const v12, 0x7f0200bf

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-direct {v6, v12, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1509
    .local v6, notification:Landroid/app/Notification;
    new-instance v12, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f03005b

    invoke-direct {v12, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1511
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x1020006

    const v14, 0x1080085

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1513
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080051

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e029c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1515
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080151

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e029f

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1517
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080117

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e00b2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1520
    :try_start_0
    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1522
    .local v8, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getCFUNumber()Ljava/lang/String;

    move-result-object v4

    .line 1523
    .local v4, cfuNumberString:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    .line 1525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/PhoneUtils;->updatePhoneNumber(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1527
    const/4 v12, 0x1

    new-array v3, v12, [Ljava/lang/CharSequence;

    .line 1528
    .local v3, cfuNumber:[Ljava/lang/CharSequence;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v3, v12

    .line 1529
    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "{0}"

    aput-object v13, v1, v12

    .line 1530
    .local v1, SRC_TAGS:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e00b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1532
    .local v10, template:Ljava/lang/CharSequence;
    invoke-static {v10, v1, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1533
    .local v11, text:Ljava/lang/CharSequence;
    iget-object v12, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v13, 0x7f080151

    invoke-virtual {v12, v13, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    .end local v1           #SRC_TAGS:[Ljava/lang/String;
    .end local v3           #cfuNumber:[Ljava/lang/CharSequence;
    .end local v4           #cfuNumberString:Ljava/lang/String;
    .end local v8           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    .end local v10           #template:Ljava/lang/CharSequence;
    .end local v11           #text:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v5, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1539
    new-instance v12, Landroid/app/NotificationButtonAction;

    invoke-direct {v12}, Landroid/app/NotificationButtonAction;-><init>()V

    iput-object v12, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    .line 1540
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.htc.phone.callforwarding"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v2, bi:Landroid/content/Intent;
    const-string v12, "ACTION"

    const/4 v13, 0x4

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string v12, "ENABLE"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1545
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1546
    .local v7, pbi:Landroid/app/PendingIntent;
    iget-object v12, v6, Landroid/app/Notification;->buttonAction:Landroid/app/NotificationButtonAction;

    const v13, 0x7f080117

    invoke-virtual {v12, v13, v7}, Landroid/app/NotificationButtonAction;->add(ILandroid/app/PendingIntent;)Z

    .line 1565
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 1567
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x6

    invoke-virtual {v12, v13, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1571
    .end local v2           #bi:Landroid/content/Intent;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #pbi:Landroid/app/PendingIntent;
    .end local v9           #showExpandedNotification:Z
    :goto_1
    return-void

    .line 1569
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 1535
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #notification:Landroid/app/Notification;
    .restart local v9       #showExpandedNotification:Z
    :catch_0
    move-exception v12

    goto :goto_0
.end method

.method updateInCallNotification()V
    .locals 3

    .prologue
    .line 802
    sget-boolean v2, Lcom/android/phone/util/VoiceRecorderHelper;->IS_INCALL_RECORDING_ENABLE:Z

    if-eqz v2, :cond_1

    .line 803
    const/4 v1, 0x0

    .line 804
    .local v1, isRecording:Z
    invoke-static {}, Lcom/android/phone/util/VoiceRecorderHelper;->getInstance()Lcom/android/phone/util/VoiceRecorderHelper;

    move-result-object v0

    .line 805
    .local v0, helper:Lcom/android/phone/util/VoiceRecorderHelper;
    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Lcom/android/phone/util/VoiceRecorderHelper;->isRecording()Z

    move-result v1

    .line 808
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 812
    .end local v0           #helper:Lcom/android/phone/util/VoiceRecorderHelper;
    .end local v1           #isRecording:Z
    :goto_0
    return-void

    .line 810
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    goto :goto_0
.end method

.method public updateInCallNotification(Z)V
    .locals 29
    .parameter "isRecording"

    .prologue
    .line 820
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v4, :cond_1

    .line 821
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "- non-voice-capable device; suppressing notification."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_2

    .line 827
    const-string v4, "updateInCallNotification()..."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v8, :cond_3

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    goto :goto_0

    .line 834
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v25

    .line 836
    .local v25, hasRingingCall:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v23

    .line 837
    .local v23, hasActiveCall:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v24

    .line 842
    .local v24, hasHoldingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v21

    .line 843
    .local v21, enhancedVoicePrivacy:Z
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_4

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 846
    :cond_4
    if-eqz v25, :cond_10

    .line 851
    const v28, 0x7f0200bc

    .line 881
    .local v28, resId:I
    :goto_1
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_5

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- Updating status bar icon: resId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 883
    :cond_5
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v22, v0

    .line 900
    .local v22, expandedViewIcon:I
    if-eqz v23, :cond_16

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .line 906
    .local v19, currentCall:Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v20

    .line 908
    .local v20, currentConn:Lcom/android/internal/telephony/Connection;
    new-instance v27, Landroid/app/Notification;

    invoke-direct/range {v27 .. v27}, Landroid/app/Notification;-><init>()V

    .line 909
    .local v27, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move-object/from16 v0, v27

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 910
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v4, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 919
    .local v26, inCallPendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, contentView:Landroid/widget/RemoteViews;
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_TOP_EVENT:Z

    if-eqz v4, :cond_17

    .line 931
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f030048

    invoke-direct {v3, v4, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 942
    .restart local v3       #contentView:Landroid/widget/RemoteViews;
    :goto_3
    const v4, 0x7f0800b1

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 947
    const-wide/16 v16, 0x0

    .line 951
    .local v16, chronometerBaseTimeResult:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v4, v0, v1, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v18

    .line 954
    .local v18, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_6

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/android/phone/NotificationMgr;->updateContactPhoto(Lcom/android/phone/PhoneUtils$CallerInfoToken;Landroid/widget/RemoteViews;)V

    .line 962
    :cond_6
    if-eqz v20, :cond_1c

    .line 972
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v14

    .line 973
    .local v14, callDurationMsec:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v5, v8, v14

    .line 974
    .local v5, chronometerBaseTime:J
    move-wide/from16 v16, v5

    .line 987
    if-eqz v24, :cond_19

    if-nez v23, :cond_19

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0e03aa

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1010
    .local v7, expandedViewLine1:Ljava/lang/String;
    :goto_4
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_7

    .line 1011
    const-string v4, "- Updating expanded view: line 1 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1018
    :cond_7
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_1b

    .line 1019
    const v4, 0x7f080113

    invoke-virtual {v3, v4, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1035
    .end local v5           #chronometerBaseTime:J
    .end local v7           #expandedViewLine1:Ljava/lang/String;
    .end local v14           #callDurationMsec:J
    :cond_8
    :goto_5
    const-string v12, ""

    .line 1040
    .local v12, expandedViewLine2:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0e039e

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1058
    :goto_6
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_9

    .line 1059
    const-string v4, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1061
    :cond_9
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_1e

    if-eqz v23, :cond_1e

    .line 1062
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v3, v1, v2}, Lcom/android/phone/NotificationMgr;->updateHtcNotificationLine2(Landroid/widget/RemoteViews;J)V

    .line 1076
    :goto_7
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_a

    .line 1077
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/phone/NotificationMgr;->setupInCallNotificationEndCall(Landroid/widget/RemoteViews;Landroid/app/Notification;)V

    .line 1080
    :cond_a
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_INCALL_LEFT_STATUS:Z

    if-eqz v4, :cond_b

    if-eqz v23, :cond_b

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_b

    .line 1084
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "chronometer_basetime"

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1090
    :cond_b
    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1100
    if-eqz v25, :cond_e

    .line 1101
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_c

    const-string v4, "- Using hi-pri notification for ringing call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1105
    :cond_c
    move-object/from16 v0, v27

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v27

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1112
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- Setting fullScreenIntent: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1113
    :cond_d
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1114
    sget-boolean v4, Lcom/android/phone/util/BuildUtils$CharmIndicator;->ENABLED:Z

    if-eqz v4, :cond_e

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v8, 0x6

    move-object/from16 v0, v27

    invoke-static {v4, v0, v8}, Lcom/android/phone/PhoneUtils;->flashCharmIndicator(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 1119
    :cond_e
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_f

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1121
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v4, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 853
    .end local v3           #contentView:Landroid/widget/RemoteViews;
    .end local v12           #expandedViewLine2:Ljava/lang/String;
    .end local v16           #chronometerBaseTimeResult:J
    .end local v18           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v19           #currentCall:Lcom/android/internal/telephony/Call;
    .end local v20           #currentConn:Lcom/android/internal/telephony/Connection;
    .end local v22           #expandedViewIcon:I
    .end local v26           #inCallPendingIntent:Landroid/app/PendingIntent;
    .end local v27           #notification:Landroid/app/Notification;
    .end local v28           #resId:I
    :cond_10
    if-nez v23, :cond_12

    if-eqz v24, :cond_12

    .line 855
    if-eqz v21, :cond_11

    .line 856
    const v28, 0x7f0200c5

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 858
    .end local v28           #resId:I
    :cond_11
    const v28, 0x7f0200c0

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 860
    .end local v28           #resId:I
    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 862
    if-eqz v21, :cond_13

    .line 863
    const v28, 0x7f0200c4

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 865
    .end local v28           #resId:I
    :cond_13
    const v28, 0x7f0200bd

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 868
    .end local v28           #resId:I
    :cond_14
    if-eqz v21, :cond_15

    .line 869
    const v28, 0x7f0200c3

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 871
    .end local v28           #resId:I
    :cond_15
    const v28, 0x7f0200bc

    .restart local v28       #resId:I
    goto/16 :goto_1

    .line 904
    .restart local v22       #expandedViewIcon:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    .restart local v19       #currentCall:Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 933
    .restart local v3       #contentView:Landroid/widget/RemoteViews;
    .restart local v20       #currentConn:Lcom/android/internal/telephony/Connection;
    .restart local v26       #inCallPendingIntent:Landroid/app/PendingIntent;
    .restart local v27       #notification:Landroid/app/Notification;
    :cond_17
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_18

    .line 934
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f030047

    invoke-direct {v3, v4, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3       #contentView:Landroid/widget/RemoteViews;
    goto/16 :goto_3

    .line 937
    :cond_18
    new-instance v3, Landroid/widget/RemoteViews;

    .end local v3           #contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f030046

    invoke-direct {v3, v4, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v3       #contentView:Landroid/widget/RemoteViews;
    goto/16 :goto_3

    .line 996
    .restart local v5       #chronometerBaseTime:J
    .restart local v14       #callDurationMsec:J
    .restart local v16       #chronometerBaseTimeResult:J
    .restart local v18       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_19
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->SUPPORT_NOTIFICATION_END_CALL:Z

    if-eqz v4, :cond_1a

    .line 1000
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 1004
    .end local v7           #expandedViewLine1:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0e03a9

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #expandedViewLine1:Ljava/lang/String;
    goto/16 :goto_4

    .line 1022
    :cond_1b
    const v4, 0x7f080113

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_5

    .line 1026
    .end local v5           #chronometerBaseTime:J
    .end local v7           #expandedViewLine1:Ljava/lang/String;
    .end local v14           #callDurationMsec:J
    :cond_1c
    sget-boolean v4, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v4, :cond_8

    .line 1027
    const-string v4, "NotificationMgr"

    const-string v8, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1050
    .restart local v12       #expandedViewLine2:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 1070
    :cond_1e
    const v9, 0x7f080114

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 1072
    const v9, 0x7f080114

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_7
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 787
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    .line 794
    :goto_0
    return-void

    .line 790
    :cond_1
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_2

    .line 791
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 792
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(I)V
    .locals 16
    .parameter "count"

    .prologue
    .line 1228
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_0

    .line 1229
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateMwi(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1231
    :cond_0
    if-eqz p1, :cond_17

    .line 1233
    const v8, 0x108007e

    .line 1246
    .local v8, resId:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03ac

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1250
    .local v4, notificationString:Ljava/lang/String;
    if-ltz p1, :cond_1

    const/16 v12, 0xff

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    :cond_1
    const-string v12, "VIRGI001"

    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e00dd

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1267
    .local v6, notificationTitle:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v11

    .line 1268
    .local v11, vmNumber:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_2

    .line 1269
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "- got vm number: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1286
    :cond_2
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1287
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_3

    .line 1288
    const-string v12, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1301
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v12, :cond_9

    .line 1302
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_4

    .line 1303
    const-string v12, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1304
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v13, 0x2710

    invoke-virtual {v12, v13, v14}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1440
    .end local v4           #notificationString:Ljava/lang/String;
    .end local v6           #notificationTitle:Ljava/lang/String;
    .end local v8           #resId:I
    .end local v11           #vmNumber:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 1256
    .restart local v4       #notificationString:Ljava/lang/String;
    .restart local v8       #resId:I
    :cond_6
    if-gez p1, :cond_8

    .line 1257
    const-string v12, "HTC__001"

    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e00dd

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto :goto_0

    .line 1261
    .end local v6           #notificationTitle:Ljava/lang/String;
    :cond_7
    move-object v6, v4

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 1263
    .end local v6           #notificationTitle:Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #notificationTitle:Ljava/lang/String;
    goto/16 :goto_0

    .line 1308
    .restart local v11       #vmNumber:Ljava/lang/String;
    :cond_9
    const-string v12, "NotificationMgr"

    const-string v13, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v10

    .line 1317
    .local v10, vmCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03ad

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1319
    .local v9, titleFormat:Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1323
    .end local v9           #titleFormat:Ljava/lang/String;
    .end local v10           #vmCount:I
    :cond_b
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03af

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1331
    .local v5, notificationText:Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL"

    const-string v13, "voicemail"

    const-string v14, ""

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1332
    .local v1, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1334
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v3, v8, v12, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1340
    .local v3, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12, v6, v5, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1345
    iget v12, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v3, Landroid/app/Notification;->defaults:I

    .line 1346
    iget v12, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getVoiceMail(Landroid/content/Context;)Z

    move-result v2

    .line 1349
    .local v2, needFlash:Z
    if-eqz v2, :cond_c

    .line 1350
    sget-boolean v12, Lcom/android/phone/PhoneUtils;->SUPPORT_JOGBALL:Z

    if-eqz v12, :cond_11

    .line 1351
    iget v12, v3, Landroid/app/Notification;->flags:I

    const/high16 v13, 0x1

    or-int/2addr v12, v13

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1352
    const/4 v12, 0x7

    iput v12, v3, Landroid/app/Notification;->jogMode:I

    .line 1365
    :cond_c
    :goto_3
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_d

    .line 1366
    move/from16 v0, p1

    iput v0, v3, Landroid/app/Notification;->number:I

    .line 1368
    :cond_d
    iget-object v12, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "lockscreen_title"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v13, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "lockscreen_text"

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v12, ""

    :goto_4
    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->SUPPORT_MWI_VIBRATION:Z

    if-eqz v12, :cond_e

    .line 1377
    const-string v12, "Support MWI with vibration"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1378
    iget v12, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v3, Landroid/app/Notification;->defaults:I

    .line 1380
    :cond_e
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_f

    .line 1381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "project flag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", lan falg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1387
    :cond_f
    sget-boolean v12, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    if-eqz v12, :cond_15

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->getVVMEnabled()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 1392
    sget-boolean v12, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v12, :cond_5

    .line 1393
    const-string v12, "VVM is enabled, don\'t show notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1326
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #needFlash:Z
    .end local v3           #notification:Landroid/app/Notification;
    .end local v5           #notificationText:Ljava/lang/String;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v13, 0x7f0e03ae

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationText:Ljava/lang/String;
    goto/16 :goto_2

    .line 1355
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #needFlash:Z
    .restart local v3       #notification:Landroid/app/Notification;
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    :cond_11
    iget v12, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 1356
    const v12, -0xff0100

    iput v12, v3, Landroid/app/Notification;->ledARGB:I

    .line 1357
    const/16 v12, 0x1f4

    iput v12, v3, Landroid/app/Notification;->ledOnMS:I

    .line 1358
    const/16 v12, 0x7d0

    iput v12, v3, Landroid/app/Notification;->ledOffMS:I

    goto/16 :goto_3

    :cond_12
    move-object v12, v5

    .line 1370
    goto/16 :goto_4

    .line 1398
    :cond_13
    sget-object v13, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    monitor-enter v13

    .line 1399
    :try_start_0
    invoke-static {v3}, Lcom/android/phone/VvmBroadcastReceiver;->SetMwiNotification(Landroid/app/Notification;)V

    .line 1400
    invoke-static {}, Lcom/android/phone/VvmBroadcastReceiver;->IsVvmOn()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1401
    const-string v12, "If VVM is on, Do not show MWI notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1402
    monitor-exit v13

    goto/16 :goto_1

    .line 1411
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1405
    :cond_14
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x5

    invoke-virtual {v12, v14, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1406
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/phone/NotificationMgr;->setLSNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 1410
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1415
    :cond_15
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_16

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v13, 0x21

    if-ne v12, v13, :cond_5

    .line 1417
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x5

    invoke-virtual {v12, v13, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1418
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/phone/NotificationMgr;->setLSNotification(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1424
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #needFlash:Z
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #notificationString:Ljava/lang/String;
    .end local v5           #notificationText:Ljava/lang/String;
    .end local v6           #notificationTitle:Ljava/lang/String;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #resId:I
    .end local v11           #vmNumber:Ljava/lang/String;
    :cond_17
    sget-boolean v12, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    if-eqz v12, :cond_18

    .line 1425
    sget-object v13, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    monitor-enter v13

    .line 1426
    const/4 v12, 0x0

    :try_start_2
    invoke-static {v12}, Lcom/android/phone/VvmBroadcastReceiver;->SetMwiNotification(Landroid/app/Notification;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1428
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelLSNotification()V

    .line 1429
    monitor-exit v13

    goto/16 :goto_1

    .line 1430
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v12

    .line 1434
    :cond_18
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_19

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v13, 0x94

    if-ne v12, v13, :cond_5

    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v13, 0x21

    if-ne v12, v13, :cond_5

    .line 1436
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->cancelLSNotification()V

    goto/16 :goto_1
.end method

.method updateNetworkSelection(I)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v4, 0x1

    .line 1753
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1757
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1758
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "network_selection_name_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1759
    .local v0, networkSelection:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    const-string v2, "network_selection_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    :cond_0
    sget-boolean v2, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v2, :cond_1

    .line 1764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkSelection()...state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1767
    :cond_1
    if-ne p1, v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1769
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v2, :cond_2

    .line 1770
    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;)V

    .line 1771
    iput-boolean v4, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1780
    .end local v0           #networkSelection:Ljava/lang/String;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 1774
    .restart local v0       #networkSelection:Ljava/lang/String;
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_3
    iget-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v2, :cond_2

    .line 1775
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1776
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 337
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 341
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v8, where:Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2

    .line 355
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "Phone is idle, canceling notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 364
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 369
    return-void

    .line 359
    :cond_2
    sget-boolean v0, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v0, :cond_3

    .line 360
    const-string v0, "Phone is offhook, updating notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0
.end method

.method updateSpeakerNotification()V
    .locals 3

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 744
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "updateSpeakerNotification: speaker ON"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_1
    sget-boolean v1, Lcom/android/phone/NotificationMgr;->DBG:Z

    if-eqz v1, :cond_2

    .line 750
    const-string v1, "updateSpeakerNotification: speaker OFF (or not offhook)"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
