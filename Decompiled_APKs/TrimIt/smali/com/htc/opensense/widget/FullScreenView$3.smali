.class Lcom/htc/opensense/widget/FullScreenView$3;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->canScroll()Z

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPositionChanged(II)V
    .locals 1
    .parameter "oldPos"
    .parameter "newPos"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    .line 372
    :cond_0
    return-void
.end method

.method public onScrollAnimationBegin()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onScrollAnimationBegin()V

    .line 389
    :cond_0
    return-void
.end method

.method public onScrollAnimationEnd()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onScrollAnimationEnd()V

    .line 381
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$3;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->onScrollStateChanged(I)V

    .line 363
    :cond_0
    return-void
.end method
