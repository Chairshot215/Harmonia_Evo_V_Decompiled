.class public Lcom/htc/album/Animation/MultiViewAnimationSet;
.super Lcom/htc/sunny2/view/animation/SAnimationController;
.source "MultiViewAnimationSet.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# instance fields
.field private mAnimationEndCount:I

.field protected mSViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/view/SView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 20
    return-void
.end method


# virtual methods
.method protected addSView(Lcom/htc/sunny2/view/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected addSView(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/sunny2/view/SView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/sunny2/view/SView;>;"
    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-void
.end method

.method public animate()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->animate()V

    .line 50
    :cond_0
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v0

    .line 42
    :cond_0
    return v0
.end method

.method protected isValidAnimation()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 32
    iget v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    iget-object v1, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mSViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationEnd()V

    .line 35
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-interface {v0}, Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;->onAnimationStart()V

    .line 27
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->isValidAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-super {p0}, Lcom/htc/sunny2/view/animation/SAnimationController;->start()V

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/Animation/MultiViewAnimationSet;->mAnimationEndCount:I

    .line 60
    invoke-virtual {p0}, Lcom/htc/album/Animation/MultiViewAnimationSet;->onStart()V

    .line 61
    return-void
.end method
