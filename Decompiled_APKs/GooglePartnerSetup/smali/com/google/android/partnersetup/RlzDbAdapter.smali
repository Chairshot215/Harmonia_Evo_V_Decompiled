.class public Lcom/google/android/partnersetup/RlzDbAdapter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RlzDbAdapter.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "rlz_data.db"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const-string v0, "rlz_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 44
    const-string v0, "CREATE TABLE apps (_id INTEGER PRIMARY KEY,app_name TEXT,current_rlz TEXT,status INTEGER,CONSTRAINT ap_unique UNIQUE(app_name) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "CREATE TABLE pings (_id INTEGER PRIMARY KEY,contents TEXT,time_completed INTEGER,result TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,ap TEXT,event_type TEXT,status INTEGER,CONSTRAINT event_unique UNIQUE(ap,event_type) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 71
    const-string v0, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "DROP TABLE IF EXISTS pings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/partnersetup/RlzDbAdapter;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    return-void
.end method
