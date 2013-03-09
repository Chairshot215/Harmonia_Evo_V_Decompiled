.class public interface abstract Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
.super Ljava/lang/Object;
.source "IOnlineDataListener.java"


# virtual methods
.method public abstract onDownloadStateChanged(Ljava/lang/String;I)V
.end method

.method public abstract onListRetrieved(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onNotificationClick(Ljava/lang/String;Z)V
.end method

.method public abstract onPreviewDownloaded(Ljava/lang/String;)V
.end method
