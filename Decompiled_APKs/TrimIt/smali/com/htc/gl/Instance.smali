.class public Lcom/htc/gl/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# instance fields
.field private mName:Ljava/lang/String;

.field protected m_Children:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/gl/Instance;",
            ">;"
        }
    .end annotation
.end field

.field protected m_Material:Lcom/htc/gl/Material;

.field protected m_Renderable:Lcom/htc/gl/shape/Renderable;

.field protected m_Visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    .line 15
    iput-object v1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    .line 16
    iput-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    .line 24
    iput-object p1, p0, Lcom/htc/gl/Instance;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public attachChild(Lcom/htc/gl/Instance;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachChild(Lcom/htc/gl/Instance;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public detachChild(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/htc/gl/Instance;->findChild(Ljava/lang/String;)Lcom/htc/gl/Instance;

    move-result-object v0

    .line 133
    .local v0, targetNode:Lcom/htc/gl/Instance;
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 64
    iget-boolean v1, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1, p1}, Lcom/htc/gl/Material;->setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/htc/gl/Instance;->onDrawRenderable(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1, p1}, Lcom/htc/gl/Instance;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v0           #i:I
    :cond_1
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public findChild(Ljava/lang/String;)Lcom/htc/gl/Instance;
    .locals 4
    .parameter "name"

    .prologue
    .line 147
    iget-object v3, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 148
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 149
    iget-object v3, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    .line 150
    .local v1, node:Lcom/htc/gl/Instance;
    invoke-virtual {v1}, Lcom/htc/gl/Instance;->getObjName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    .end local v1           #node:Lcom/htc/gl/Instance;
    :goto_1
    return-object v1

    .line 148
    .restart local v1       #node:Lcom/htc/gl/Instance;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1           #node:Lcom/htc/gl/Instance;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildNumber()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMaterial()Lcom/htc/gl/Material;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    return-object v0
.end method

.method public getObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/gl/Instance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderable()Lcom/htc/gl/shape/Renderable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onDestroy()V

    .line 220
    iput-object v2, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    .line 223
    :cond_0
    iput-object v2, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    .line 225
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onDestroy()V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 233
    return-void
.end method

.method protected onDrawRenderable(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    invoke-interface {v0, p1}, Lcom/htc/gl/shape/Renderable;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 60
    return-void
.end method

.method public onReloadMaterial()V
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onReloadTexture()V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onReloadMaterial()V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public onUnloadMaterial()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onUnloadTexture()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onUnloadMaterial()V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setAlphaByParent(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 166
    return-void
.end method

.method public setAngleByParent(FFF)V
    .locals 0
    .parameter "angle_x"
    .parameter "angle_y"
    .parameter "angle_z"

    .prologue
    .line 176
    return-void
.end method

.method public setMaterial(Lcom/htc/gl/Material;)V
    .locals 0
    .parameter "mat"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    .line 50
    return-void
.end method

.method public setPositionByParent(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 171
    return-void
.end method

.method public setRenderable(Lcom/htc/gl/shape/Renderable;)V
    .locals 0
    .parameter "renderable"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    .line 40
    return-void
.end method

.method public setScaleByParent(FFF)V
    .locals 0
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "scale_z"

    .prologue
    .line 181
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    .line 35
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public update(I)V
    .locals 0
    .parameter "difftime"

    .prologue
    .line 93
    return-void
.end method

.method public updateByKeyFrame(F)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 184
    return-void
.end method
