.class public Lgnu/lists/Pair;
.super Lgnu/lists/LList;
.source "Pair.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field protected car:Ljava/lang/Object;

.field protected cdr:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "carval"
    .parameter "cdrval"

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/lists/LList;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I
    .locals 8
    .parameter "pair1"
    .parameter "pair2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 198
    if-ne p0, p1, :cond_0

    move v4, v6

    .line 220
    :goto_0
    return v4

    .line 200
    :cond_0
    if-nez p0, :cond_1

    move v4, v5

    .line 201
    goto :goto_0

    .line 202
    :cond_1
    if-nez p1, :cond_3

    move v4, v7

    .line 203
    goto :goto_0

    .line 221
    .local v1, d:I
    .local v2, x1:Ljava/lang/Object;
    .local v3, x2:Ljava/lang/Object;
    :cond_2
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object p0, v0

    .line 222
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 206
    .end local v1           #d:I
    .end local v2           #x1:Ljava/lang/Object;
    .end local v3           #x2:Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 207
    .restart local v2       #x1:Ljava/lang/Object;
    iget-object v3, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 208
    .restart local v3       #x2:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Comparable;

    .end local v2           #x1:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Comparable;

    .end local v3           #x2:Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 209
    .restart local v1       #d:I
    if-eqz v1, :cond_4

    move v4, v1

    .line 210
    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 212
    .restart local v2       #x1:Ljava/lang/Object;
    iget-object v3, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 213
    .restart local v3       #x2:Ljava/lang/Object;
    if-ne v2, v3, :cond_5

    move v4, v6

    .line 214
    goto :goto_0

    .line 215
    :cond_5
    if-nez v2, :cond_6

    move v4, v5

    .line 216
    goto :goto_0

    .line 217
    :cond_6
    if-nez v3, :cond_7

    move v4, v7

    .line 218
    goto :goto_0

    .line 219
    :cond_7
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_8

    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_2

    .line 220
    :cond_8
    check-cast v2, Ljava/lang/Comparable;

    .end local v2           #x1:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Comparable;

    .end local v3           #x2:Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0
.end method

