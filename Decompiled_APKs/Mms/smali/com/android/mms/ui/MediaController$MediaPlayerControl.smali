.class public interface abstract Lcom/android/mms/ui/MediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract start()V
.end method
