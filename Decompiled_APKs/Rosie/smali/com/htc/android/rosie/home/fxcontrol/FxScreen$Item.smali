.class Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
.super Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;
.source "FxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field private mFxParent:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

.field public final mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/launcher/FxItem;Lcom/htc/fusion/fx/controls/FxCellSceneContainer;ZLcom/htc/android/rosie/home/fxcontrol/ItemContainer;Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;)V
    .locals 5
    .parameter
    .parameter "fxItem"
    .parameter "parent"
    .parameter "attach"
    .parameter "container"
    .parameter "layout"

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    .line 1259
    invoke-direct {p0, p2, p5}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;-><init>(Lcom/htc/launcher/FxItem;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;)V

    .line 1261
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v1, p6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget v2, p6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    iget v3, p6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanX:I

    iget v4, p6, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->spanY:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    .line 1263
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v1}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->cellToRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1266
    :cond_0
    return-void
.end method


# virtual methods
.method drop()V
    .locals 0

    .prologue
    .line 1294
    invoke-super {p0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->drop()V

    .line 1295
    return-void
.end method

.method public getmFxParent()Lcom/htc/fusion/fx/controls/FxCellSceneContainer;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxCellSceneContainer:Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    return-object v0
.end method

.method public moveTo(II)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->move(II)V

    .line 1271
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->getmFxParent()Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1272
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Should not invoke moveTo() if not attached"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->getmFxParent()Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->cellToRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method pick()V
    .locals 0

    .prologue
    .line 1289
    invoke-super {p0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->pick()V

    .line 1290
    return-void
.end method

.method public resize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->resize(II)V

    .line 1281
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->getmFxParent()Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1282
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Should not invoke moveTo() if not attached"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->getmFxParent()Lcom/htc/fusion/fx/controls/FxCellSceneContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->asRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->cellToRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1303
    const-string v0, "Item@FxItem:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
