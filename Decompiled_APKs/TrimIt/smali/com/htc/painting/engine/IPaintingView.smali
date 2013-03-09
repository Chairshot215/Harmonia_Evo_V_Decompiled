.class public interface abstract Lcom/htc/painting/engine/IPaintingView;
.super Ljava/lang/Object;
.source "IPaintingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;
    }
.end annotation


# virtual methods
.method public abstract canRedo()Z
.end method

.method public abstract canUndo()Z
.end method

.method public abstract clearAll()V
.end method

.method public abstract enablePainting(Z)V
.end method

.method public abstract getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
.end method

.method public abstract isPaintingEnable()Z
.end method

.method public abstract redo()V
.end method

.method public abstract removeOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
.end method

.method public abstract setDisplayAlpha(I)V
.end method

.method public abstract setOnPaintingViewListener(Lcom/htc/painting/engine/IPaintingView$OnPaintingViewListener;)V
.end method

.method public abstract setPen(Lcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
.end method

.method public abstract setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
.end method

.method public abstract undo()V
.end method
