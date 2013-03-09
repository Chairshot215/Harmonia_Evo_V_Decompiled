.class Lcom/htc/sunny/SPresentation$1;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->setItemShadow(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$height:I

.field final synthetic val$nPosX:I

.field final synthetic val$nPosY:I

.field final synthetic val$nPressResId:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;IIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$1;->val$nPosX:I

    iput p3, p0, Lcom/htc/sunny/SPresentation$1;->val$nPosY:I

    iput p4, p0, Lcom/htc/sunny/SPresentation$1;->val$width:I

    iput p5, p0, Lcom/htc/sunny/SPresentation$1;->val$height:I

    iput p6, p0, Lcom/htc/sunny/SPresentation$1;->val$nPressResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$1;->val$nPosX:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mPosX:I

    .line 491
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$1;->val$nPosY:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mPosY:I

    .line 492
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$1;->val$width:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    .line 493
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$1;->val$height:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    .line 494
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$1;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$1;->val$nPressResId:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    .line 495
    return-void
.end method
