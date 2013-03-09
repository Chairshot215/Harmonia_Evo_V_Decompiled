.class Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;
.super Ljava/lang/Object;
.source "EditDistanceCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/EditDistanceCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeltaTable"
.end annotation


# instance fields
.field private mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

.field private mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;II)V
    .locals 5
    .parameter
    .parameter "rec"
    .parameter "cor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->this$0:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-array v1, p2, [Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    .line 210
    new-array v1, p2, [Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    .line 211
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    if-ge v0, p2, :cond_1

    .line 212
    #getter for: Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->mMaxNewChars:S
    invoke-static {p1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;->access$800(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)S

    move-result v1

    sub-int v1, p3, v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    new-instance v2, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    invoke-direct {v2, p1, v3}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V

    aput-object v2, v1, v0

    .line 214
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v0

    iput-byte v4, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mContiguousChars:B

    .line 215
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v0

    iput-short v4, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    new-instance v2, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    invoke-direct {v2, p1, v3}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    new-instance v2, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    invoke-direct {v2, p1, v3}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;Lcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V

    aput-object v2, v1, v0

    .line 218
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    goto :goto_1

    .line 223
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;IILcom/google/android/voicesearch/ime/EditDistanceCalculator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;-><init>(Lcom/google/android/voicesearch/ime/EditDistanceCalculator;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->toCurrRowDebug()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->nextRow()V

    return-void
.end method

.method private nextRow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    .line 230
    .local v0, tempRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    iput-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    .line 231
    iput-object v0, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    .line 232
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v3

    #calls: Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->canAddContiguousChar()Z
    invoke-static {v1}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->access$1000(Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    iget-object v2, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mPrevRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 236
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v1, v1, v3

    iget-short v2, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    goto :goto_0
.end method

.method private toCurrRowDebug()Ljava/lang/String;
    .locals 5

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mDeadEnd:Z

    if-eqz v3, :cond_0

    .line 244
    const-string v3, " D"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_1
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$DeltaTable;->mCurrRow:[Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;

    aget-object v3, v3, v0

    iget-short v3, v3, Lcom/google/android/voicesearch/ime/EditDistanceCalculator$Delta;->mTotalChars:S

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, st:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 248
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v2           #st:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
