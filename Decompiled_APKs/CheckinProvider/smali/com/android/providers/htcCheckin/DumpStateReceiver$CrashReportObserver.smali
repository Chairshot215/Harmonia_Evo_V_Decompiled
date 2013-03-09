.class Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;
.super Landroid/database/ContentObserver;
.source "DumpStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/DumpStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashReportObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHighestId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mHighestId:J

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    const/4 v6, 0x0

    .line 118
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 127
    :goto_0
    if-nez v6, :cond_0

    .line 128
    const-string v0, "_DumpStateReceiver"

    const-string v1, "Couldn\'t scan crashes database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v7

    .line 124
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "_DumpStateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not query Crashes in checkin provider. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mHighestId:J

    .line 132
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "self"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DumpStateReceiver.CrashReportObserver"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method public declared-synchronized run()V
    .locals 13

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id>? AND logs ISNULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v11, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mHighestId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_0
    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v6, 0x0

    .line 184
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v6, 0x0

    .line 168
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/android/providers/htcCheckin/DumpStateReceiver;->dumpStateTo(Ljava/io/OutputStream;Z)V

    .line 170
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "logs"

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id>? AND logs ISNULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v11, p0, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;->mHighestId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 179
    .local v7, num:I
    const-string v0, "_DumpStateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added state dump to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crashes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #num:I
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 182
    .local v9, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "_DumpStateReceiver"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
