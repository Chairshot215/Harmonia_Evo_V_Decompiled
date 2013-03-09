.class public Lcom/android/providers/contacts/SocialProvider;
.super Landroid/content/ContentProvider;
.source "SocialProvider.java"


# static fields
.field private static final ACTIVITIES:I = 0x3e8

.field private static final ACTIVITIES_AUTHORED_BY:I = 0x3ea

.field private static final ACTIVITIES_ID:I = 0x3e9

.field private static final CONTACT_STATUS_ID:I = 0xbb8

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "thread_published DESC, published ASC"

.field private static final TAG:Ljava/lang/String; = "SocialProvider ~~~~"

.field private static final sActivitiesContactsProjectionMap:Ljava/util/HashMap;
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

.field private static final sActivitiesProjectionMap:Ljava/util/HashMap;
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

.field private static final sContactsProjectionMap:Ljava/util/HashMap;
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

.field private static final sRawContactsProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v2, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v2, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 73
    sget-object v1, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 75
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "com.android.social"

    const-string v3, "activities"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    const-string v2, "com.android.social"

    const-string v3, "activities/#"

    const/16 v4, 0x3e9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    const-string v2, "com.android.social"

    const-string v3, "activities/authored_by/#"

    const/16 v4, 0x3ea

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    const-string v2, "com.android.social"

    const-string v3, "contact_status/#"

    const/16 v4, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "display_name"

    const-string v3, "contact.display_name AS display_name"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v3, "raw_contacts._id AS _id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "contact_id"

    const-string v3, "contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sRawContactsProjectionMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v3, "activities._id AS _id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "res_package"

    const-string v3, "package AS res_package"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "mimetype"

    const-string v3, "mimetype"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "raw_id"

    const-string v3, "raw_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "in_reply_to"

    const-string v3, "in_reply_to"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "author_contact_id"

    const-string v3, "author_contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "target_contact_id"

    const-string v3, "target_contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "published"

    const-string v3, "published"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "thread_published"

    const-string v3, "thread_published"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "summary"

    const-string v3, "summary"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "link"

    const-string v3, "link"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "thumbnail"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sActivitiesProjectionMap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 117
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sRawContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 118
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sActivitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 119
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 18
    .parameter "db"
    .parameter "inReplyTo"
    .parameter "threadPublished"

    .prologue
    .line 260
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v17, values:Landroid/content/ContentValues;
    const-string v4, "thread_published"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v4, "activities"

    const-string v5, "in_reply_to= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 270
    .local v16, replies:I
    if-nez v16, :cond_1

    .line 293
    :cond_0
    return-void

    .line 278
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v15, rawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "activities"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "raw_id"

    aput-object v7, v6, v4

    const-string v7, "in_reply_to = ?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 283
    .local v12, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 290
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 291
    .local v14, rawId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/providers/contacts/SocialProvider;->adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J
    .locals 12
    .parameter "db"
    .parameter "rawId"
    .parameter "defaultValue"

    .prologue
    .line 230
    const/4 v9, 0x0

    .line 231
    .local v9, inReplyTo:Ljava/lang/String;
    move-wide v10, p3

    .line 233
    .local v10, threadPublished:J
    const-string v1, "activities"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "in_reply_to"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "published"

    aput-object v3, v2, v0

    const-string v3, "raw_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 237
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 242
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 245
    if-eqz v9, :cond_1

    .line 248
    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/providers/contacts/SocialProvider;->getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v10

    .line 251
    .end local v10           #threadPublished:J
    :cond_1
    return-wide v10

    .line 242
    .restart local v10       #threadPublished:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private insertActivity(Landroid/content/ContentValues;)J
    .locals 13
    .parameter "values"

    .prologue
    .line 182
    iget-object v10, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    .line 184
    .local v1, id:J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    :try_start_0
    const-string v10, "res_package"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 192
    const-string v10, "package_id"

    iget-object v11, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    :cond_0
    const-string v10, "res_package"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 196
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, mimeType:Ljava/lang/String;
    const-string v10, "mimetype_id"

    iget-object v11, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 200
    const-string v10, "published"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 201
    .local v6, published:J
    move-wide v8, v6

    .line 203
    .local v8, threadPublished:J
    const-string v10, "in_reply_to"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, inReplyTo:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 205
    invoke-direct {p0, v0, v3, v6, v7}, Lcom/android/providers/contacts/SocialProvider;->getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v8

    .line 208
    :cond_1
    const-string v10, "thread_published"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v10, "activities"

    const-string v11, "raw_id"

    invoke-virtual {v0, v10, v11, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 214
    const-string v10, "raw_id"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 215
    const-string v10, "raw_id"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10, v6, v7}, Lcom/android/providers/contacts/SocialProvider;->adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 218
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    return-wide v1

    .line 220
    .end local v3           #inReplyTo:Ljava/lang/String;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #published:J
    .end local v8           #threadPublished:J
    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 144
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v9, 0x0

    .line 298
    iget-object v6, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 300
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 301
    .local v5, match:I
    packed-switch v5, :pswitch_data_0

    .line 313
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 304
    .local v0, activityId:J
    const-string v6, "activities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 309
    .end local v0           #activityId:J
    :goto_0
    return v6

    .line 308
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 309
    .local v2, contactId:J
    const-string v6, "activities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "author_contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 391
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 392
    .local v3, match:I
    sparse-switch v3, :sswitch_data_0

    .line 403
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :sswitch_0
    const-string v4, "vnd.android.cursor.dir/activity"

    .line 401
    :goto_0
    return-object v4

    .line 397
    :sswitch_1
    iget-object v4, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 398
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 399
    .local v0, activityId:J
    iget-object v4, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getActivityMimeType(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 401
    .end local v0           #activityId:J
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_2
    const-string v4, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 155
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 156
    .local v2, match:I
    const-wide/16 v0, 0x0

    .line 157
    .local v0, id:J
    packed-switch v2, :pswitch_data_0

    .line 164
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/SocialProvider;->insertActivity(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 167
    sget-object v4, Landroid/provider/SocialContract$Activities;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, result:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/SocialProvider;->onChange(Landroid/net/Uri;)V

    .line 169
    return-object v3

    .line 157
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/contacts/COpenHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 134
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 328
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 329
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v10, 0x0

    .line 331
    .local v10, limit:Ljava/lang/String;
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 332
    .local v18, match:I
    sparse-switch v18, :sswitch_data_0

    .line 373
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :sswitch_0
    const-string v4, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 335
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 377
    :goto_0
    if-nez p5, :cond_0

    .line 378
    const-string p5, "thread_published DESC, published ASC"

    .line 382
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 383
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v15, v4, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 386
    :cond_1
    return-object v15

    .line 341
    .end local v15           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 342
    .local v11, activityId:J
    const-string v4, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 343
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    .end local v11           #activityId:J
    :sswitch_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 350
    .local v16, contactId:J
    const-string v4, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 351
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "author_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    .end local v16           #contactId:J
    :sswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 358
    .local v13, aggId:J
    const-string v4, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 359
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 363
    const-string v4, "in_reply_to IS NULL AND "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "author_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 367
    const-string p5, "published DESC"

    .line 368
    const-string v10, "1"

    .line 369
    goto/16 :goto_0

    .line 332
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0xbb8 -> :sswitch_3
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
