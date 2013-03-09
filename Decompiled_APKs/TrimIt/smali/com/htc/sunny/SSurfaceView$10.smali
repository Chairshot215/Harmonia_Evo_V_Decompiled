.class Lcom/htc/sunny/SSurfaceView$10;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->addView(Lcom/htc/sunny/SView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;

.field final synthetic val$childView:Lcom/htc/sunny/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$10;->this$0:Lcom/htc/sunny/SSurfaceView;

    iput-object p2, p0, Lcom/htc/sunny/SSurfaceView$10;->val$childView:Lcom/htc/sunny/SView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$10;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$10;->val$childView:Lcom/htc/sunny/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SView;->addView(Lcom/htc/sunny/SView;)V

    .line 497
    return-void
.end method
