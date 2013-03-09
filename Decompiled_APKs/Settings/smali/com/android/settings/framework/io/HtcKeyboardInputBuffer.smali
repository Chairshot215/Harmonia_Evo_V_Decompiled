.class public Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;
.super Ljava/lang/Object;
.source "HtcKeyboardInputBuffer.java"


# instance fields
.field protected mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field protected mLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mLength:I

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mLength:I

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->setLength(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mLength:I

    if-le v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v2, v4, :cond_1

    :cond_0
    move v2, v3

    .line 82
    :goto_0
    return v2

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_2

    move v2, v3

    .line 79
    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 9
    .parameter "str"

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/4 v5, 0x0

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    move v4, v5

    .line 116
    :goto_0
    return v4

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Character;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 103
    .local v2, keyCode1:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 105
    .local v3, keyCode2:C
    if-gt v7, v2, :cond_2

    if-gt v2, v8, :cond_2

    .line 106
    add-int/lit8 v4, v2, -0x20

    int-to-char v2, v4

    .line 108
    :cond_2
    if-gt v7, v3, :cond_3

    if-gt v3, v8, :cond_3

    .line 109
    add-int/lit8 v4, v3, -0x20

    int-to-char v3, v4

    .line 112
    :cond_3
    if-eq v2, v3, :cond_4

    move v4, v5

    .line 113
    goto :goto_0

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v2           #keyCode1:C
    .end local v3           #keyCode2:C
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mLength:I

    return v0
.end method

.method public setLength(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 45
    if-lez p1, :cond_0

    .line 46
    iput p1, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mLength:I

    .line 51
    return-void

    .line 48
    :cond_0
    const-string v0, "The length must be a positive integer."

    .line 49
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcKeyboardInputBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
