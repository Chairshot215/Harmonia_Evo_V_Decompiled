.class Lgnu/lists/LListPosition;
.super Lgnu/lists/ExtPosition;
.source "LListPosition.java"


# instance fields
.field xpos:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/LList;IZ)V
    .locals 0
    .parameter "seq"
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 42
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lgnu/lists/LListPosition;)V
    .locals 1
    .parameter "old"

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/lists/ExtPosition;-><init>()V

    .line 31
    iget-object v0, p1, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    iput-object v0, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 32
    iget v0, p1, Lgnu/lists/LListPosition;->ipos:I

    iput v0, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 33
    iget-object v0, p1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public copy()Lgnu/lists/SeqPosition;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lgnu/lists/LListPosition;

    invoke-direct {v0, p0}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    return-object v0
.end method

.method public getNext()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 129
    .local v0, pair:Lgnu/lists/Pair;
    if-nez v0, :cond_0

    sget-object v1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNextPair()Lgnu/lists/Pair;
    .locals 3

    .prologue
    .line 101
    iget v2, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v0, v2, 0x1

    .line 103
    .local v0, isAfter:I
    if-lez v0, :cond_2

    .line 105
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 107
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 108
    .local v1, next:Lgnu/lists/AbstractSequence;
    iget v2, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Lgnu/lists/Pair;

    .end local v1           #next:Lgnu/lists/AbstractSequence;
    iget-object v1, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 121
    .end local p0
    :cond_0
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_4

    .line 122
    const/4 v2, 0x0

    .line 123
    :goto_1
    return-object v2

    .line 112
    .restart local p0
    :cond_1
    iget-object p0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    iget-object p0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast p0, Lgnu/lists/Pair;

    check-cast p0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v1, next:Ljava/lang/Object;
    goto :goto_0

    .line 116
    .end local v1           #next:Ljava/lang/Object;
    .restart local p0
    :cond_2
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 117
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .local v1, next:Lgnu/lists/AbstractSequence;
    goto :goto_0

    .line 119
    .end local v1           #next:Lgnu/lists/AbstractSequence;
    :cond_3
    iget-object p0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v1, next:Ljava/lang/Object;
    goto :goto_0

    .line 123
    .end local v1           #next:Ljava/lang/Object;
    :cond_4
    check-cast v1, Lgnu/lists/Pair;

    move-object v2, v1

    goto :goto_1
.end method

.method public getPrevious()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 155
    .local v0, pair:Lgnu/lists/Pair;
    if-nez v0, :cond_0

    sget-object v1, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPreviousPair()Lgnu/lists/Pair;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget v3, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v1, v3, 0x1

    .line 142
    .local v1, isAfter:I
    iget-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 143
    .local v2, p:Ljava/lang/Object;
    if-lez v1, :cond_2

    .line 144
    if-nez v2, :cond_1

    iget-object v3, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    move-object v2, v3

    .line 147
    :cond_0
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_3

    move-object v3, v4

    .line 149
    :goto_1
    return-object v3

    .line 144
    :cond_1
    check-cast v2, Lgnu/lists/Pair;

    .end local v2           #p:Ljava/lang/Object;
    iget-object v3, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    move-object v2, v3

    goto :goto_0

    .line 145
    .restart local v2       #p:Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_0

    move-object v3, v4

    .line 146
    goto :goto_1

    .line 149
    :cond_3
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    goto :goto_1
.end method

