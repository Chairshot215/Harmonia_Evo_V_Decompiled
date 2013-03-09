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

    iput-object p1, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$9;->val$left:I

    iput p3, p0, Lcom/htc/sunny/SGallery$9;->val$top:I

    iput p4, p0, Lcom/htc/sunny/SGallery$9;->val$right:I

    iput p5, p0, Lcom/htc/sunny/SGallery$9;->val$bottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$left:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$top:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$right:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$9;->val$bottom:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery$9;->this$0:Lcom/htc/sunny/SGallery;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    return-void
.end method
