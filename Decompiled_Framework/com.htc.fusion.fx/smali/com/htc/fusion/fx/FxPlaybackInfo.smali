.class public Lcom/htc/fusion/fx/FxPlaybackInfo;
.super Ljava/lang/Object;
.source "FxPlaybackInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxPlaybackInfo$FxPlaybackResult;
    }
.end annotation


# instance fields
.field public mode:I

.field public name:Ljava/lang/String;

.field public playbackResult:I

.field public playbackSpeed:F

.field public timeMapFunction:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IFI)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->mode:I

    iput p3, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackSpeed:F

    iput p4, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->timeMapFunction:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->mode:I

    iput p3, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackSpeed:F

    iput p4, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->timeMapFunction:I

    iput p5, p0, Lcom/htc/fusion/fx/FxPlaybackInfo;->playbackResult:I

    return-void
.end method
