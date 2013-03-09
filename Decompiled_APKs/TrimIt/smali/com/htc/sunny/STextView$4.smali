.class Lcom/htc/sunny/STextView$4;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextSize(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$size:F

.field final synthetic val$unit:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/sunny/STextView$4;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$4;->val$unit:I

    iput p3, p0, Lcom/htc/sunny/STextView$4;->val$size:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/sunny/STextView$4;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny/STextView$4;->val$unit:I

    iget v2, p0, Lcom/htc/sunny/STextView$4;->val$size:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    iget-object v0, p0, Lcom/htc/sunny/STextView$4;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 244
    iget-object v0, p0, Lcom/htc/sunny/STextView$4;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 245
    return-void
.end method
