.class Lcom/htc/sunny/STextView$13;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextBackgroundScaleType(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$bWrapContentH:Z

.field final synthetic val$bWrapContentW:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/htc/sunny/STextView$13;->this$0:Lcom/htc/sunny/STextView;

    iput-boolean p2, p0, Lcom/htc/sunny/STextView$13;->val$bWrapContentW:Z

    iput-boolean p3, p0, Lcom/htc/sunny/STextView$13;->val$bWrapContentH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/sunny/STextView$13;->this$0:Lcom/htc/sunny/STextView;

    iget-boolean v1, p0, Lcom/htc/sunny/STextView$13;->val$bWrapContentW:Z

    #setter for: Lcom/htc/sunny/STextView;->mBKWrapContentW:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$1002(Lcom/htc/sunny/STextView;Z)Z

    .line 483
    iget-object v0, p0, Lcom/htc/sunny/STextView$13;->this$0:Lcom/htc/sunny/STextView;

    iget-boolean v1, p0, Lcom/htc/sunny/STextView$13;->val$bWrapContentH:Z

    #setter for: Lcom/htc/sunny/STextView;->mBKWrapContentH:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$1102(Lcom/htc/sunny/STextView;Z)Z

    .line 484
    iget-object v0, p0, Lcom/htc/sunny/STextView$13;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 485
    iget-object v0, p0, Lcom/htc/sunny/STextView$13;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 486
    return-void
.end method
