.class public interface abstract Lcom/htc/fusion/fx/FxDroppable;
.super Ljava/lang/Object;
.source "FxDroppable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;
    }
.end annotation


# virtual methods
.method public abstract drop(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public abstract dropActivate(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public abstract dropDeactivate(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public abstract getDragScope()[Ljava/lang/String;
.end method

.method public abstract getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDropDeactivateSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDropSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract isEnabled()Z
.end method

.method public abstract setDragScope([Ljava/lang/String;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOnDropActivateListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
.end method

.method public abstract setOnDropDeactivateListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
.end method

.method public abstract setOnDropListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
.end method

.method public abstract setOnDropOutListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
.end method

.method public abstract setOnDropOverListener(Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;)V
.end method
