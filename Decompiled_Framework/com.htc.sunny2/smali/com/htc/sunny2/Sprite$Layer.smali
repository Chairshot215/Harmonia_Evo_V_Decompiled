.class public Lcom/htc/sunny2/Sprite$Layer;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layer"
.end annotation


# instance fields
.field private mHeight:F

.field private mIsVisible:Z

.field private mLayerId:I

.field private mWidth:F

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/htc/sunny2/Sprite;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/Sprite;I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public enableColorBlending(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_EnableColorBlending(IIZ)V

    return-void
.end method

.method public getGeometry()[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mWidth:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mHeight:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mX:F

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mY:F

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetAlpha(III)V

    return-void
.end method

.method public setColor(III)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetColor(IIIII)V

    return-void
.end method

.method public setRGBOperation(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetRGBOperation(III)V

    return-void
.end method

.method public setRenderable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerRenderable(IIZ)V

    :cond_0
    return-void
.end method

.method public setTexture(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    return-void
.end method

.method public setTexture(ILcom/htc/sunny2/Texture;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v1, v1, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v2, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v1, v2, p1, v0}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    return-void
.end method

.method public setTextureRotate(I)V
    .locals 14

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v3

    move v12, v2

    move v13, v2

    invoke-static/range {v4 .. v13}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v4, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v5, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v6, v3

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v3

    move v12, v2

    move v13, v3

    invoke-static/range {v4 .. v13}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTouchable(IIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerTouchable(IIZ)V

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/sunny2/Sprite$Layer;->mIsVisible:Z

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetLayerVisible(IIZ)V

    return-void
.end method

.method public setupGeometry(FFFFF)V
    .locals 7

    iput p3, p0, Lcom/htc/sunny2/Sprite$Layer;->mX:F

    iput p4, p0, Lcom/htc/sunny2/Sprite$Layer;->mY:F

    iput p2, p0, Lcom/htc/sunny2/Sprite$Layer;->mHeight:F

    iput p1, p0, Lcom/htc/sunny2/Sprite$Layer;->mWidth:F

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(III)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p1, p2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-static {v0, v1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    return-void
.end method

.method public setupTextureWithTextureInfoAndRotate(ILcom/htc/sunny2/Texture;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    iget-object v0, p0, Lcom/htc/sunny2/Sprite$Layer;->this$0:Lcom/htc/sunny2/Sprite;

    iget v0, v0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite$Layer;->mLayerId:I

    invoke-virtual {p2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    invoke-static {v0, v1, v2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupTextureCoordinatesByInfo(IIII)Z

    return-void
.end method
