.class public Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
.super Ljava/lang/Object;
.source "DesktopItem.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field public isDragging:Z

.field protected mAttachedScene:Lcom/htc/fusion/fx/FxScene;

.field protected mBounds:Landroid/graphics/RectF;

.field protected mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

.field protected mFxItem:Lcom/htc/launcher/FxItem;

.field protected mFxViewParent:Lcom/htc/fusion/fx/FxView;

.field public mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V
    .locals 6
    .parameter "fxItem"
    .parameter "itemContainer"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    .line 23
    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    .line 24
    iput-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    .line 28
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    .line 29
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    .line 30
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 31
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->getSize()Landroid/graphics/PointF;

    move-result-object v1

    .line 33
    .local v1, size:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    .line 35
    .end local v1           #size:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/htc/fusion/fx/FxView;)V
    .locals 6
    .parameter "viewParent"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "attachTo when mItemContainer == null"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 44
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "attachTo when mItemContainer.getScene() == null"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    if-eqz v1, :cond_3

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->detach()Z

    .line 53
    :cond_3
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    .line 54
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxView;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 55
    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    .line 57
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "attach %d to FxView %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxView;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public attachTo(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;Landroid/graphics/Rect;)Z
    .locals 7
    .parameter "cellSceneContainer"
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v4, "attachTo when mItemContainer == null"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 84
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 67
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v1, :cond_1

    .line 68
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v4, "attachTo when mItemContainer.getScene() == null"

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    if-eqz v3, :cond_3

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->detach()Z

    .line 76
    :cond_3
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    .line 77
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v3, v1, p2}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->addScene(Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;)Z

    move-result v0

    .line 78
    .local v0, ok:Z
    if-eqz v0, :cond_4

    .line 79
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    .line 82
    :cond_4
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach %d to cellSceneContainer %d, ok:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public detach()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 88
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v7, :cond_0

    .line 89
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v7, "detach when mItemContainer == null"

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return v5

    .line 93
    :cond_0
    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_1

    .line 94
    iget-object v6, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v7, "detach when mItemContainer.getScene() == null"

    invoke-static {v6, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    if-eqz v5, :cond_2

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 100
    .local v3, start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/FxView;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v3

    .line 102
    .local v0, diff:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detach "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/FxScene;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from mFxViewParent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxViewParent:Lcom/htc/fusion/fx/FxView;

    move v5, v6

    .line 104
    goto :goto_0

    .line 107
    .end local v0           #diff:J
    .end local v3           #start:J
    :cond_2
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    if-eqz v5, :cond_3

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 109
    .restart local v3       #start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    iget-object v7, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxScene;)Z

    move-result v2

    .line 110
    .local v2, ok:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v3

    .line 111
    .restart local v0       #diff:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detach "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mAttachedScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/FxScene;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from mFxCellSceneContainer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",diff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move v5, v6

    .line 113
    goto/16 :goto_0

    .line 116
    .end local v0           #diff:J
    .end local v2           #ok:Z
    .end local v3           #start:J
    :cond_3
    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->LOG_TAG:Ljava/lang/String;

    const-string v7, "detach but no parent"

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 117
    goto/16 :goto_0
.end method

.method drop()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v0, :cond_1

    .line 155
    const-string v0, "DesktopItem"

    const-string v1, "[EDIT_DEBUG] DesktopItem.drop() mItemContainer = null, return!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->drop()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    goto :goto_0
.end method

.method public getDraggee()Lcom/htc/launcher/Draggee;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getDraggee()Lcom/htc/launcher/Draggee;

    move-result-object v0

    return-object v0
.end method

.method getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method pick()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    if-nez v0, :cond_1

    .line 143
    const-string v0, "DesktopItem"

    const-string v1, "[EDIT_DEBUG] DesktopItem.pick() mItemContainer = null, return!"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->pick()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->isDragging:Z

    goto :goto_0
.end method

.method setFxScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 5
    .parameter "scene"

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 164
    const-string v1, "DesktopItem"

    const-string v2, "[EDIT_DEBUG] DesktopItem.setFxScene() scene = null, return!"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v1, p1}, Lcom/htc/launcher/FxItem;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 169
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxScene;->getSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 171
    .local v0, size:Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public setItemVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mItemContainer:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->setItemVisibility(Z)V

    .line 122
    return-void
.end method
