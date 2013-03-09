.class Lcom/htc/sunny/SView$17;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setAlpha(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$alpha:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$17;->val$alpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mAlpha:I

    iget v1, p0, Lcom/htc/sunny/SView$17;->val$alpha:I

    if-ne v0, v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$17;->val$alpha:I

    iput v1, v0, Lcom/htc/sunny/SView;->mAlpha:I

    .line 979
    iget-object v0, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v2, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    iget v2, v2, Lcom/htc/sunny/SView;->mAlpha:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    .line 980
    iget-object v0, p0, Lcom/htc/sunny/SView$17;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0
.end method
