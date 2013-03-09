.class public interface abstract Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;
.super Ljava/lang/Object;
.source "PicasaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAlbumChangeListener"
.end annotation


# virtual methods
.method public abstract albumsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/uploader/clients/picasa/Album;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract failed(Lcom/google/android/apps/uploader/ApplicationException;)V
.end method
