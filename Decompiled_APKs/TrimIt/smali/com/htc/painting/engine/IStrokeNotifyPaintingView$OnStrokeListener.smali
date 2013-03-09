.class public interface abstract Lcom/htc/painting/engine/IStrokeNotifyPaintingView$OnStrokeListener;
.super Ljava/lang/Object;
.source "IStrokeNotifyPaintingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/IStrokeNotifyPaintingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStrokeListener"
.end annotation


# virtual methods
.method public abstract onStrokeBegin(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
.end method

.method public abstract onStrokeEnd(Lcom/htc/painting/engine/StrokeEventArg$StrokeMoveEventArg;)V
.end method

.method public abstract onStrokeStatusChange(Lcom/htc/painting/engine/StrokeEventArg$StrokeStatusChangeEventArg;)V
.end method
