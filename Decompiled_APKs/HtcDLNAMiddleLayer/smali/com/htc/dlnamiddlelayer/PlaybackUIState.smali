.class public Lcom/htc/dlnamiddlelayer/PlaybackUIState;
.super Ljava/lang/Object;
.source "PlaybackUIState.java"


# instance fields
.field public bMute:Z

.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentNextURI:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public contentURI:Ljava/lang/String;

.field public curDMRContentTitle:Ljava/lang/String;

.field public curDMRPlayState:I

.field public fDuration:J

.field public playState:I

.field public position:J

.field public volumeValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentTitle:Ljava/lang/String;

    .line 6
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentArtist:Ljava/lang/String;

    .line 7
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentAlbum:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentURI:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->contentNextURI:Ljava/lang/String;

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->fDuration:J

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->position:J

    .line 12
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->playState:I

    .line 13
    iput v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->volumeValue:I

    .line 14
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->bMute:Z

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRContentTitle:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaybackUIState;->curDMRPlayState:I

    return-void
.end method
