.class public Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;
.super Landroid/content/ContentProvider;
.source "SmartSyncProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;
    }
.end annotation


# static fields
.field public static final ALARM_TIME:Ljava/lang/String; = "alarmtime"

.field public static final CONTENT_URI_SCREEN_OFF_INTERVAL:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_ACTIVITY_USAGE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_LOCATION_PREDITION:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SMARTSYNC_USER_SETTING:Landroid/net/Uri; = null

.field public static final CONTENT_URI_SYSTEM_ALARM_INFORMATION:Landroid/net/Uri; = null

.field private static final DATABASE_VERSION:I = 0x1f

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final DB_NAME:Ljava/lang/String; = "SmartSync.db"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final KEY_AUTOSYNC_TURN_ONOFF:Ljava/lang/String; = "AutoSync_Turn_OnOff"

.field public static final KEY_DATA_LINK_TURN_ONOFF:Ljava/lang/String; = "Data_Link_Turn_OnOff"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_EVERY_DAY_FROM_HOUR:Ljava/lang/String; = "Day_From_Hour"

.field public static final KEY_EVERY_DAY_FROM_MINUTES:Ljava/lang/String; = "Day_From_Minutes"

.field public static final KEY_EVERY_DAY_TO_HOUR:Ljava/lang/String; = "Day_To_Hour"

.field public static final KEY_EVERY_DAY_TO_MINUTES:Ljava/lang/String; = "Day_To_Minutes"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_LOCATION_FROM_TIME:Ljava/lang/String; = "Location_From_Time"

.field public static final KEY_LOCATION_LAT:Ljava/lang/String; = "Location_Lat_Value"

.field public static final KEY_LOCATION_LNG:Ljava/lang/String; = "Location_Lng_Value"

.field public static final KEY_LOCATION_SERVICE_TURN_ONOFF:Ljava/lang/String; = "Location_Service_Turn_OnOff"

.field public static final KEY_LOCATION_STAY_TIME:Ljava/lang/String; = "Location_Stay_Time"

.field public static final KEY_LOCATION_TO_TIME:Ljava/lang/String; = "Location_To_Time"

.field public static final KEY_SCREEN_OFF_INTERVAL_VALUE:Ljava/lang/String; = "screen_off_time"

.field public static final KEY_SCREEN_OFF_TIME_INTERVAL:Ljava/lang/String; = "Screen_Off_Time_Interval"

.field public static final KEY_SYS_PKG_APP_LAUNCH_COUNT:Ljava/lang/String; = "Application_Launch_Count"

.field public static final KEY_SYS_PKG_APP_NAME:Ljava/lang/String; = "Application_Name"

.field public static final KEY_SYS_PKG_APP_USAGE_TIME:Ljava/lang/String; = "Application_Usage_Time"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_TIME_PREDITION_FROM_DAY:Ljava/lang/String; = "From_Day"

.field public static final KEY_TIME_PREDITION_FROM_HOUR:Ljava/lang/String; = "From_Hour"

.field public static final KEY_TIME_PREDITION_FROM_MINUTES:Ljava/lang/String; = "From_Minutes"

.field public static final KEY_TIME_PREDITION_FROM_MONTH:Ljava/lang/String; = "From_Moth"

.field public static final KEY_TIME_PREDITION_STAY_TIME:Ljava/lang/String; = "Stay_Time"

.field public static final KEY_TIME_PREDITION_TO_DAY:Ljava/lang/String; = "To_Day"

.field public static final KEY_TIME_PREDITION_TO_HOUR:Ljava/lang/String; = "To_Hour"

.field public static final KEY_TIME_PREDITION_TO_MINUTES:Ljava/lang/String; = "To_Minutes"

.field public static final KEY_TIME_PREDITION_TO_MONTH:Ljava/lang/String; = "To_Moth"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field private static final SMARTSYNC:I = 0x1

.field private static final SMARTSYNC_ACTIVITY_USAGE:I = 0x2

.field private static final SMARTSYNC_ACTIVITY_USAGE_TABLE:Ljava/lang/String; = "smartsync_activityusage"

.field private static final SMARTSYNC_GOLDEN:I = 0x5

.field private static final SMARTSYNC_GOLDEN_FRI:I = 0xb

.field private static final SMARTSYNC_GOLDEN_FRI_TABLE:Ljava/lang/String; = "smartsync_golden_fri"

.field private static final SMARTSYNC_GOLDEN_SAT:I = 0xc

