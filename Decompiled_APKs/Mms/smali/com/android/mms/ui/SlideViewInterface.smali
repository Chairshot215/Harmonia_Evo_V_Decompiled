.class public interface abstract Lcom/android/mms/ui/SlideViewInterface;
.super Ljava/lang/Object;
.source "SlideViewInterface.java"

# interfaces
.implements Lcom/android/mms/ui/ViewInterface;


# virtual methods
.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract pauseAudio()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract seekAudio(I)V
.end method

.method public abstract seekVideo(I)V
.end method

.method public abstract setAudio(Landroid/net/Uri;Ljava/lang/String;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
.end method

.method public abstract setImageGone()V
.end method

.method public abstract setImageRegionFit(Ljava/lang/String;)V
.end method

.method public abstract setImageVisibility(Z)V
.end method

.method public abstract setText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTextVisibility(Z)V
.end method

.method public abstract setVideo(Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract setVideoVisibility(Z)V
.end method

.method public abstract startAudio()V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopAudio()V
.end method

.method public abstract stopVideo()V
.end method
