.class Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteInstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;

    .line 112
    const-string v0, "localappstate.db"

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 147
    :try_start_0
    const-string v0, "DROP TABLE appstate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "database"

    .prologue
    .line 117
    const-string v0, "CREATE TABLE appstate (package_name STRING, auto_update INTEGER, desired_version INTEGER, download_uri STRING, delivery_data BLOB, delivery_data_timestamp_ms INTEGER,installer_state INTEGER, first_download_ms INTEGER, referrer STRING, account STRING, title STRING,flags INTEGER, continue_url STRING, last_notified_version INTEGER, PRIMARY KEY (package_name))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 141
    const-string v0, "Downgrading InstallerDataStore from %d to %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 122
    packed-switch p2, :pswitch_data_0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const-string v0, "ALTER TABLE appstate ADD COLUMN continue_url STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    :pswitch_1
    const-string v0, "ALTER TABLE appstate ADD COLUMN delivery_data_timestamp_ms INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    :pswitch_2
    const-string v0, "ALTER TABLE appstate ADD COLUMN last_notified_version INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
