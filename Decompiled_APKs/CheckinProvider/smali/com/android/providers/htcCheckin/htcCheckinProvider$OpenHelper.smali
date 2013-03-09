.class Lcom/android/providers/htcCheckin/htcCheckinProvider$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "htcCheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 80
    const-string v1, "htcCheckin.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 81
    const-string v1, "htcCheckin.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, file:Ljava/io/File;
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 88
    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag TEXT NOT NULL,value TEXT DEFAULT \"\",date INTEGER NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "CREATE INDEX events_index ON events (tag)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "CREATE TABLE stats (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag TEXT UNIQUE,count INTEGER DEFAULT 0,sum REAL DEFAULT 0.0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE crashes (_id INTEGER PRIMARY KEY AUTOINCREMENT,data TEXT NOT NULL,logs TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE properties (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag TEXT UNIQUE ON CONFLICT REPLACE,value TEXT DEFAULT \"\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE TABLE message (_id INTEGER PRIMARY KEY AUTOINCREMENT,link TEXT UNIQUE,version TEXT UNIQUE,feature TEXT UNIQUE,size TEXT UNIQUE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "CREATE TABLE appupdate (_id INTEGER PRIMARY KEY AUTOINCREMENT,apkOrder TEXT,source TEXT,packageName TEXT,timestamp TEXT,appSize TEXT,apkId TEXT,versionCode TEXT,finished TEXT,installType TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "old"
    .parameter "version"

    .prologue
    .line 142
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "DROP TABLE IF EXISTS stats"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "DROP TABLE IF EXISTS crashes"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP TABLE IF EXISTS properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "DROP TABLE IF EXISTS message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string v0, "DROP TABLE IF EXISTS appupdate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinProvider$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    return-void
.end method
