.class public Lcom/htc/fusion/fx/controls/FxDragControl;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxDragControl.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxDraggable;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native beginDrag()V
.end method

.method public native endDrag()V
.end method

.method public native getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end method

.method public native getBeginDragStyle()I
.end method

.method public native getDragOutSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDroppable;",
            ">;"
        }
    .end annotation
.end method

.method public native getDragOverSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDroppable;",
            ">;"
        }
    .end annotation
.end method

.method public native getDragScope()[Ljava/lang/String;
.end method

.method public native getEndDragPlayMarkerCompleteSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end method

.method public native getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end method

.method public native getEndDragStyle()I
.end method

.method public native isEnabled()Z
.end method

.method public native setBeginDragStyle(I)V
.end method

.method public native setDragScope([Ljava/lang/String;)V
.end method

.method public native setEnabled(Z)V
.end method

.method public native setEndDragStyle(I)V
.end method

.method public setOnBeginDragListener(Lcom/htc/fusion/fx/FxDraggable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDragControl;->getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public setOnEndDragListener(Lcom/htc/fusion/fx/FxDraggable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDragControl;->getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FxDragControl [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDragControl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
