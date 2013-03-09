.class public Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "HtcWrapMediaPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 10
    return-void
.end method

.method public static setHDMIOutput(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/media/MediaPlayer;->setHDMIOutput(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public seekTo(I)V
    .locals 0
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 19
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 15
    return-void
.end method
