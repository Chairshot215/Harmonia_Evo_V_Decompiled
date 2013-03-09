.class public interface abstract Lcom/htc/dlnamiddlelayer/IMediaControllerNotify;
.super Ljava/lang/Object;
.source "IMediaControllerNotify.java"


# virtual methods
.method public abstract controllerErrorMsg(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract controllerResponseMsg(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract playlistCreatedResultMsg(ILjava/lang/String;JJ)V
.end method

.method public abstract registerUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V
.end method

.method public abstract unRegisterUsingService(Lcom/htc/dlnamiddlelayer/MediaController;)V
.end method

.method public abstract updateControlItemInfo(ILcom/htc/dlnainterface/DLNAControlItemData;)V
.end method

.method public abstract updateControlItemThumbnail(ILjava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract updateControlStatus(ILcom/htc/dlnainterface/DLNAControllerStatus;)V
.end method

.method public abstract updateDownloadStoreAlbumArt(ILjava/lang/String;JLjava/lang/String;)V
.end method