.method public static equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z
    .locals 6
    .parameter "pair1"
    .parameter "pair2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    if-ne p0, p1, :cond_0

    move v3, v5

    .line 188
    :goto_0
    return v3

    .line 173
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    :cond_1
    move v3, v4

    .line 174
    goto :goto_0

    .line 189
    .local v1, x1:Ljava/lang/Object;
    .local v2, x2:Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object p0, v0

    .line 190
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 177
    .end local v1           #x1:Ljava/lang/Object;
    .end local v2           #x2:Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 178
    .restart local v1       #x1:Ljava/lang/Object;
    iget-object v2, p1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 179
    .restart local v2       #x2:Ljava/lang/Object;
    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v3, v4

    .line 180
    goto :goto_0

    .line 181
    :cond_5
    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 182
    iget-object v2, p1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 183
    if-ne v1, v2, :cond_6

    move v3, v5

    .line 184
    goto :goto_0

    .line 185
    :cond_6
    if-eqz v1, :cond_7

    if-nez v2, :cond_8

    :cond_7
    move v3, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_8
    instance-of v3, v1, Lgnu/lists/Pair;

    if-eqz v3, :cond_9

    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_2

    .line 188
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .parameter "car"
    .parameter "cdr"

    .prologue
    .line 265
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 228
    sget-object v0, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 231
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-static {p0, p1}, Lgnu/lists/Pair;->compareTo(Lgnu/lists/Pair;Lgnu/lists/Pair;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-static {p0, p1}, Lgnu/lists/Pair;->equals(Lgnu/lists/Pair;Lgnu/lists/Pair;)Z

    move-result v0

    .line 260
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 237
    move-object v1, p0

    .line 238
    .local v1, pair:Lgnu/lists/Pair;
    move v0, p1

    .line 239
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 241
    add-int/lit8 v0, v0, -0x1

    .line 242
    iget-object v2, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 243
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .end local v1           #pair:Lgnu/lists/Pair;
    check-cast v1, Lgnu/lists/Pair;

    .restart local v1       #pair:Lgnu/lists/Pair;
    goto :goto_0

    .line 244
    :cond_0
    iget-object v2, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v2, v2, Lgnu/lists/Sequence;

    if-eqz v2, :cond_1

    .line 245
    iget-object p0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/Sequence;

    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 250
    :goto_1
    return-object v2

    .line 249
    .restart local p0
    :cond_1
    if-nez v0, :cond_2

    .line 250
    iget-object v2, v1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_1

    .line 252
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getCar()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-object v0
.end method

.method public getCdr()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 118
    if-gtz p1, :cond_1

    .line 119
    if-nez p1, :cond_0

    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 120
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget-object v0, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getNext()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 1
    .parameter "ipos"

    .prologue
    .line 125
    if-gtz p1, :cond_1

    .line 126
    if-nez p1, :cond_0

    sget-object v0, Lgnu/lists/Pair;->eofValue:Ljava/lang/Object;

    .line 127
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object v0

    iget-object v0, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getPrevious()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNext(I)Z
    .locals 1
    .parameter "ipos"

    .prologue
    .line 98
    if-gtz p1, :cond_1

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->hasNext()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 155
    const/4 v1, 0x1

    .line 156
    .local v1, hash:I
    move-object v2, p0

    .line 157
    :goto_0
    instance-of v5, v2, Lgnu/lists/Pair;

    if-eqz v5, :cond_1

    .line 159
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    .line 160
    .local v4, pair:Lgnu/lists/Pair;
    iget-object v3, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 161
    .local v3, obj:Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    if-nez v3, :cond_0

    const/4 v6, 0x0

    :goto_1
    add-int v1, v5, v6

    .line 162
    iget-object v2, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 163
    .local v2, list:Ljava/lang/Object;
    goto :goto_0

    .line 161
    .end local v2           #list:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    .line 164
    .end local v3           #obj:Ljava/lang/Object;
    .end local v4           #pair:Lgnu/lists/Pair;
    :cond_1
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    .line 166
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final lastPair()Lgnu/lists/Pair;
    .locals 4

    .prologue
    .line 132
    move-object v2, p0

    .line 135
    .local v2, pair:Lgnu/lists/Pair;
    :goto_0
    iget-object v1, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 136
    .local v1, next:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 137
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    goto :goto_0

    .line 139
    :cond_0
    return-object v2
.end method

.method public length()I
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, n:I
    move-object v5, p0

    .line 63
    .local v5, slow:Lgnu/lists/Pair;
    move-object v1, p0

    .local v1, fast:Lgnu/lists/Pair;
    move-object p0, v5

    .line 66
    .end local v1           #fast:Lgnu/lists/Pair;
    .end local v5           #slow:Lgnu/lists/Pair;
    .end local p0
    :goto_0
    sget-object v6, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v1, v6, :cond_0

    move v6, v4

    .line 89
    :goto_1
    return v6

    .line 68
    :cond_0
    instance-of v6, v1, Lgnu/lists/Pair;

    if-nez v6, :cond_3

    .line 70
    instance-of v6, v1, Lgnu/lists/Sequence;

    if-eqz v6, :cond_2

    .line 72
    check-cast v1, Lgnu/lists/Sequence;

    invoke-interface {v1}, Lgnu/lists/Sequence;->size()I

    move-result v3

    .line 73
    .local v3, j:I
    if-ltz v3, :cond_1

    add-int v6, v4, v3

    goto :goto_1

    :cond_1
    move v6, v3

    goto :goto_1

    .end local v3           #j:I
    :cond_2
    move v6, v8

    .line 75
    goto :goto_1

    .line 77
    :cond_3
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 78
    .local v2, fast_pair:Lgnu/lists/Pair;
    iget-object v6, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v7, Lgnu/lists/Pair;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_4

    .line 79
    add-int/lit8 v6, v4, 0x1

    goto :goto_1

    .line 80
    :cond_4
    if-ne v1, p0, :cond_5

    if-lez v4, :cond_5

    .line 81
    const/4 v6, -0x1

    goto :goto_1

    .line 82
    :cond_5
    iget-object v6, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v6, v6, Lgnu/lists/Pair;

    if-nez v6, :cond_6

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    iget-object v1, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 86
    .local v1, fast:Ljava/lang/Object;
    goto :goto_0

    .line 88
    .end local v1           #fast:Ljava/lang/Object;
    :cond_6
    instance-of v6, p0, Lgnu/lists/Pair;

    if-nez v6, :cond_7

    move v6, v8

    .line 89
    goto :goto_1

    .line 90
    :cond_7
    check-cast p0, Lgnu/lists/Pair;

    iget-object v5, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 91
    .local v5, slow:Ljava/lang/Object;
    iget-object p0, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 92
    .restart local v1       #fast:Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x2

    move-object p0, v5

    .line 93
    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 4
    .parameter "ipos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    if-gtz p1, :cond_1

    .line 107
    if-gez p1, :cond_0

    move v1, v2

    .line 113
    :goto_0
    return v1

    .line 109
    :cond_0
    sget-object v1, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    new-instance v2, Lgnu/lists/LListPosition;

    invoke-direct {v2, p0, v3, v3}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    invoke-virtual {v1, v2}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v1

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    check-cast v0, Lgnu/lists/LListPosition;

    .line 113
    .local v0, it:Lgnu/lists/LListPosition;
    invoke-virtual {v0}, Lgnu/lists/LListPosition;->gotoNext()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 329
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 335
    return-object p0
.end method

.method public setCar(Ljava/lang/Object;)V
    .locals 0
    .parameter "car"

    .prologue
    .line 34
    iput-object p1, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    return-void
.end method

.method public setCdr(Ljava/lang/Object;)V
    .locals 0
    .parameter "cdr"

    .prologue
    .line 35
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public setCdrBackdoor(Ljava/lang/Object;)V
    .locals 0
    .parameter "cdr"

    .prologue
    .line 38
    iput-object p1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 42
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lgnu/lists/Pair;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    .line 43
    .local v0, n:I
    if-ltz v0, :cond_0

    move v1, v0

    .line 46
    :goto_0
    return v1

    .line 45
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 46
    const v1, 0x7fffffff

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not a true list"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    .prologue
    .line 270
    invoke-virtual {p0}, Lgnu/lists/Pair;->size()I

    move-result v3

    .line 271
    .local v3, len:I
    new-array v1, v3, [Ljava/lang/Object;

    .line 272
    .local v1, arr:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 273
    .local v2, i:I
    move-object v6, p0

    .line 274
    .local v6, rest:Lgnu/lists/Sequence;
    :goto_0
    if-ge v2, v3, :cond_0

    instance-of v7, v6, Lgnu/lists/Pair;

    if-eqz v7, :cond_0

    .line 276
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    .line 277
    .local v4, pair:Lgnu/lists/Pair;
    iget-object v7, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v7, v1, v2

    .line 278
    iget-object v6, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .end local v6           #rest:Lgnu/lists/Sequence;
    check-cast v6, Lgnu/lists/Sequence;

    .line 274
    .restart local v6       #rest:Lgnu/lists/Sequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v4           #pair:Lgnu/lists/Pair;
    :cond_0
    move v5, v2

    .line 281
    .local v5, prefix:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 283
    sub-int v7, v2, v5

    invoke-interface {v6, v7}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_1
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .parameter "arr"

    .prologue
    .line 290
    array-length v1, p1

    .line 291
    .local v1, alen:I
    invoke-virtual {p0}, Lgnu/lists/Pair;->length()I

    move-result v3

    .line 292
    .local v3, len:I
    if-le v3, v1, :cond_0

    .line 295
    new-array p1, v3, [Ljava/lang/Object;

    .line 296
    move v1, v3

    .line 298
    :cond_0
    const/4 v2, 0x0

    .line 299
    .local v2, i:I
    move-object v6, p0

    .line 300
    .local v6, rest:Lgnu/lists/Sequence;
    :goto_0
    if-ge v2, v3, :cond_1

    instance-of v7, v6, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    .line 302
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    .line 303
    .local v4, pair:Lgnu/lists/Pair;
    iget-object v7, v4, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    aput-object v7, p1, v2

    .line 304
    iget-object v6, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .end local v6           #rest:Lgnu/lists/Sequence;
    check-cast v6, Lgnu/lists/Sequence;

    .line 300
    .restart local v6       #rest:Lgnu/lists/Sequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v4           #pair:Lgnu/lists/Pair;
    :cond_1
    move v5, v2

    .line 307
    .local v5, prefix:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 309
    sub-int v7, v2, v5

    invoke-interface {v6, v7}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p1, v2

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    :cond_2
    if-ge v3, v1, :cond_3

    .line 312
    const/4 v7, 0x0

    aput-object v7, p1, v3

    .line 313
    :cond_3
    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 323
    return-void
.end method
