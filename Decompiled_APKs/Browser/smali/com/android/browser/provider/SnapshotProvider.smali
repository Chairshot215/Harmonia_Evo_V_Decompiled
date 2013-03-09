.class public Lcom/android/browser/provider/SnapshotProvider;
.super Landroid/content/ContentProvider;
.source "SnapshotProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;,
        Lcom/android/browser/provider/SnapshotProvider$Snapshots;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.browser.snapshots"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field static final SNAPSHOTS:I = 0xa

.field static final SNAPSHOTS_ID:I = 0xb

.field static final TABLE_SNAPSHOTS:Ljava/lang/String; = "snapshots"

.field static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field final mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    const-string v0, "content://com.android.browser.snapshots"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/SnapshotProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 68
    sget-object v0, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.snapshots"

    const-string v2, "snapshots"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.android.browser.snapshots"

    const-string v2, "snapshots/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 118
    new-instance v0, Lcom/android/browser/provider/SnapshotProvider$1;

    invoke-direct {v0, p0}, Lcom/android/browser/provider/SnapshotProvider$1;-><init>(Lcom/android/browser/provider/SnapshotProvider;)V

    iput-object v0, p0, Lcom/android/browser/provider/SnapshotProvider;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 235
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    move v1, v3

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 238
    :cond_1
    sget-object v4, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 239
    .local v2, match:I
    const/4 v1, 0x0

    .line 240
    .local v1, deleted:I
    packed-switch v2, :pswitch_data_0

    .line 254
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown delete URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :pswitch_0
    const-string v4, "snapshots._id=?"

    invoke-static {p2, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 243
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p3, v4}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 249
    :pswitch_1
    :try_start_0
    const-string v4, "snapshots"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_1
    if-lez v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 250
    :catch_0
    move-exception v4

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    if-nez v3, :cond_1

    .line 156
    new-instance v3, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    :cond_2
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, t:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/browser/provider/SnapshotProvider;->mOpenHelper:Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/browser/provider/SnapshotProvider$SnapshotDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    :cond_1
    :goto_0
    return-object v2

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, t:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    move-object v3, v6

    .line 229
    :goto_0
    return-object v3

    .line 211
    :cond_0
    sget-object v7, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 212
    .local v4, match:I
    const-wide/16 v1, -0x1

    .line 213
    .local v1, id:J
    packed-switch v4, :pswitch_data_0

    .line 222
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown insert URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 216
    :pswitch_0
    :try_start_0
    const-string v7, "snapshots"

    const-string v8, "title"

    invoke-virtual {v0, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 224
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    move-object v3, v6

    .line 225
    goto :goto_0

    .line 217
    :catch_0
    move-exception v5

    .line 218
    .local v5, t:Ljava/lang/Throwable;
    const-wide/16 v1, -0x1

    .line 220
    goto :goto_1

    .line 227
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_1
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 228
    .local v3, inserted:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/provider/SnapshotProvider;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 170
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 171
    const/4 v10, 0x0

    .line 196
    :goto_0
    return-object v10

    .line 173
    :cond_0
    sget-object v3, Lcom/android/browser/provider/SnapshotProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 174
    .local v11, match:I
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 175
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "limit"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, limit:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 187
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :pswitch_0
    const-string v3, "_id=?"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 179
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 183
    :pswitch_1
    const-string v3, "snapshots"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 190
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 192
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/provider/SnapshotProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/browser/provider/SnapshotProvider;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v10, v3, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 196
    .local v12, t:Ljava/lang/Throwable;
    const/4 v10, 0x0

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