.field private static final SMARTSYNC_GOLDEN_SAT_TABLE:Ljava/lang/String; = "smartsync_golden_sat"

.field private static final SMARTSYNC_GOLDEN_SUN:I = 0xd

.field private static final SMARTSYNC_GOLDEN_SUN_TABLE:Ljava/lang/String; = "smartsync_golden_sun"

.field private static final SMARTSYNC_GOLDEN_TABLE:Ljava/lang/String; = "smartsync_golden"

.field private static final SMARTSYNC_GOLDEN_THU:I = 0xa

.field private static final SMARTSYNC_GOLDEN_THU_TABLE:Ljava/lang/String; = "smartsync_golden_thu"

.field private static final SMARTSYNC_GOLDEN_TUE:I = 0x8

.field private static final SMARTSYNC_GOLDEN_TUE_TABLE:Ljava/lang/String; = "smartsync_golden_tue"

.field private static final SMARTSYNC_GOLDEN_WED:I = 0x9

.field private static final SMARTSYNC_GOLDEN_WED_TABLE:Ljava/lang/String; = "smartsync_golden_wed"

.field private static final SMARTSYNC_LOCATION_PREDITION:I = 0x3

.field private static final SMARTSYNC_LOCATION_PREDITION_TABLE:Ljava/lang/String; = "smartsync_locationpredition"

.field private static final SMARTSYNC_SCREEN_OFF_INTERVAL:I = 0x7

.field private static final SMARTSYNC_SCREEN_OFF_INTERVAL_TABLE:Ljava/lang/String; = "smartsync_screenoff"

.field private static final SMARTSYNC_TABLE:Ljava/lang/String; = "smartsync"

.field private static final SMARTSYNC_TIME_PREDITION:I = 0x4

.field private static final SMARTSYNC_TIME_PREDITION_TABLE:Ljava/lang/String; = "smartsync_timepredition"

.field private static final SMARTSYNC_USER_SETTING:I = 0x6

.field private static final SMARTSYNC_USER_SETTING_TABLE:Ljava/lang/String; = "smartsync_usersetting"

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private TAG:Ljava/lang/String;

.field private dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

