.class Lcom/htc/sunny/SPresentation$16;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->setClipSize(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$nBottom:I

.field final synthetic val$nLeft:I

.field final synthetic val$nRight:I

.field final synthetic val$nTop:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$16;->val$nLeft:I

    iput p3, p0, Lcom/htc/sunny/SPresentation$16;->val$nTop:I

    iput p4, p0, Lcom/htc/sunny/SPresentation$16;->val$nRight:I

    iput p5, p0, Lcom/htc/sunny/SPresentation$16;->val$nBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$16;->val$nLeft:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    .line 1726
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$16;->val$nTop:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    .line 1727
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$16;->val$nRight:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    .line 1728
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$16;->val$nBottom:I

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    .line 1729
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$16;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    .line 1730
    return-void
.end method
