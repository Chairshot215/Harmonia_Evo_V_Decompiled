.class Lcom/htc/home/personalize/opensense/FullScreenView$3;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;->initFullScreenView(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->canScroll()Z

    move-result v0

    .line 368
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
    .line 343
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onPositionChanged(II)V

    .line 345
    :cond_0
    return-void
.end method

.method public onScrollAnimationBegin()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onScrollAnimationBegin()V

    .line 362
    :cond_0
    return-void
.end method

.method public onScrollAnimationEnd()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onScrollAnimationEnd()V

    .line 354
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$3;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->onScrollStateChanged(I)V

    .line 336
    :cond_0
    return-void
.end method
