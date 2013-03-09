.class public Lcom/android/mms/task/UpdateDate2Task;
.super Lcom/android/mms/task/SampleTask;
.source "UpdateDate2Task.java"


# static fields
.field public static final EXCEPTION_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UpdateDate2Task"

.field private static uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://mms-sms-v2/rawQuery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/task/UpdateDate2Task;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/mms/task/SampleTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/task/UpdateDate2Task;Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/mms/task/UpdateDate2Task;->getID(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/task/UpdateDate2Task;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/mms/task/UpdateDate2Task;->processArray(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static getEmptyDate2Count(Landroid/content/Context;)I
    .locals 11
    .parameter "context"

    .prologue
    .line 22
    const/4 v10, 0x0

    .line 24
    .local v10, totalCount:I
    const/4 v8, 0x0

    .line 28
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/task/UpdateDate2Task;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "SELECT count(1) FROM sms WHERE date2 = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 36
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 38
    .local v7, count:I
    move v10, v7

    .line 45
    .end local v7           #count:I
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/task/UpdateDate2Task;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "SELECT count(1) FROM pdu WHERE date2 = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 60
    .restart local v7       #count:I
    add-int/2addr v10, v7

    .line 67
    .end local v7           #count:I
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_3
    :goto_1
    return v10

    .line 40
    :catch_0
    move-exception v9

    .line 41
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 42
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 43
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 62
    :catch_2
    move-exception v9

    .line 63
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 64
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v9

    .line 65
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getID(Z)Ljava/util/ArrayList;
    .locals 12
    .parameter "bSms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v7, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 79
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_3

    .line 80
    const-string v4, "SELECT _id FROM sms WHERE date2 = 0"

    .line 85
    .local v4, selection:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/task/UpdateDate2Task;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 93
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v10, 0x0

    .line 96
    .local v10, id:I
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 109
    .end local v10           #id:I
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v7           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    return-object v7

    .line 82
    .end local v4           #selection:Ljava/lang/String;
    .restart local v7       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const-string v4, "SELECT _id FROM pdu WHERE date2 = 0"

    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v9

    .line 101
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, v11

    goto :goto_1

    .line 104
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 105
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mError:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v11

    goto :goto_1

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private processArray(ZLjava/util/ArrayList;)V
    .locals 7
    .parameter "bSms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x64

    .line 140
    .local v1, interval:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 142
    :try_start_0
    iget-boolean v4, p0, Lcom/android/mms/task/SampleTask;->bPaused:Z

    if-eqz v4, :cond_0

    .line 143
    const-string v4, "UpdateDate2Task"

    const-string v5, "paused"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v5, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 146
    const-string v4, "UpdateDate2Task"

    const-string v6, "resumed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/mms/task/SampleTask;->bCanceled:Z

    if-eqz v4, :cond_2

    .line 153
    const-string v4, "UpdateDate2Task"

    const-string v5, "canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    return-void

    .line 147
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 149
    :catch_0
    move-exception v4

    goto :goto_1

    .line 157
    :cond_2
    const-string v3, "_id in ("

    .line 158
    .local v3, where:Ljava/lang/String;
    move v2, v0

    .local v2, j:I
    :goto_2
    add-int/lit8 v4, v0, 0x64

    if-ge v2, v4, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 159
    if-le v2, v0, :cond_3

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    iget v4, p0, Lcom/android/mms/task/SampleTask;->mProgress:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/task/SampleTask;->mProgress:I

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-direct {p0, p1, v3}, Lcom/android/mms/task/UpdateDate2Task;->updateDate2(ZLjava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/task/SampleTask;->mCallback:Lcom/android/mms/task/ICoreTaskCallback;

    invoke-virtual {p0}, Lcom/android/mms/task/UpdateDate2Task;->getProgressPercentage()F

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/mms/task/ICoreTaskCallback;->onProgress(F)V

    .line 169
    :cond_5
    const-string v4, "UpdateDate2Task"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progressing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/task/SampleTask;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    add-int/lit8 v0, v0, 0x64

    goto/16 :goto_0
.end method

.method private updateDate2(ZLjava/lang/String;)V
    .locals 9
    .parameter "bSms"
    .parameter "where"

    .prologue
    .line 116
    const/4 v7, 0x0

    .line 119
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 120
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE sms SET date2 = date WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, selection:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/task/UpdateDate2Task;->uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 134
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 136
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 122
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pdu SET date2 = date WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v4           #selection:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 128
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mError:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 130
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 131
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/task/SampleTask;->mError:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public varargs init([Ljava/lang/Integer;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 175
    return-void
.end method

.method public bridge synthetic init([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/task/UpdateDate2Task;->init([Ljava/lang/Integer;)V

    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/task/SampleTask;->bStarted:Z

    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/task/UpdateDate2Task$1;

    invoke-direct {v1, p0}, Lcom/android/mms/task/UpdateDate2Task$1;-><init>(Lcom/android/mms/task/UpdateDate2Task;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    .line 204
    iget-object v0, p0, Lcom/android/mms/task/SampleTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 205
    return-void
.end method
