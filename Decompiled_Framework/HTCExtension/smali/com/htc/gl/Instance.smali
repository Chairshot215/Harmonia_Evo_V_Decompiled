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

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    iput-object v1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    iput-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    iput-object p1, p0, Lcom/htc/gl/Instance;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachChild(Lcom/htc/gl/Instance;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public detachChild(Lcom/htc/gl/Instance;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public detachChild(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/gl/Instance;->findChild(Ljava/lang/String;)Lcom/htc/gl/Instance;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget-boolean v1, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1, p1}, Lcom/htc/gl/Material;->setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/gl/Instance;->onDrawRenderable(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1, p1}, Lcom/htc/gl/Instance;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findChild(Ljava/lang/String;)Lcom/htc/gl/Instance;
    .locals 4

    iget-object v3, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->getObjName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildNumber()I
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMaterial()Lcom/htc/gl/Material;
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    return-object v0
.end method

.method public getObjName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderable()Lcom/htc/gl/shape/Renderable;
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onDestroy()V

    iput-object v2, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    :cond_0
    iput-object v2, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method protected onDrawRenderable(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    invoke-interface {v0, p1}, Lcom/htc/gl/shape/Renderable;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onReloadMaterial()V
    .locals 2

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onReloadTexture()V

    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onReloadMaterial()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUnloadMaterial()V
    .locals 2

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v1}, Lcom/htc/gl/Material;->onUnloadTexture()V

    :cond_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gl/Instance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->onUnloadMaterial()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAlphaByParent(F)V
    .locals 0

    return-void
.end method

.method public setAngleByParent(FFF)V
    .locals 0

    return-void
.end method

.method public setMaterial(Lcom/htc/gl/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/gl/Instance;->m_Material:Lcom/htc/gl/Material;

    return-void
.end method

.method public setPositionByParent(FFF)V
    .locals 0

    return-void
.end method

.method public setRenderable(Lcom/htc/gl/shape/Renderable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/gl/Instance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    return-void
.end method

.method public setScaleByParent(FFF)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/gl/Instance;->m_Visible:Z

    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public update(I)V
    .locals 0

    return-void
.end method

.method public updateByKeyFrame(F)V
    .locals 0

    return-void
.end method
