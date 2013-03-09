.class public interface abstract Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;
.super Ljava/lang/Object;
.source "EndpointerInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onReadyForSpeech(FF)V
.end method

.method public abstract onRmsChanged(F)V
.end method
