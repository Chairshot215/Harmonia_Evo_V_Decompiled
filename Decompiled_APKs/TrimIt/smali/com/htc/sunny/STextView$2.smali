.class Lcom/htc/sunny/STextView$2;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextAlignType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$align:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 182
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 185
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 196
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 211
    return-void

    .line 186
    :cond_2
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 190
    :cond_3
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit16 v0, v0, 0x1004

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 192
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 200
    :cond_4
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 201
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 204
    :cond_5
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1
.end method
