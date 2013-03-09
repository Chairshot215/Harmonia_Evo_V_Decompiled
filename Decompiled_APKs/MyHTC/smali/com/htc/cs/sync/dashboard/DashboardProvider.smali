.class public final Lcom/htc/cs/sync/dashboard/DashboardProvider;
.super Landroid/content/ContentProvider;
.source "DashboardProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.cs.dashboard"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CSSHARED:Landroid/net/Uri; = null

.field private static final CSSHARED:I = 0x3

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final PATH:Ljava/lang/String; = "uplink"

.field public static final PATH_CSSHARED:Ljava/lang/String; = "csshared"

.field public static final QUERY_COLUMNS:[Ljava/lang/String; = null

.field public static final QUERY_COLUMNS_CSSHARE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPLINK:I = 0x1

.field private static final UPLINK_ID:I = 0x2

.field private static final _DEBUG:Z

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25
    const-class v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.htc.cs.dashboard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uplink"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.htc.cs.dashboard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "csshared"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    .line 50
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cs.dashboard"

    const-string v2, "uplink"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cs.dashboard"

    const-string v2, "uplink/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cs.dashboard"

    const-string v2, "csshared"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 119
    :try_start_0
    sget-object v6, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 120
    .local v4, matchedUriId:I
    packed-switch v4, :pswitch_data_0

    .line 149
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t delete that URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v4           #matchedUriId:I
    :catch_0
    move-exception v2

    .line 152
    .local v2, dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".delete(): SQLiteDiskIOException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 158
    .end local v2           #dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 123
    .restart local v4       #matchedUriId:I
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 124
    .local v5, wdb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "uplink"

    invoke-virtual {v5, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, count:I
    goto :goto_1

    .line 131
    .end local v1           #count:I
    .end local v5           #wdb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_1
    iget-object v6, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 132
    .restart local v5       #wdb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, changedItemId:Ljava/lang/String;
    const-string v6, "uplink"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 136
    .restart local v1       #count:I
    goto :goto_1

    .line 141
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v1           #count:I
    .end local v5           #wdb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_2
    iget-object v6, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 142
    .restart local v5       #wdb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "csshared"

    invoke-virtual {v5, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 145
    .restart local v1       #count:I
    goto :goto_1

    .line 154
    .end local v1           #count:I
    .end local v4           #matchedUriId:I
    .end local v5           #wdb:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    .line 155
    .local v3, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".delete(): SQLiteFullException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 16
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 170
    :try_start_0
    sget-object v13, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 171
    .local v3, matchedUriId:I
    packed-switch v3, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance v13, Ljava/lang/UnsupportedOperationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t delete that URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    .end local v3           #matchedUriId:I
    :catch_0
    move-exception v1

    .line 196
    .local v1, dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v13, "MyHTC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".insert(): SQLiteDiskIOException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 205
    .end local v1           #dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 173
    .restart local v3       #matchedUriId:I
    :pswitch_1
    if-nez p2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 174
    :cond_0
    :try_start_1
    const-string v13, "size"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v13}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 176
    .local v11, wdb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "uplink"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v13, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 177
    .local v6, rowId:J
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-gtz v13, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 178
    :cond_3
    sget-object v13, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 180
    .local v4, newUri:Landroid/net/Uri;
    goto :goto_1

    .line 183
    .end local v4           #newUri:Landroid/net/Uri;
    .end local v6           #rowId:J
    .end local v11           #wdb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_2
    if-nez p2, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    .line 184
    :cond_4
    const-string v13, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v13}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 186
    .local v12, wdb_csshared:Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "csshared"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 187
    .local v8, rowId_csshared:J
    const-wide/16 v13, 0x0

    cmp-long v13, v8, v13

    if-gtz v13, :cond_7

    const/4 v4, 0x0

    goto :goto_1

    .line 188
    :cond_7
    sget-object v13, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .local v5, newUri_csshared:Landroid/net/Uri;
    move-object v4, v5

    .line 190
    goto :goto_1

    .line 198
    .end local v3           #matchedUriId:I
    .end local v5           #newUri_csshared:Landroid/net/Uri;
    .end local v8           #rowId_csshared:J
    .end local v12           #wdb_csshared:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v2

    .line 199
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v13, "MyHTC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".insert(): SQLiteFullException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v10

    .line 202
    .local v10, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v13, "MyHTC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".insert(): SQLiteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/cs/sync/dashboard/DashboardProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/htc/cs/sync/dashboard/DashboardProvider;->mDbHelper:Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/cs/sync/dashboard/DashboardProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 219
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 220
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 221
    .local v9, matchedUriId:I
    packed-switch v9, :pswitch_data_0

    .line 234
    const/4 v10, 0x0

    .line 243
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #matchedUriId:I
    :goto_0
    return-object v10

    .line 223
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #matchedUriId:I
    :pswitch_0
    const-string v2, "uplink"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 236
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 238
    .local v10, ret:Landroid/database/Cursor;
    goto :goto_0

    .line 226
    .end local v10           #ret:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "uplink"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 227
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 239
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #matchedUriId:I
    :catch_0
    move-exception v8

    .line 240
    .local v8, dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/cs/sync/dashboard/DashboardProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".query(): SQLiteDiskIOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    .line 243
    const/4 v10, 0x0

    goto :goto_0

    .line 231
    .end local v8           #dioe:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #matchedUriId:I
    :pswitch_2
    :try_start_1
    const-string v2, "csshared"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method
