.class public interface abstract Lcom/htc/launcher/Draggee;
.super Ljava/lang/Object;
.source "Draggee.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/Draggee$LegacyDraggee;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/launcher/Draggee;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/Draggee;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getCellXY()Landroid/graphics/Point;
.end method

.method public abstract getItem()Ljava/lang/Object;
.end method

.method public abstract getItemInfo()Lcom/htc/launcher/ItemInfo;
.end method

.method public abstract getRectInPixels()Landroid/graphics/Rect;
.end method

.method public abstract onDrag()V
.end method

.method public abstract onDrop(Lcom/htc/launcher/DropTarget;II)V
.end method

.method public abstract onDropAbort(Lcom/htc/launcher/DragSource;)V
.end method
