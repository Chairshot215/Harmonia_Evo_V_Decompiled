.class public Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/CacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCountCacheUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils$CacheHandler;
    }
.end annotation


# instance fields
.field final DELAY_TIME:J

.field volatile isDirty:Z

.field isReady:Z

.field mContext:Landroid/content/Context;

.field private mGroupCountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRollbackCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;

.field private queryHandler:Landroid/os/Handler;

.field private final sqlQueryIsMember:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mRollbackCache:Ljava/util/HashMap;

    .line 48
    const-string v0, "\tSELECT COUNT(data._id)   FROM  raw_contacts JOIN data on (data.raw_contact_id = raw_contacts._id AND data.mimetype_id = %d AND raw_contacts._id =%d ) "

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->sqlQueryIsMember:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->DELAY_TIME:J

    .line 53
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 2
    .parameter "c"
    .parameter "thread"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mRollbackCache:Ljava/util/HashMap;

    .line 48
    const-string v0, "\tSELECT COUNT(data._id)   FROM  raw_contacts JOIN data on (data.raw_contact_id = raw_contacts._id AND data.mimetype_id = %d AND raw_contacts._id =%d ) "

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->sqlQueryIsMember:Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->DELAY_TIME:J

    .line 57
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mThread:Landroid/os/HandlerThread;

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method


# virtual methods
.method public asyncInitGroupCount(J)V
    .locals 2
    .parameter "delayTime"

    .prologue
    const/16 v1, 0x1000

    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    :cond_0
    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decreaseCacheCount(Ljava/lang/String;I)I
    .locals 4
    .parameter "title"
    .parameter "decNumber"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 229
    const/4 v0, -0x1

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 231
    :cond_1
    const/4 v1, 0x0

    .line 232
    .local v1, value:Ljava/lang/Integer;
    const/4 v0, -0x1

    .line 233
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 234
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 235
    .restart local v1       #value:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    :cond_2
    if-lez p2, :cond_0

    .line 242
    if-ltz v0, :cond_0

    .line 243
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 244
    :goto_1
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    .end local v0           #count:I
    .end local v1           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 243
    .restart local v0       #count:I
    .restart local v1       #value:Ljava/lang/Integer;
    :cond_3
    sub-int/2addr v0, p2

    goto :goto_1
.end method

.method public getCacheCount(Ljava/lang/String;)I
    .locals 2
    .parameter "title"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, value:Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 168
    .restart local v0       #value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized handleRawContactChangeDelay(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 10
    .parameter "db"
    .parameter "rawContactId"
    .parameter "mimetypeId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z

    if-nez v5, :cond_0

    .line 142
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\tSELECT COUNT(data._id)   FROM  raw_contacts JOIN data on (data.raw_contact_id = raw_contacts._id AND data.mimetype_id = %d AND raw_contacts._id =%d ) "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 145
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 146
    .local v1, isMember:Z
    if-eqz v0, :cond_2

    .line 148
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-lez v5, :cond_3

    move v1, v3

    .line 150
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_2
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->markDirty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 136
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #isMember:Z
    .end local v2           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #isMember:Z
    .restart local v2       #sql:Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 148
    goto :goto_1

    .line 150
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized handleRawContactChangeImmediately(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .locals 10
    .parameter "db"
    .parameter "rawContactId"
    .parameter "mimetypeId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "\tSELECT COUNT(data._id)   FROM  raw_contacts JOIN data on (data.raw_contact_id = raw_contacts._id AND data.mimetype_id = %d AND raw_contacts._id =%d ) "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 121
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 122
    .local v1, isMember:Z
    if-eqz v0, :cond_2

    .line 124
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-lez v5, :cond_3

    move v1, v3

    .line 126
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    if-eqz v1, :cond_0

    .line 131
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->asyncInitGroupCount(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #isMember:Z
    .end local v2           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #isMember:Z
    .restart local v2       #sql:Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 124
    goto :goto_1

    .line 126
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized increaseCacheCount(Ljava/lang/String;I)I
    .locals 4
    .parameter "title"
    .parameter "addnumber"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 208
    const/4 v0, -0x1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 210
    :cond_1
    const/4 v1, 0x0

    .line 211
    .local v1, value:Ljava/lang/Integer;
    const/4 v0, -0x1

    .line 212
    .local v0, count:I
    if-eqz p1, :cond_2

    .line 213
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 214
    .restart local v1       #value:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    :cond_2
    if-lez p2, :cond_0

    .line 221
    if-ltz v0, :cond_0

    .line 222
    add-int/2addr v0, p2

    .line 223
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0           #count:I
    .end local v1           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initGroupsCount()V
    .locals 11

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 72
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mRollbackCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 75
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mRollbackCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 77
    if-eqz v6, :cond_2

    .line 78
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "title"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 80
    .local v10, titleIndex:I
    const-string v2, "summ_count"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 81
    .local v8, countIndex:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, title:Ljava/lang/String;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 83
    .local v7, count:I
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ltz v7, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #countIndex:I
    .end local v9           #title:Ljava/lang/String;
    .end local v10           #titleIndex:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 87
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z

    .line 90
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z

    return v0
.end method

.method public markDirty()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z

    .line 200
    return-void
.end method

.method public declared-synchronized pushCacheCount(Ljava/lang/String;I)V
    .locals 2
    .parameter "titile"
    .parameter "count"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeryGroupsCount()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isReady:Z

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->initGroupsCount()V

    goto :goto_0
.end method

.method public triggerFreshIfDirty()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z

    if-eqz v0, :cond_0

    .line 161
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->asyncInitGroupCount(J)V

    .line 163
    :cond_0
    return-void
.end method

.method public unmarkDirty()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->queryHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->isDirty:Z

    .line 193
    return-void
.end method

.method public declared-synchronized updateCache(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 176
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    const-string v4, "title"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, titleIndex:I
    const-string v4, "summ_count"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, countIndex:I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 182
    .local v0, count:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-ltz v0, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->mGroupCountCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    .end local v0           #count:I
    .end local v1           #countIndex:I
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #titleIndex:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 186
    :cond_1
    const/4 v4, -0x1

    :try_start_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcUtils/CacheUtils$GroupCountCacheUtils;->unmarkDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    monitor-exit p0

    return-void
.end method
