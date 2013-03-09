.class public Lcom/google/android/partnersetup/RlzProvider;
.super Landroid/content/ContentProvider;
.source "RlzProvider.java"


# static fields
.field public static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

.field private mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 49
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "apps"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "apps/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "pings"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "pings/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "events"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "events/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzprovider"

    const-string v2, "events/pending"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private findRowIdForAppsTable(Landroid/content/ContentValues;)J
    .locals 10
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzDbAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 312
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = \"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "app_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "app_name"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, where:Ljava/lang/String;
    const-string v1, "apps"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 316
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 318
    .local v9, idCol:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 321
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 323
    .end local v9           #idCol:I
    :goto_0
    return-wide v1

    .line 321
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 323
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private findRowIdForEventsTable(Landroid/content/ContentValues;)J
    .locals 10
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzDbAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "%s = \"%s\" AND %s = \"%s\""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ap"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ap"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "event_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "event_type"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, where:Ljava/lang/String;
    const-string v1, "events"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 340
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 342
    .local v9, idCol:I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 345
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v9           #idCol:I
    :goto_0
    return-wide v1

    .line 345
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 347
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/16 v9, 0x29

    const/4 v6, 0x1

    .line 352
    iget-object v5, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v5}, Lcom/google/android/partnersetup/RlzDbAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 354
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 382
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    :pswitch_0
    const-string v5, "apps"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 385
    .local v1, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 386
    return v1

    .line 359
    .end local v1           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, appId:Ljava/lang/String;
    const-string v6, "pings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 362
    .restart local v1       #count:I
    goto :goto_0

    .line 360
    .end local v1           #count:I
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 364
    .end local v0           #appId:Ljava/lang/String;
    :pswitch_2
    const-string v5, "pings"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 365
    .restart local v1       #count:I
    goto :goto_0

    .line 367
    .end local v1           #count:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .local v4, pingId:Ljava/lang/String;
    const-string v6, "pings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 371
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 368
    .end local v1           #count:I
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 373
    .end local v4           #pingId:Ljava/lang/String;
    :pswitch_4
    const-string v5, "events"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 374
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 376
    .end local v1           #count:I
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, eventId:Ljava/lang/String;
    const-string v6, "events"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 380
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 377
    .end local v1           #count:I
    :cond_2
    const-string v5, ""

    goto :goto_3

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getDbAdapter()Lcom/google/android/partnersetup/RlzDbAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 188
    sget-object v0, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.partnersetup.app"

    .line 201
    :goto_0
    return-object v0

    .line 192
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.google.android.partnersetup.app"

    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.partnersetup.ping"

    goto :goto_0

    .line 196
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.google.android.partnersetup.ping"

    goto :goto_0

    .line 199
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.partnersetup.event"

    goto :goto_0

    .line 201
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.google.android.partnersetup.event"

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 21
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v3}, Lcom/google/android/partnersetup/RlzDbAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 211
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 298
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :pswitch_1
    const-string v3, "apps"

    const-string v5, "current_rlz"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 215
    .local v19, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v19, v5

    if-gez v3, :cond_0

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzProvider;->findRowIdForAppsTable(Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 225
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v3, v19, v5

    if-gez v3, :cond_2

    .line 301
    :cond_1
    :goto_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_2
    sget-object v3, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 230
    .local v10, appUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 296
    .end local v10           #appUri:Landroid/net/Uri;
    :goto_1
    return-object v10

    .line 233
    .end local v19           #rowId:J
    :pswitch_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 235
    const/16 v18, 0x0

    .line 238
    .local v18, pingUri:Landroid/net/Uri;
    :try_start_0
    const-string v3, "pings"

    const-string v5, "contents"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v19

    .line 240
    .restart local v19       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v19, v5

    if-gez v3, :cond_3

    .line 268
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 245
    :cond_3
    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "min(_id)"

    aput-object v5, v4, v3

    .line 249
    .local v4, proj:[Ljava/lang/String;
    const-string v3, "pings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 251
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 253
    .local v14, maxID:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 254
    .local v16, minID:J
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/partnersetup/RlzProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-interface {v3}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->getMaxTableSize()I

    move-result v13

    .line 256
    .local v13, maxEntries:I
    sub-long v5, v14, v16

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    int-to-long v7, v13

    cmp-long v3, v5, v7

    if-lez v3, :cond_4

    .line 257
    const-string v3, "pings"

    const-string v5, "_id <= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    int-to-long v8, v13

    sub-long v8, v14, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    .end local v13           #maxEntries:I
    .end local v14           #maxID:J
    .end local v16           #minID:J
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 265
    sget-object v3, Lcom/google/android/partnersetup/RlzProtocol$Pings;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v10, v18

    .line 271
    goto/16 :goto_1

    .line 261
    :cond_5
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 268
    .end local v4           #proj:[Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v19           #rowId:J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 273
    .end local v18           #pingUri:Landroid/net/Uri;
    :pswitch_3
    const-string v3, "events"

    const-string v5, "ap"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 275
    .restart local v19       #rowId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v19, v5

    if-gez v3, :cond_6

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzProvider;->findRowIdForEventsTable(Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 289
    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v3, v19, v5

    if-ltz v3, :cond_1

    .line 293
    sget-object v3, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 295
    .local v12, eventUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v12, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v10, v12

    .line 296
    goto/16 :goto_1

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    .line 75
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 78
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 84
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 86
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 88
    .local v16, queryType:I
    const/4 v12, 0x0

    .line 89
    .local v12, limit:Ljava/lang/String;
    const/4 v4, 0x7

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    .line 91
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 94
    .local v3, proj:[Ljava/lang/String;
    const-string v4, "events"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 95
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v15, idsToChange:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v4}, Lcom/google/android/partnersetup/RlzDbAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 98
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 99
    const-string v4, "status=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 101
    .local v13, c:Landroid/database/Cursor;
    const/4 v14, 0x1

    .line 102
    .local v14, firstID:Z
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    if-nez v14, :cond_0

    .line 104
    const-string v4, " OR "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    const-string v4, "events._id"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, "="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const/4 v14, 0x0

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 114
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v17, values:Landroid/content/ContentValues;
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v4, "events"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    const-string v4, "events LEFT OUTER JOIN apps ON events.ap=apps.app_name"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 123
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const-string v11, "events._id ASC"

    .line 128
    .local v11, orderBy:Ljava/lang/String;
    :goto_1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 130
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v13, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 182
    .end local v3           #proj:[Ljava/lang/String;
    .end local v14           #firstID:Z
    .end local v15           #idsToChange:Ljava/lang/StringBuilder;
    .end local v17           #values:Landroid/content/ContentValues;
    :goto_2
    return-object v13

    .line 126
    .end local v11           #orderBy:Ljava/lang/String;
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v14       #firstID:Z
    .restart local v15       #idsToChange:Ljava/lang/StringBuilder;
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v11, p5

    .restart local v11       #orderBy:Ljava/lang/String;
    goto :goto_1

    .line 134
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v14           #firstID:Z
    .end local v15           #idsToChange:Ljava/lang/StringBuilder;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_3
    packed-switch v16, :pswitch_data_0

    .line 174
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 139
    :pswitch_1
    const-string v4, "apps"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 142
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    const-string v11, "status DESC"

    .line 178
    .restart local v11       #orderBy:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v4}, Lcom/google/android/partnersetup/RlzDbAdapter;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 179
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 181
    .restart local v13       #c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v13, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_2

    .line 145
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #orderBy:Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :cond_4
    move-object/from16 v11, p5

    .line 147
    .restart local v11       #orderBy:Ljava/lang/String;
    goto :goto_3

    .line 149
    .end local v11           #orderBy:Ljava/lang/String;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 152
    :pswitch_3
    const-string v4, "pings"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 155
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    const-string v11, "time_completed DESC"

    .restart local v11       #orderBy:Ljava/lang/String;
    goto :goto_3

    .line 158
    .end local v11           #orderBy:Ljava/lang/String;
    :cond_5
    move-object/from16 v11, p5

    .line 159
    .restart local v11       #orderBy:Ljava/lang/String;
    goto :goto_3

    .line 161
    .end local v11           #orderBy:Ljava/lang/String;
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 164
    :pswitch_5
    const-string v4, "events"

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    const-string v11, "_id ASC"

    .restart local v11       #orderBy:Ljava/lang/String;
    goto/16 :goto_3

    .line 170
    .end local v11           #orderBy:Ljava/lang/String;
    :cond_6
    move-object/from16 v11, p5

    .line 172
    .restart local v11       #orderBy:Ljava/lang/String;
    goto/16 :goto_3

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method setPreferences(Lcom/google/android/partnersetup/RlzPreferencesInterface;)V
    .locals 0
    .parameter "prefs"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 70
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/16 v9, 0x29

    const/4 v6, 0x1

    .line 391
    iget-object v5, p0, Lcom/google/android/partnersetup/RlzProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {v5}, Lcom/google/android/partnersetup/RlzDbAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 393
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/google/android/partnersetup/RlzProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 422
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 395
    :pswitch_0
    const-string v5, "apps"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 426
    return v1

    .line 398
    .end local v1           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    .local v0, appId:Ljava/lang/String;
    const-string v6, "apps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 402
    .restart local v1       #count:I
    goto :goto_0

    .line 399
    .end local v1           #count:I
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 404
    .end local v0           #appId:Ljava/lang/String;
    :pswitch_2
    const-string v5, "pings"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 405
    .restart local v1       #count:I
    goto :goto_0

    .line 407
    .end local v1           #count:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 408
    .local v4, pingId:Ljava/lang/String;
    const-string v6, "pings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 411
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 408
    .end local v1           #count:I
    :cond_1
    const-string v5, ""

    goto :goto_2

    .line 413
    .end local v4           #pingId:Ljava/lang/String;
    :pswitch_4
    const-string v5, "events"

    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 414
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 416
    .end local v1           #count:I
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    .local v3, eventId:Ljava/lang/String;
    const-string v6, "events"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 420
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 417
    .end local v1           #count:I
    :cond_2
    const-string v5, ""

    goto :goto_3

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
