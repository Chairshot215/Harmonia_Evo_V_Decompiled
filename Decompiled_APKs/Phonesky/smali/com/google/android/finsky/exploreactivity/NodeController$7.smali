.class Lcom/google/android/finsky/exploreactivity/NodeController$7;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

.field final synthetic val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V
    .locals 8
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 1030
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->convertDocList(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    invoke-static {v3, p1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$1000(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v1

    .line 1031
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setSongList(Ljava/util/List;)V

    .line 1032
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1033
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 1034
    .local v0, d:Lcom/google/android/finsky/api/model/Document;
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setSong(Lcom/google/android/finsky/api/model/Document;)V

    .line 1035
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$600(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/NodeController$7;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mCenterNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-static {v7}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$1100(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->fetchPreview(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$MusicPreviewListener;Z)V

    .line 1038
    .end local v0           #d:Lcom/google/android/finsky/api/model/Document;
    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1027
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$7;->onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V

    return-void
.end method
