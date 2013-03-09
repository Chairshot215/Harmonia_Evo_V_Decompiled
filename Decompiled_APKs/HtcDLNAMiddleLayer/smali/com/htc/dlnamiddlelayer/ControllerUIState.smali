.class public Lcom/htc/dlnamiddlelayer/ControllerUIState;
.super Ljava/lang/Object;
.source "ControllerUIState.java"


# instance fields
.field public bMute:Z

.field public bShuffle:Z

.field public contentAlbum:Ljava/lang/String;

.field public contentArtist:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field public currentIndex:J

.field public fDuration:J

.field public playState:I

.field public position:J

.field public rendererID:Ljava/lang/String;

.field public repeatState:I

.field public thumbnailPath:Ljava/lang/String;

.field public totalCount:J

.field public volumeValue:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->rendererID:Ljava/lang/String;

    .line 5
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->contentTitle:Ljava/lang/String;

    .line 6
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->contentArtist:Ljava/lang/String;

    .line 7
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->contentAlbum:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->thumbnailPath:Ljava/lang/String;

    .line 9
    iput-wide v4, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->totalCount:J

    .line 10
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->currentIndex:J

    .line 11
    iput-wide v4, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->fDuration:J

    .line 12
    iput-wide v2, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->position:J

    .line 13
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->playState:I

    .line 14
    iput v1, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->volumeValue:I

    .line 15
    sget-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->repeatState:I

    .line 16
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->bMute:Z

    .line 17
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ControllerUIState;->bShuffle:Z

    return-void
.end method
