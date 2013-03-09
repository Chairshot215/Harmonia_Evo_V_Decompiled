.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartSyncScreenOnOffTimeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;,
        Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    }
.end annotation


# static fields
.field private static DAYS_OF_WEEK:I = 0x0

.field private static DBCollectDataNumbert:I = 0x0

.field private static DayAlarmSetting:[Landroid/app/PendingIntent; = null

.field public static final HTCPREF_SMARTSYNC_ENABLE:Ljava/lang/String; = "sleep_mode_mode"

.field private static final HTC_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_ORANGE_UK:Z = false

.field public static final KEY_SET_POWER_MODE:Ljava/lang/String; = "set_powermode"

.field private static ONE_DAY_TOTAL_HOURS:I = 0x0

.field private static POWER_ON_OFF_TRIGGER_WRITE_DB:J = 0x0L

.field private static final POWER_SAVER_MODE_0:I = 0x0

.field private static final POWER_SAVER_MODE_1:I = 0x1

.field private static final POWER_SAVER_MODE_2:I = 0x2

.field private static SCREEN_OFF_TIME_FOR_DECIDE_TURN_ON_OFF:J

.field private static SCREEN_OFF_TIME_FOR_TURN_OFF_AUTO_SYNC:J

.field private static SCREEN_ON_OFF_TRIGGER_WRITE_SCREEN_ONOFF_ARRAYLIST:J

.field private static ScreenOnOffDBCollectDataNumbert:I

.field private static SystemScreenOnStatus:Z

.field private static TAG:Ljava/lang/String;

.field private static TRIGGER_SCREEN_ONOFF_ARRAYLIST_TO_DB:J

.field private static USERNIGHT_TIMEEND:I

.field private static USERNIGHT_TIMESTART:I

.field private static USER_ALARM_HOUR:I

.field private static USER_ALARM_MINUTES:I

.field private static User_Setting_Mode:I

.field private static User_WeekOfDays:J

.field private static chsBool:[Z

.field private static dbScreenOnOffTimeLastData:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

.field private static mContext:Landroid/content/Context;

.field private static mEndhour:I

.field private static mEndminute:I

.field private static mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;

.field private static mPendingIntent_OnlyTurnOffWifi:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOffMobile:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOffMobilebycheck:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOffWifi:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOffWifibycheck:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

.field private static mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

.field private static mScreenOffInfor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;",
            ">;"
        }
    .end annotation
.end field

.field private static mScreenOffStayTime:J

.field private static mSmartSyncServiceStartTime:J

.field private static mSmartSyncUpdateScreenDataEndTime:J

.field private static mSmartSyncUpdateScreenDataStartTime:J

.field private static mStarthour:I

.field private static mStartminute:I

.field private static mSystemAlarmInfor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemLinkStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateLinkStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

.field private static mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;",
            ">;"
        }
    .end annotation
.end field

.field private static mWriteLinkStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEFAULT_SLEEP_MODE:I

