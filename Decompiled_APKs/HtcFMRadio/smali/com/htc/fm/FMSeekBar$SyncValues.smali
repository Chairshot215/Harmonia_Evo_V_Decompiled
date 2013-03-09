.class Lcom/htc/fm/FMSeekBar$SyncValues;
.super Ljava/lang/Object;
.source "FMSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncValues"
.end annotation


# instance fields
.field private bandWidthPixelValue:F

.field private mInitFreq:I

.field private mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

.field private mSyncPixel:I

.field final synthetic this$0:Lcom/htc/fm/FMSeekBar;


# direct methods
.method public constructor <init>(Lcom/htc/fm/FMSeekBar;II)V
    .locals 0
    .parameter
    .parameter "mInitFreq"
    .parameter "mSyncPixel"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->this$0:Lcom/htc/fm/FMSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mInitFreq:I

    .line 454
    iput p3, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mSyncPixel:I

    .line 455
    return-void
.end method


# virtual methods
.method public getFreq(I)I
    .locals 4
    .parameter "pixel"

    .prologue
    .line 476
    iget-object v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    if-nez v2, :cond_0

    .line 477
    iget v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mInitFreq:I

    .line 479
    :goto_0
    return v2

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    invoke-virtual {v2}, Lcom/htc/fm/FMSeekBar$SyncValues;->getSyncPixel()I

    move-result v2

    sub-int v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v0, v2

    .line 479
    .local v0, value:J
    long-to-float v2, v0

    iget v3, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->bandWidthPixelValue:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    invoke-virtual {v3}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mInitFreq:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getInitFreq()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mInitFreq:I

    return v0
.end method

.method public getPixel(I)I
    .locals 3
    .parameter "freq"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    if-nez v1, :cond_0

    .line 469
    iget v1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mSyncPixel:I

    .line 471
    :goto_0
    return v1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    invoke-virtual {v1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 471
    .local v0, value:I
    int-to-float v1, v0

    iget v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->bandWidthPixelValue:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    invoke-virtual {v2}, Lcom/htc/fm/FMSeekBar$SyncValues;->getSyncPixel()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mSyncPixel:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getSyncPixel()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mSyncPixel:I

    return v0
.end method

.method public init(Lcom/htc/fm/FMSeekBar$SyncValues;)V
    .locals 3
    .parameter "previous"

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getSyncPixel()I

    move-result v0

    iget v1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mSyncPixel:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getInitFreq()I

    move-result v1

    iget v2, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mInitFreq:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->bandWidthPixelValue:F

    .line 463
    iput-object p1, p0, Lcom/htc/fm/FMSeekBar$SyncValues;->mPrevious:Lcom/htc/fm/FMSeekBar$SyncValues;

    goto :goto_0
.end method
