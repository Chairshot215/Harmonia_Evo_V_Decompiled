.class public Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;
.super Landroid/content/ContentProvider;
.source "DLNAProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static DLNA:Ljava/lang/String;

.field private static DatabaseName:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static bLaunchGalleryDMC:Z

.field private static bLaunchMusicDMC:Z


# instance fields
.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, "DLNAProvider"

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "dlna.db"

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->DatabaseName:Ljava/lang/String;

    .line 40
    const-string v0, "dlna"

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->DLNA:Ljava/lang/String;

    .line 44
    sput-boolean v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchMusicDMC:Z

    .line 45
    sput-boolean v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchGalleryDMC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    .line 382
    return-void
.end method

.method private static CreateTable10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 319
    if-nez p0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "DROP TABLE IF EXISTS music"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    const-string v0, "DROP TABLE IF EXISTS album"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "DROP TABLE IF EXISTS server"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    const-string v0, "DROP TABLE IF EXISTS access"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "CREATE TABLE IF NOT EXISTS album (_id INTEGER PRIMARY KEY ,filepath TEXT ,indexid INTEGER );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const-string v0, "CREATE TABLE IF NOT EXISTS audio (_id INTEGER PRIMARY KEY ,filepath TEXT ,indexid INTEGER ,title TEXT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY ,filepath TEXT ,indexid INTEGER );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    const-string v0, "CREATE TABLE IF NOT EXISTS server (_id INTEGER PRIMARY KEY ,content_id TEXT ,content_name TEXT ,container TEXT ,file_type INTEGER ,uri_path TEXT ,artist_name TEXT ,thumbnail_uri TEXT ,albumart_uri TEXT ,serve_id TEXT ,updated INTEGER,index_id INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string v0, "CREATE TABLE IF NOT EXISTS access (_id INTEGER PRIMARY KEY ,server_id TEXT ,container TEXT ,access_time INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static CreateTriger10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 378
    return-void
.end method

.method private static CreateView10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 375
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V

    return-void
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "volume"

    .prologue
    .line 270
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v3, "DLNAProvider.attachVolume()+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    monitor-exit v3

    .line 291
    :goto_0
    return-object v1

    .line 280
    :cond_0
    new-instance v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->DatabaseName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 282
    .local v0, db:Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 289
    .local v1, res:Landroid/net/Uri;
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v3, "DLNAProvider.attachVolume()-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v0           #db:Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
    .end local v1           #res:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter "uri"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseHelper(Landroid/net/Uri;)Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;

    move-result-object v0

    .line 237
    .local v0, database:Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 243
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_0
.end method

.method private getDatabaseHelper(Landroid/net/Uri;)Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
    .locals 2
    .parameter "uri"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->mDatabases:Ljava/util/HashMap;

    sget-object v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->DLNA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;

    goto :goto_0
.end method

.method private insertInernal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "val"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->GetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, sTable:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 123
    const-string v5, "unknown"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 126
    .local v2, rowId:J
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, res:Landroid/net/Uri;
    goto :goto_0
.end method

.method private static updateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V
    .locals 4
    .parameter "db"
    .parameter "storageType"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v3, 0x1

    .line 299
    if-eq p3, v3, :cond_0

    .line 300
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 303
    :cond_0
    if-le p2, p3, :cond_1

    .line 304
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 309
    :cond_1
    const/16 v0, 0xa

    if-ge p2, v0, :cond_2

    .line 311
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->CreateTable10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 312
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->CreateView10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->CreateTriger10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 315
    :cond_2
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v1, 0x0

    .line 162
    sget-object v3, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAProvider.delete()+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 166
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->GetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, sTable:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 176
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, nRes:I
    sget-object v3, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAProvider.delete()-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 186
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v3, "DLNAProvider.getType()+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, ""

    .line 190
    .local v1, sRet:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->GetDMCRequestType(Landroid/net/Uri;)I

    move-result v0

    .line 191
    .local v0, nRequest:I
    sparse-switch v0, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAProvider.getType()- music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchMusicDMC:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Gallery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchGalleryDMC:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-object v1

    .line 194
    :sswitch_0
    sget-boolean v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchMusicDMC:Z

    if-eqz v2, :cond_0

    .line 195
    const-string v1, "true"

    goto :goto_0

    .line 198
    :sswitch_1
    sput-boolean v5, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchMusicDMC:Z

    goto :goto_0

    .line 201
    :sswitch_2
    sput-boolean v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchMusicDMC:Z

    goto :goto_0

    .line 204
    :sswitch_3
    sget-boolean v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchGalleryDMC:Z

    if-eqz v2, :cond_0

    .line 205
    const-string v1, "true"

    goto :goto_0

    .line 208
    :sswitch_4
    sput-boolean v5, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchGalleryDMC:Z

    goto :goto_0

    .line 211
    :sswitch_5
    sput-boolean v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->bLaunchGalleryDMC:Z

    goto :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_5
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 99
    sget-object v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAProvider.insert()+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->insertInernal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, res:Landroid/net/Uri;
    sget-object v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v2, "DLNAProvider.insert()-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v1, "DLNAProvider.onCreate()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->DLNA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 227
    sget-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v1, "DLNAProvider.onCreate()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .parameter "uri"
    .parameter "mode"

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 468
    .local v6, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 470
    :cond_0
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAProvider][openAssetFile]: Invalid uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 496
    .end local v6           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v6

    .line 475
    .restart local v6       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_1
    if-nez v1, :cond_2

    move-object v0, v6

    .line 484
    .end local v6           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 477
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v6       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 479
    .local v7, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAProvider][openAssetFile]: Exception1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    move-object v6, v0

    .line 496
    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v6       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 490
    :catch_1
    move-exception v7

    .line 492
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNAProvider][openAssetFile]: Exception2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .end local v6           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    goto :goto_2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 52
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAProvider.query()+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getRawCmdServerContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 58
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 59
    const/4 v9, 0x0

    .line 90
    :goto_0
    return-object v9

    .line 61
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 63
    .local v9, c:Landroid/database/Cursor;
    goto :goto_0

    .line 68
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_2

    .line 71
    const/4 v9, 0x0

    goto :goto_0

    .line 74
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 75
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, limit:Ljava/lang/String;
    const/4 v5, 0x0

    .line 78
    .local v5, groupBy:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->GetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, sTable:Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 81
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 86
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    .restart local v9       #c:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    const-string v3, "DLNAProvider.query()-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-object v3, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAProvider.update()+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->getDatabaseForUri(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/provider/DLNAUriMatch;->GetTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, sTable:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, nRes:I
    sget-object v3, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAProvider.update()-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
