.class Lcom/htc/sunny/STextView$5;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextPadding(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/STextView$5;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$5;->val$left:I

    iput p3, p0, Lcom/htc/sunny/STextView$5;->val$top:I

    iput p4, p0, Lcom/htc/sunny/STextView$5;->val$right:I

    iput p5, p0, Lcom/htc/sunny/STextView$5;->val$bottom:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/htc/sunny/STextView$5;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/STextView$5;->val$left:I

    iget v2, p0, Lcom/htc/sunny/STextView$5;->val$top:I

    iget v3, p0, Lcom/htc/sunny/STextView$5;->val$right:I

    iget v4, p0, Lcom/htc/sunny/STextView$5;->val$bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/htc/sunny/STextView$5;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    iget-object v0, p0, Lcom/htc/sunny/STextView$5;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    return-void
.end method
