.class public interface abstract Lcom/htc/music/IDmpUiPlaybackService;
.super Ljava/lang/Object;
.source "IDmpUiPlaybackService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/IDmpUiPlaybackService$Stub;
    }
.end annotation


# virtual methods
.method public abstract play()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
