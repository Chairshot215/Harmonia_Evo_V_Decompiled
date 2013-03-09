.class Lcom/google/android/finsky/exploreactivity/NodeController$11;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->toggleWishlist(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

.field final synthetic val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$1200(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$11;->val$listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    .line 1175
    return-void
.end method
