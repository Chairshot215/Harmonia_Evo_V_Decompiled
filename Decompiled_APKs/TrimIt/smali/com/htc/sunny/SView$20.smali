.class Lcom/htc/sunny/SView$20;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->removeView(Lcom/htc/sunny/SView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$view:Lcom/htc/sunny/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/htc/sunny/SView$20;->this$0:Lcom/htc/sunny/SView;

    iput-object p2, p0, Lcom/htc/sunny/SView$20;->val$view:Lcom/htc/sunny/SView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/htc/sunny/SView$20;->val$view:Lcom/htc/sunny/SView;

    if-nez v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView$20;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$300(Lcom/htc/sunny/SView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SView$20;->val$view:Lcom/htc/sunny/SView;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1150
    iget-object v0, p0, Lcom/htc/sunny/SView$20;->val$view:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->onDetachedFromWindow()V

    goto :goto_0
.end method
