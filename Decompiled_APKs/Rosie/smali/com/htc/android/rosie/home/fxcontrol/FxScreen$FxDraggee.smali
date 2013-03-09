.class final Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;
.super Ljava/lang/Object;
.source "FxScreen.java"

# interfaces
.implements Lcom/htc/launcher/Draggee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FxDraggee"
.end annotation


# instance fields
.field private mDelegate:Lcom/htc/launcher/Draggee;

.field private mId:J

.field private mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;


# direct methods
.method constructor <init>(JLcom/htc/android/rosie/home/fxcontrol/DesktopItem;Lcom/htc/launcher/Draggee;)V
    .locals 0
    .parameter "id"
    .parameter "item"
    .parameter "delegate"

    .prologue
    .line 1090
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput-wide p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mId:J

    .line 1092
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    .line 1093
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    .line 1094
    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1085
    iget-wide v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mId:J

    return-wide v0
.end method


# virtual methods
.method public getCellXY()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1119
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    instance-of v1, v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    if-nez v1, :cond_1

    .line 1120
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v2, "only screen item support cell-based layout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1124
    :goto_0
    return-object v1

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;

    .line 1124
    .local v0, item:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;
    new-instance v1, Landroid/graphics/Point;

    iget-object v2, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v2, v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellX:I

    iget-object v3, v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;->mLayout:Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;

    iget v3, v3, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$LayoutParams;->cellY:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    const/4 v0, 0x0

    .line 1105
    :goto_0
    return-object v0

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    goto :goto_0
.end method

.method public getItemInfo()Lcom/htc/launcher/ItemInfo;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    if-nez v0, :cond_1

    .line 1110
    :cond_0
    const/4 v0, 0x0

    .line 1113
    :goto_0
    return-object v0

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->getItemInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    iget-object v0, v0, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->mFxItem:Lcom/htc/launcher/FxItem;

    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getRectInPixels()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 1132
    .local v1, rf:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1133
    .local v0, r:Landroid/graphics/Rect;
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_0
    return-object v0
.end method

.method public onDrag()V
    .locals 2

    .prologue
    .line 1147
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG] FxDraggee.onDrag() - 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    invoke-interface {v0}, Lcom/htc/launcher/Draggee;->onDrag()V

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->pick()V

    .line 1153
    return-void
.end method

.method public onDrop(Lcom/htc/launcher/DropTarget;II)V
    .locals 2
    .parameter "target"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1138
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[EDIT_DEBUG] FxDraggee.onDrop() - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->drop()V

    .line 1141
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/launcher/Draggee;->onDrop(Lcom/htc/launcher/DropTarget;II)V

    .line 1143
    :cond_1
    return-void
.end method

.method public onDropAbort(Lcom/htc/launcher/DragSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 1156
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxScreen;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->LOG_TAG:Ljava/lang/String;

    const-string v1, "FxCell.onDropAbort()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;->drop()V

    .line 1158
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mDelegate:Lcom/htc/launcher/Draggee;

    invoke-interface {v0, p1}, Lcom/htc/launcher/Draggee;->onDropAbort(Lcom/htc/launcher/DragSource;)V

    .line 1160
    :cond_1
    return-void
.end method

.method public setItem(Lcom/htc/android/rosie/home/fxcontrol/FxScreen$Item;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$FxDraggee;->mItem:Lcom/htc/android/rosie/home/fxcontrol/DesktopItem;

    .line 1098
    return-void
.end method