.field GoldenTalbeInitial:[[I

.field private POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

.field private POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

.field private POWER_SAVER_WIRELESS_SLEEP_MODE_CHANGED:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING:Ljava/lang/String;

.field private SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWERON:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

.field private SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

.field private SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

.field private SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

.field private SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

.field private mNewPower35:Z

.field mServiceScreenOnTimeTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;

.field mServiceStartTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;

.field mServiceUpdateGoldenTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;

.field mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

.field private mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/16 v7, 0x100

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 67
    const-string v2, "SmartSyncScreenOnOffTimeReceiver"

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    .line 69
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 70
    sput-wide v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    .line 73
    const-wide/32 v2, 0xdbba0

    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_OFF_TIME_FOR_TURN_OFF_AUTO_SYNC:J

    .line 75
    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWER_ON_OFF_TRIGGER_WRITE_DB:J

    .line 77
    const-wide/32 v2, 0xea60

    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_ON_OFF_TRIGGER_WRITE_SCREEN_ONOFF_ARRAYLIST:J

    .line 79
    const-wide/32 v2, 0xdbba00

    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TRIGGER_SCREEN_ONOFF_ARRAYLIST_TO_DB:J

    .line 81
    const-wide/32 v2, 0x360420

    sput-wide v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_OFF_TIME_FOR_DECIDE_TURN_ON_OFF:J

    .line 88
    sput v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    .line 89
    sput-wide v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_WeekOfDays:J

    .line 90
    sput v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    .line 91
    sput v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStartminute:I

    .line 92
    sput v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    .line 93
    sput v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndminute:I

    .line 94
    const/4 v2, 0x7

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DAYS_OF_WEEK:I

    .line 98
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifi:Landroid/app/PendingIntent;

    .line 99
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobile:Landroid/app/PendingIntent;

    .line 100
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    .line 101
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    .line 102
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifibycheck:Landroid/app/PendingIntent;

    .line 103
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobilebycheck:Landroid/app/PendingIntent;

    .line 104
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_OnlyTurnOffWifi:Landroid/app/PendingIntent;

    .line 107
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;

    .line 111
    sput v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    .line 113
    const/4 v2, 0x7

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    .line 115
    const/4 v2, 0x6

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_HOUR:I

    .line 116
    sput v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_MINUTES:I

    .line 118
    const/16 v2, 0x18

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    .line 120
    sget v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    mul-int/lit8 v2, v2, 0x5

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DBCollectDataNumbert:I

    .line 122
    const/16 v2, 0x3e8

    sput v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ScreenOnOffDBCollectDataNumbert:I

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    .line 131
    const/4 v2, 0x7

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->chsBool:[Z

    .line 132
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->dbScreenOnOffTimeLastData:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 136
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/PendingIntent;

    aput-object v4, v2, v1

    aput-object v4, v2, v0

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    sput-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    .line 152
    sput-wide v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncServiceStartTime:J

    .line 153
    sput-wide v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataStartTime:J

    .line 154
    sput-wide v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataEndTime:J

    .line 155
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 157
    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SystemScreenOnStatus:Z

    .line 199
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x71

    if-ne v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->IS_ORANGE_UK:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    .line 131
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    .line 40
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    .line 41
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

    .line 42
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

    .line 44
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    .line 45
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWERON"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWERON:Ljava/lang/String;

    .line 47
    const-string v2, "SMARTSYNC_TURN_OFF_WIFI"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

    .line 48
    const-string v2, "SMARTSYNC_TURN_OFF_MOBILE"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 49
    const-string v2, "SMARTSYNC_TURN_ON_WIFI"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

    .line 50
    const-string v2, "SMARTSYNC_TURN_ON_MOBILE"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

    .line 52
    const-string v2, "SMARTSYNC_TURN_OFF_WIFI_BY_CHECK"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

    .line 53
    const-string v2, "SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

    .line 55
    const-string v2, "SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

    .line 56
    const-string v2, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    .line 57
    const-string v2, "SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_BROADCAST_TIME_CONFIG_SETTING:Ljava/lang/String;

    .line 58
    const-string v2, "SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING:Ljava/lang/String;

    .line 60
    const-string v2, "com.android.settings.action.WIRELESS_SLEEP_MODE_CHANGED"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWER_SAVER_WIRELESS_SLEEP_MODE_CHANGED:Ljava/lang/String;

    .line 64
    const-string v2, "POWERSAVERMODE_TURN_OFF_WIFI"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    .line 65
    const-string v2, "POWERSAVERMODE_TURN_OFF_MOBILE"

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    .line 140
    const/16 v2, 0x18

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v1

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    aput-object v3, v2, v0

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v4, v5, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_4

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v5, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v5, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v5, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v5, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v7

    const/16 v3, 0x10

    new-array v4, v5, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v5, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v3

    const/16 v3, 0x12

    new-array v4, v5, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v3

    const/16 v3, 0x13

    new-array v4, v5, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v3

    const/16 v3, 0x14

    new-array v4, v5, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v3

    const/16 v3, 0x15

    new-array v4, v5, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v3

    const/16 v3, 0x16

    new-array v4, v5, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v3

    const/16 v3, 0x17

    new-array v4, v5, [I

    fill-array-data v4, :array_17

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    .line 148
    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceStartTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;

    .line 149
    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateGoldenTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;

    .line 150
    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    .line 151
    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceScreenOnTimeTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;

    .line 159
    iput-object v6, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    .line 203
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x8a

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v7, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x88

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9e

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mNewPower35:Z

    .line 213
    iput v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DEFAULT_SLEEP_MODE:I

    .line 667
    return-void

    :cond_1
    move v0, v1

    .line 203
    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x16t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    .locals 11
    .parameter "inScreenOnOffTime"

    .prologue
    .line 1652
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 1655
    new-instance v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1656
    .local v4, mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    check-cast v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    .line 1657
    .restart local v4       #mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    iget v8, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    if-ne v7, v8, :cond_3

    .line 1660
    iget v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1661
    iget-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1793
    .end local v4           #mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :goto_0
    return-void

    .line 1664
    .restart local v4       #mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    mul-int/lit8 v6, v7, 0x3c

    .line 1665
    .local v6, tominutes:I
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v8

    add-int v0, v7, v8

    .line 1666
    .local v0, fromminutes:I
    sub-int v7, v6, v0

    const/16 v8, 0x3c

    if-ge v7, v8, :cond_1

    .line 1668
    iget-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    sub-int v9, v6, v0

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1672
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1673
    .local v2, mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1674
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    const v9, 0xea60

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1675
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1679
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_1
    iget-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x3c

    sub-int/2addr v9, v0

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1682
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    sub-int v7, v6, v0

    div-int/lit8 v7, v7, 0x3c

    if-ge v1, v7, :cond_2

    .line 1684
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1685
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1686
    const-wide/32 v7, 0x36ee80

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1687
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1691
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_2
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1692
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1693
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    const v9, 0xea60

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1694
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1702
    .end local v0           #fromminutes:I
    .end local v1           #index:I
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    .end local v6           #tominutes:I
    :cond_3
    new-instance v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1703
    .local v5, mDiffNewTime:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    iput v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1704
    iget v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 1706
    iget-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1707
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1711
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    mul-int/lit8 v6, v7, 0x3c

    .line 1712
    .restart local v6       #tominutes:I
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v8

    add-int v0, v7, v8

    .line 1713
    .restart local v0       #fromminutes:I
    sub-int v7, v6, v0

    const/16 v8, 0x3c

    if-ge v7, v8, :cond_5

    .line 1715
    iget-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    sub-int v9, v6, v0

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1716
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1720
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1721
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    const v9, 0xea60

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1722
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1726
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_5
    iget-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x3c

    sub-int/2addr v9, v0

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1727
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_2
    sub-int v7, v6, v0

    div-int/lit8 v7, v7, 0x3c

    if-ge v1, v7, :cond_6

    .line 1731
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1732
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1733
    const-wide/32 v7, 0x36ee80

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1734
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1738
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_6
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1739
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1740
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    const v9, 0xea60

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v10

    mul-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1741
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1749
    .end local v0           #fromminutes:I
    .end local v1           #index:I
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    .end local v4           #mCheck:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    .end local v5           #mDiffNewTime:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    .end local v6           #tominutes:I
    :cond_7
    new-instance v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1750
    .local v3, mAddnew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    iput v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1751
    iget v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v8

    if-ne v7, v8, :cond_8

    .line 1753
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1754
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1758
    :cond_8
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    mul-int/lit8 v6, v7, 0x3c

    .line 1759
    .restart local v6       #tominutes:I
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v8

    add-int v0, v7, v8

    .line 1761
    .restart local v0       #fromminutes:I
    sub-int v7, v6, v0

    const/16 v8, 0x3c

    if-ge v7, v8, :cond_9

    .line 1763
    iget-wide v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    sub-int v9, v6, v0

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1764
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1768
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1769
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1770
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1774
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_9
    iget-wide v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x3c

    sub-int/2addr v9, v0

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1775
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_3
    sub-int v7, v6, v0

    div-int/lit8 v7, v7, 0x3c

    if-ge v1, v7, :cond_a

    .line 1779
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1780
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v1

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1781
    const-wide/32 v7, 0xea60

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1782
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1786
    .end local v2           #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_a
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1787
    .restart local v2       #mAddNextNew:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v7

    iput v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    .line 1788
    iget-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    invoke-virtual {p1}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    .line 1789
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private SettingPowerModeAlarm(Landroid/content/Context;)V
    .locals 28
    .parameter "context"

    .prologue
    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 914
    .local v16, now:J
    const/16 v6, 0xff

    .line 915
    .local v6, CheckAlarmTime:I
    const/16 v24, 0x0

    .line 916
    .local v24, useralarmminutes:I
    const/16 v21, 0x0

    .line 917
    .local v21, sysminutes:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 918
    .local v14, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 919
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 920
    .local v18, nowHour:I
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 921
    .local v19, nowMinute:I
    const/16 v25, 0x7

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 926
    .local v20, nowdayofweek:I
    sget-boolean v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SystemScreenOnStatus:Z

    if-nez v25, :cond_2

    .line 928
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 931
    .local v15, cr:Landroid/content/ContentResolver;
    const-string v25, "sleep_mode_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DEFAULT_SLEEP_MODE:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    sput v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    .line 932
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    if-nez v25, :cond_b

    .line 938
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 939
    .local v10, SettingOnTime:J
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 941
    .local v8, SettingOffTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "PREF_AUTOMATICALL_ENABLE_START_TIME"

    sget v27, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "PREF_AUTOMATICALL_ENABLE_END_TIME"

    sget v27, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 944
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    sget v26, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 952
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V

    .line 954
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V

    .line 984
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayAlarmSetting()I

    move-result v25

    if-nez v25, :cond_6

    .line 985
    const/16 v6, 0x18

    .line 989
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "PREF_WIFI_STATES"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 991
    .local v12, Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "PREF_MOBILE_STATES"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 993
    .local v7, Mobile_States:Z
    const/16 v25, 0xff

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    .line 999
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_HOUR:I

    mul-int/lit8 v25, v25, 0x3c

    sget v26, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_MINUTES:I

    add-int v24, v25, v26

    .line 1000
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    mul-int/lit8 v21, v25, 0x3c

    .line 1001
    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 1003
    const/16 v22, 0x0

    .line 1004
    .local v22, useralarm_hour:I
    const/16 v23, 0x0

    .line 1005
    .local v23, useralarm_minutes:I
    add-int/lit8 v13, v24, -0x1e

    .line 1006
    .local v13, alarmtimeset:I
    if-gez v13, :cond_0

    .line 1007
    add-int/lit16 v13, v13, 0x5a0

    .line 1009
    :cond_0
    invoke-static/range {v22 .. v23}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1011
    .local v4, AlarmOnTime:J
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_1

    .line 1013
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set wifi turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    .line 1018
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 1020
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set mobile turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    .line 1086
    .end local v4           #AlarmOnTime:J
    .end local v7           #Mobile_States:Z
    .end local v8           #SettingOffTime:J
    .end local v10           #SettingOnTime:J
    .end local v12           #Wifi_States:Z
    .end local v13           #alarmtimeset:I
    .end local v15           #cr:Landroid/content/ContentResolver;
    .end local v22           #useralarm_hour:I
    .end local v23           #useralarm_minutes:I
    :cond_2
    :goto_2
    return-void

    .line 956
    .restart local v8       #SettingOffTime:J
    .restart local v10       #SettingOnTime:J
    .restart local v15       #cr:Landroid/content/ContentResolver;
    :cond_3
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    sget v26, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 964
    :cond_4
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V

    .line 966
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 976
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOffWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifi:Landroid/app/PendingIntent;

    .line 980
    const-wide/32 v25, 0xea60

    add-long v25, v25, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOffMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobile:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 987
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayAlarmSetting()I

    move-result v6

    goto/16 :goto_1

    .line 1026
    .restart local v7       #Mobile_States:Z
    .restart local v12       #Wifi_States:Z
    :cond_7
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_8

    .line 1028
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set wifi turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    .line 1032
    :cond_8
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 1034
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set mobile turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 1041
    :cond_9
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_a

    .line 1043
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set wifi turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    .line 1047
    :cond_a
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 1049
    sget-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " auto mode screen set mobile turn on SettingOnTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v25

    sput-object v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    goto/16 :goto_2

    .line 1060
    .end local v7           #Mobile_States:Z
    .end local v8           #SettingOffTime:J
    .end local v10           #SettingOnTime:J
    .end local v12           #Wifi_States:Z
    :cond_b
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    sget v26, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStartminute:I

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    :cond_c
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndminute:I

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 1067
    :cond_d
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V

    .line 1069
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 1071
    :cond_e
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    sget v26, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-gt v0, v1, :cond_10

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStartminute:I

    move/from16 v0, v19

    move/from16 v1, v25

    if-gt v0, v1, :cond_10

    :cond_f
    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_10

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    sget v25, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndminute:I

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 1079
    :cond_10
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V

    .line 1081
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V

    goto/16 :goto_2
.end method

.method static synthetic access$1000(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SettingPowerModeAlarm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V

    return-void
.end method

.method static synthetic access$1302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-wide p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataStartTime:J

    return-wide p0
.end method

.method static synthetic access$1400(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    return-wide v0
.end method

.method static synthetic access$1602(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-wide p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    return-wide p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayGoldenTableList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getUserScreenOnOffTimeTableList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getSystemAlarmTableList(Landroid/content/Context;)V

    return-void
.end method

.method static calculateAlarm(II)Ljava/util/Calendar;
    .locals 9
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 2373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2374
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2376
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2377
    .local v1, nowHour:I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2379
    .local v2, nowMinute:I
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2382
    .local v3, nowdayofweek:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 2384
    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 2388
    :cond_1
    invoke-virtual {v0, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 2389
    invoke-virtual {v0, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 2390
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2391
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2393
    return-object v0
.end method

.method private cleanOldTimePreditionTable(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 1270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1271
    .local v6, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1274
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1275
    .local v10, deletedRowCnt:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long v7, v1, v4

    .line 1276
    .local v7, currentSecs:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, date:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1279
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1281
    const-string v1, "From_Moth"

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    const-string v1, "From_Day"

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    const-string v1, "From_Hour"

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    const-string v1, "From_Minutes"

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    const-string v1, "To_Moth"

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    const-string v1, "To_Day"

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    const-string v1, "To_Hour"

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    const-string v1, "To_Minutes"

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    const-string v1, "Stay_Time"

    const/16 v2, 0x4d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1293
    if-eqz v9, :cond_0

    .line 1294
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_0
    return-void
.end method

.method private getSystemAlarmTableList(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1357
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1359
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1361
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SYSTEM_ALARM_INFORMATION:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1363
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1365
    const-string v1, "hour"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1366
    .local v9, INDEX_KEY_ALARM_HOUR:I
    const-string v1, "minutes"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1367
    .local v10, INDEX_KEY_ALARM_MINUTES:I
    const-string v1, "daysofweek"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1368
    .local v8, INDEX_KEY_ALARM_DAYS_OF_WEEK:I
    const-string v1, "alarmtime"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1369
    .local v7, INDEX_KEY_ALARM_ALARM_TIME:I
    const-string v1, "enabled"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1371
    .local v6, INDEX_KEY_ALARM_ALARM_ENABLE:I
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1372
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    :cond_0
    new-instance v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;

    invoke-direct {v13, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1375
    .local v13, mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_hour:I

    .line 1376
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_minutes:I

    .line 1377
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_dayofweek:I

    .line 1378
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_alarmtime:J

    .line 1379
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_enable:I

    .line 1380
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    .end local v6           #INDEX_KEY_ALARM_ALARM_ENABLE:I
    .end local v7           #INDEX_KEY_ALARM_ALARM_TIME:I
    .end local v8           #INDEX_KEY_ALARM_DAYS_OF_WEEK:I
    .end local v9           #INDEX_KEY_ALARM_HOUR:I
    .end local v10           #INDEX_KEY_ALARM_MINUTES:I
    .end local v13           #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    :cond_1
    if-eqz v11, :cond_2

    .line 1387
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1389
    :cond_2
    const/4 v12, 0x0

    .local v12, index:I
    :goto_0
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 1391
    new-instance v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;

    invoke-direct {v13, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1392
    .restart local v13       #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;

    .line 1389
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1403
    .end local v13           #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    :cond_3
    return-void
.end method

.method private getTodayAlarmSetting()I
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    .line 1298
    const/16 v5, 0xff

    .line 1299
    .local v5, setting:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1300
    .local v2, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1301
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1302
    .local v0, TodayDayOfWeek:I
    const/4 v1, 0x0

    .line 1318
    .local v1, TodayValue:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 1319
    const/4 v1, 0x1

    .line 1333
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 1335
    new-instance v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1336
    .local v4, mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemAlarmInfor:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    check-cast v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;

    .line 1337
    .restart local v4       #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    if-eqz v4, :cond_1

    .line 1339
    iget v6, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_enable:I

    if-ne v6, v8, :cond_1

    .line 1341
    iget v6, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_dayofweek:I

    and-int/2addr v6, v1

    if-eqz v6, :cond_1

    .line 1343
    iget v6, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_hour:I

    if-le v5, v6, :cond_1

    .line 1345
    iget v6, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_hour:I

    sput v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_HOUR:I

    .line 1346
    iget v6, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_minutes:I

    sput v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USER_ALARM_MINUTES:I

    .line 1347
    iget v5, v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;->alarm_hour:I

    .line 1333
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1320
    .end local v3           #index:I
    .end local v4           #mAlarmInfor:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SystemAlarmInfor;
    :cond_2
    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 1321
    const/4 v1, 0x2

    goto :goto_0

    .line 1322
    :cond_3
    const/4 v6, 0x4

    if-ne v0, v6, :cond_4

    .line 1323
    const/4 v1, 0x4

    goto :goto_0

    .line 1324
    :cond_4
    const/4 v6, 0x5

    if-ne v0, v6, :cond_5

    .line 1325
    const/16 v1, 0x8

    goto :goto_0

    .line 1326
    :cond_5
    const/4 v6, 0x6

    if-ne v0, v6, :cond_6

    .line 1327
    const/16 v1, 0x10

    goto :goto_0

    .line 1328
    :cond_6
    if-ne v0, v9, :cond_7

    .line 1329
    const/16 v1, 0x20

    goto :goto_0

    .line 1330
    :cond_7
    if-ne v0, v8, :cond_0

    .line 1331
    const/16 v1, 0x40

    goto :goto_0

    .line 1353
    .restart local v3       #index:I
    :cond_8
    return v5
.end method

.method private getTodayGoldenTableList(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 1983
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1985
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CheckAndUpdateGoldenTable(Landroid/content/Context;)V

    .line 1987
    const/16 v21, 0x0

    .line 1989
    .local v21, mNeedInitTodyaDB:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1990
    .local v13, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1991
    const/4 v4, 0x7

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 1992
    .local v22, nowdayofweek:I
    const/4 v2, 0x0

    .line 1994
    .local v2, uri:Landroid/net/Uri;
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    .line 1995
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    .line 2011
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2013
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2015
    .local v16, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long v14, v4, v7

    .line 2016
    .local v14, currentSecs:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2017
    .local v6, date:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2019
    .local v3, crInit:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 2021
    .local v17, cursorInit:Landroid/database/Cursor;
    const/16 v19, 0x1

    .line 2023
    .local v19, getfulldata:Z
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    sget v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_b

    .line 2025
    const-string v4, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2027
    .local v12, INDEX_KEY_TIME:I
    const-string v4, "AutoSync_Turn_OnOff"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2029
    .local v9, INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    const-string v4, "Location_Service_Turn_OnOff"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2031
    .local v11, INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    const-string v4, "Data_Link_Turn_OnOff"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2037
    .local v10, INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2039
    :cond_0
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 2040
    .local v18, dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 2041
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 2042
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 2043
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 2045
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2082
    .end local v9           #INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    .end local v10           #INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    .end local v11           #INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    .end local v12           #INDEX_KEY_TIME:I
    .end local v18           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_1
    :goto_1
    if-eqz v16, :cond_2

    .line 2083
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2085
    :cond_2
    if-eqz v17, :cond_3

    .line 2086
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2088
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_d

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ConfigNightStartEndTime()V

    .line 2097
    :goto_2
    return-void

    .line 1996
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #crInit:Landroid/content/ContentResolver;
    .end local v6           #date:Ljava/lang/String;
    .end local v14           #currentSecs:J
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v17           #cursorInit:Landroid/database/Cursor;
    .end local v19           #getfulldata:Z
    :cond_4
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_5

    .line 1997
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1998
    :cond_5
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_6

    .line 1999
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2000
    :cond_6
    const/4 v4, 0x5

    move/from16 v0, v22

    if-ne v0, v4, :cond_7

    .line 2001
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2002
    :cond_7
    const/4 v4, 0x6

    move/from16 v0, v22

    if-ne v0, v4, :cond_8

    .line 2003
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2004
    :cond_8
    const/4 v4, 0x7

    move/from16 v0, v22

    if-ne v0, v4, :cond_9

    .line 2005
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2006
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_a

    .line 2007
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2009
    :cond_a
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2052
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #crInit:Landroid/content/ContentResolver;
    .restart local v6       #date:Ljava/lang/String;
    .restart local v14       #currentSecs:J
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v17       #cursorInit:Landroid/database/Cursor;
    .restart local v19       #getfulldata:Z
    :cond_b
    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_c

    .line 2058
    const/16 v20, 0x0

    .local v20, index:I
    :goto_3
    sget v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_1

    .line 2060
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 2061
    .restart local v18       #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v20

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 2062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v20

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 2063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v20

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 2064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v20

    const/4 v5, 0x3

    aget v4, v4, v5

    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 2065
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2067
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2068
    .local v23, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2069
    const-string v4, "time"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v20

    const/4 v7, 0x0

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2070
    const-string v4, "AutoSync_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v20

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2071
    const-string v4, "Location_Service_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v20

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2072
    const-string v4, "Data_Link_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v20

    const/4 v7, 0x3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2073
    move-object/from16 v0, v23

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2058
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 2078
    .end local v18           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v20           #index:I
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2094
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ClearDataReWriteGoldenTable(Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method private getUserScreenOnOffTimeTableList(Landroid/content/Context;)V
    .locals 27
    .parameter "context"

    .prologue
    .line 1409
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1411
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1413
    .local v20, cursor:Landroid/database/Cursor;
    const-string v4, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1414
    .local v9, INDEX_KEY_DATE:I
    const-string v4, "From_Moth"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1415
    .local v13, INDEX_KEY_TIME_PREDITION_FROM_MONTH:I
    const-string v4, "From_Day"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1416
    .local v10, INDEX_KEY_TIME_PREDITION_FROM_DAY:I
    const-string v4, "From_Hour"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1417
    .local v11, INDEX_KEY_TIME_PREDITION_FROM_HOUR:I
    const-string v4, "From_Minutes"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1418
    .local v12, INDEX_KEY_TIME_PREDITION_FROM_MINUTES:I
    const-string v4, "To_Moth"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1419
    .local v18, INDEX_KEY_TIME_PREDITION_TO_MONTH:I
    const-string v4, "To_Day"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1420
    .local v15, INDEX_KEY_TIME_PREDITION_TO_DAY:I
    const-string v4, "To_Hour"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1421
    .local v16, INDEX_KEY_TIME_PREDITION_TO_HOUR:I
    const-string v4, "To_Minutes"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1422
    .local v17, INDEX_KEY_TIME_PREDITION_TO_MINUTES:I
    const-string v4, "Stay_Time"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1425
    .local v14, INDEX_KEY_TIME_PREDITION_STAY_TIME:I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v22, mUpdateScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1428
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1430
    :cond_0
    new-instance v21, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 1431
    .local v21, idbScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 1432
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 1433
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 1434
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 1435
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 1436
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 1437
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 1438
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 1439
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 1441
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMonth()I

    move-result v4

    const/16 v5, 0x4d2

    if-ne v4, v5, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToDay()I

    move-result v4

    const/16 v5, 0x4d2

    if-ne v4, v5, :cond_4

    .line 1443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 1445
    .local v19, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1446
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1452
    const v4, 0xea60

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v6

    add-int/2addr v5, v6

    rsub-int v5, v5, 0x5a0

    mul-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v25, v0

    .line 1455
    .local v25, yestaytime:J
    move-object/from16 v0, v21

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 1456
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 1457
    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 1458
    const/16 v4, 0x17

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 1459
    const/16 v4, 0x3b

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 1460
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V

    .line 1461
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->UpdateNewGoldenTable(Landroid/content/Context;)V

    .line 1466
    const v4, 0xea60

    const/16 v5, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v23, v0

    .line 1467
    .local v23, nowstaytime:J
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 1468
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 1469
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 1470
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 1472
    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 1473
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 1474
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 1475
    const/16 v4, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 1476
    const/16 v4, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 1477
    sget-object v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1479
    :try_start_0
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    .end local v19           #c:Ljava/util/Calendar;
    .end local v23           #nowstaytime:J
    .end local v25           #yestaytime:J
    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1514
    .end local v21           #idbScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    :cond_1
    if-eqz v20, :cond_2

    .line 1515
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1516
    :cond_2
    return-void

    .line 1480
    .restart local v19       #c:Ljava/util/Calendar;
    .restart local v21       #idbScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .restart local v23       #nowstaytime:J
    .restart local v25       #yestaytime:J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1489
    .end local v23           #nowstaytime:J
    .end local v25           #yestaytime:J
    :cond_3
    const v4, 0xea60

    const/16 v5, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    const/16 v6, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v23, v0

    .line 1492
    .restart local v23       #nowstaytime:J
    move-object/from16 v0, v21

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 1493
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 1494
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 1495
    const/16 v4, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 1496
    const/16 v4, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 1498
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->cleanOldTimePreditionTable(Landroid/content/Context;)V

    .line 1499
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->UpdateToScreenOnOffTimeArrayListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1502
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V

    goto/16 :goto_0

    .line 1506
    .end local v19           #c:Ljava/util/Calendar;
    .end local v23           #nowstaytime:J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CalculatorScreenOffTimeData(Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public CancelManualModeAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1090
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1092
    .local v0, mAlarmManager:Landroid/app/AlarmManager;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 1093
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1094
    :cond_0
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aput-object v2, v1, v3

    .line 1096
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 1097
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1098
    :cond_1
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aput-object v2, v1, v4

    .line 1100
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    .line 1101
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1102
    :cond_2
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aput-object v2, v1, v5

    .line 1104
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v6

    if-eqz v1, :cond_3

    .line 1105
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1106
    :cond_3
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    aput-object v2, v1, v6

    .line 1107
    return-void
.end method

.method public CheckAndUpdateGoldenTable(Landroid/content/Context;)V
    .locals 25
    .parameter "context"

    .prologue
    .line 1877
    const/4 v3, 0x6

    const/16 v4, 0x18

    const/4 v5, 0x4

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[[I

    .line 1878
    .local v23, update:[[[I
    const/16 v3, 0x18

    new-array v0, v3, [I

    move-object/from16 v22, v0

    .line 1879
    .local v22, onupdate:[I
    const/16 v3, 0x18

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 1880
    .local v21, offupdate:[I
    const/16 v3, 0x18

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 1882
    .local v19, newupdate:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1883
    .local v12, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1884
    const/4 v3, 0x7

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1885
    .local v20, nowdayofweek:I
    const/4 v2, 0x0

    .line 1887
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 1888
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    .line 1904
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1906
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1908
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_f

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 1909
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1910
    const-string v3, "time"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1912
    .local v10, INDEX_KEY_TIME:I
    const-string v3, "AutoSync_Turn_OnOff"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1914
    .local v7, INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    const-string v3, "Location_Service_Turn_OnOff"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1916
    .local v9, INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    const-string v3, "Data_Link_Turn_OnOff"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1918
    .local v8, INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sget v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DBCollectDataNumbert:I

    if-lt v3, v4, :cond_f

    .line 1924
    const/4 v11, 0x0

    .line 1925
    .local v11, UdpateIndex:I
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1927
    :cond_0
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DBCollectDataNumbert:I

    if-gt v11, v3, :cond_1

    .line 1929
    new-instance v16, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1930
    .local v16, dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v3, v4

    .line 1931
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v3, v4

    .line 1932
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x2

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v3, v4

    .line 1933
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v3, v4

    .line 1935
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1936
    rem-int/lit8 v3, v11, 0x18

    rem-int/lit8 v4, v11, 0x18

    aget v4, v22, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v22, v3

    .line 1942
    .end local v16           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 1943
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1947
    :cond_2
    const/16 v18, 0x0

    .local v18, index:I
    :goto_2
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_d

    .line 1949
    aget v3, v21, v18

    aget v4, v22, v18

    if-le v3, v4, :cond_c

    .line 1950
    const/4 v3, 0x0

    aput v3, v19, v18

    .line 1947
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1889
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v7           #INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    .end local v8           #INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    .end local v9           #INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    .end local v10           #INDEX_KEY_TIME:I
    .end local v11           #UdpateIndex:I
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #index:I
    :cond_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    .line 1890
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1891
    :cond_4
    const/4 v3, 0x4

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    .line 1892
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1893
    :cond_5
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 1894
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1895
    :cond_6
    const/4 v3, 0x6

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    .line 1896
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1897
    :cond_7
    const/4 v3, 0x7

    move/from16 v0, v20

    if-ne v0, v3, :cond_8

    .line 1898
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1899
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    .line 1900
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1902
    :cond_9
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1937
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v7       #INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    .restart local v8       #INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    .restart local v9       #INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    .restart local v10       #INDEX_KEY_TIME:I
    .restart local v11       #UdpateIndex:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v16       #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_a
    div-int/lit8 v3, v11, 0x18

    aget-object v3, v23, v3

    rem-int/lit8 v4, v11, 0x18

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    if-nez v3, :cond_b

    .line 1938
    rem-int/lit8 v3, v11, 0x18

    rem-int/lit8 v4, v11, 0x18

    aget v4, v21, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v21, v3

    goto :goto_1

    .line 1940
    :cond_b
    rem-int/lit8 v3, v11, 0x18

    rem-int/lit8 v4, v11, 0x18

    aget v4, v22, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v22, v3

    goto :goto_1

    .line 1952
    .end local v16           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .restart local v18       #index:I
    :cond_c
    const/4 v3, 0x1

    aput v3, v19, v18

    goto :goto_3

    .line 1956
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v13, v3, v5

    .line 1957
    .local v13, currentSecs:J
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1958
    .local v17, deletedRowCnt:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1959
    if-eqz v15, :cond_e

    .line 1960
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1961
    :cond_e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1962
    const/16 v18, 0x0

    :goto_4
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_f

    .line 1964
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1965
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1966
    const-string v3, "time"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v18

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1967
    const-string v3, "AutoSync_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v18

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1968
    const-string v3, "Location_Service_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v4, v4, v18

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1969
    const-string v3, "Data_Link_Turn_OnOff"

    aget v4, v19, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1970
    move-object/from16 v0, v24

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1962
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1976
    .end local v7           #INDEX_KEY_AUTOSYNC_TURN_ONOFF:I
    .end local v8           #INDEX_KEY_DATA_LINK_TURN_ONOFF:I
    .end local v9           #INDEX_KEY_LOCATION_SERVICE_TURN_ONOFF:I
    .end local v10           #INDEX_KEY_TIME:I
    .end local v11           #UdpateIndex:I
    .end local v13           #currentSecs:J
    .end local v17           #deletedRowCnt:I
    .end local v18           #index:I
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_f
    if-eqz v15, :cond_10

    .line 1977
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1980
    :cond_10
    return-void
.end method

.method public ClearDataReScreenOnOffArrayTable(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 15
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1609
    .local p2, inScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1610
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1612
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1613
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1615
    .local v11, deletedRowCnt:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v8, v2, v5

    .line 1616
    .local v8, currentSecs:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1617
    .local v4, date:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1624
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, index:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 1626
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1627
    .local v14, values:Landroid/content/ContentValues;
    new-instance v12, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 1628
    .local v12, inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v12, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 1630
    .restart local v12       #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    const-string v2, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1631
    const-string v2, "From_Moth"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    const-string v2, "From_Day"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1633
    const-string v2, "From_Hour"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1634
    const-string v2, "From_Minutes"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    const-string v2, "To_Moth"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1636
    const-string v2, "To_Day"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1637
    const-string v2, "To_Hour"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    const-string v2, "To_Minutes"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v2, "Stay_Time"

    invoke-virtual {v12}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1641
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1624
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1645
    .end local v12           #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v10, :cond_1

    .line 1646
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1647
    :cond_1
    return-void
.end method

.method public ClearDataReWriteGoldenTable(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 2101
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 2103
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2104
    const/4 v3, 0x7

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 2105
    .local v14, nowdayofweek:I
    const/4 v2, 0x0

    .line 2107
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    if-ne v14, v3, :cond_0

    .line 2108
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    .line 2124
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2126
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2127
    .local v12, deletedRowCnt:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v16, 0x3e8

    div-long v8, v5, v16

    .line 2128
    .local v8, currentSecs:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2129
    .local v4, date:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2131
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, index:I
    :goto_1
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-ge v13, v3, :cond_7

    .line 2133
    new-instance v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 2134
    .local v11, dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v13

    const/4 v5, 0x0

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 2135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v13

    const/4 v5, 0x1

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 2136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v13

    const/4 v5, 0x2

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 2137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v13

    const/4 v5, 0x3

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 2138
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2141
    .local v15, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2142
    const-string v3, "time"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v13

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2143
    const-string v3, "AutoSync_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v13

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2144
    const-string v3, "Location_Service_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v13

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    const-string v3, "Data_Link_Turn_OnOff"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v5, v5, v13

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2146
    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2131
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2109
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #date:Ljava/lang/String;
    .end local v8           #currentSecs:J
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v12           #deletedRowCnt:I
    .end local v13           #index:I
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v3, 0x3

    if-ne v14, v3, :cond_1

    .line 2110
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2111
    :cond_1
    const/4 v3, 0x4

    if-ne v14, v3, :cond_2

    .line 2112
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2113
    :cond_2
    const/4 v3, 0x5

    if-ne v14, v3, :cond_3

    .line 2114
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2115
    :cond_3
    const/4 v3, 0x6

    if-ne v14, v3, :cond_4

    .line 2116
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2117
    :cond_4
    const/4 v3, 0x7

    if-ne v14, v3, :cond_5

    .line 2118
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2119
    :cond_5
    const/4 v3, 0x1

    if-ne v14, v3, :cond_6

    .line 2120
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2122
    :cond_6
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    goto/16 :goto_0

    .line 2149
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #date:Ljava/lang/String;
    .restart local v8       #currentSecs:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v12       #deletedRowCnt:I
    .restart local v13       #index:I
    :cond_7
    if-eqz v10, :cond_8

    .line 2150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2152
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ConfigNightStartEndTime()V

    .line 2154
    return-void
.end method

.method public ConfigNightStartEndTime()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2157
    const/16 v8, 0x35

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 2168
    .local v0, NightGoldenTalbeInitial:[I
    const/4 v4, 0x0

    .line 2170
    .local v4, i:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_0
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-ge v5, v8, :cond_2

    .line 2172
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    invoke-direct {v2, v14}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 2175
    .local v2, dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 2176
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 2185
    .restart local v2       #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :goto_1
    iget v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    if-ne v8, v10, :cond_0

    .line 2187
    iget v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    aput v8, v0, v4

    .line 2188
    add-int/lit8 v4, v4, 0x1

    .line 2170
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2179
    :cond_1
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v11

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 2180
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v10

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 2181
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v12

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 2182
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v13

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    goto :goto_1

    .line 2192
    .end local v2           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_2
    const/4 v5, 0x0

    :goto_2
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-ge v5, v8, :cond_5

    .line 2194
    new-instance v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    invoke-direct {v2, v14}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 2197
    .restart local v2       #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 2198
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 2207
    .restart local v2       #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :goto_3
    iget v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    if-ne v8, v10, :cond_3

    .line 2209
    iget v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    sget v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    add-int/2addr v8, v9

    aput v8, v0, v4

    .line 2210
    add-int/lit8 v4, v4, 0x1

    .line 2192
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2201
    :cond_4
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v11

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 2202
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v10

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 2203
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v12

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 2204
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v8, v8, v5

    aget v8, v8, v13

    iput v8, v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    goto :goto_3

    .line 2214
    .end local v2           #dbSystemLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_5
    const/4 v7, 0x0

    .line 2215
    .local v7, starttime:I
    const/4 v3, 0x7

    .line 2216
    .local v3, endtime:I
    const/4 v6, 0x0

    .line 2218
    .local v6, maxvalue:I
    const/4 v5, 0x0

    :goto_4
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_6

    .line 2220
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    const/16 v9, 0xff

    if-ne v8, v9, :cond_7

    .line 2240
    :cond_6
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-lt v3, v8, :cond_9

    .line 2241
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    sub-int v8, v3, v8

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    .line 2258
    :goto_5
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-lt v7, v8, :cond_a

    .line 2259
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    sub-int v8, v7, v8

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    .line 2273
    :goto_6
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "SMARTSYNC_SLEEPMODE_START_TIME"

    sget v10, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2274
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "SMARTSYNC_SLEEPMODE_END_TIME"

    sget v10, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2276
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.powersaver.SMARTSYNC_SLEEPMODE_TIME_UPDATE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2277
    .local v1, SmartsyncUpdate:Landroid/content/Intent;
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2278
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    const-string v9, "send sleep mode time update intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void

    .line 2222
    .end local v1           #SmartsyncUpdate:Landroid/content/Intent;
    :cond_7
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    aget v9, v0, v5

    sub-int/2addr v8, v9

    if-le v8, v6, :cond_8

    .line 2224
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    aget v9, v0, v5

    sub-int v6, v8, v9

    .line 2225
    add-int/lit8 v8, v5, 0x1

    aget v3, v0, v8

    .line 2226
    aget v8, v0, v5

    add-int/lit8 v7, v8, 0x1

    .line 2218
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2243
    :cond_9
    sput v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMEEND:I

    goto :goto_5

    .line 2261
    :cond_a
    sput v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->USERNIGHT_TIMESTART:I

    goto :goto_6

    .line 2157
    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public ScreenOffSetAlarm(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 1856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1857
    .local v2, now:J
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1859
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

    const/4 v5, 0x0

    const-class v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;

    invoke-direct {v1, v4, v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1862
    .local v1, intent_time:Landroid/content/Intent;
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;

    .line 1863
    sget-wide v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_OFF_TIME_FOR_TURN_OFF_AUTO_SYNC:J

    add-long/2addr v4, v2

    sget-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1866
    return-void
.end method

.method public ScreenOnCancelAlarm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1870
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1871
    .local v0, alarmManager:Landroid/app/AlarmManager;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_15MinutestTrigger:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1872
    return-void
.end method

.method public SetAlarmTurnOffMobileDataLink(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v10, 0x0

    .line 2331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2333
    .local v4, now:J
    const-wide/16 v0, 0x0

    .line 2335
    .local v0, MobileOffsetAlarmTime:J
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2336
    .local v2, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_MOBILE_BY_CHECK:Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v3, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2337
    .local v3, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2338
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v7, p2, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v7, v4

    add-long/2addr v7, v0

    invoke-virtual {v2, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2340
    sput-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobilebycheck:Landroid/app/PendingIntent;

    .line 2342
    return-void
.end method

.method public SetAlarmTurnOffWifiDataLink(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v8, 0x0

    .line 2316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2318
    .local v2, now:J
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2320
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_WIFI_BY_CHECK:Ljava/lang/String;

    const/4 v6, 0x0

    const-class v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v1, v5, v6, p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2322
    .local v1, intent_wifi:Landroid/content/Intent;
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2323
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v5, p2, 0x3e8

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v8, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2325
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifibycheck:Landroid/app/PendingIntent;

    .line 2327
    return-void
.end method

.method public SetAlarmTurnOnMobileDataLink(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v8, 0x0

    .line 2360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2361
    .local v2, now:J
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2363
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

    const/4 v6, 0x0

    const-class v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v1, v5, v6, p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2364
    .local v1, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2365
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v5, p2, 0x3e8

    mul-int/lit8 v5, v5, 0x3c

    int-to-long v5, v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v8, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2366
    sput-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    .line 2367
    return-void
.end method

.method public SetAlarmTurnOnWifiDataLink(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v10, 0x0

    .line 2346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2348
    .local v4, now:J
    const-wide/16 v0, 0x0

    .line 2349
    .local v0, WifiOffsetAlarmTime:J
    const-string v7, "alarm"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 2351
    .local v2, alarmManager:Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

    const/4 v8, 0x0

    const-class v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v3, v7, v8, p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2352
    .local v3, intent_wifi:Landroid/content/Intent;
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2353
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    mul-int/lit16 v7, p2, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v7, v4

    add-long/2addr v7, v0

    invoke-virtual {v2, v10, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2355
    sput-object v6, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    .line 2356
    return-void
.end method

.method public SetDaysOfWeekAlarmTurnOffMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v1, 0x0

    .line 1816
    const-wide/32 v4, 0x5265c00

    .line 1818
    .local v4, interval:J
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_MOBILE:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v7, v2, v3, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1820
    .local v7, intent_mobile:Landroid/content/Intent;
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1822
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {p1, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, pendingIntent:Landroid/app/PendingIntent;
    move-wide v2, p2

    .line 1823
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1825
    return-object v6
.end method

.method public SetDaysOfWeekAlarmTurnOffWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v1, 0x0

    .line 1800
    const-wide/32 v4, 0x5265c00

    .line 1802
    .local v4, interval:J
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1804
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_OFF_WIFI:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v7, v2, v3, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1806
    .local v7, intent_wifi:Landroid/content/Intent;
    invoke-static {p1, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, pendingIntent:Landroid/app/PendingIntent;
    move-wide v2, p2

    .line 1807
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1809
    return-object v6
.end method

.method public SetDaysOfWeekAlarmTurnOnMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 9
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v1, 0x0

    .line 1844
    const-wide/32 v4, 0x5265c00

    .line 1845
    .local v4, interval:J
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1847
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_MOBILE:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v7, v2, v3, p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1848
    .local v7, intent_mobile:Landroid/content/Intent;
    invoke-static {p1, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, pendingIntent:Landroid/app/PendingIntent;
    move-wide v2, p2

    .line 1849
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1851
    return-object v6
.end method

.method public SetDaysOfWeekAlarmTurnOnWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 11
    .parameter "context"
    .parameter "SettingTime"

    .prologue
    const/4 v1, 0x0

    .line 1831
    const-wide/32 v4, 0x5265c00

    .line 1832
    .local v4, interval:J
    const-wide/16 v7, 0x0

    .line 1833
    .local v7, WifiOffsetAlarmTime:J
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1835
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_TURN_ON_WIFI:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v10, Lcom/android/settings/framework/activity/powersaver/SmartSyncDataLinkTurnOffReceiver;

    invoke-direct {v9, v2, v3, p1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1836
    .local v9, intent_wifi:Landroid/content/Intent;
    invoke-static {p1, v1, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, pendingIntent:Landroid/app/PendingIntent;
    move-wide v2, p2

    .line 1837
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1838
    return-object v6
.end method

.method public SettingManualModeAlarm(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 852
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v8, "sleep_mode_mode"

    iget v9, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DEFAULT_SLEEP_MODE:I

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    .line 858
    const-string v8, "htc_wireless_sleep_start_time"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 859
    .local v7, startTime:I
    const-string v8, "htc_wireless_sleep_end_time"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 861
    .local v5, endTime:I
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    if-eqz v8, :cond_0

    .line 863
    div-int/lit8 v8, v7, 0x3c

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    .line 864
    rem-int/lit8 v8, v7, 0x3c

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStartminute:I

    .line 865
    div-int/lit8 v8, v5, 0x3c

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    .line 866
    rem-int/lit8 v8, v5, 0x3c

    sput v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndminute:I

    .line 869
    :cond_0
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 871
    .local v6, mAlarmManager:Landroid/app/AlarmManager;
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    if-eqz v8, :cond_1

    .line 872
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 873
    :cond_1
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 875
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    if-eqz v8, :cond_2

    .line 876
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 877
    :cond_2
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 879
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    if-eqz v8, :cond_3

    .line 880
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 881
    :cond_3
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 883
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    if-eqz v8, :cond_4

    .line 884
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 885
    :cond_4
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 887
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->User_Setting_Mode:I

    if-eqz v8, :cond_5

    .line 896
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndhour:I

    sget v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mEndminute:I

    invoke-static {v8, v9}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 897
    .local v2, SettingOnTime:J
    sget v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStarthour:I

    sget v9, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mStartminute:I

    invoke-static {v8, v9}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 900
    .local v0, SettingOffTime:J
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOffWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v10

    aput-object v10, v8, v9

    .line 902
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x1

    const-wide/32 v10, 0xea60

    add-long/2addr v10, v0

    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOffMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v10

    aput-object v10, v8, v9

    .line 904
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnWifiDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v10

    aput-object v10, v8, v9

    .line 906
    sget-object v8, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->DayAlarmSetting:[Landroid/app/PendingIntent;

    const/4 v9, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SetDaysOfWeekAlarmTurnOnMobileDataLink(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v10

    aput-object v10, v8, v9

    .line 909
    .end local v0           #SettingOffTime:J
    .end local v2           #SettingOnTime:J
    :cond_5
    return-void
.end method

.method public UpdateNewGoldenTable(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 1116
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayGoldenTableList(Landroid/content/Context;)V

    .line 1118
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1119
    const/4 v12, 0x0

    .local v12, index:I
    :goto_0
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-ge v12, v3, :cond_1

    .line 1121
    new-instance v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    invoke-direct {v13, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1123
    .local v13, mInitServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    new-instance v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1125
    .local v11, getTodayDbGoldenTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_0

    .line 1127
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemLinkStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #getTodayDbGoldenTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 1139
    .restart local v11       #getTodayDbGoldenTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :goto_1
    iget v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    iput v3, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 1140
    iget v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    iput v3, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 1141
    iget v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    iput v3, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 1142
    iget v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    iput v3, v13, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 1144
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x0

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x1

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x2

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x3

    aget v3, v3, v5

    iput v3, v11, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    goto :goto_1

    .line 1149
    .end local v11           #getTodayDbGoldenTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v13           #mInitServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_1
    const/4 v12, 0x0

    :goto_2
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_4

    .line 1151
    new-instance v17, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1152
    .local v17, mUpdateToTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #mUpdateToTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    check-cast v17, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;

    .line 1154
    .restart local v17       #mUpdateToTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    new-instance v16, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1155
    .local v16, mUpdateServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    sget-object v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1157
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->time:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #mUpdateServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v16, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 1159
    .restart local v16       #mUpdateServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;->stay_time:J

    sget-wide v21, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_OFF_TIME_FOR_DECIDE_TURN_ON_OFF:J

    cmp-long v3, v5, v21

    if-lez v3, :cond_3

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 1149
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1162
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    goto :goto_3

    .line 1169
    .end local v16           #mUpdateServiceLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v17           #mUpdateToTable:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ScreenOffInfor;
    :cond_4
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1171
    const/4 v12, 0x0

    :goto_4
    sget v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ONE_DAY_TOTAL_HOURS:I

    if-ge v12, v3, :cond_6

    .line 1173
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1174
    .local v18, mWriteStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    new-instance v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1176
    .local v15, mNewGoldenTableStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 1178
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUpdateLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #mNewGoldenTableStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 1188
    .restart local v15       #mNewGoldenTableStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :goto_5
    iget v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 1189
    iget v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 1190
    iget v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 1191
    iget v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    .line 1192
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1182
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x0

    aget v3, v3, v5

    iput v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x3

    aget v3, v3, v5

    iput v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x2

    aget v3, v3, v5

    iput v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->GoldenTalbeInitial:[[I

    aget-object v3, v3, v12

    const/4 v5, 0x1

    aget v3, v3, v5

    iput v3, v15, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    goto :goto_5

    .line 1197
    .end local v15           #mNewGoldenTableStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v18           #mWriteStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1198
    .local v7, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v21, 0x3e8

    div-long v8, v5, v21

    .line 1201
    .local v8, currentSecs:J
    const/4 v3, 0x7

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 1202
    .local v19, nowdayofweek:I
    const/4 v2, 0x0

    .line 1204
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 1205
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    .line 1221
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1230
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1232
    .local v4, date:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1236
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    :goto_7
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_f

    .line 1239
    new-instance v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    .line 1240
    .local v14, mLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #mLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    check-cast v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;

    .line 1242
    .restart local v14       #mLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1245
    .local v20, values:Landroid/content/ContentValues;
    if-eqz v14, :cond_7

    .line 1247
    const-string v3, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1248
    const-string v3, "time"

    iget v5, v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->time:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1249
    const-string v3, "AutoSync_Turn_OnOff"

    iget v5, v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->autosync_on:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    const-string v3, "Location_Service_Turn_OnOff"

    iget v5, v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->locationservice_on:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    const-string v3, "Data_Link_Turn_OnOff"

    iget v5, v14, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;->datalink_on:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    move-object/from16 v0, v20

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1236
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1206
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #date:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #mLinkStats:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$ServiceLinkStats;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_9

    .line 1207
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1208
    :cond_9
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    .line 1209
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1210
    :cond_a
    const/4 v3, 0x5

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 1211
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1212
    :cond_b
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 1213
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1214
    :cond_c
    const/4 v3, 0x7

    move/from16 v0, v19

    if-ne v0, v3, :cond_d

    .line 1215
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1216
    :cond_d
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    .line 1217
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1219
    :cond_e
    sget-object v2, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    goto/16 :goto_6

    .line 1256
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #date:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_f
    if-eqz v10, :cond_10

    .line 1257
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1259
    :cond_10
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mWriteLinkStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1260
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffInfor:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1261
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->cleanOldTimePreditionTable(Landroid/content/Context;)V

    .line 1265
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->getTodayGoldenTableList(Landroid/content/Context;)V

    .line 1266
    return-void
.end method

.method UpdateToScreenOnOffTimeArrayListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 19
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    .local p2, inScreenOnOffTimeArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;>;"
    const/4 v9, 0x1

    .line 1523
    .local v9, CheckDataOverSize:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1524
    .local v10, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1526
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1527
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    .line 1528
    .local v11, currentSecs:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1530
    .local v15, date:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1532
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1534
    .local v3, crInit:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1537
    .local v14, cursorInit:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    sget v5, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ScreenOnOffDBCollectDataNumbert:I

    if-ge v4, v5, :cond_0

    .line 1543
    const/4 v9, 0x0

    .line 1544
    const/16 v17, 0x0

    .local v17, index:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_0

    .line 1546
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1547
    .local v18, values:Landroid/content/ContentValues;
    new-instance v16, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    .line 1548
    .local v16, inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    check-cast v16, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 1550
    .restart local v16       #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    const-string v4, "date"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    const-string v4, "From_Moth"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1552
    const-string v4, "From_Day"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    const-string v4, "From_Hour"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string v4, "From_Minutes"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    const-string v4, "To_Moth"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    const-string v4, "To_Day"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const-string v4, "To_Hour"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1558
    const-string v4, "To_Minutes"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1559
    const-string v4, "Stay_Time"

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1561
    sget-object v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1544
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 1565
    .end local v16           #inScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;
    .end local v17           #index:I
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v13, :cond_1

    .line 1566
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1568
    :cond_1
    if-eqz v14, :cond_2

    .line 1569
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1572
    :cond_2
    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 1573
    invoke-virtual/range {p0 .. p2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ClearDataReScreenOnOffArrayTable(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1575
    :cond_3
    return-void
.end method

.method UpdateToScreenOnOffTimeDB(Landroid/content/Context;Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;)V
    .locals 12
    .parameter "context"
    .parameter "inScreenOnOffTime"

    .prologue
    const/4 v2, 0x0

    .line 1581
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1582
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v6, v4, v10

    .line 1584
    .local v6, currentSecs:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1585
    .local v3, date:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1587
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1588
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1589
    const-string v1, "From_Moth"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1590
    const-string v1, "From_Day"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1591
    const-string v1, "From_Hour"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    const-string v1, "From_Minutes"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getFromMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1593
    const-string v1, "To_Moth"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1594
    const-string v1, "To_Day"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1595
    const-string v1, "To_Hour"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1596
    const-string v1, "To_Minutes"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getToMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1597
    const-string v1, "Stay_Time"

    invoke-virtual {p2}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1598
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1600
    if-eqz v8, :cond_0

    .line 1601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1603
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, action:Ljava/lang/String;
    const-string v18, "SMARTSYNC_SHARED"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    .line 222
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_ON:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 226
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SystemScreenOnStatus:Z

    .line 227
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 229
    .local v9, alarmManager:Landroid/app/AlarmManager;
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    if-eqz v18, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 233
    .local v10, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 234
    .local v15, now:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 237
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    sget-wide v19, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    sub-long v19, v15, v19

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 238
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 239
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 240
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 241
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 242
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->getStayTime()J

    move-result-wide v18

    sget-wide v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SCREEN_ON_OFF_TRIGGER_WRITE_SCREEN_ONOFF_ARRAYLIST:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    .line 244
    sget-object v19, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    monitor-enter v19

    .line 246
    :try_start_0
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    sget-object v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v10           #c:Ljava/util/Calendar;
    .end local v15           #now:J
    :cond_0
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 257
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 258
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnWifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 259
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOnMobile:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 260
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffWifibycheck:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 261
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_OnlyTurnOffWifi:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 262
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_TurnOffMobilebycheck:Landroid/app/PendingIntent;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 264
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ScreenOnCancelAlarm(Landroid/content/Context;)V

    .line 265
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CancelManualModeAlarm(Landroid/content/Context;)V

    .line 491
    .end local v9           #alarmManager:Landroid/app/AlarmManager;
    :cond_1
    :goto_0
    return-void

    .line 251
    .restart local v9       #alarmManager:Landroid/app/AlarmManager;
    .restart local v10       #c:Ljava/util/Calendar;
    .restart local v15       #now:J
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 268
    .end local v9           #alarmManager:Landroid/app/AlarmManager;
    .end local v10           #c:Ljava/util/Calendar;
    .end local v15           #now:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_QUICKBOOT_POWEROFF:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 271
    const/16 v18, 0x0

    sput-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 272
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    sput-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 276
    .restart local v10       #c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 278
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 279
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 280
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 282
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const-wide/16 v19, 0x4d2

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setStayTime(J)V

    .line 283
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x4d2

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMonth(I)V

    .line 284
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x4d2

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToDay(I)V

    .line 285
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x4d2

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToHour(I)V

    .line 286
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x4d2

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setToMinute(I)V

    .line 288
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    sget-object v19, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sget-wide v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncServiceStartTime:J

    sub-long v18, v18, v20

    sget-wide v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWER_ON_OFF_TRIGGER_WRITE_DB:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_1

    .line 295
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 305
    .end local v10           #c:Ljava/util/Calendar;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_BROADCAST_SMARTSYNCSERVICE_START:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncServiceStartTime:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataStartTime:J

    .line 314
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 316
    sget-object v19, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    monitor-enter v19

    .line 317
    :try_start_2
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 318
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceStartTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceStartTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceStartAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 318
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .line 324
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 326
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CancelManualModeAlarm(Landroid/content/Context;)V

    .line 327
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 329
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 334
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_BROADCAST_TIME_CONFIG_CANCEL_SETTING:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 336
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->CancelManualModeAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_UPDATE_GOLDEN_TABLE:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 340
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PREF_POWER_SLEEP_MODE"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 344
    .local v6, SmartSynServiceRunning:Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_1

    .line 346
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateGoldenTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateGoldenTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateGoldenAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 351
    .end local v6           #SmartSynServiceRunning:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 356
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    invoke-direct/range {v18 .. v18}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;-><init>()V

    sput-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mScreenOffStayTime:J

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 360
    .restart local v10       #c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 361
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMonth(I)V

    .line 362
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromDay(I)V

    .line 363
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromHour(I)V

    .line 364
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTime:Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/framework/activity/powersaver/ScreenOnOffTime;->setFromMinute(I)V

    .line 368
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SCREEN_OFF h ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SCREEN_OFF T="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->ScreenOffSetAlarm(Landroid/content/Context;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataEndTime:J

    .line 390
    sget-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataStartTime:J

    sget-wide v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataEndTime:J

    sub-long v18, v18, v20

    sget-wide v20, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->TRIGGER_SCREEN_ONOFF_ARRAYLIST_TO_DB:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_8

    sget-object v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mUserScreenOnOffTimeArrayList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 393
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sput-wide v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSmartSyncUpdateScreenDataStartTime:J

    .line 396
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceUpdateScreenOnTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncUpdateScreenOnAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    :cond_8
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SystemScreenOnStatus:Z

    goto/16 :goto_0

    .line 408
    .end local v10           #c:Ljava/util/Calendar;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SMARTSYNC_SERVICE_BROADCAST_SCREEN_OFF_TIME:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 410
    sput-object p1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mContext:Landroid/content/Context;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PREF_POWER_SLEEP_MODE"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 421
    .restart local v6       #SmartSynServiceRunning:Z
    sget-boolean v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->SystemScreenOnStatus:Z

    if-nez v18, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_a

    .line 423
    new-instance v18, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;-><init>(Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceScreenOnTimeTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mServiceScreenOnTimeTask:Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver$SmartSyncServiceScreenOffTimeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    :cond_a
    const/4 v5, 0x0

    .line 429
    .local v5, PowerSaverBehavior:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 431
    .local v11, cr:Landroid/content/ContentResolver;
    packed-switch v5, :pswitch_data_0

    .line 450
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PREF_NEW_POWER_SAVER_MODE_ENABLE"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 451
    .local v14, mAlldaySleepModeRunning:Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PREF_WIFI_STATES"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 456
    .local v7, Wifi_States:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mSystemScreenOnSharedpref:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "PREF_MOBILE_STATES"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 466
    .local v4, Mobile_States:Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_b

    if-nez v4, :cond_b

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 470
    .restart local v15       #now:J
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 472
    .restart local v9       #alarmManager:Landroid/app/AlarmManager;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWERSAVERMODE_TURN_OFF_WIFI:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 474
    .local v13, intent_power_saver_mode_wifi:Landroid/content/Intent;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 475
    .local v17, pendingIntent:Landroid/app/PendingIntent;
    const/16 v18, 0x0

    const-wide/32 v19, 0x15f90

    add-long v19, v19, v15

    move/from16 v0, v18

    move-wide/from16 v1, v19

    move-object/from16 v3, v17

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 477
    sput-object v17, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->mPendingIntent_OnlyTurnOffWifi:Landroid/app/PendingIntent;

    .line 480
    .end local v9           #alarmManager:Landroid/app/AlarmManager;
    .end local v13           #intent_power_saver_mode_wifi:Landroid/content/Intent;
    .end local v15           #now:J
    .end local v17           #pendingIntent:Landroid/app/PendingIntent;
    :cond_b
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_1

    .line 482
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncScreenOnOffTimeReceiver;->POWERSAVERMODE_TURN_OFF_MOBILE:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Lcom/android/settings/framework/activity/powersaver/PowerSaverModeReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v12, intent_power_saver_mode_mobile:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 436
    .end local v4           #Mobile_States:Z
    .end local v7           #Wifi_States:Z
    .end local v12           #intent_power_saver_mode_mobile:Landroid/content/Intent;
    .end local v14           #mAlldaySleepModeRunning:Z
    :pswitch_1
    const-string v18, "sleep_mode_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 441
    :pswitch_2
    const-string v18, "sleep_mode_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
