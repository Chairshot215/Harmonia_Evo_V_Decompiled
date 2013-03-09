.class Lcom/google/android/finsky/exploreactivity/NodeController$8;
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
    .line 1047
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$8;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$8;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 1050
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1051
    .local v2, relations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1052
    invoke-virtual {p1, v4}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1055
    .local v0, d:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v3, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    new-instance v4, Lcom/google/android/finsky/api/model/Document;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1058
    .end local v0           #d:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1059
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$8;->val$doc:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->setRelations(Ljava/util/List;)V

    .line 1060
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1047
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/NodeController$8;->onResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)V

    return-void
.end method
