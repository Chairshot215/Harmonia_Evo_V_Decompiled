.class Lcom/htc/sunny/STextView$11;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setSingleLine(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$singleLine:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/sunny/STextView$11;->this$0:Lcom/htc/sunny/STextView;

    iput-boolean p2, p0, Lcom/htc/sunny/STextView$11;->val$singleLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/sunny/STextView$11;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/sunny/STextView$11;->val$singleLine:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 383
    iget-object v0, p0, Lcom/htc/sunny/STextView$11;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 384
    iget-object v0, p0, Lcom/htc/sunny/STextView$11;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 385
    return-void
.end method
