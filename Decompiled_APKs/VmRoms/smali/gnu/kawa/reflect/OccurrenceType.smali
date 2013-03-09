.class public Lgnu/kawa/reflect/OccurrenceType;
.super Lgnu/bytecode/ObjectType;
.source "OccurrenceType.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final emptySequenceType:Lgnu/bytecode/Type;

.field static final isInstanceMethod:Lgnu/bytecode/Method;

.field public static final typeOccurrenceType:Lgnu/bytecode/ClassType;


# instance fields
.field base:Lgnu/bytecode/Type;

.field maxOccurs:I

.field minOccurs:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    invoke-static {v0, v1, v1}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    .line 305
    const-string v0, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    .line 307
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    const-string v1, "isInstance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;II)V
    .locals 0
    .parameter "base"
    .parameter "minOccurs"
    .parameter "maxOccurs"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 28
    iput p2, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 29
    iput p3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 30
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;
    .locals 1
    .parameter "base"
    .parameter "minOccurs"
    .parameter "maxOccurs"

    .prologue
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    move-object v0, p0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_2

    .line 38
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-direct {v0, p0, p1, p2}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    goto :goto_0
.end method

.method public static itemCountCode(Lgnu/bytecode/Type;)C
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v2

    .line 230
    .local v2, num:I
    and-int/lit16 v1, v2, 0xfff

    .line 231
    .local v1, min:I
    shr-int/lit8 v0, v2, 0xc

    .line 232
    .local v0, max:I
    if-nez v0, :cond_0

    const/16 v3, 0x30

    :goto_0
    return v3

    :cond_0
    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    const/16 v3, 0x3f

    goto :goto_0

    :cond_1
    const/16 v3, 0x2a

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    if-ne v0, v3, :cond_3

    const/16 v3, 0x31

    goto :goto_0

    :cond_3
    const/16 v3, 0x2b

    goto :goto_0
.end method

.method public static itemCountIsOne(Lgnu/bytecode/Type;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 245
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 240
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    shr-int/lit8 v0, v0, 0xd

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static itemCountRange(Lgnu/bytecode/Type;)I
    .locals 14
    .parameter "type"

    .prologue
    const v13, 0xfffff

    const/16 v12, 0xfff

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x1001

    .line 174
    instance-of v8, p0, Lgnu/kawa/reflect/SingletonType;

    if-eqz v8, :cond_0

    move v8, v9

    .line 217
    :goto_0
    return v8

    .line 176
    :cond_0
    instance-of v8, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v8, :cond_b

    .line 178
    move-object v0, p0

    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    move-object v7, v0

    .line 179
    .local v7, occ:Lgnu/kawa/reflect/OccurrenceType;
    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v6

    .line 180
    .local v6, min:I
    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v5

    .line 181
    .local v5, max:I
    invoke-virtual {v7}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v3

    .line 182
    .local v3, bnum:I
    if-ne v6, v11, :cond_1

    if-eq v5, v11, :cond_2

    :cond_1
    if-nez v3, :cond_3

    :cond_2
    move v8, v3

    .line 184
    goto :goto_0

    .line 185
    :cond_3
    if-le v5, v13, :cond_4

    .line 186
    const/4 v5, -0x1

    .line 187
    :cond_4
    if-nez v5, :cond_5

    move v8, v10

    .line 188
    goto :goto_0

    .line 189
    :cond_5
    and-int/lit16 v2, v3, 0xfff

    .line 190
    .local v2, bmin:I
    shr-int/lit8 v1, v3, 0xc

    .line 191
    .local v1, bmax:I
    if-eq v3, v9, :cond_9

    .line 193
    if-le v6, v12, :cond_6

    .line 194
    const/16 v6, 0xfff

    .line 195
    :cond_6
    mul-int/2addr v6, v2

    .line 196
    if-le v6, v12, :cond_7

    .line 197
    const/16 v6, 0xfff

    .line 198
    :cond_7
    if-ltz v5, :cond_8

    if-gez v1, :cond_a

    .line 199
    :cond_8
    const/4 v5, -0x1

    .line 202
    :goto_1
    if-le v5, v13, :cond_9

    .line 203
    const/4 v5, -0x1

    .line 205
    :cond_9
    shl-int/lit8 v8, v5, 0xc

    or-int/2addr v8, v6

    goto :goto_0

    .line 201
    :cond_a
    mul-int/2addr v5, v1

    goto :goto_1

    .line 207
    .end local v1           #bmax:I
    .end local v2           #bmin:I
    .end local v3           #bnum:I
    .end local v5           #max:I
    .end local v6           #min:I
    .end local v7           #occ:Lgnu/kawa/reflect/OccurrenceType;
    :cond_b
    instance-of v8, p0, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_d

    .line 208
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v8

    if-eqz v8, :cond_c

    move v8, v10

    goto :goto_0

    :cond_c
    move v8, v9

    goto :goto_0

    .line 209
    :cond_d
    instance-of v8, p0, Lgnu/bytecode/ArrayType;

    if-eqz v8, :cond_e

    move v8, v9

    .line 210
    goto :goto_0

    .line 211
    :cond_e
    instance-of v8, p0, Lgnu/bytecode/ObjectType;

    if-eqz v8, :cond_f

    .line 213
    sget-object v8, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v8}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v4

    .line 214
    .local v4, cmp:I
    const/4 v8, -0x3

    if-ne v4, v8, :cond_f

    move v8, v9

    .line 215
    goto :goto_0

    .line 217
    .end local v4           #cmp:I
    :cond_f
    const/16 v8, -0x1000

    goto :goto_0
