.class public Lgnu/mapping/Values;
.super Lgnu/lists/TreeList;
.source "Values.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final empty:Lgnu/mapping/Values;

.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    .line 15
    new-instance v0, Lgnu/mapping/Values;

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 27
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 243
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/Values;->size()I

    move-result v0

    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static make()Lgnu/mapping/Values;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;)Ljava/lang/Object;
    .locals 2
    .parameter "list"

    .prologue
    .line 88
    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-static {p0, v0, v1}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    .locals 3
    .parameter "list"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 100
    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .local v0, next:I
    if-gtz v0, :cond_1

    .line 102
    .end local v0           #next:I
    :cond_0
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 107
    :goto_0
    return-object v2

    .line 103
    .restart local v0       #next:I
    :cond_1
    if-eq v0, p2, :cond_2

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 104
    :cond_2
    shl-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_3
    new-instance v1, Lgnu/mapping/Values;

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    .line 106
    .local v1, vals:Lgnu/mapping/Values;
    invoke-virtual {p0, p1, p2, v1}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-object v2, v1

    .line 107
    goto :goto_0
.end method

.method public static make(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 68
    if-nez p0, :cond_0

    move v0, v4

    .line 69
    .local v0, count:I
    :goto_0
    if-nez v0, :cond_1

    .line 70
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 83
    :goto_1
    return-object v3

    .line 68
    .end local v0           #count:I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 71
    .restart local v0       #count:I
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 72
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 73
    :cond_2
    new-instance v2, Lgnu/mapping/Values;

    invoke-direct {v2}, Lgnu/mapping/Values;-><init>()V

    .line 75
    .local v2, vals:Lgnu/mapping/Values;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 83
    goto :goto_1
.end method

.method public static make([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "vals"

    .prologue
    .line 53
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0, p0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static nextIndex(Ljava/lang/Object;I)I
    .locals 1
    .parameter "values"
    .parameter "curIndex"

    .prologue
    .line 196
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 197
    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v0

    .line 199
    :goto_0
    return v0

    .restart local p0
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static nextValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter "values"
    .parameter "curIndex"

    .prologue
    .line 209
    instance-of v2, p0, Lgnu/mapping/Values;

    if-eqz v2, :cond_1

    .line 211
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    move-object v1, v0

    .line 212
    .local v1, v:Lgnu/mapping/Values;
    iget v2, v1, Lgnu/mapping/Values;->gapEnd:I

    if-lt p1, v2, :cond_0

    .line 213
    iget v2, v1, Lgnu/mapping/Values;->gapEnd:I

    iget v3, v1, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v2, v3

    sub-int/2addr p1, v2

    .line 214
    :cond_0
    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    shl-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    .line 217
    .end local v1           #v:Lgnu/mapping/Values;
    :goto_0
    return-object v2

    .restart local p0
    :cond_1
    move-object v2, p0

    goto :goto_0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "vals"

    .prologue
    .line 43
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "value"
    .parameter "out"

    .prologue
    .line 222
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 224
    check-cast p0, Lgnu/mapping/Values;

    .end local p0
    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->consume(Lgnu/lists/Consumer;)V

    .line 239
    :goto_0
    return-void

    .line 238
    .restart local p0
    :cond_0
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .parameter "proc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final canonicalize()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget v0, p0, Lgnu/mapping/Values;->gapEnd:I

    iget-object v1, p0, Lgnu/mapping/Values;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 117
    iget v0, p0, Lgnu/mapping/Values;->gapStart:I

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 122
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v0

    iget v1, p0, Lgnu/mapping/Values;->gapStart:I

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 122
    goto :goto_0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 8
    .parameter "out"

    .prologue
    .line 133
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v6, :cond_1

    .line 135
    const-string v6, "#!void"

    invoke-interface {p1, v6}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 139
    .local v5, vals:[Ljava/lang/Object;
    array-length v3, v5

    .line 140
    .local v3, size:I
    const/4 v2, 0x1

    .line 141
    .local v2, readable:Z
    if-eqz v2, :cond_2

    .line 142
    const-string v6, "#<values"

    invoke-interface {p1, v6}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 145
    .local v0, i:I
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 146
    .local v1, next:I
    if-gez v1, :cond_3

    .line 158
    if-eqz v2, :cond_0

    .line 159
    const/16 v6, 0x3e

    invoke-interface {p1, v6}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    .line 148
    :cond_3
    const/16 v6, 0x20

    invoke-interface {p1, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 149
    iget v6, p0, Lgnu/mapping/Values;->gapEnd:I

    if-lt v0, v6, :cond_4

    .line 150
    iget v6, p0, Lgnu/mapping/Values;->gapEnd:I

    iget v7, p0, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v6, v7

    sub-int/2addr v0, v6

    .line 151
    :cond_4
    shl-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, val:Ljava/lang/Object;
    instance-of v6, v4, Lgnu/text/Printable;

    if-eqz v6, :cond_5

    .line 153
    check-cast v4, Lgnu/text/Printable;

    .end local v4           #val:Ljava/lang/Object;
    invoke-interface {v4, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    .line 156
    :goto_2
    move v0, v1

    .line 157
    goto :goto_1

    .line 155
    .restart local v4       #val:Ljava/lang/Object;
    :cond_5
    invoke-interface {p1, v4}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 179
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, vals:[Ljava/lang/Object;
    array-length v1, v2

    .line 170
    .local v1, len:I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 172
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method
