.class Lcom/htc/sunny/SPresentation$2;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->setReflectionColor(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$b:I

.field final synthetic val$g:I

.field final synthetic val$r:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$2;->val$r:I

    iput p3, p0, Lcom/htc/sunny/SPresentation$2;->val$g:I

    iput p4, p0, Lcom/htc/sunny/SPresentation$2;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$2;->val$r:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    .line 504
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$2;->val$g:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    .line 505
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$2;->val$b:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    .line 507
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget-boolean v0, v0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    if-nez v0, :cond_1

    .line 514
    :cond_0
    return-void

    .line 509
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v0, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 511
    .local v6, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v6, :cond_2

    .line 509
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v3, v3, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    iget-object v4, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v4, v4, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation$2;->this$0:Lcom/htc/sunny/SPresentation;

    iget v5, v5, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setSpriteAsShadow(IIIII)Z

    goto :goto_1
.end method
