.class public interface abstract Lcom/htc/fusion/fx/FxDraggable;
.super Ljava/lang/Object;
.source "FxDraggable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxDraggable$OnDragEventListener;,
        Lcom/htc/fusion/fx/FxDraggable$EndDragStyle;,
        Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;
    }
.end annotation


# virtual methods
.method public abstract beginDrag()V
.end method

.method public abstract endDrag()V
.end method

.method public abstract getBeginDragSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getBeginDragStyle()I
.end method

.method public abstract getDragOutSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDragOverSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getDragScope()[Ljava/lang/String;
.end method

.method public abstract getEndDragSource()Lcom/htc/fusion/fx/IMessageSource;
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

.method public abstract getEndDragStyle()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setBeginDragStyle(I)V
.end method

.method public abstract setDragScope([Ljava/lang/String;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setEndDragStyle(I)V
.end method

.method public abstract setOnBeginDragListener(Lcom/htc/fusion/fx/FxDraggable$OnDragEventListener;)V
.end method

.method public abstract setOnEndDragListener(Lcom/htc/fusion/fx/FxDraggable$OnDragEventListener;)V
.end method
