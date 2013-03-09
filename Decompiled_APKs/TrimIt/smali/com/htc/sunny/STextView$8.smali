.class Lcom/htc/sunny/STextView$8;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextColor(Landroid/content/res/ColorStateList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$colors:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/sunny/STextView$8;->this$0:Lcom/htc/sunny/STextView;

    iput-object p2, p0, Lcom/htc/sunny/STextView$8;->val$colors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 306
    iget-object v0, p0, Lcom/htc/sunny/STextView$8;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$8;->val$colors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    iget-object v0, p0, Lcom/htc/sunny/STextView$8;->this$0:Lcom/htc/sunny/STextView;

    iput-boolean v2, v0, Lcom/htc/sunny/STextView;->mFocusChangeNeedRegenText:Z

    .line 308
    iget-object v0, p0, Lcom/htc/sunny/STextView$8;->this$0:Lcom/htc/sunny/STextView;

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v2}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 309
    iget-object v0, p0, Lcom/htc/sunny/STextView$8;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 310
    return-void
.end method
