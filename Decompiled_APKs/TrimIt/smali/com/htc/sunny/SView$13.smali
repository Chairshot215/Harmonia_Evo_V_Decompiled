.class Lcom/htc/sunny/SView$13;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setScale(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$x:F

.field final synthetic val$y:F

.field final synthetic val$z:F


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$13;->val$x:F

    iput p3, p0, Lcom/htc/sunny/SView$13;->val$y:F

    iput p4, p0, Lcom/htc/sunny/SView$13;->val$z:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 898
    iget-object v0, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v1, p0, Lcom/htc/sunny/SView$13;->val$x:F

    iget v2, p0, Lcom/htc/sunny/SView$13;->val$y:F

    iget v3, p0, Lcom/htc/sunny/SView$13;->val$z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/Vector3F;->setVector3F(FFF)V

    .line 901
    iget-object v0, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v2, p0, Lcom/htc/sunny/SView$13;->val$x:F

    iget v3, p0, Lcom/htc/sunny/SView$13;->val$y:F

    iget v4, p0, Lcom/htc/sunny/SView$13;->val$z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    .line 902
    iget-object v0, p0, Lcom/htc/sunny/SView$13;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0
.end method
