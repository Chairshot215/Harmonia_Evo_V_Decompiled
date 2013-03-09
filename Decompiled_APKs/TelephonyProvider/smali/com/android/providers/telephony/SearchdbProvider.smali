.class public Lcom/android/providers/telephony/SearchdbProvider;
.super Landroid/content/ContentProvider;
.source "SearchdbProvider.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final ERROR:Ljava/lang/String; = "error"

.field private static final LOCAL_LOGV:Z = false

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "message_count"

.field private static final NOTES:I = 0x1

.field private static NOTES_LIST_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTE_ID:I = 0x2

.field private static final NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final READ:Ljava/lang/String; = "read"

.field public static final RECIPIENT_ADDRESS:Ljava/lang/String; = "recipient_address"

.field public static final RECIPIENT_IDS:Ljava/lang/String; = "recipient_ids"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SNIPPET_CHARSET:Ljava/lang/String; = "snippet_cs"

.field static final TABLE_SEARCH:Ljava/lang/String; = "threads"

.field private static final TAG:Ljava/lang/String; = "SearchdbProvider"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string v0, "content://search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SearchdbProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    const-string v0, "content://search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SearchdbProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 290
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 294
    sget-object v0, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "search"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    sget-object v0, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "search"

    const-string v2, "#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SearchdbProvider;->NOTES_LIST_PROJECTION_MAP:Ljava/util/HashMap;

    .line 299
    sget-object v0, Lcom/android/providers/telephony/SearchdbProvider;->NOTES_LIST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/providers/telephony/SearchdbProvider;->NOTES_LIST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "recipient_address"

    const-string v2, "recipient_address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    return-void
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/providers/telephony/SearchdbProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 281
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 205
    sget-object v3, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 206
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/telephony/SearchdbProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v2, :pswitch_data_0

    .line 219
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :pswitch_0
    const-string v3, "threads"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    .line 225
    iget-object v3, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 233
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/SearchdbProvider;->notifyChange(Landroid/net/Uri;)V

    .line 235
    :cond_1
    return v0

    .line 213
    .end local v0           #count:I
    :pswitch_1
    const-string v4, "threads"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 216
    .restart local v0       #count:I
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 144
    sget-object v0, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.google.searchdb"

    .line 149
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.google.searchdb"

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 159
    const-string v5, "threads"

    .line 163
    .local v5, table:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 164
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 169
    .local v7, values:Landroid/content/ContentValues;
    :goto_0
    sget-object v8, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 170
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 173
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 174
    .local v1, now:Ljava/lang/Long;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    .local v2, r:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/providers/telephony/SearchdbProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "threads"

    const-string v9, "recipient_address"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 180
    .local v3, rowID:J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_3

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 182
    .local v6, uri:Landroid/net/Uri;
    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SearchdbProvider;->notifyChange(Landroid/net/Uri;)V

    .line 185
    iget-object v8, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v8, :cond_2

    .line 189
    iget-object v8, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v8}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 199
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    :goto_1
    return-object v6

    .line 195
    :cond_3
    const-string v8, "SearchdbProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SearchdbProvider.insert: failed! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/providers/telephony/SearchdbProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SearchdbProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    .line 103
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 106
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 107
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 120
    const-string v2, "SearchdbProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-object v5

    .line 109
    :pswitch_0
    const-string v2, "threads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    sget-object v2, Lcom/android/providers/telephony/SearchdbProvider;->NOTES_LIST_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 124
    :goto_1
    const/4 v7, 0x0

    .line 126
    .local v7, orderBy:Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    move-object v7, p5

    .line 132
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/SearchdbProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 136
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/SearchdbProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/SearchdbProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v9, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v9

    .line 138
    goto :goto_0

    .line 114
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v9           #ret:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "threads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-string v7, "date DESC"

    goto :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, count:I
    iget-object v2, p0, Lcom/android/providers/telephony/SearchdbProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 243
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/android/providers/telephony/SearchdbProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 258
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :pswitch_0
    const-string v2, "threads"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 262
    :goto_0
    if-lez v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/providers/telephony/SearchdbProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v2}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/SearchdbProvider;->notifyChange(Landroid/net/Uri;)V

    .line 275
    :cond_1
    return v0

    .line 249
    :pswitch_1
    if-eqz p3, :cond_2

    .line 250
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "WHERE not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_2
    const-string v3, "threads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 255
    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
