.class Lcom/htc/sunny/STextView$10;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextWithoutRender(Ljava/lang/String;)V
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
    .line 370
    iput-object p1, p0, Lcom/htc/sunny/STextView$10;->this$0:Lcom/htc/sunny/STextView;

    iput-object p2, p0, Lcom/htc/sunny/STextView$10;->val$szText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/sunny/STextView$10;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/STextView$10;->val$szText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/htc/sunny/STextView$10;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 374
    iget-object v0, p0, Lcom/htc/sunny/STextView$10;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny/STextView;->mMarqueeFinished:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$602(Lcom/htc/sunny/STextView;Z)Z

    .line 375
    return-void
.end method
