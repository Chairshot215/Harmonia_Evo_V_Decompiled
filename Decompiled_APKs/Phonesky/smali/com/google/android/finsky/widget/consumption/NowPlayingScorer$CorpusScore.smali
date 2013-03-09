.class Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;
.super Ljava/lang/Object;
.source "NowPlayingScorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CorpusScore"
.end annotation


# instance fields
.field private lastInteractionMs:J

.field private score:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->score:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->score:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->lastInteractionMs:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$CorpusScore;->lastInteractionMs:J

    return-wide p1
.end method
