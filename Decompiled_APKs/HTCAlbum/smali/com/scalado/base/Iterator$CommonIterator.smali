.class public Lcom/scalado/base/Iterator$CommonIterator;
.super Lcom/scalado/caps/PeerBase;
.source "Iterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/base/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommonIterator"
.end annotation


# instance fields
.field private isDone:Z

.field private iterationCount:I

.field final synthetic this$0:Lcom/scalado/base/Iterator;

.field private totalIterations:I


# direct methods
.method public constructor <init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V
    .locals 3
    .parameter
    .parameter "iterator"

    .prologue
    const/4 v2, -0x1

    .line 107
    iput-object p1, p0, Lcom/scalado/base/Iterator$CommonIterator;->this$0:Lcom/scalado/base/Iterator;

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    .line 104
    iput v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->iterationCount:I

    .line 105
    iput v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->totalIterations:I

    .line 109
    invoke-direct {p0, p2}, Lcom/scalado/base/Iterator$CommonIterator;->nativeCreate(Lcom/scalado/base/Iterator;)I

    move-result v0

    .line 110
    .local v0, error:I
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetTotalIterations()I

    move-result v0

    .line 111
    return-void
.end method

.method private native nativeAbort()I
.end method

.method private native nativeBeginRender(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeCreate(Lcom/scalado/base/Iterator;)I
.end method

.method private native nativeGetIterationCount()I
.end method

.method private native nativeGetTotalIterations()I
.end method

.method private native nativeStep()I
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    if-nez v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeAbort()I

    move-result v0

    .line 149
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    .line 151
    .end local v0           #error:I
    :cond_0
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    return v0
.end method

.method public step()F
    .locals 5

    .prologue
    const/high16 v2, 0x3f80

    .line 120
    iget-boolean v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    if-eqz v3, :cond_0

    .line 121
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeStep()I

    move-result v0

    .line 126
    .local v0, error:I
    iget-boolean v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->isDone:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 142
    :cond_1
    :goto_0
    return v1

    .line 130
    :cond_2
    iget v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->totalIterations:I

    if-gtz v3, :cond_3

    move v1, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetIterationCount()I

    move-result v0

    .line 135
    iget v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->iterationCount:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scalado/base/Iterator$CommonIterator;->totalIterations:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 138
    .local v1, progress:F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v1, v2

    .line 139
    goto :goto_0
.end method
