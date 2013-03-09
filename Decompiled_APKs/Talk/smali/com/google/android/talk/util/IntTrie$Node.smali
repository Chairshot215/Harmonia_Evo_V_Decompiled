.class Lcom/google/android/talk/util/IntTrie$Node;
.super Ljava/lang/Object;
.source "IntTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/IntTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation


# instance fields
.field private mFirstChild:Lcom/google/android/talk/util/IntTrie$Node;

.field private mKey:C

.field private mNextSibling:Lcom/google/android/talk/util/IntTrie$Node;

.field mValue:I

.field final synthetic this$0:Lcom/google/android/talk/util/IntTrie;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/IntTrie;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/talk/util/IntTrie$Node;->this$0:Lcom/google/android/talk/util/IntTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrCreateNode(C)Lcom/google/android/talk/util/IntTrie$Node;
    .locals 3
    .parameter "key"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/talk/util/IntTrie$Node;->mFirstChild:Lcom/google/android/talk/util/IntTrie$Node;

    .local v0, n:Lcom/google/android/talk/util/IntTrie$Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    iget-char v2, v0, Lcom/google/android/talk/util/IntTrie$Node;->mKey:C

    if-ne v2, p1, :cond_0

    move-object v1, v0

    .line 53
    .end local v0           #n:Lcom/google/android/talk/util/IntTrie$Node;
    .local v1, n:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 41
    .end local v1           #n:Ljava/lang/Object;
    .restart local v0       #n:Lcom/google/android/talk/util/IntTrie$Node;
    :cond_0
    iget-object v0, v0, Lcom/google/android/talk/util/IntTrie$Node;->mNextSibling:Lcom/google/android/talk/util/IntTrie$Node;

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/google/android/talk/util/IntTrie$Node;

    .end local v0           #n:Lcom/google/android/talk/util/IntTrie$Node;
    iget-object v2, p0, Lcom/google/android/talk/util/IntTrie$Node;->this$0:Lcom/google/android/talk/util/IntTrie;

    invoke-direct {v0, v2}, Lcom/google/android/talk/util/IntTrie$Node;-><init>(Lcom/google/android/talk/util/IntTrie;)V

    .line 49
    .restart local v0       #n:Lcom/google/android/talk/util/IntTrie$Node;
    iput-char p1, v0, Lcom/google/android/talk/util/IntTrie$Node;->mKey:C

    .line 50
    iget-object v2, p0, Lcom/google/android/talk/util/IntTrie$Node;->mFirstChild:Lcom/google/android/talk/util/IntTrie$Node;

    iput-object v2, v0, Lcom/google/android/talk/util/IntTrie$Node;->mNextSibling:Lcom/google/android/talk/util/IntTrie$Node;

    .line 51
    iput-object v0, p0, Lcom/google/android/talk/util/IntTrie$Node;->mFirstChild:Lcom/google/android/talk/util/IntTrie$Node;

    move-object v1, v0

    .line 53
    .restart local v1       #n:Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method public final add(Ljava/lang/String;I)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 30
    .local v2, len:I
    move-object v3, p0

    .line 31
    .local v3, n:Lcom/google/android/talk/util/IntTrie$Node;
    const/4 v0, 0x0

    .local v0, index:I
    move v1, v0

    .line 33
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 34
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/talk/util/IntTrie$Node;->getOrCreateNode(C)Lcom/google/android/talk/util/IntTrie$Node;

    move-result-object v3

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 37
    :cond_0
    iput p2, v3, Lcom/google/android/talk/util/IntTrie$Node;->mValue:I

    .line 38
    return-void
.end method

.method getNode(C)Lcom/google/android/talk/util/IntTrie$Node;
    .locals 2
    .parameter "key"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/talk/util/IntTrie$Node;->mFirstChild:Lcom/google/android/talk/util/IntTrie$Node;

    .local v0, n:Lcom/google/android/talk/util/IntTrie$Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 58
    iget-char v1, v0, Lcom/google/android/talk/util/IntTrie$Node;->mKey:C

    if-ne v1, p1, :cond_0

    .line 63
    .end local v0           #n:Lcom/google/android/talk/util/IntTrie$Node;
    :goto_1
    return-object v0

    .line 57
    .restart local v0       #n:Lcom/google/android/talk/util/IntTrie$Node;
    :cond_0
    iget-object v0, v0, Lcom/google/android/talk/util/IntTrie$Node;->mNextSibling:Lcom/google/android/talk/util/IntTrie$Node;

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
