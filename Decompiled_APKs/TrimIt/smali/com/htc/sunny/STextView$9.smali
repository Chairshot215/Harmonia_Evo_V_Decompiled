.class Lcom/htc/sunny/STextView$9;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$szText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    iput-object p2, p0, Lcom/htc/sunny/STextView$9;->val$szText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$9;->val$szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$9;->val$szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 357
    iget-object v0, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny/STextView;->mMarqueeFinished:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$602(Lcom/htc/sunny/STextView;Z)Z

    .line 358
    iget-object v0, p0, Lcom/htc/sunny/STextView$9;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 360
    :cond_0
    return-void
.end method
