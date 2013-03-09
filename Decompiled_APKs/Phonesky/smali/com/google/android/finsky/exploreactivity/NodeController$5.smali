.class Lcom/google/android/finsky/exploreactivity/NodeController$5;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$500(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/exploreactivity/NodeController$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/exploreactivity/NodeController$5$1;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController$5;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 910
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mSeedNode:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$700(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    #calls: Lcom/google/android/finsky/exploreactivity/NodeController;->disposeObjects(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$800(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    .line 911
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mPreviousNodes:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$900(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 912
    return-void
.end method