.end method

.method public static itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "type"

    .prologue
    .line 252
    :goto_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_0

    .line 253
    check-cast p0, Lgnu/kawa/reflect/OccurrenceType;

    .end local p0
    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    goto :goto_1
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"

    .prologue
    .line 69
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/OccurrenceType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 75
    :cond_1
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 52
    instance-of v2, p1, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v2, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    move-object v1, v0

    .line 55
    .local v1, occOther:Lgnu/kawa/reflect/OccurrenceType;
    iget v2, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    iget v3, v1, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    iget v3, v1, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v2, v3, :cond_0

    .line 57
    iget-object v2, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    .line 64
    .end local v1           #occOther:Lgnu/kawa/reflect/OccurrenceType;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .parameter "value"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 155
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 156
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "incoming"
    .parameter "decl"
    .parameter "comp"

    .prologue
    .line 138
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 139
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 141
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 144
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_1
    invoke-virtual {p3, p0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 148
    sget-object v1, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 149
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 150
    return-void
.end method

.method public getBase()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 10
    .parameter "obj"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    instance-of v7, p1, Lgnu/mapping/Values;

    if-eqz v7, :cond_9

    .line 88
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    move-object v5, v0

    .line 89
    .local v5, vals:Lgnu/mapping/Values;
    invoke-virtual {v5}, Lgnu/mapping/Values;->startPos()I

    move-result v3

    .line 90
    .local v3, pos:I
    const/4 v2, 0x0

    .line 91
    .local v2, n:I
    iget-object v7, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    instance-of v7, v7, Lgnu/lists/ItemPredicate;

    if-eqz v7, :cond_5

    .line 93
    iget-object v4, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    check-cast v4, Lgnu/lists/ItemPredicate;

    .line 97
    .local v4, pred:Lgnu/lists/ItemPredicate;
    :goto_0
    invoke-interface {v4, v5, v3}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    .line 98
    .local v1, matches:Z
    invoke-virtual {v5, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 99
    if-nez v3, :cond_2

    .line 101
    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v2, v7, :cond_1

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v7, :cond_0

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v2, v7, :cond_1

    :cond_0
    move v7, v9

    .line 131
    .end local v1           #matches:Z
    .end local v2           #n:I
    .end local v3           #pos:I
    .end local v4           #pred:Lgnu/lists/ItemPredicate;
    .end local v5           #vals:Lgnu/mapping/Values;
    :goto_1
    return v7

    .restart local v1       #matches:Z
    .restart local v2       #n:I
    .restart local v3       #pos:I
    .restart local v4       #pred:Lgnu/lists/ItemPredicate;
    .restart local v5       #vals:Lgnu/mapping/Values;
    :cond_1
    move v7, v8

    .line 101
    goto :goto_1

    .line 104
    :cond_2
    if-nez v1, :cond_3

    move v7, v8

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 123
    .end local v1           #matches:Z
    .end local v4           #pred:Lgnu/lists/ItemPredicate;
    .local v6, value:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 114
    .end local v6           #value:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v5, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 115
    if-nez v3, :cond_8

    .line 117
    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v2, v7, :cond_7

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v7, :cond_6

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v2, v7, :cond_7

    :cond_6
    move v7, v9

    goto :goto_1

    :cond_7
    move v7, v8

    goto :goto_1

    .line 120
    :cond_8
    invoke-virtual {v5, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    .line 121
    .restart local v6       #value:Ljava/lang/Object;
    iget-object v7, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v7, v6}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v8

    .line 122
    goto :goto_1

    .line 129
    .end local v2           #n:I
    .end local v3           #pos:I
    .end local v5           #vals:Lgnu/mapping/Values;
    .end local v6           #value:Ljava/lang/Object;
    :cond_9
    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-gt v7, v9, :cond_a

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-nez v7, :cond_b

    :cond_a
    move v7, v8

    .line 130
    goto :goto_1

    .line 131
    :cond_b
    iget-object v7, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v7, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1
.end method

.method public maxOccurs()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return v0
.end method

.method public minOccurs()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    return v0
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
    .line 300
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 301
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 302
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2a

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 267
    iget-object v3, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v3}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, b:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    :cond_0
    move v1, v4

    .line 269
    .local v1, parens:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v2, sbuf:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_1

    .line 271
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    if-eqz v1, :cond_2

    .line 274
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_2
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v4, :cond_4

    .line 294
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 268
    .end local v1           #parens:Z
    .end local v2           #sbuf:Ljava/lang/StringBuffer;
    :cond_3
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 277
    .restart local v1       #parens:Z
    .restart local v2       #sbuf:Ljava/lang/StringBuffer;
    :cond_4
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v3, :cond_5

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v4, :cond_5

    .line 278
    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 279
    :cond_5
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v5, :cond_6

    .line 280
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 281
    :cond_6
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v3, :cond_7

    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v3, v5, :cond_7

    .line 282
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 285
    :cond_7
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v3, :cond_8

    .line 289
    iget v3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 292
    :goto_2
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 291
    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
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
    .line 260
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 262
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 263
    return-void
.end method
