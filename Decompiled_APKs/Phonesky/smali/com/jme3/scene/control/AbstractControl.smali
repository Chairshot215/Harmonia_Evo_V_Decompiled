.class public abstract Lcom/jme3/scene/control/AbstractControl;
.super Ljava/lang/Object;
.source "AbstractControl.java"

# interfaces
.implements Lcom/jme3/scene/control/Control;


# instance fields
.field protected enabled:Z

.field protected spatial:Lcom/jme3/scene/Spatial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
.end method

.method protected abstract controlUpdate(F)V
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 108
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    .line 109
    const-string v1, "spatial"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    iput-object v1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    .line 110
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1
    .parameter "rm"
    .parameter "vp"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    goto :goto_0
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2
    .parameter "spatial"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This control has already been added to a Spatial"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    .line 62
    return-void
.end method

.method public update(F)V
    .locals 1
    .parameter "tpf"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->controlUpdate(F)V

    goto :goto_0
.end method
