.class Lcom/htc/sunny/SGallery$7;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setItemSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$7;->val$w:I

    iput p3, p0, Lcom/htc/sunny/SGallery$7;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    iget v0, v0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v1, p0, Lcom/htc/sunny/SGallery$7;->val$w:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    iget v0, v0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iget v1, p0, Lcom/htc/sunny/SGallery$7;->val$h:I

    if-eq v0, v1, :cond_1

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$7;->val$w:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    .line 659
    iget-object v0, p0, Lcom/htc/sunny/SGallery$7;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$7;->val$h:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    .line 660
    return-void
.end method
