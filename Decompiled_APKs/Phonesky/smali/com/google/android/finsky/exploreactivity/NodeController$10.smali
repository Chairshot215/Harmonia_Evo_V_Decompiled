.class Lcom/google/android/finsky/exploreactivity/NodeController$10;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;


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

.field final synthetic val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10;->val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWishlistStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "docId"
    .parameter "isInWishlist"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;-><init>(Lcom/google/android/finsky/exploreactivity/NodeController$10;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 1169
    return-void
.end method
