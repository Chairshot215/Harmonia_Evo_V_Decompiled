.class Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;)V
    .locals 0
    .parameter

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/android/gm/HybridHtmlConversationView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2141
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;-><init>(Lcom/google/android/gm/HybridHtmlConversationView;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2144
    const-string v0, "conversationId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2145
    .local v3, conversationId:J
    new-instance v0, Lcom/google/android/gm/provider/AttachmentStatusLoader;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v2, v2, Lcom/google/android/gm/HybridHtmlConversationView;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v5}, Lcom/google/android/gm/HybridHtmlConversationView;->access$3100(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/app/DownloadManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentStatusLoader;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/DownloadManager;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2141
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2150
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;>;"
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridHtmlConversationView;->isDataLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2171
    :cond_0
    return-void

    .line 2154
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #setter for: Lcom/google/android/gm/HybridHtmlConversationView;->mAttachments:Ljava/util/List;
    invoke-static {v4, p2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$3202(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/util/List;)Ljava/util/List;

    .line 2156
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    .line 2157
    .local v3, result:Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-wide v5, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->getLocalMessageId(J)Ljava/lang/Long;
    invoke-static {v4, v5, v6}, Lcom/google/android/gm/HybridHtmlConversationView;->access$3300(Lcom/google/android/gm/HybridHtmlConversationView;J)Ljava/lang/Long;

    move-result-object v2

    .line 2158
    .local v2, localId:Ljava/lang/Long;
    if-nez v2, :cond_3

    .line 2159
    const-string v4, "Gmail"

    const-string v5, "unable to find message for serverId=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 2164
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationView$AttachmentLoaderListener;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mMessageHeaderContainerView:Lcom/google/android/gm/HybridConversationScrollContainer;
    invoke-static {v4}, Lcom/google/android/gm/HybridHtmlConversationView;->access$3400(Lcom/google/android/gm/HybridHtmlConversationView;)Lcom/google/android/gm/HybridConversationScrollContainer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/MessageHeaderView;->find(Landroid/view/ViewGroup;J)Lcom/google/android/gm/MessageHeaderView;

    move-result-object v0

    .line 2166
    .local v0, header:Lcom/google/android/gm/MessageHeaderView;
    if-eqz v0, :cond_2

    .line 2169
    invoke-virtual {v0, v3}, Lcom/google/android/gm/MessageHeaderView;->updateAttachment(Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2176
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;>;>;"
    return-void
.end method
