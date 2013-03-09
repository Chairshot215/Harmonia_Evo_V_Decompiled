.class public Lcom/google/android/talk/util/IntTrie;
.super Ljava/lang/Object;
.source "IntTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/util/IntTrie$Node;
    }
.end annotation


# instance fields
.field private mHead:Lcom/google/android/talk/util/IntTrie$Node;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 5
    .parameter "dictionary"
    .parameter "values"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    array-length v1, p1

    .line 70
    .local v1, len:I
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dictionary[] and values[] must be the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    new-instance v2, Lcom/google/android/talk/util/IntTrie$Node;

    invoke-direct {v2, p0}, Lcom/google/android/talk/util/IntTrie$Node;-><init>(Lcom/google/android/talk/util/IntTrie;)V

    iput-object v2, p0, Lcom/google/android/talk/util/IntTrie;->mHead:Lcom/google/android/talk/util/IntTrie$Node;

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/google/android/talk/util/IntTrie;->mHead:Lcom/google/android/talk/util/IntTrie$Node;

    aget-object v3, p1, v0

    aget v4, p2, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/talk/util/IntTrie$Node;->add(Ljava/lang/String;I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public getNode(C)Lcom/google/android/talk/util/IntTrie$Node;
    .locals 1
    .parameter "key"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/talk/util/IntTrie;->mHead:Lcom/google/android/talk/util/IntTrie$Node;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/util/IntTrie$Node;->getNode(C)Lcom/google/android/talk/util/IntTrie$Node;

    move-result-object v0

    return-object v0
.end method