.method public gotoNext()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    iget v4, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    move v1, v7

    .line 172
    .local v1, isAfter:Z
    :goto_0
    iget v2, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 173
    .local v2, old_i:I
    iget-object v3, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 174
    .local v3, xp:Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 176
    if-eqz v1, :cond_0

    .line 177
    check-cast v3, Lgnu/lists/Pair;

    .end local v3           #xp:Ljava/lang/Object;
    iget-object v3, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 178
    .restart local v3       #xp:Ljava/lang/Object;
    :cond_0
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_2

    move v4, v6

    .line 197
    .end local v3           #xp:Ljava/lang/Object;
    :goto_1
    return v4

    .end local v1           #isAfter:Z
    .end local v2           #old_i:I
    :cond_1
    move v1, v6

    .line 171
    goto :goto_0

    .line 180
    .restart local v1       #isAfter:Z
    .restart local v2       #old_i:I
    .restart local v3       #xp:Ljava/lang/Object;
    :cond_2
    iput-object v3, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 181
    iget v4, p0, Lgnu/lists/LListPosition;->ipos:I

    or-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lgnu/lists/LListPosition;->ipos:I

    .end local v3           #xp:Ljava/lang/Object;
    :goto_2
    move v4, v7

    .line 197
    goto :goto_1

    .line 183
    .restart local v3       #xp:Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_5

    .line 185
    iget-object v4, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_4

    move v4, v6

    .line 186
    goto :goto_1

    .line 187
    :cond_4
    const/4 v4, 0x3

    iput v4, p0, Lgnu/lists/LListPosition;->ipos:I

    goto :goto_2

    .line 191
    :cond_5
    iget-object v3, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 192
    .local v3, xp:Lgnu/lists/AbstractSequence;
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    iget-object v4, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_6

    move v4, v6

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    const/4 v4, 0x5

    iput v4, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 195
    iput-object v3, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_2
.end method

.method public gotoPrevious()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 202
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    ushr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    move v1, v4

    .line 212
    :goto_0
    return v1

    .line 204
    :cond_0
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 207
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    iput v1, p0, Lgnu/lists/LListPosition;->ipos:I

    move v1, v3

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->nextIndex()I

    move-result v0

    .line 211
    .local v0, index:I
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/LList;

    sub-int v2, v0, v3

    invoke-virtual {p0, v1, v2, v4}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    move v1, v3

    .line 212
    goto :goto_0
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 82
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_0

    move v1, v4

    .line 90
    .end local p0
    :goto_0
    return v1

    .restart local p0
    :cond_0
    move v1, v3

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object p0, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .line 87
    .restart local p0
    :cond_3
    iget-object v1, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    check-cast v1, Lgnu/lists/Pair;

    iget-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 88
    .local v0, next:Ljava/lang/Object;
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_4

    .line 89
    check-cast v0, Lgnu/lists/Pair;

    .end local v0           #next:Ljava/lang/Object;
    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 90
    .restart local v0       #next:Ljava/lang/Object;
    :cond_4
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_5

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lgnu/lists/LListPosition;->ipos:I

    ushr-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lgnu/lists/LListPosition;->ipos:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public set(Lgnu/lists/AbstractSequence;IZ)V
    .locals 0
    .parameter "seq"
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 74
    check-cast p1, Lgnu/lists/LList;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/LListPosition;->set(Lgnu/lists/LList;IZ)V

    .line 75
    return-void
.end method

.method public set(Lgnu/lists/LList;IZ)V
    .locals 4
    .parameter "seq"
    .parameter "index"
    .parameter "isAfter"

    .prologue
    .line 48
    iput-object p1, p0, Lgnu/lists/LListPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 49
    shl-int/lit8 v2, p2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    :goto_0
    or-int/2addr v2, v3

    iput v2, p0, Lgnu/lists/LListPosition;->ipos:I

    .line 50
    move v1, p2

    .line 51
    .local v1, skip:I
    if-eqz p3, :cond_1

    .line 53
    add-int/lit8 v1, v1, -0x2

    .line 59
    :goto_1
    if-ltz v1, :cond_3

    .line 61
    move-object v0, p1

    .line 62
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 64
    check-cast v0, Lgnu/lists/Pair;

    iget-object v0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .local v0, p:Ljava/lang/Object;
    goto :goto_2

    .line 49
    .end local v0           #p:Ljava/lang/Object;
    .end local v1           #skip:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 57
    .restart local v1       #skip:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 66
    :cond_2
    iput-object v0, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 70
    :goto_3
    return-void

    .line 69
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    goto :goto_3
.end method

.method public setNext(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getNextPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 135
    .local v0, pair:Lgnu/lists/Pair;
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public setPrevious(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 160
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->getPreviousPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 161
    .local v0, pair:Lgnu/lists/Pair;
    iput-object p1, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "LListPos["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget v1, p0, Lgnu/lists/LListPosition;->ipos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0}, Lgnu/lists/LListPosition;->isAfter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-string v1, " after"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_0
    iget v1, p0, Lgnu/lists/LListPosition;->position:I

    if-ltz v1, :cond_1

    .line 226
    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget v1, p0, Lgnu/lists/LListPosition;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 229
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
