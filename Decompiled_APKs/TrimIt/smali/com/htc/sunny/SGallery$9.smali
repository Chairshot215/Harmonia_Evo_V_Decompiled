.class Lcom/htc/sunny/SGallery$9;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setPadding(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$9;->val$left:I

    iput p3, p0, Lcom/htc/sunny/SGallery$9;->val$top:I

    iput p4, p0, Lcom/htc/sunny/SGallery$9;->val$right:I

    iput p5, p0, Lcom/htc/sunny/SGallery$9;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$left:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    .line 725
    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$top:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    .line 726
    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$right:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    .line 727
    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$bottom:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    .line 728
    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 729
    return-void
.end method
