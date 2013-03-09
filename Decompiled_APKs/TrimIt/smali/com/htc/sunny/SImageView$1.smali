.class Lcom/htc/sunny/SImageView$1;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setImagePosition(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$x:F

.field final synthetic val$y:F

.field final synthetic val$z:F


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    iput p2, p0, Lcom/htc/sunny/SImageView$1;->val$x:F

    iput p3, p0, Lcom/htc/sunny/SImageView$1;->val$y:F

    iput p4, p0, Lcom/htc/sunny/SImageView$1;->val$z:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v0, v0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v0, v0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, p0, Lcom/htc/sunny/SImageView$1;->val$x:F

    iget v2, p0, Lcom/htc/sunny/SImageView$1;->val$y:F

    iget v3, p0, Lcom/htc/sunny/SImageView$1;->val$z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/Vector3F;->setVector3F(FFF)V

    .line 63
    iget-object v0, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v0, v0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    #getter for: Lcom/htc/sunny/SImageView;->mIconSpriteId:I
    invoke-static {v1}, Lcom/htc/sunny/SImageView;->access$000(Lcom/htc/sunny/SImageView;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SImageView$1;->val$x:F

    iget v3, p0, Lcom/htc/sunny/SImageView$1;->val$y:F

    iget v4, p0, Lcom/htc/sunny/SImageView$1;->val$z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 64
    iget-object v0, p0, Lcom/htc/sunny/SImageView$1;->this$0:Lcom/htc/sunny/SImageView;

    invoke-virtual {v0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    goto :goto_0
.end method
