.class Lcom/htc/sunny/SGallery$8;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setSpacing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$spacing:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$8;->val$spacing:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$8;->val$spacing:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mSpacing:I

    .line 710
    iget-object v0, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 712
    iget-object v0, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    iget-boolean v0, v0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, v0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iget v2, p0, Lcom/htc/sunny/SGallery$8;->val$spacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery$8;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, v0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v2, p0, Lcom/htc/sunny/SGallery$8;->val$spacing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    goto :goto_0
.end method
