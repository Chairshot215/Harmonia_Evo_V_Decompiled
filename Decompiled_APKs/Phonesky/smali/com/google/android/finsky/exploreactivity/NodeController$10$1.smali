.class Lcom/google/android/finsky/exploreactivity/NodeController$10$1;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController$10;->onWishlistStatusChanged(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/exploreactivity/NodeController$10;

.field final synthetic val$isInWishlist:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController$10;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;->this$1:Lcom/google/android/finsky/exploreactivity/NodeController$10;

    iput-boolean p2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;->val$isInWishlist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;->this$1:Lcom/google/android/finsky/exploreactivity/NodeController$10;

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController$10;->val$node:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$10$1;->val$isInWishlist:Z

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setWishlist(Z)V

    .line 1168
    return-void
.end method
