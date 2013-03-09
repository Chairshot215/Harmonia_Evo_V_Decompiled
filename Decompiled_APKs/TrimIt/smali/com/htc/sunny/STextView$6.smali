.class Lcom/htc/sunny/STextView$6;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$where:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    iput-object p2, p0, Lcom/htc/sunny/STextView$6;->val$where:Landroid/text/TextUtils$TruncateAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$400(Lcom/htc/sunny/STextView;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$6;->val$where:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    iget-object v1, p0, Lcom/htc/sunny/STextView$6;->val$where:Landroid/text/TextUtils$TruncateAt;

    #setter for: Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$402(Lcom/htc/sunny/STextView;Landroid/text/TextUtils$TruncateAt;)Landroid/text/TextUtils$TruncateAt;

    .line 265
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    iget-object v1, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v1}, Lcom/htc/sunny/STextView;->access$400(Lcom/htc/sunny/STextView;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #setter for: Lcom/htc/sunny/STextView;->mEnabledMarquee:Z
    invoke-static {v0, v2}, Lcom/htc/sunny/STextView;->access$502(Lcom/htc/sunny/STextView;Z)Z

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;
    invoke-static {v1}, Lcom/htc/sunny/STextView;->access$400(Lcom/htc/sunny/STextView;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 272
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v2}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 273
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/STextView$6;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny/STextView;->mEnabledMarquee:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$502(Lcom/htc/sunny/STextView;Z)Z

    goto :goto_1
.end method
