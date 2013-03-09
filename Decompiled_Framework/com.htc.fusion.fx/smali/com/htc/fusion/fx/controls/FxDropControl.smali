.class public Lcom/htc/fusion/fx/controls/FxDropControl;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxDropControl.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxDroppable;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public native drop(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public native dropActivate(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public native dropDeactivate(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public native getDragScope()[Ljava/lang/String;
.end method

.method public native getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public native getDropDeactivateSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public native getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public native getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public native getDropSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public native isEnabled()Z
.end method

.method public native setDragScope([Ljava/lang/String;)V
.end method

.method public native setEnabled(Z)V
.end method

.method public setOnDropActivateListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public setOnDropDeactivateListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropDeactivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public setOnDropListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public setOnDropOutListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public setOnDropOverListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FxDropControl [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getName()Ljava/lang/String;

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
