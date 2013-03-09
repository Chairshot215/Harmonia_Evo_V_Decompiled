.class public Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
.super Ljava/lang/Object;
.source "Autorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoramaOptions"
.end annotation


# instance fields
.field private mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field private mColorCompensation:Z

.field private mDetectDirectionAutomatically:Z

.field private mIntensityCompensation:Z

.field private mMaximumDeviation:I

.field private mMinimumDelta:I

.field private mNumberOfImages:I

.field private mOverlap:I

.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    sget-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$5(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method static synthetic access$7(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method


# virtual methods
.method public getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-object v0
.end method

.method public getBlendModeOptionColorCompensation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return v0
.end method

.method public getBlendModeOptionIntensityCompensation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    return v0
.end method

.method public getDirectionThreshold()I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return v0
.end method

.method public getMaximumDeviation()I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return v0
.end method

.method public getNumberOfImages()I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    return v0
.end method

.method public getOverlap()I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    return v0
.end method

.method public lockDirection(Lcom/scalado/caps/autorama/Direction;)V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$0(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama/Autorama;->access$1(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BlendMode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-void
.end method

.method public setBlendModeOptions(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z

    iput-boolean p2, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z

    return-void
.end method

.method public setDirectionThreshold(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Threshold must be in range [1, 99]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMinimumDelta:I

    return-void
.end method

.method public setMaximumDeviation(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum deviation must be in range [0, 100]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mMaximumDeviation:I

    return-void
.end method

.method public setNumberOfImages(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    iget v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v0

    iget v1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->stop(Z)V

    :cond_1
    return-void
.end method

.method public setOverlap(I)V
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overlap must be in range [10, 90]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mOverlap:I

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$3(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)V

    return-void
.end method
