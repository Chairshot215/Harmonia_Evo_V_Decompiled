.class public Lcom/android/updater/db/UpdaterProvider;
.super Landroid/content/ContentProvider;
.source "UpdaterProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;,
        Lcom/android/updater/db/UpdaterProvider$CotaSettingsColumns;,
        Lcom/android/updater/db/UpdaterProvider$BlackListColumns;,
        Lcom/android/updater/db/UpdaterProvider$DetailColumns;,
        Lcom/android/updater/db/UpdaterProvider$SettingColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.android.updater"

.field private static final BLACKLIST:I = 0x5

.field private static final BLACKLIST_ID:I = 0x6

.field public static final BLACKLIST_TABLE:Ljava/lang/String; = "blacklist"

.field public static final BLACKLIST_URI:Landroid/net/Uri; = null

.field private static final COTA_SETTINGS:I = 0x7

.field private static final COTA_SETTINGS_ID:I = 0x8

.field public static final COTA_SETTINGS_TABLE:Ljava/lang/String; = "cotasettings"

.field public static final COTA_SETTINGS_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "fota.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final DETAIL:I = 0x3

.field private static final DETAIL_ID:I = 0x4

.field public static final DETAIL_TABLE:Ljava/lang/String; = "detail"

.field public static final DETAIL_URI:Landroid/net/Uri; = null

.field private static final LOG:Z = false

.field private static final SETTINGS:I = 0x1

.field public static final SETTINGS_URI:Landroid/net/Uri; = null

.field private static final SETTING_ID:I = 0x2

.field public static final SETTING_TABLE:Ljava/lang/String; = "settings"

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "content://com.android.updater/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/updater/db/UpdaterProvider;->SETTINGS_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.android.updater/detail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.android.updater/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://com.android.updater/cotasettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/updater/db/UpdaterProvider;->COTA_SETTINGS_URI:Landroid/net/Uri;

    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 86
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "settings/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "detail"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "detail/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "blacklist"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "blacklist/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "cotasettings"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.updater"

    const-string v2, "cotasettings/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/updater/db/UpdaterProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 258
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 262
    .local v1, result:I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 276
    iget-object v6, p0, Lcom/android/updater/db/UpdaterProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 280
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v6, "_name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 353
    :cond_1
    :goto_1
    return-object v3

    .line 282
    :pswitch_1
    if-eqz p2, :cond_1

    .line 286
    :try_start_0
    const-string v6, "detail"

    const-string v7, "appName"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 287
    .local v4, rowID:J
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->DETAIL_URI:Landroid/net/Uri;

    .line 288
    .local v0, contentUri:Landroid/net/Uri;
    cmp-long v6, v4, v9

    if-lez v6, :cond_0

    .line 289
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 290
    .local v3, returnUri:Landroid/net/Uri;
    goto :goto_1

    .line 292
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v3           #returnUri:Landroid/net/Uri;
    .end local v4           #rowID:J
    :catch_0
    move-exception v2

    .line 293
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | UpdaterProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error! UpdaterProvider can not insert :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_2
    if-eqz p2, :cond_1

    .line 304
    :try_start_1
    const-string v6, "blacklist"

    const-string v7, "blackFileUrl"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 305
    .restart local v4       #rowID:J
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->BLACKLIST_URI:Landroid/net/Uri;

    .line 306
    .restart local v0       #contentUri:Landroid/net/Uri;
    cmp-long v6, v4, v9

    if-lez v6, :cond_0

    .line 307
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 308
    .restart local v3       #returnUri:Landroid/net/Uri;
    goto :goto_1

    .line 310
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v3           #returnUri:Landroid/net/Uri;
    .end local v4           #rowID:J
    :catch_1
    move-exception v2

    .line 311
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | UpdaterProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error! UpdaterProvider can not insert :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_3
    if-eqz p2, :cond_1

    const-string v6, "_name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    :try_start_2
    const-string v6, "cotasettings"

    const-string v7, "_name"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 324
    .restart local v4       #rowID:J
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->COTA_SETTINGS_URI:Landroid/net/Uri;

    .line 325
    .restart local v0       #contentUri:Landroid/net/Uri;
    cmp-long v6, v4, v9

    if-lez v6, :cond_0

    .line 326
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 327
    .restart local v3       #returnUri:Landroid/net/Uri;
    goto :goto_1

    .line 329
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v3           #returnUri:Landroid/net/Uri;
    .end local v4           #rowID:J
    :catch_2
    move-exception v2

    .line 330
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "UpdaterAPK | UpdaterProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error! UpdaterProvider can not insert :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v6, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 348
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknow URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    :pswitch_4
    const-string v6, "settings"

    const-string v7, "_name"

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 345
    .restart local v4       #rowID:J
    sget-object v0, Lcom/android/updater/db/UpdaterProvider;->SETTINGS_URI:Landroid/net/Uri;

    .line 351
    .restart local v0       #contentUri:Landroid/net/Uri;
    cmp-long v6, v4, v9

    if-lez v6, :cond_3

    .line 352
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 353
    .restart local v3       #returnUri:Landroid/net/Uri;
    goto/16 :goto_1

    .line 356
    .end local v3           #returnUri:Landroid/net/Uri;
    :cond_3
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/db/UpdaterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;

    invoke-direct {v2, v0}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/updater/db/UpdaterProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/4 v2, 0x1

    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return v2

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "UpdaterAPK | UpdaterProvider"

    const-string v3, "onCreate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 375
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 377
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/android/updater/db/UpdaterProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 418
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 419
    .local v8, cur:Landroid/database/Cursor;
    return-object v8

    .line 379
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cur:Landroid/database/Cursor;
    :pswitch_0
    const-string v2, "settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_1
    const-string v2, "settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 388
    :pswitch_2
    const-string v2, "detail"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_3
    const-string v2, "detail"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 398
    :pswitch_4
    const-string v2, "blacklist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_5
    const-string v2, "blacklist"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 408
    :pswitch_6
    const-string v2, "cotasettings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :pswitch_7
    const-string v2, "cotasettings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/updater/db/UpdaterProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 427
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/updater/db/UpdaterProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 452
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :pswitch_1
    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, count:I
    :goto_0
    return v0

    .line 434
    .end local v0           #count:I
    :pswitch_2
    const-string v2, "detail"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 435
    .restart local v0       #count:I
    goto :goto_0

    .line 440
    .end local v0           #count:I
    :pswitch_3
    const-string v2, "blacklist"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 441
    .restart local v0       #count:I
    goto :goto_0

    .line 446
    .end local v0           #count:I
    :pswitch_4
    const-string v2, "cotasettings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 447
    .restart local v0       #count:I
    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
