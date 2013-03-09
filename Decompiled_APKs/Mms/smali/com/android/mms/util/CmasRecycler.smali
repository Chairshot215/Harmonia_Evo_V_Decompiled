.class public Lcom/android/mms/util/CmasRecycler;
.super Ljava/lang/Object;
.source "CmasRecycler.java"


# static fields
.field private static final BATCH_DELETE_COUNT:I = 0x5

.field private static final CMAS_DEFAULT_SORT_ORDER:Ljava/lang/String; = "received_time DESC"

.field protected static final CMAS_PROJECTION:[Ljava/lang/String; = null

.field private static final CMAS_RECYCLE_CONDITION:Ljava/lang/String; = "locked = 0"

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_RECEIVED_TIME:I = 0x1

.field private static final HTC_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CmasRecycler"

.field private static final URGENT_DELETE_COUNT:I = 0x5

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/util/CmasRecycler;->lock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "received_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/CmasRecycler;->CMAS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static composeDeleteWhere(Ljava/util/ArrayList;II)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "total"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 159
    const-string v3, "CmasRecycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    const-string v3, "_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    :cond_1
    const/4 v2, 0x0

    .line 170
    .local v2, where:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 171
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    :cond_2
    const-string v3, "CmasRecycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "where> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v2
.end method

.method private static delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "url"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, count:I
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 215
    const-string v2, "CmasRecycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete result> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CmasRecycler"

    const-string v3, "SQLiteException when delete: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "CmasRecycler"

    const-string v3, "Exception when delete: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAllCmasId()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v5, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/util/CmasRecycler;->CMAS_PROJECTION:[Ljava/lang/String;

    const-string v7, "locked = 0"

    const/4 v8, 0x0

    const-string v9, "received_time DESC"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/mms/util/CmasRecycler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 86
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    .line 88
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 89
    .local v1, count:I
    const-string v5, "CmasRecycler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-lez v1, :cond_1

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 94
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v2           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v1           #count:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1       #count:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    move-object v3, v4

    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v1           #count:I
    :cond_2
    return-object v3

    .line 98
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "url"
    .parameter "values"

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 199
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    const-string v2, "CmasRecycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CmasRecycler"

    const-string v3, "SQLiteException when insert: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CmasRecycler"

    const-string v3, "Exception when insert: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isLowStorage()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/android/mms/MmsApp;->isSmsStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 73
    .local v0, lowSmsStorage:Z
    :goto_0
    const-string v4, "CmasRecycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lowSmsStorage> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_1

    .line 79
    :goto_1
    return v3

    .end local v0           #lowSmsStorage:Z
    :cond_0
    move v0, v3

    .line 72
    goto :goto_0

    .line 77
    .restart local v0       #lowSmsStorage:Z
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/wrap/com/google/android/mms/util/HtcWrapSqliteWrapper;->isLowStorage(Landroid/content/Context;)Z

    move-result v1

    .line 78
    .local v1, sqlWrapLowStorage:Z
    const-string v4, "CmasRecycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sqlWrapLow> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    move v3, v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 228
    const/4 v6, 0x0

    .line 230
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 239
    :goto_0
    return-object v6

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "CmasRecycler"

    const-string v1, "SQLiteException when query: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 236
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "CmasRecycler"

    const-string v1, "Exception when query: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static sleep(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 252
    :try_start_0
    const-string v0, "CmasRecycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static tryToInsertWithRecycle(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "values"

    .prologue
    .line 105
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->isLowStorage()Z

    move-result v9

    if-nez v9, :cond_0

    .line 106
    invoke-static {p0, p1}, Lcom/android/mms/util/CmasRecycler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 151
    :goto_0
    return-object v7

    .line 108
    :cond_0
    const-string v9, "CmasRecycler"

    const-string v10, "low Storage"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->existBufferFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 110
    const-string v9, "CmasRecycler"

    const-string v10, "delete buffer file"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->deleteBufferFile()V

    .line 114
    :cond_1
    sget-object v10, Lcom/android/mms/util/CmasRecycler;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->getAllCmasId()Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    .local v1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v1, :cond_2

    .line 118
    invoke-static {}, Lcom/android/mms/util/CmasRecycler;->urgentDelete()I

    .line 119
    invoke-static {p0, p1}, Lcom/android/mms/util/CmasRecycler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    monitor-exit v10

    goto :goto_0

    .line 152
    .end local v1           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 122
    .restart local v1       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const/4 v7, 0x0

    .line 123
    .local v7, uri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 124
    .local v6, size:I
    div-int/lit8 v3, v6, 0x5

    .line 125
    .local v3, quotient:I
    rem-int/lit8 v4, v6, 0x5

    .line 126
    .local v4, remainder:I
    add-int/lit8 v2, v6, -0x1

    .line 127
    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 128
    const/4 v9, 0x5

    invoke-static {v1, v9, v2}, Lcom/android/mms/util/CmasRecycler;->composeDeleteWhere(Ljava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, where:Ljava/lang/String;
    add-int/lit8 v2, v2, -0x5

    .line 130
    if-eqz v8, :cond_4

    .line 132
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-static {v9, v8, v11}, Lcom/android/mms/util/CmasRecycler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, result:I
    const-wide/16 v11, 0x64

    invoke-static {v11, v12}, Lcom/android/mms/util/CmasRecycler;->sleep(J)V

    .line 135
    invoke-static {p0, p1}, Lcom/android/mms/util/CmasRecycler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 136
    if-eqz v7, :cond_4

    .line 140
    .end local v5           #result:I
    .end local v8           #where:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_5

    monitor-exit v10

    goto :goto_0

    .line 127
    .restart local v8       #where:Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    .end local v8           #where:Ljava/lang/String;
    :cond_5
    if-lez v4, :cond_6

    .line 143
    const-string v9, "CmasRecycler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remainder> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v1, v4, v2}, Lcom/android/mms/util/CmasRecycler;->composeDeleteWhere(Ljava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8       #where:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 147
    sget-object v9, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-static {v9, v8, v11}, Lcom/android/mms/util/CmasRecycler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 148
    .restart local v5       #result:I
    invoke-static {p0, p1}, Lcom/android/mms/util/CmasRecycler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 151
    .end local v5           #result:I
    .end local v8           #where:Ljava/lang/String;
    :cond_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static urgentDelete()I
    .locals 6

    .prologue
    .line 182
    const-string v0, "_id IN   (SELECT _id   FROM cmas   WHERE locked = 0   ORDER BY received_time ASC   LIMIT ?)"

    .line 189
    .local v0, DELETE_WHERE:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 191
    .local v2, selectionArgs:[Ljava/lang/String;
    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id IN   (SELECT _id   FROM cmas   WHERE locked = 0   ORDER BY received_time ASC   LIMIT ?)"

    invoke-static {v3, v4, v2}, Lcom/android/mms/util/CmasRecycler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, result:I
    const-string v3, "CmasRecycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "urgentDelete count! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v1
.end method
