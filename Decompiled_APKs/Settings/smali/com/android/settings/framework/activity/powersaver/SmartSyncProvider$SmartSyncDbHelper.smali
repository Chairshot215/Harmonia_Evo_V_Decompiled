.class Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SmartSyncProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartSyncDbHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE_SMARTSYNC_ACTIVITY_USAGE_TABLE:Ljava/lang/String; = "create table smartsync_activityusage (_id integer primary key autoincrement, date INTEGER,Application_Name STRING,Application_Launch_Count INTEGER, Application_Usage_Time INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_FRI_TABLE:Ljava/lang/String; = "create table smartsync_golden_fri (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_SAT_TABLE:Ljava/lang/String; = "create table smartsync_golden_sat (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_SUN_TABLE:Ljava/lang/String; = "create table smartsync_golden_sun (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_TABLE:Ljava/lang/String; = "create table smartsync_golden (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_THU_TABLE:Ljava/lang/String; = "create table smartsync_golden_thu (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_TUE_TABLE:Ljava/lang/String; = "create table smartsync_golden_tue (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_GOLDEN_WED_TABLE:Ljava/lang/String; = "create table smartsync_golden_wed (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_LOCATION_PREDITION_TABLE:Ljava/lang/String; = "create table smartsync_locationpredition (_id integer primary key autoincrement, date INTEGER,Location_Lat_Value DOUBLE,Location_Lng_Value DOUBLE,Location_From_Time INTEGER, Location_To_Time INTEGER, Location_Stay_Time INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_SCREEN_OFF_INTERVAL_TABLE:Ljava/lang/String; = "create table smartsync_screenoff (_id integer primary key autoincrement, date INTEGER,screen_off_time INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_TABLE:Ljava/lang/String; = "create table smartsync (_id integer primary key autoincrement, date INTEGER);"

.field private static final DATABASE_CREATE_SMARTSYNC_TIME_PREDITION_TABLE:Ljava/lang/String; = "create table smartsync_timepredition (_id integer primary key autoincrement, date INTEGER,From_Moth INTEGER,From_Day INTEGER, From_Hour INTEGER,From_Minutes INTEGER,To_Moth INTEGER,To_Day INTEGER, To_Hour INTEGER,To_Minutes INTEGER,Stay_Time DOUBLE);"

.field private static final DATABASE_CREATE_SMARTSYNC_USER_SETTING_TABLE:Ljava/lang/String; = "create table smartsync_usersetting (_id integer primary key autoincrement, date INTEGER,Day_From_Hour INTEGER,Day_From_Minutes INTEGER, Day_To_Hour INTEGER, Day_To_Minutes INTEGER);"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 701
    const-class v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 704
    const-string v0, "SmartSync.db"

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 705
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 708
    const-string v0, "create table smartsync (_id integer primary key autoincrement, date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    const-string v0, "create table smartsync_activityusage (_id integer primary key autoincrement, date INTEGER,Application_Name STRING,Application_Launch_Count INTEGER, Application_Usage_Time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v0, "create table smartsync_locationpredition (_id integer primary key autoincrement, date INTEGER,Location_Lat_Value DOUBLE,Location_Lng_Value DOUBLE,Location_From_Time INTEGER, Location_To_Time INTEGER, Location_Stay_Time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    const-string v0, "create table smartsync_timepredition (_id integer primary key autoincrement, date INTEGER,From_Moth INTEGER,From_Day INTEGER, From_Hour INTEGER,From_Minutes INTEGER,To_Moth INTEGER,To_Day INTEGER, To_Hour INTEGER,To_Minutes INTEGER,Stay_Time DOUBLE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    const-string v0, "create table smartsync_golden (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    const-string v0, "create table smartsync_golden_tue (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    const-string v0, "create table smartsync_golden_wed (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    const-string v0, "create table smartsync_golden_thu (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 717
    const-string v0, "create table smartsync_golden_fri (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 718
    const-string v0, "create table smartsync_golden_sat (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 719
    const-string v0, "create table smartsync_golden_sun (_id integer primary key autoincrement, date INTEGER,time INTEGER,AutoSync_Turn_OnOff INTEGER,Location_Service_Turn_OnOff INTEGER, Data_Link_Turn_OnOff INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    const-string v0, "create table smartsync_usersetting (_id integer primary key autoincrement, date INTEGER,Day_From_Hour INTEGER,Day_From_Minutes INTEGER, Day_To_Hour INTEGER, Day_To_Minutes INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 722
    const-string v0, "create table smartsync_screenoff (_id integer primary key autoincrement, date INTEGER,screen_off_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 727
    sget-object v0, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "DROP TABLE IF EXISTS smartsync"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    const-string v0, "DROP TABLE IF EXISTS smartsync_activityusage"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    const-string v0, "DROP TABLE IF EXISTS smartsync_locationpredition"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    const-string v0, "DROP TABLE IF EXISTS smartsync_timepredition"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_tue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 736
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_wed"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_thu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_fri"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 740
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_sat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string v0, "DROP TABLE IF EXISTS smartsync_golden_sun"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v0, "DROP TABLE IF EXISTS smartsync_usersetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    const-string v0, "DROP TABLE IF EXISTS smartsync_screenoff"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/activity/powersaver/SmartSyncProvider$SmartSyncDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    return-void
.end method
