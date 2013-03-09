.class Lcom/htc/sunny/STextView$1;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setGravity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$gravity:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/sunny/STextView$1;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$1;->val$gravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/sunny/STextView$1;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mGravity:I
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$000(Lcom/htc/sunny/STextView;)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/STextView$1;->val$gravity:I

    if-ne v0, v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/STextView$1;->this$0:Lcom/htc/sunny/STextView;

    iget v1, p0, Lcom/htc/sunny/STextView$1;->val$gravity:I

    #setter for: Lcom/htc/sunny/STextView;->mGravity:I
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$002(Lcom/htc/sunny/STextView;I)I

    .line 173
    iget-object v0, p0, Lcom/htc/sunny/STextView$1;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 174
    iget-object v0, p0, Lcom/htc/sunny/STextView$1;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    goto :goto_0
.end method
