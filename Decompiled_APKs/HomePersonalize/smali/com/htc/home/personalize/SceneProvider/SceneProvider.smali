.class public Lcom/htc/home/personalize/SceneProvider/SceneProvider;
.super Landroid/content/ContentProvider;
.source "SceneProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;,
        Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.home.personalize.SceneProvider.SceneProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "scene.db"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final DEFAULT_BOTTOM_APP_URI:Landroid/net/Uri; = null

.field public static final DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FAVORITE_TABLE_NAME:Ljava/lang/String; = "favorite"

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final SCENE_TABLE_NAME:Ljava/lang/String; = "scene"

.field private static final TAG:Ljava/lang/String; = "SceneProvider"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final localLOGD:Z


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "content://com.htc.home.personalize.SceneProvider.SceneProvider/scene"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.htc.home.personalize.SceneProvider.SceneProvider/download_scene"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DOWNLOADED_SCENE_CONTENT_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.htc.home.personalize.SceneProvider.SceneProvider/default_bottom_apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->DEFAULT_BOTTOM_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .parameter "context"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pathPermissions"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 173
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    .local v0, args:Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    :try_start_0
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 177
    const-string v3, "SceneProvider"

    const-string v4, "mDb is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "SceneProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 116
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 119
    .local v0, args:Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    :try_start_0
    iget-object v5, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    .line 120
    const-string v5, "SceneProvider"

    const-string v6, "mDb is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    :cond_0
    iget-object v5, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v6, v7, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 125
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 133
    .end local v2           #rowId:J
    :goto_0
    return-object v4

    .line 127
    .restart local v2       #rowId:J
    :cond_1
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v4, p1

    .line 130
    goto :goto_0

    .line 131
    .end local v2           #rowId:J
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "SceneProvider"

    const-string v6, "unable to open database file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 88
    :try_start_0
    new-instance v8, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    .local v8, args:Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 90
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v1, v8, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 93
    const-string v1, "SceneProvider"

    const-string v2, "mDb is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v8, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 97
    .local v10, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v10, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v8           #args:Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    .end local v10           #result:Landroid/database/Cursor;
    :goto_0
    return-object v10

    .line 100
    :catch_0
    move-exception v9

    .line 101
    .local v9, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const/4 v10, 0x0

    goto :goto_0

    .line 102
    .end local v9           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v9

    .line 103
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SceneProvider"

    const-string v2, "unable to open database file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 193
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    .local v0, args:Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;
    :try_start_0
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 197
    const-string v3, "SceneProvider"

    const-string v4, "mDb is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mOpenHelper:Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/home/personalize/SceneProvider/SceneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/SceneProvider/SceneProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/htc/home/personalize/SceneProvider/SceneProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, e:Landroid/database/SQLException;
    const-string v3, "SceneProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v1, -0x1

    goto :goto_0
.end method
