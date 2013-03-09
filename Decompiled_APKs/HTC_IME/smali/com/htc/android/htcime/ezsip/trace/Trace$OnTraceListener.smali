.class public interface abstract Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/trace/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTraceListener"
.end annotation


# virtual methods
.method public abstract getComposing()Ljava/lang/String;
.end method

.method public abstract getCurrLDBID()I
.end method

.method public abstract isInComposing()Z
.end method

.method public abstract onAlphabetKey(ILandroid/graphics/Point;Z)V
.end method

.method public abstract onCancel()V
.end method

.method public abstract onCommit(Z)V
.end method

.method public abstract onCommitTapPD(IZ)V
.end method

.method public abstract onDelKey()V
.end method

.method public abstract onEnterKey()V
.end method

.method public abstract onPreAccent(IZ)V
.end method

.method public abstract onPreDict(I)Z
.end method

.method public abstract onPunctKey(C)V
.end method

.method public abstract onSpaceKey()V
.end method
