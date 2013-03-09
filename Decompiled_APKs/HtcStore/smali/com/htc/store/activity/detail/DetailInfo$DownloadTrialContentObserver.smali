.class Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;
.super Landroid/database/ContentObserver;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTrialContentObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDownloadUri:Landroid/net/Uri;

.field private mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

.field private mLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;)V
    .locals 4
    .parameter
    .parameter "handler"
    .parameter "resolver"
    .parameter "downloadUri"
    .parameter "itemAudio"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    .line 162
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 163
    iput-object p3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 164
    iput-object p4, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    .line 165
    iput-object p5, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    .line 166
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->getInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "new DownloadTrialContentObserver: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", downloadUri = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "cancel DownloadTrialContentObserver: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, ", start"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    invoke-virtual {v0}, Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "cancel DownloadTrialContentObserver: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, ", end"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 12
    .parameter "selfChange"

    .prologue
    .line 173
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "change DownloadTrialContentObserver: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", downloadUri = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", start"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 190
    const/4 v7, 0x0

    .line 193
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 194
    if-nez v7, :cond_3

    .line 195
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "change DownloadTrialContentObserver: cursor = null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    if-eqz v7, :cond_0

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 198
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 199
    .local v6, count:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "change DownloadTrialContentObserver: cursor count = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    if-lez v6, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 202
    .local v11, status_index:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 203
    .local v8, download_staus:I
    const/16 v0, 0xc8

    if-ne v8, v0, :cond_6

    .line 204
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 206
    .local v10, message:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    .end local v8           #download_staus:I
    .end local v10           #message:Landroid/os/Message;
    .end local v11           #status_index:I
    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 219
    .end local v6           #count:I
    :cond_5
    :goto_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "change DownloadTrialContentObserver: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", downloadUri = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mDownloadUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", end"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 207
    .restart local v6       #count:I
    .restart local v8       #download_staus:I
    .restart local v11       #status_index:I
    :cond_6
    :try_start_2
    invoke-static {v8}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$DownloadTrialContentObserver;->mInfoItemAudio:Lcom/htc/store/activity/detail/DetailInfo$InfoItemAudio;

    invoke-static {v0, v1, v8, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 210
    .restart local v10       #message:Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 213
    .end local v6           #count:I
    .end local v8           #download_staus:I
    .end local v10           #message:Landroid/os/Message;
    .end local v11           #status_index:I
    :catch_0
    move-exception v9

    .line 214
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "change DownloadTrialContentObserver: exception, "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    if-eqz v7, :cond_5

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 216
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method
