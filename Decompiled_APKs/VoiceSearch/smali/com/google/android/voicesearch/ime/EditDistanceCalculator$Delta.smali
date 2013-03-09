.class Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
.super Ljava/lang/Object;
.source "EditDistanceCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/EditDistanceCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delta"
.end annotation


# instance fields
.field mContiguousChars:B

.field mDeadEnd:Z

.field mTotalChars:S

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->canAddContiguousChar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->copy(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->updateIfBetter(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->updateDeadEnd(II)V

    return-void
.end method

.method private canAddContiguousChar()Z
    .locals 2

    .prologue
    .line 323
    iget-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->access$800(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewContiguousChars:B
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->access$1200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)B

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copy(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    .locals 1
    .parameter "newDelta"

    .prologue
    .line 294
    iget-byte v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    iput-byte v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    .line 295
    iget-short v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    iput-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    .line 296
    iget-boolean v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    .line 297
    return-void
.end method

.method private updateDeadEnd(II)V
    .locals 3
    .parameter "corPos"
    .parameter "recPos"

    .prologue
    .line 285
    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mCorLength:S
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->access$1100(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S

    move-result v1

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S
    invoke-static {v2}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->access$800(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-short v2, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    .line 288
    :cond_0
    return-void
.end method

.method private updateIfBetter(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)V
    .locals 2
    .parameter "newDelta"

    .prologue
    .line 303
    iget-boolean v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-eqz v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-direct {p1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->canAddContiguousChar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-boolean v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    iget-short v1, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 313
    :cond_2
    iget-short v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    .line 314
    iget-byte v0, p1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    goto :goto_0
.end method
