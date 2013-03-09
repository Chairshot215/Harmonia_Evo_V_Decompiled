.class public Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;
.super Ljava/lang/Object;
.source "SyncSuccessChecker.java"


# static fields
.field private static final SYNC_EMPTY_RETRY:Ljava/lang/String; = "_sync_empty_retry"

.field public static final SYNC_EMPTY_RETRY_COUNT:I = 0x3

.field private static final SYNC_FAIL_POSTFIX:Ljava/lang/String; = "_fail"

.field private static final SYNC_FLAG_PREFIX:Ljava/lang/String; = "in_sync_"

.field private static final SYNC_MORE_AVALIBLE:Ljava/lang/String; = "more_avalible"


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mSyncFlagFilePath:Ljava/lang/String;

.field private moreAvalibleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field syncEmptyRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->moreAvalibleList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    .line 30
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mContext:Landroid/content/Context;

    .line 31
    iput-wide p2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mAccountId:J

    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mSyncFlagFilePath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private getEmptyRetryFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;
    .locals 3
    .parameter "syncSource"

    .prologue
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mSyncFlagFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sync_empty_retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getFailFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;
    .locals 3
    .parameter "syncSource"

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mSyncFlagFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in_sync_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;
    .locals 3
    .parameter "syncSource"

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mSyncFlagFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in_sync_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getMoreAvalibleFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->mSyncFlagFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "more_avalible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getMoreAvalibleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->moreAvalibleList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->readMoreAvalibleFile()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->moreAvalibleList:Ljava/util/ArrayList;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->moreAvalibleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private readMoreAvalibleFile()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v5, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 220
    .local v0, bufReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getMoreAvalibleFile()Ljava/io/File;

    move-result-object v4

    .line 221
    .local v4, moreAvaFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 235
    if-eqz v0, :cond_0

    .line 237
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 243
    .end local v4           #moreAvaFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v5

    .line 224
    .restart local v4       #moreAvaFile:Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .local v1, bufReader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 227
    .local v2, collId:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 229
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 231
    :cond_3
    if-nez v2, :cond_2

    .line 235
    if-eqz v1, :cond_4

    .line 237
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_1
    move-object v0, v1

    .line 242
    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 232
    .end local v2           #collId:Ljava/lang/String;
    .end local v4           #moreAvaFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 233
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    if-eqz v0, :cond_0

    .line 237
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 238
    :catch_1
    move-exception v3

    .line 239
    .local v3, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_5

    .line 237
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 235
    :cond_5
    :goto_5
    throw v6

    .line 238
    :catch_2
    move-exception v3

    .line 239
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 238
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #moreAvaFile:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_3

    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    .restart local v2       #collId:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 239
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 232
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .restart local v1       #bufReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1           #bufReader:Ljava/io/BufferedReader;
    .restart local v0       #bufReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private updateMoreAvalibleFile()V
    .locals 8

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getMoreAvalibleList()Ljava/util/ArrayList;

    move-result-object v6

    .line 184
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, buf:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getMoreAvalibleFile()Ljava/io/File;

    move-result-object v4

    .line 187
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 188
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result v7

    if-nez v7, :cond_1

    .line 207
    if-eqz v0, :cond_0

    .line 209
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 215
    .end local v4           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v4       #file:Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 194
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 207
    if-eqz v0, :cond_0

    .line 209
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v3

    .line 211
    .end local v4           #file:Ljava/io/File;
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #file:Ljava/io/File;
    :cond_3
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 199
    .end local v0           #buf:Ljava/io/BufferedWriter;
    .local v1, buf:Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, collId:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 204
    .end local v2           #collId:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    move-object v0, v1

    .line 205
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .end local v4           #file:Ljava/io/File;
    .restart local v0       #buf:Ljava/io/BufferedWriter;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 207
    if-eqz v0, :cond_0

    .line 209
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 210
    :catch_2
    move-exception v3

    goto :goto_1

    .line 203
    .end local v0           #buf:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 207
    if-eqz v1, :cond_5

    .line 209
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_4
    move-object v0, v1

    .line 214
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v0       #buf:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 207
    .end local v4           #file:Ljava/io/File;
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_6

    .line 209
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 207
    :cond_6
    :goto_6
    throw v7

    .line 210
    :catch_3
    move-exception v3

    .line 211
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 210
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #file:Ljava/io/File;
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v0           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    .restart local v5       #i$:Ljava/util/Iterator;
    :catch_5
    move-exception v3

    .line 211
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 207
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v0       #buf:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 204
    .end local v4           #file:Ljava/io/File;
    :catch_6
    move-exception v3

    goto :goto_3
.end method


# virtual methods
.method public addEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 1
    .parameter "syncSource"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;)I

    move-result v0

    .line 97
    .local v0, count:I
    add-int/lit8 v0, v0, 0x1

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->setEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;I)V

    .line 99
    return-void
.end method

.method public cleanFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 2
    .parameter "syncSource"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFailFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 136
    :cond_1
    return-void
.end method

.method getEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;)I
    .locals 8
    .parameter "syncSource"

    .prologue
    const/4 v4, 0x0

    .line 47
    iget v5, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 48
    iget v4, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    .line 69
    :cond_0
    :goto_0
    return v4

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getEmptyRetryFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v3

    .line 51
    .local v3, retryFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    .line 58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 59
    const-string v5, "SyncSuccessChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEmptyDataRetryCount():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 69
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_1
    iget v4, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    if-eqz v1, :cond_2

    .line 64
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    :cond_2
    :goto_3
    iput v4, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    goto :goto_1

    .line 65
    :catch_1
    move-exception v5

    goto :goto_3

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public declared-synchronized isMoreAvalible(Ljava/lang/String;)Z
    .locals 2
    .parameter "collectionId"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getMoreAvalibleList()Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .local v0, maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 178
    .end local v0           #maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isSyncBreak(Lcom/htc/android/mail/eassvc/core/SyncSource;)Z
    .locals 2
    .parameter "syncSource"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v0

    .line 43
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public isSyncFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)Z
    .locals 3
    .parameter "syncSource"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, breakFile:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFailFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, failFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public makeFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 3
    .parameter "syncSource"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, tempFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 4
    .parameter "syncSource"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v0

    .line 114
    .local v0, breakFile:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getFailFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v2

    .line 116
    .local v2, failFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public needEmptyDataRetry(Lcom/htc/android/mail/eassvc/core/SyncSource;)Z
    .locals 2
    .parameter "syncSource"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEmptyDataRetryCount(Lcom/htc/android/mail/eassvc/core/SyncSource;I)V
    .locals 7
    .parameter "syncSource"
    .parameter "count"

    .prologue
    .line 74
    const-string v4, "SyncSuccessChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEmptyDataRetryCount():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getEmptyRetryFile(Lcom/htc/android/mail/eassvc/core/SyncSource;)Ljava/io/File;

    move-result-object v3

    .line 76
    .local v3, retryFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 77
    .local v1, fos:Ljava/io/FileOutputStream;
    iput p2, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    .line 79
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget v4, p0, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->syncEmptyRetryCount:I

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 90
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    if-eqz v1, :cond_0

    .line 86
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v4

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public declared-synchronized setMoreAvalible(Ljava/lang/String;Z)V
    .locals 2
    .parameter "collectionId"
    .parameter "isMoreAvalible"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->getMoreAvalibleList()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    .local v0, maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->updateMoreAvalibleFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->updateMoreAvalibleFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v0           #maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
