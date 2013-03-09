.class public Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;
.super Ljava/lang/Thread;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateThreadsNameThread"
.end annotation


# instance fields
.field final addr:Ljava/lang/String;

.field final context:Landroid/content/Context;

.field final mThreadId:J

.field final sqlHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .parameter "_context"
    .parameter "threadId"
    .parameter "address"
    .parameter "helper"

    .prologue
    .line 1207
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1208
    iput-object p4, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->addr:Ljava/lang/String;

    .line 1209
    iput-object p5, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->sqlHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 1210
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->context:Landroid/content/Context;

    .line 1211
    iput-wide p2, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->mThreadId:J

    .line 1212
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1216
    sget-object v6, Lcom/android/providers/telephony/MmsSmsProvider;->mThreadsLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 1219
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->addr:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/providers/telephony/MmsSmsV2Provider;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, displayAddress:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1222
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->addr:Ljava/lang/String;

    const-string v7, "\'"

    const-string v8, "\'\'"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1228
    .local v0, SQLaddr:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->sqlHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v7, "threads"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recipient_address = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND name IS NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1232
    .local v3, success:I
    iget-wide v7, p0, Lcom/android/providers/telephony/MmsSmsProvider$UpdateThreadsNameThread;->mThreadId:J

    #calls: Lcom/android/providers/telephony/MmsSmsProvider;->insertNameLookup(JLjava/lang/String;)V
    invoke-static {v7, v8, v1}, Lcom/android/providers/telephony/MmsSmsProvider;->access$000(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1240
    .end local v3           #success:I
    :goto_0
    :try_start_2
    monitor-exit v6

    .line 1241
    return-void

    .line 1234
    :catch_0
    move-exception v2

    .line 1236
    .local v2, ex:Ljava/lang/IllegalStateException;
    const-string v5, "MmsSmsProvider"

    const-string v7, "Database Error"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    .end local v0           #SQLaddr:Ljava/lang/String;
    .end local v1           #displayAddress:Ljava/lang/String;
    .end local v2           #ex:Ljava/lang/IllegalStateException;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
