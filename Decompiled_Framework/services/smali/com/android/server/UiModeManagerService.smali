.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DMB_DONGLE_ENABLED:Ljava/lang/String; = "uimode_dmb_enabled"

.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

.field private final ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

.field private final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private mDeskDockDimScreenValue:I

.field private mDeskModeEnabled:Z

.field private final mDeskModeKeepsScreenOn:Z

.field private mDmbDongleEnabled:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

.field private mbIsCarDockStateChanged:Z

.field private mbIsGoogleCarPanelAppExisting:Z

.field private mbIsHtcDockModeAppExist:Z

.field private mbIsHtcLocationExist:Z

.field private mbIsHtcSetupWizardInstalled:Z

.field private mbIsKeepsScreenOn4DeskMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    iput v11, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v11, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    iput v10, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    iput v11, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iput v11, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    const-string v1, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_ENTER_HTC_NAVI_MODE:Ljava/lang/String;

    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_ENTER_CAR_MODE:Ljava/lang/String;

    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->ACTION_LOCATION_EXIT_CAR_MODE:Ljava/lang/String;

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    const-string v1, "com.htc.android.htcsetupwizard"

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->HTC_OOBE_PACKAGE_NAME:Ljava/lang/String;

    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    new-instance v1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    new-instance v1, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    new-instance v1, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x6

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v11, v1, Landroid/content/res/Configuration;->fontsize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_3

    move v1, v10

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_4

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "ui_night_mode"

    invoke-static {v1, v3, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "deskdock_dim_screen"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    new-instance v9, Lcom/android/server/UiModeManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/UiModeManagerService$SettingsObserver;-><init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    if-eq v1, v12, :cond_0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    :cond_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    if-eq v1, v12, :cond_1

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_2

    :cond_1
    move v11, v10

    :cond_2
    iput-boolean v11, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->checkAppPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    return-void

    :cond_3
    move v1, v11

    goto :goto_0

    :cond_4
    move v1, v11

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->launchHtcLocations()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/UiModeManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDeskDockDimScreenValue:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->getDimScreenTimeoutValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UiModeManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->exitHtcLocations()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x10804ec

    iput v2, v1, Landroid/app/Notification;->icon:I

    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104044d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104044e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private adjustStatusBarDeskModeLocked()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x20807bb

    iput v2, v1, Landroid/app/Notification;->icon:I

    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040546

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040547

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private checkAppPackageInstalled(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method private existCurrentModeIfAny(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v1, 0xf

    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_0

    if-eq p1, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableDeskMode(I)V

    :cond_0
    and-int/lit8 v1, v0, 0x3

    if-ne v1, v3, :cond_1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->disableCarMode(I)V

    :cond_2
    return-void
.end method

.method private exitHtcLocations()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.EXIT_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getAutoLaunchCarDock(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_launch_car_dock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoLaunchDeskDock(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "deskdock_auto_launch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimScreenTimeoutValue(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasOOBEState(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcSetupWizardInstalled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final isDeskDockState(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isGoogleCarPanelExisting(Landroid/content/Context;)Z
    .locals 12

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v10, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-nez v7, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v10, 0x10080

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "android.dock_home"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    :cond_2
    move v9, v8

    goto :goto_0
.end method

.method private isHtcDockModeAppExisting(Landroid/content/Context;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.htc.dockmode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private isHtcLocationExisting(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.htc.laputa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method private launchHtcLocations()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.locations.intent.ENTER_CAR_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableDeskMode(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDockState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastBroadcastState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCarModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mComputedNightMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    const-string v0, "  mLocation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableCarMode(I)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDeskMode(I)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/UiModeManagerService;->existCurrentModeIfAny(I)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentModeType()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v0, 0xf

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDockState()I
    .locals 1

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return v0
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    :cond_0
    return-void
.end method

.method setDeskModeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    :cond_0
    return-void
.end method

.method setDmbDongleLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    packed-switch p1, :pswitch_data_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uimode_dmb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v3

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    :goto_1
    or-int/2addr v1, v2

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v2, :cond_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_2

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v2, :cond_1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method updateDockState(I)V
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v3, :cond_6

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_1

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchCarDock(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_2

    monitor-exit v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->getAutoLaunchDeskDock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/UiModeManagerService;->hasOOBEState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v1, :cond_4

    monitor-exit v4

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v5, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    iget v3, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-ne v3, v6, :cond_8

    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/UiModeManagerService;->setDmbDongleLocked(Z)V

    if-ne v0, v5, :cond_9

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method final updateLocked(II)V
    .locals 17

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v9, 0x0

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcLocationExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isGoogleCarPanelExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const-string v9, "com.htc.laputa.navi.action.ENTER_HTC_NAVI_MODE"

    :cond_2
    :goto_1
    if-eqz v9, :cond_11

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enableFlags"

    move/from16 v0, p1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "disableFlags"

    move/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-nez v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_16

    :cond_4
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    :cond_6
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsCarDockStateChanged:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-nez v1, :cond_0

    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;->isHtcDockModeAppExisting(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarDeskModeLocked()V

    :cond_c
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_f
    const/16 v1, 0x20

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DMB_MODE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move-object/from16 v9, v16

    goto/16 :goto_1

    :cond_11
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_14

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcLocationExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_13

    :cond_12
    :goto_4
    if-eqz v11, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsGoogleCarPanelAppExisting:Z

    if-eqz v1, :cond_12

    const-string v1, "android.intent.category.CAR_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_15

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_12

    const-string v1, "android.intent.category.DESK_DOCK"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_12

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_12

    const-string v1, "android.intent.category.HOME"

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDmbDongleEnabled:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_17

    if-eqz v10, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsKeepsScreenOn4DeskMode:Z

    if-eqz v1, :cond_1b

    :cond_18
    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v14, v1, :cond_19

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_19
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mbIsHtcDockModeAppExist:Z

    if-eqz v1, :cond_1d

    const/4 v15, 0x1

    :goto_8
    if-eqz v15, :cond_1e

    if-nez v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1a
    const/4 v10, 0x0

    goto :goto_5

    :cond_1b
    const/4 v14, 0x0

    goto :goto_6

    :cond_1c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    :cond_1d
    const/4 v15, 0x0

    goto :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock4DeskDock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method updateTwilightLocked()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lcom/android/server/TwilightCalculator;

    invoke-direct {v1}, Lcom/android/server/TwilightCalculator;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    iget v4, v1, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v4, :cond_2

    const/4 v14, 0x0

    :goto_1
    const-wide/16 v12, 0x0

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    :cond_1
    const-wide/32 v4, 0x2932e00

    add-long v12, v2, v4

    :goto_2
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12, v13, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    :cond_2
    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    iget v11, v1, Lcom/android/server/TwilightCalculator;->mState:I

    const-wide/32 v4, 0xea60

    add-long/2addr v12, v4

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    const-wide/32 v4, 0x5265c00

    add-long v5, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    :cond_4
    const/4 v4, 0x1

    if-ne v11, v4, :cond_5

    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long/2addr v12, v4

    goto :goto_2

    :cond_5
    iget-wide v4, v1, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long/2addr v12, v4

    goto :goto_2
.end method
