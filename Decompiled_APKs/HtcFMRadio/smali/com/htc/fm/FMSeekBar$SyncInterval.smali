.class Lcom/htc/fm/FMSeekBar$SyncInterval;
.super Ljava/lang/Object;
.source "FMSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncInterval"
.end annotation


# instance fields
.field private mEndFreq:I

.field private mEndPixel:F

.field private mFreq:I

.field private mPixel:F

.field private mStartFreq:I

.field private mStartPixel:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mFreq:I

    .line 409
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mPixel:F

    .line 410
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .parameter "pixel"

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p1, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mPixel:F

    .line 404
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mFreq:I

    .line 405
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mFreq:I

    .line 399
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mPixel:F

    .line 400
    return-void
.end method

.method static synthetic access$000(IIII)Lcom/htc/fm/FMSeekBar$SyncInterval;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 389
    invoke-static {p0, p1, p2, p3}, Lcom/htc/fm/FMSeekBar$SyncInterval;->build(IIII)Lcom/htc/fm/FMSeekBar$SyncInterval;

    move-result-object v0

    return-object v0
.end method

.method private static build(IIII)Lcom/htc/fm/FMSeekBar$SyncInterval;
    .locals 2
    .parameter "startFreq"
    .parameter "endFreq"
    .parameter "startPixel"
    .parameter "endPixel"

    .prologue
    .line 414
    new-instance v0, Lcom/htc/fm/FMSeekBar$SyncInterval;

    invoke-direct {v0}, Lcom/htc/fm/FMSeekBar$SyncInterval;-><init>()V

    .line 415
    .local v0, interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    iput p0, v0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mStartFreq:I

    .line 416
    iput p1, v0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mEndFreq:I

    .line 417
    int-to-float v1, p2

    iput v1, v0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mStartPixel:F

    .line 418
    int-to-float v1, p3

    iput v1, v0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mEndPixel:F

    .line 419
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, equal:Z
    instance-of v4, p1, Lcom/htc/fm/FMSeekBar$SyncInterval;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 426
    check-cast v2, Lcom/htc/fm/FMSeekBar$SyncInterval;

    .line 427
    .local v2, interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    iget v1, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mFreq:I

    .line 428
    .local v1, freq:I
    iget v3, p0, Lcom/htc/fm/FMSeekBar$SyncInterval;->mPixel:F

    .line 429
    .local v3, pixel:F
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 430
    iget v4, v2, Lcom/htc/fm/FMSeekBar$SyncInterval;->mStartFreq:I

    if-lt v1, v4, :cond_0

    iget v4, v2, Lcom/htc/fm/FMSeekBar$SyncInterval;->mEndFreq:I

    if-gt v1, v4, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 441
    .end local v1           #freq:I
    .end local v2           #interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    .end local v3           #pixel:F
    :cond_0
    :goto_0
    return v0

    .line 434
    .restart local v1       #freq:I
    .restart local v2       #interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    .restart local v3       #pixel:F
    :cond_1
    const/high16 v4, -0x4080

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    .line 435
    iget v4, v2, Lcom/htc/fm/FMSeekBar$SyncInterval;->mStartPixel:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    iget v4, v2, Lcom/htc/fm/FMSeekBar$SyncInterval;->mEndPixel:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 437
    const/4 v0, 0x1

    goto :goto_0
.end method
