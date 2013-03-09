.class public Lcom/htc/launcher/FxItem;
.super Ljava/lang/Object;
.source "FxItem.java"

# interfaces
.implements Lcom/htc/launcher/Draggee;


# instance fields
.field private mDraggee:Lcom/htc/launcher/Draggee;

.field private mInfo:Lcom/htc/launcher/ItemInfo;

.field private mSceneL:Lcom/htc/fusion/fx/FxScene;

.field private mSceneP:Lcom/htc/fusion/fx/FxScene;

.field protected m_bCanRearrange:Z


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)V
    .locals 1
    .parameter "scene"
    .parameter "info"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/FxItem;->m_bCanRearrange:Z

    .line 18
    iput-object p1, p0, Lcom/htc/launcher/FxItem;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    .line 19
    iput-object p2, p0, Lcom/htc/launcher/FxItem;->mInfo:Lcom/htc/launcher/ItemInfo;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/Draggee;)V
    .locals 1
    .parameter "aInfo"
    .parameter "aDraggee"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/launcher/FxItem;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/htc/launcher/FxItem;->setDraggee(Lcom/htc/launcher/Draggee;)V

    .line 25
    return-void
.end method

.method static create(Lcom/htc/fusion/fx/FxScene;Landroid/view/View;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;
    .locals 2
    .parameter "scene"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 116
    new-instance v0, Lcom/htc/launcher/FxItem;

    invoke-direct {v0, p0, p2}, Lcom/htc/launcher/FxItem;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)V

    .line 117
    .local v0, legacy:Lcom/htc/launcher/FxItem;
    invoke-static {p1}, Lcom/htc/launcher/Draggee$LegacyDraggee;->wrap(Ljava/lang/Object;)Lcom/htc/launcher/Draggee;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    .line 118
    return-object v0
.end method

.method static create(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)Lcom/htc/launcher/FxItem;
    .locals 1
    .parameter "scene"
    .parameter "info"

    .prologue
    .line 28
    new-instance v0, Lcom/htc/launcher/FxItem;

    invoke-direct {v0, p0, p1}, Lcom/htc/launcher/FxItem;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/launcher/ItemInfo;)V

    .line 29
    .local v0, item:Lcom/htc/launcher/FxItem;
    return-object v0
.end method


# virtual methods
.method public canRearrange()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/htc/launcher/FxItem;->m_bCanRearrange:Z

    return v0
.end method

.method public getCellXY()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getCellXY()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getDraggee()Lcom/htc/launcher/Draggee;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    return-object v0
.end method

.method public getInfo()Lcom/htc/launcher/ItemInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mInfo:Lcom/htc/launcher/ItemInfo;

    return-object v0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemInfo()Lcom/htc/launcher/ItemInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getOtherScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getRectInPixels()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getRectInPixels()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FxItem;->getScene(I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 57
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method public onBeforeDrag()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onDrag()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->onDrag()V

    goto :goto_0
.end method

.method public onDrop(Lcom/htc/launcher/DropTarget;II)V
    .locals 1
    .parameter "target"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/launcher/Draggee;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    goto :goto_0
.end method

.method public onDropAbort(Lcom/htc/launcher/DragSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    invoke-interface {v0, p1}, Lcom/htc/launcher/Draggee;->onDropAbort(Lcom/htc/launcher/DragSource;)V

    goto :goto_0
.end method

.method public setDraggee(Lcom/htc/launcher/Draggee;)V
    .locals 0
    .parameter "draggee"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/launcher/FxItem;->mDraggee:Lcom/htc/launcher/Draggee;

    return-void
.end method

.method public setOtherScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "scene"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/FxItem;->setScene(ILcom/htc/fusion/fx/FxScene;)V

    .line 54
    return-void
.end method

.method public setScene(ILcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "orientation"
    .parameter "scene"

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unsupported orientation"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    iput-object p2, p0, Lcom/htc/launcher/FxItem;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    .line 71
    :goto_0
    return-void

    .line 66
    :pswitch_1
    iput-object p2, p0, Lcom/htc/launcher/FxItem;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "scene"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/FxItem;->setScene(ILcom/htc/fusion/fx/FxScene;)V

    .line 44
    return-void
.end method

.method public setViaible(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mSceneP:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 131
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/launcher/FxItem;->mSceneL:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 134
    :cond_0
    return-void
.end method