.field private mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 89
    const-string v0, "content://framework.activity.powersaver/smartsync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC:Landroid/net/Uri;

    .line 90
    const-string v0, "content://framework.activity.powersaver/smartsync_activityusage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_ACTIVITY_USAGE:Landroid/net/Uri;

    .line 91
    const-string v0, "content://framework.activity.powersaver/smartsync_locationpredition"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_LOCATION_PREDITION:Landroid/net/Uri;

    .line 92
    const-string v0, "content://framework.activity.powersaver/smartsync_timepredition"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    .line 93
    const-string v0, "content://framework.activity.powersaver/smartsync_golden"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    .line 95
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_tue"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    .line 97
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_wed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    .line 100
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_thu"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    .line 102
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_fri"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_sat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    .line 107
    const-string v0, "content://framework.activity.powersaver/smartsync_golden_sun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    .line 110
    const-string v0, "content://framework.activity.powersaver/smartsync_usersetting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_USER_SETTING:Landroid/net/Uri;

    .line 112
    const-string v0, "content://framework.activity.powersaver/smartsync_screenoff"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SCREEN_OFF_INTERVAL:Landroid/net/Uri;

    .line 114
    const-string v0, "content://com.htc.android.alarmclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SYSTEM_ALARM_INFORMATION:Landroid/net/Uri;

    .line 135
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 136
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_activityusage"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_locationpredition"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_timepredition"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_tue"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_wed"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_thu"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_fri"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_sat"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_golden_sun"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_usersetting"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "framework.activity.powersaver"

    const-string v2, "smartsync_screenoff"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 27
    const-string v0, "SmartSyncProvider"

    iput-object v0, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    .line 587
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v11, 0x0

    .line 386
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    .line 387
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    invoke-virtual {v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 388
    :cond_0
    const/4 v1, 0x0

    .line 389
    .local v1, count:I
    const/4 v0, 0x0

    .line 390
    .local v0, bIsByID:Z
    const/4 v6, 0x0

    .line 392
    .local v6, table_name:Ljava/lang/String;
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 433
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 394
    :pswitch_0
    const/4 v0, 0x1

    .line 396
    :pswitch_1
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_activityusage"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v6       #table_name:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 438
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 439
    .local v5, segment:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x29

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 468
    .end local v5           #segment:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_3
    move v2, v1

    .line 469
    .end local v1           #count:I
    .local v2, count:I
    return v2

    .line 399
    .end local v2           #count:I
    .restart local v1       #count:I
    :pswitch_2
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_locationpredition"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 402
    :pswitch_3
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_timepredition"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 405
    :pswitch_4
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 408
    :pswitch_5
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_tue"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 411
    :pswitch_6
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_wed"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 415
    :pswitch_7
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_thu"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 418
    :pswitch_8
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_fri"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 421
    :pswitch_9
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sat"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 424
    :pswitch_a
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sun"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 428
    :pswitch_b
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_usersetting"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 431
    :pswitch_c
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_screenoff"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 439
    .restart local v5       #segment:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, ""

    goto :goto_1

    .line 445
    .end local v5           #segment:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_2

    .line 447
    :catch_0
    move-exception v3

    .line 449
    .local v3, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "An Disk IO error occured "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 458
    .end local v3           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 459
    .local v3, e:Landroid/database/SQLException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const-string v7, "Failed to delete row into"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .end local v3           #e:Landroid/database/SQLException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 565
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync"

    .line 580
    :goto_0
    return-object v0

    .line 567
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.htc.smartsync_activityusage"

    goto :goto_0

    .line 568
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_locationpredition"

    goto :goto_0

    .line 569
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_timepredition"

    goto :goto_0

    .line 570
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden"

    goto :goto_0

    .line 571
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_tue"

    goto :goto_0

    .line 572
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_wed"

    goto :goto_0

    .line 574
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_thu"

    goto :goto_0

    .line 575
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_fri"

    goto :goto_0

    .line 576
    :pswitch_9
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_sat"

    goto :goto_0

    .line 577
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_golden_sun"

    goto :goto_0

    .line 579
    :pswitch_b
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_usersetting"

    goto :goto_0

    .line 580
    :pswitch_c
    const-string v0, "vnd.android.cursor.dir/vnd.htc.smartsync_screenoff"

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "_uri"
    .parameter "_initialValues"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 286
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    invoke-virtual {v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 288
    :cond_0
    const/4 v5, 0x0

    .line 289
    .local v5, table_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 291
    .local v0, content_uri:Landroid/net/Uri;
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 344
    :goto_0
    const-wide/16 v2, 0x0

    .line 346
    .local v2, rowID:J
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "date"

    invoke-virtual {v7, v5, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 370
    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    .line 371
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 372
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    :goto_1
    invoke-virtual {v7, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 377
    .end local v6           #uri:Landroid/net/Uri;
    :goto_2
    return-object v6

    .line 294
    .end local v2           #rowID:J
    :pswitch_0
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_activityusage"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_ACTIVITY_USAGE:Landroid/net/Uri;

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_locationpredition"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_LOCATION_PREDITION:Landroid/net/Uri;

    .line 300
    goto :goto_0

    .line 302
    :pswitch_2
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_timepredition"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_TIME_PREDITION:Landroid/net/Uri;

    .line 304
    goto :goto_0

    .line 306
    :pswitch_3
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN:Landroid/net/Uri;

    .line 308
    goto :goto_0

    .line 310
    :pswitch_4
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_tue"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 311
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_TUE:Landroid/net/Uri;

    .line 312
    goto :goto_0

    .line 314
    :pswitch_5
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_wed"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_WED:Landroid/net/Uri;

    .line 316
    goto :goto_0

    .line 318
    :pswitch_6
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_thu"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_THU:Landroid/net/Uri;

    .line 320
    goto :goto_0

    .line 322
    :pswitch_7
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_fri"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_FRI:Landroid/net/Uri;

    .line 324
    goto :goto_0

    .line 326
    :pswitch_8
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sat"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SAT:Landroid/net/Uri;

    .line 328
    goto :goto_0

    .line 330
    :pswitch_9
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sun"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_GOLDEN_SUN:Landroid/net/Uri;

    .line 332
    goto/16 :goto_0

    .line 335
    :pswitch_a
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_usersetting"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SMARTSYNC_USER_SETTING:Landroid/net/Uri;

    .line 337
    goto/16 :goto_0

    .line 339
    :pswitch_b
    new-instance v5, Ljava/lang/String;

    .end local v5           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_screenoff"

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v5       #table_name:Ljava/lang/String;
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->CONTENT_URI_SCREEN_OFF_INTERVAL:Landroid/net/Uri;

    goto/16 :goto_0

    .line 348
    .restart local v2       #rowID:J
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "An Disk IO error occured "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    .line 371
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 372
    .restart local v6       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    goto/16 :goto_1

    .line 359
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 360
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const-string v7, "Failed to insert row into"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    .line 371
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 372
    .restart local v6       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    goto/16 :goto_1

    .line 370
    .end local v1           #e:Landroid/database/SQLException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v7

    cmp-long v7, v2, v10

    if-lez v7, :cond_1

    .line 371
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 372
    .restart local v6       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    goto/16 :goto_1

    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    move-object v6, p1

    .line 377
    goto/16 :goto_2

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, context:Landroid/content/Context;
    :try_start_0
    new-instance v4, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    const/4 v5, 0x0

    const/16 v6, 0x1f

    invoke-direct {v4, v0, v5, v6}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 166
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "An Disk IO error occured "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, "while accessing the SQLite database file."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 178
    .local v1, e:Landroid/database/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    const-string v4, "Failed to insert row into"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v4, "while accessing the SQLite database file."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v4, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 201
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 246
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const-string v7, "date"

    .line 251
    .local v7, orderBy:Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 254
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v8

    .line 281
    :goto_2
    return-object v1

    .line 203
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_0
    const-string v1, "smartsync"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v1, "smartsync_activityusage"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v1, "smartsync_locationpredition"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_3
    const-string v1, "smartsync_timepredition"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_4
    const-string v1, "smartsync_golden"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :pswitch_5
    const-string v1, "smartsync_golden_tue"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_6
    const-string v1, "smartsync_golden_wed"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_7
    const-string v1, "smartsync_golden_thu"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :pswitch_8
    const-string v1, "smartsync_golden_fri"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_9
    const-string v1, "smartsync_golden_sat"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_a
    const-string v1, "smartsync_golden_sun"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_b
    const-string v1, "smartsync_usersetting"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_c
    const-string v1, "smartsync_screenoff"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    move-object/from16 v7, p5

    .restart local v7       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 262
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 264
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v10, sb:Ljava/lang/StringBuilder;
    const-string v1, "An Disk IO error occured "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "while accessing the SQLite database file."

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_2

    .line 273
    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v9

    .line 274
    .local v9, e:Landroid/database/SQLException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    const-string v1, "Failed to insert row into"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "while accessing the SQLite database file."

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 475
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    .line 476
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->dbHelper:Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    invoke-virtual {v7}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 477
    :cond_0
    const/4 v1, 0x0

    .line 478
    .local v1, count:I
    const/4 v0, 0x0

    .line 479
    .local v0, bIsByID:Z
    const/4 v6, 0x0

    .line 481
    .local v6, table_name:Ljava/lang/String;
    sget-object v7, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 522
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 483
    :pswitch_0
    const/4 v0, 0x1

    .line 485
    :pswitch_1
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_activityusage"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v6       #table_name:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 526
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 527
    .local v5, segment:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x29

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, p2, v7, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 558
    .end local v5           #segment:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_3
    move v2, v1

    .line 559
    .end local v1           #count:I
    .local v2, count:I
    return v2

    .line 488
    .end local v2           #count:I
    .restart local v1       #count:I
    :pswitch_2
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_locationpredition"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 491
    :pswitch_3
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_timepredition"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 494
    :pswitch_4
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 495
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 497
    :pswitch_5
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_tue"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 498
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 500
    :pswitch_6
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_wed"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v6       #table_name:Ljava/lang/String;
    goto :goto_0

    .line 504
    :pswitch_7
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_thu"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 505
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 507
    :pswitch_8
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_fri"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 510
    :pswitch_9
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sat"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 511
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 513
    :pswitch_a
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_golden_sun"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 517
    :pswitch_b
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_usersetting"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 518
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 520
    :pswitch_c
    new-instance v6, Ljava/lang/String;

    .end local v6           #table_name:Ljava/lang/String;
    const-string v7, "smartsync_screenoff"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v6       #table_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 527
    .restart local v5       #segment:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, ""

    goto :goto_1

    .line 533
    .end local v5           #segment:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->mSmartSyncDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 537
    :catch_0
    move-exception v3

    .line 539
    .local v3, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "An Disk IO error occured "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 548
    .end local v3           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 549
    .local v3, e:Landroid/database/SQLException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const-string v7, "Failed to update row into"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v7, "while accessing the SQLite database file."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v7, p0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .end local v3           #e:Landroid/database/SQLException;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
