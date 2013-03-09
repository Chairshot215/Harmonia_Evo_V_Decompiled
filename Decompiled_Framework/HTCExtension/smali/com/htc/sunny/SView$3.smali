.class Lcom/htc/sunny/SView$3;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImageByTexture(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$nHeight:I

.field final synthetic val$nTexturPressId:I

.field final synthetic val$nTexturRestId:I

.field final synthetic val$nWidth:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$3;->val$nTexturRestId:I

    iput p3, p0, Lcom/htc/sunny/SView$3;->val$nTexturPressId:I

    iput p4, p0, Lcom/htc/sunny/SView$3;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SView$3;->val$nHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    #calls: Lcom/htc/sunny/SView;->freeBackgroundDrawable()V
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$000(Lcom/htc/sunny/SView;)V

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iput v3, v0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$3;->val$nTexturRestId:I

    iput v1, v0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget-object v2, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v2, v2, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iput v3, v0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$3;->val$nTexturPressId:I

    iput v1, v0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$3;->val$nWidth:I

    iget v2, p0, Lcom/htc/sunny/SView$3;->val$nHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$3;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method
