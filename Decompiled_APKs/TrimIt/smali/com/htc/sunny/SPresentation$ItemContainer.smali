.class public Lcom/htc/sunny/SPresentation$ItemContainer;
.super Lcom/htc/sunny/SView;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemContainer"
.end annotation


# instance fields
.field public mDataIndex:I

.field public mForceHidden:Z

.field public mID:I

.field public mImageSprite:I

.field public mImageTexture:I

.field public mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

.field public mLayoutPos:I

.field public mParentNode:I

.field public mReflectSprite:I

.field public mShadowSprite:I

.field public mSkipItem:Z

.field public mTouchSprite:I

.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method public constructor <init>(Lcom/htc/sunny/SPresentation;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v1, 0x0

    .line 49
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->this$0:Lcom/htc/sunny/SPresentation;

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 53
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    .line 54
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    .line 55
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    .line 56
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    .line 57
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    .line 58
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    .line 60
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 61
    iput v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    .line 77
    new-instance v0, Lcom/htc/sunny/SPresentationContainerLayout;

    invoke-direct {v0}, Lcom/htc/sunny/SPresentationContainerLayout;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    .line 51
    return-void
.end method


# virtual methods
.method public setVisibility(Z)V
    .locals 2
    .parameter "bVisible"

    .prologue
    .line 70
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/sunny/SView;->setVisibility(Z)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->setVisibility(Z)V

    goto :goto_0
.end method
