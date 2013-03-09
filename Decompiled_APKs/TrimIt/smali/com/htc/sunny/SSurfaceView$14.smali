.class Lcom/htc/sunny/SSurfaceView$14;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;

.field final synthetic val$bottom:I

.field final synthetic val$changed:Z

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$14;->this$0:Lcom/htc/sunny/SSurfaceView;

    iput-boolean p2, p0, Lcom/htc/sunny/SSurfaceView$14;->val$changed:Z

    iput p3, p0, Lcom/htc/sunny/SSurfaceView$14;->val$left:I

    iput p4, p0, Lcom/htc/sunny/SSurfaceView$14;->val$top:I

    iput p5, p0, Lcom/htc/sunny/SSurfaceView$14;->val$right:I

    iput p6, p0, Lcom/htc/sunny/SSurfaceView$14;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$14;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView$14;->val$changed:Z

    iget v2, p0, Lcom/htc/sunny/SSurfaceView$14;->val$left:I

    iget v3, p0, Lcom/htc/sunny/SSurfaceView$14;->val$top:I

    iget v4, p0, Lcom/htc/sunny/SSurfaceView$14;->val$right:I

    iget v5, p0, Lcom/htc/sunny/SSurfaceView$14;->val$bottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SView;->onLayout(ZIIII)V

    .line 558
    return-void
.end method
