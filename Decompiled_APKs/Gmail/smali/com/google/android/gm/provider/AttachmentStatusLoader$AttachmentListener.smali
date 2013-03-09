.class Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;
.super Ljava/lang/Object;
.source "AttachmentStatusLoader.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/AttachmentStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Lcom/google/android/gm/provider/AttachmentStatusLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;-><init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$202(Lcom/google/android/gm/provider/AttachmentStatusLoader;Ljava/util/List;)Ljava/util/List;

    .line 249
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 251
    const/4 v12, -0x1

    .line 252
    .local v12, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v12, v12, 0x1

    invoke-interface {p2, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 254
    .local v3, messageId:J
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, partId:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 256
    .local v9, downloadId:J
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    .line 257
    .local v6, saveToSd:Z
    :goto_1
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, fileName:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 263
    .local v8, status:I
    new-instance v0, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mConversationId:J
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$400(Lcom/google/android/gm/provider/AttachmentStatusLoader;)J

    move-result-wide v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;-><init>(JJLjava/lang/String;ZLjava/lang/String;I)V

    .line 265
    .local v0, result:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 266
    .local v11, index:I
    if-ltz v11, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iget-boolean v1, v1, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->saveToSd:Z

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v6, :cond_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 256
    .end local v0           #result:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    .end local v6           #saveToSd:Z
    .end local v7           #fileName:Ljava/lang/String;
    .end local v8           #status:I
    .end local v11           #index:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 277
    .end local v3           #messageId:J
    .end local v5           #partId:Ljava/lang/String;
    .end local v9           #downloadId:J
    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 279
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->deliverResult(Ljava/lang/Object;)V

    .line 287
    :cond_5
    :goto_2
    return-void

    .line 283
    :cond_6
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$500(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->reset()V

    .line 284
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$500(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->setIds(Ljava/util/Collection;)V

    .line 285
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadLoader:Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;
    invoke-static {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$500(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->startLoading()V

    goto :goto_2
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/AttachmentStatusLoader$AttachmentListener;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
