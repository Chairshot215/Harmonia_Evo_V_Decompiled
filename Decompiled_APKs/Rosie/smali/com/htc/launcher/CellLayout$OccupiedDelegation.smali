.class public interface abstract Lcom/htc/launcher/CellLayout$OccupiedDelegation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OccupiedDelegation"
.end annotation


# virtual methods
.method public abstract findCoveredCells(Lcom/htc/launcher/CellInfo;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/launcher/CellInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/CellInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract getDraggingOccupiedCells()[[Z
.end method

.method public abstract getOccupiedCells()[[Z
.end method

.method public abstract getRearrangeItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/Draggee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isTouchOnItem(II)Z
.end method

.method public abstract moveOccupiedCells(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Z)V
.end method

.method public abstract performRearrange(ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/CellLayout$RearrangeInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOccupiedCells([Z)V
.end method
