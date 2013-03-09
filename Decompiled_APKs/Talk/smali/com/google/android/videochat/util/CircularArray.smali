.class public Lcom/google/android/videochat/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasWrapped:Z

.field mList:[Ljava/lang/Object;

.field private mMaxCount:I

.field private mNextWriter:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/videochat/util/CircularArray;,"Lcom/google/android/videochat/util/CircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    .line 25
    invoke-virtual {p0}, Lcom/google/android/videochat/util/CircularArray;->clear()V

    .line 26
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/videochat/util/CircularArray;,"Lcom/google/android/videochat/util/CircularArray<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/videochat/util/CircularArray;->mList:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    aput-object p1, v0, v1

    .line 43
    iget v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    .line 44
    iget v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    iget v1, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/util/CircularArray;->mHasWrapped:Z

    .line 48
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/videochat/util/CircularArray;,"Lcom/google/android/videochat/util/CircularArray<TE;>;"
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    .line 33
    iput-boolean v0, p0, Lcom/google/android/videochat/util/CircularArray;->mHasWrapped:Z

    .line 34
    iget v0, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/videochat/util/CircularArray;->mList:[Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 56
    .local p0, this:Lcom/google/android/videochat/util/CircularArray;,"Lcom/google/android/videochat/util/CircularArray<TE;>;"
    iget-boolean v0, p0, Lcom/google/android/videochat/util/CircularArray;->mHasWrapped:Z

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    .line 59
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/videochat/util/CircularArray;,"Lcom/google/android/videochat/util/CircularArray<TE;>;"
    iget-boolean v1, p0, Lcom/google/android/videochat/util/CircularArray;->mHasWrapped:Z

    if-eqz v1, :cond_1

    .line 72
    iget v1, p0, Lcom/google/android/videochat/util/CircularArray;->mNextWriter:I

    add-int v0, p1, v1

    .line 73
    .local v0, wrappedIndex:I
    iget v1, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    if-lt v0, v1, :cond_0

    .line 74
    iget v1, p0, Lcom/google/android/videochat/util/CircularArray;->mMaxCount:I

    sub-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/util/CircularArray;->mList:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 78
    .end local v0           #wrappedIndex:I
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/videochat/util/CircularArray;->mList:[Ljava/lang/Object;

    aget-object v1, v1, p1

    goto :goto_0
.end method
