.class public Lcom/htc/CustomizationSetup/AccountsProvider;
.super Landroid/content/ContentProvider;
.source "AccountsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/CustomizationSetup/AccountsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNTS:I = 0x1

.field private static final ACCOUNTS_ID:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final LOGV:Z = true

.field private static final NO_SUCH_ACCOUNT_NEWS:Ljava/lang/String; = "News"

.field private static final NO_SUCH_ACCOUNT_STOCK:Ljava/lang/String; = "Stocks"

.field private static final NO_SUCH_ACCOUNT_WEATHER:Ljava/lang/String; = "Weather"

.field private static final PACKAGE_CUSTOMIZATIONSETUP:Ljava/lang/String; = "com.htc.CustomizationSetup"

.field private static final PASSWORD:I = 0x3

.field private static final PASSWORD_ID:I = 0x4

.field public static final PASSWORD_URI:Landroid/net/Uri; = null

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG:Ljava/lang/String; = "AccountsProvider"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "content://com.htc.accounts/password"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->PASSWORD_URI:Landroid/net/Uri;

    .line 58
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 62
    sget-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.accounts"

    const-string v2, "accounts"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.accounts"

    const-string v2, "accounts/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.accounts"

    const-string v2, "password"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.accounts"

    const-string v2, "password/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v8, 0x1

    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v7, p0, Lcom/htc/CustomizationSetup/AccountsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 386
    :goto_0
    if-nez v1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 437
    :goto_1
    return v0

    .line 390
    :cond_0
    const/4 v0, -0x1

    .line 392
    .local v0, count:I
    const/4 v5, 0x0

    .line 393
    .local v5, segment:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 395
    .local v3, rowId:J
    sget-object v7, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 423
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot delete from URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 397
    :pswitch_0
    const-string v6, "accounts"

    .line 427
    .local v6, tableName:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v1, v6, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    const-string v7, "AccountsProvider"

    const-string v8, "Backup Socialnetwork, data changed, delete"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v7, "com.htc.CustomizationSetup"

    invoke-static {v7}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 400
    .end local v6           #tableName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #segment:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 401
    .restart local v5       #segment:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 402
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 407
    :goto_3
    const-string v6, "accounts"

    .line 408
    .restart local v6       #tableName:Ljava/lang/String;
    goto :goto_2

    .line 405
    .end local v6           #tableName:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 410
    :pswitch_2
    const-string v6, "password"

    .line 411
    .restart local v6       #tableName:Ljava/lang/String;
    goto :goto_2

    .line 413
    .end local v6           #tableName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #segment:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 414
    .restart local v5       #segment:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 415
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    :goto_4
    const-string v6, "password"

    .line 421
    .restart local v6       #tableName:Ljava/lang/String;
    goto/16 :goto_2

    .line 418
    .end local v6           #tableName:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 429
    .restart local v6       #tableName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 430
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 383
    .end local v0           #count:I
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v3           #rowId:J
    .end local v5           #segment:Ljava/lang/String;
    .end local v6           #tableName:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 382
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 381
    :catch_3
    move-exception v7

    goto/16 :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 239
    sget-object v1, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 240
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/com.htc.accounts"

    .line 248
    :goto_0
    return-object v1

    .line 244
    :pswitch_1
    const-string v1, "vnd.android.cursor.item/com.htc.accounts"

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/com.htc.password"

    goto :goto_0

    .line 248
    :pswitch_3
    const-string v1, "vnd.android.cursor.item/com.htc.password"

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x0

    .line 311
    sget-object v10, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 312
    .local v3, match:I
    const/4 v8, 0x0

    .line 315
    .local v8, values:Landroid/content/ContentValues;
    packed-switch v3, :pswitch_data_0

    .line 333
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 317
    :pswitch_1
    const-string v7, "accounts"

    .line 318
    .local v7, tableName:Ljava/lang/String;
    const-string v2, "_account"

    .line 319
    .local v2, itemName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 320
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 336
    .restart local v8       #values:Landroid/content/ContentValues;
    :goto_0
    const/4 v0, 0x0

    .line 338
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v10, p0, Lcom/htc/CustomizationSetup/AccountsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 344
    :goto_1
    if-nez v0, :cond_2

    move-object v4, v9

    .line 374
    :goto_2
    return-object v4

    .line 322
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "no initial values"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 325
    .end local v2           #itemName:Ljava/lang/String;
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_2
    const-string v7, "password"

    .line 326
    .restart local v7       #tableName:Ljava/lang/String;
    const-string v2, "show_password"

    .line 327
    .restart local v2       #itemName:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 328
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    invoke-direct {v8, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 330
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "no initial values"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 348
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const-wide/16 v5, -0x1

    .line 350
    .local v5, rowId:J
    :try_start_1
    invoke-virtual {v0, v7, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    .line 357
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_3

    move-object v4, v9

    .line 359
    goto :goto_2

    .line 351
    :catch_0
    move-exception v1

    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    move-object v4, v9

    .line 352
    goto :goto_2

    .line 353
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    move-object v4, v9

    .line 354
    goto :goto_2

    .line 361
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_3
    const-string v10, "AccountsProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added account rowId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v4, 0x0

    .line 364
    .local v4, newUrl:Landroid/net/Uri;
    invoke-static {p1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 366
    if-eqz v4, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 371
    :cond_4
    const-string v9, "AccountsProvider"

    const-string v10, "Backup Socialnetwork, data changed, insert"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v9, "com.htc.CustomizationSetup"

    invoke-static {v9}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 341
    .end local v4           #newUrl:Landroid/net/Uri;
    .end local v5           #rowId:J
    :catch_2
    move-exception v10

    goto :goto_1

    .line 340
    :catch_3
    move-exception v10

    goto :goto_1

    .line 339
    :catch_4
    move-exception v10

    goto :goto_1

    .line 315
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
    .line 121
    new-instance v0, Lcom/htc/CustomizationSetup/AccountsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/CustomizationSetup/AccountsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AccountsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 122
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/AccountsProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 130
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 133
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v5, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 134
    .local v18, match:I
    packed-switch v18, :pswitch_data_0

    .line 152
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    :pswitch_0
    const-string v5, "accounts"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 155
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/CustomizationSetup/AccountsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 157
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_0

    .line 158
    const/4 v14, 0x0

    .line 234
    :goto_1
    return-object v14

    .line 139
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_1
    const-string v5, "accounts"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 140
    const-string v5, "_id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :pswitch_2
    const-string v5, "password"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v5, "password"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 148
    const-string v5, "_id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 164
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_5

    .line 165
    const-string v5, "AccountsProvider"

    const-string v6, "Accounts.query: failed"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v12, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_3

    .line 173
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, account:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_account=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 180
    .local v20, where:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v5}, Lcom/htc/CustomizationSetup/AccountsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 182
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "_account"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v5, Lcom/htc/CustomizationSetup/AccountsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/htc/CustomizationSetup/AccountsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 189
    .end local v19           #values:Landroid/content/ContentValues;
    .end local v20           #where:Ljava/lang/String;
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 194
    .end local v11           #account:Ljava/lang/String;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v14, 0x0

    .line 199
    :cond_3
    const/4 v13, 0x0

    .line 200
    .local v13, accounts:[Landroid/accounts/Account;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v13

    .line 201
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .restart local v19       #values:Landroid/content/ContentValues;
    const/16 v16, 0x0

    .line 203
    .local v16, isMatch:Z
    if-eqz v13, :cond_a

    .line 204
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    array-length v5, v13

    if-ge v15, v5, :cond_a

    .line 205
    const/16 v17, 0x0

    .local v17, j:I
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    .line 206
    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 207
    const/16 v16, 0x1

    .line 205
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 167
    .end local v12           #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #accounts:[Landroid/accounts/Account;
    .end local v15           #i:I
    .end local v16           #isMatch:Z
    .end local v17           #j:I
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v14, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 187
    .restart local v11       #account:Ljava/lang/String;
    .restart local v12       #accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 194
    .end local v11           #account:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v14, 0x0

    throw v5

    .line 211
    .restart local v13       #accounts:[Landroid/accounts/Account;
    .restart local v15       #i:I
    .restart local v16       #isMatch:Z
    .restart local v17       #j:I
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_7
    if-nez v16, :cond_8

    .line 212
    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "Weather"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "Stocks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "News"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 225
    :cond_8
    :goto_6
    const/16 v16, 0x0

    .line 204
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 220
    :cond_9
    const-string v5, "_account"

    aget-object v6, v13, v15

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    aget-object v5, v13, v15

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v5, Lcom/htc/CustomizationSetup/AccountsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/htc/CustomizationSetup/AccountsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_6

    .line 230
    .end local v15           #i:I
    .end local v17           #j:I
    :cond_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v14, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v9, 0x1

    .line 256
    const/4 v0, -0x1

    .line 257
    .local v0, count:I
    const-wide/16 v4, 0x0

    .line 259
    .local v4, rowId:J
    sget-object v8, Lcom/htc/CustomizationSetup/AccountsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 260
    .local v3, match:I
    const/4 v1, 0x0

    .line 263
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v8, p0, Lcom/htc/CustomizationSetup/AccountsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 269
    :goto_0
    if-nez v1, :cond_0

    .line 270
    const/4 v8, -0x1

    .line 305
    :goto_1
    return v8

    .line 273
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 289
    :pswitch_0
    const/4 v7, 0x0

    .line 294
    .local v7, tableName:Ljava/lang/String;
    :goto_2
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 295
    const-string v8, "AccountsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** notifyChange() rowId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AccountsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :goto_3
    const-string v8, "AccountsProvider"

    const-string v9, "Backup Socialnetwork, data changed, update"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v8, "com.htc.CustomizationSetup"

    invoke-static {v8}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    move v8, v0

    .line 305
    goto :goto_1

    .line 275
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 276
    .local v6, segment:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 277
    const-string v7, "accounts"

    .line 278
    .restart local v7       #tableName:Ljava/lang/String;
    goto :goto_2

    .line 282
    .end local v6           #segment:Ljava/lang/String;
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 283
    .restart local v6       #segment:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 284
    const-string v7, "password"

    .line 285
    .restart local v7       #tableName:Ljava/lang/String;
    goto :goto_2

    .line 297
    .end local v6           #segment:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 298
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_3

    .line 266
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v7           #tableName:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 265
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 264
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
