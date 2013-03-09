.class public Lcom/htc/dlnamiddlelayer/InputStatus;
.super Ljava/lang/Object;
.source "InputStatus.java"


# instance fields
.field protected bEnd:Z

.field protected bShuffle:Z

.field protected currentUri:Ljava/lang/String;

.field protected currentUriDMR:Ljava/lang/String;

.field protected nextUri:Ljava/lang/String;

.field protected nextUriDMR:Ljava/lang/String;

.field protected playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

.field protected repeatState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUriDMR:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->nextUriDMR:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUri:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->nextUri:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->bEnd:Z

    .line 14
    sget-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    .line 15
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/InputStatus;->bShuffle:Z

    return-void
.end method
