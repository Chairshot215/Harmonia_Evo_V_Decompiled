.class Lcom/htc/sunny/SView$16;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$bVisible:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iput-boolean p2, p0, Lcom/htc/sunny/SView$16;->val$bVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget-boolean v0, v0, Lcom/htc/sunny/SView;->mVisible:Z

    iget-boolean v1, p0, Lcom/htc/sunny/SView$16;->val$bVisible:Z

    if-ne v0, v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget-boolean v1, p0, Lcom/htc/sunny/SView$16;->val$bVisible:Z

    iput-boolean v1, v0, Lcom/htc/sunny/SView;->mVisible:Z

    .line 961
    iget-object v0, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v2, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    iget-boolean v2, v2, Lcom/htc/sunny/SView;->mVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeVisible(IZ)V

    .line 962
    iget-object v0, p0, Lcom/htc/sunny/SView$16;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0
.end method
