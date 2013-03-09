.class public Lorg/javia/arity/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# static fields
.field private static final builtin:[Lorg/javia/arity/Symbol;

.field private static final defines:[Ljava/lang/String;

.field private static shell:Lorg/javia/arity/Symbol;


# instance fields
.field private final compiler:Lorg/javia/arity/Compiler;

.field private delta:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/javia/arity/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private frames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lorg/javia/arity/Symbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private symbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const-wide/high16 v4, 0x3ff0

    const-wide/16 v2, 0x0

    const-wide/high16 v10, 0x7ff0

    const/4 v13, 0x0

    const/4 v6, 0x1

    .line 59
    new-instance v0, Lorg/javia/arity/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3, v13}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    sput-object v0, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    .line 66
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 68
    sget-object v1, Lorg/javia/arity/VM;->builtins:[B

    array-length v7, v1

    move v0, v13

    :goto_0
    if-ge v0, v7, :cond_0

    aget-byte v8, v1, v0

    .line 69
    sget-object v9, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-static {v9, v8}, Lorg/javia/arity/Symbol;->makeVmOp(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "x"

    aput-object v0, v1, v13

    const-string v0, "y"

    aput-object v0, v1, v6

    const/4 v0, 0x2

    const-string v7, "z"

    aput-object v7, v1, v0

    move v0, v13

    .line 73
    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_1

    .line 74
    aget-object v7, v1, v0

    invoke-static {v7, v0}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "pi"

    const-wide v7, 0x400921fb54442d18L

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "\u03c0"

    const-wide v7, 0x400921fb54442d18L

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "e"

    const-wide v7, 0x4005bf0a8b145769L

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "Infinity"

    invoke-direct {v0, v1, v10, v11, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "infinity"

    invoke-direct {v0, v1, v10, v11, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "Inf"

    invoke-direct {v0, v1, v10, v11, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "inf"

    invoke-direct {v0, v1, v10, v11, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "\u221e"

    invoke-direct {v0, v1, v10, v11, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 87
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "NaN"

    const-wide/high16 v7, 0x7ff8

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "nan"

    const-wide/high16 v7, 0x7ff8

    invoke-direct {v0, v1, v7, v8, v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "i"

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {v14, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    new-instance v7, Lorg/javia/arity/Symbol;

    const-string v8, "j"

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct/range {v7 .. v13}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {v14, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    .line 94
    new-array v0, v0, [Lorg/javia/arity/Symbol;

    sput-object v0, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    .line 95
    sget-object v0, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    invoke-virtual {v14, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 279
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "log(x)=ln(x)*0.43429448190325182765"

    aput-object v1, v0, v13

    const-string v1, "log10(x)=log(x)"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "lg(x)=log(x)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "log2(x)=ln(x)*1.4426950408889634074"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lb(x)=log2(x)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "log(base,x)=ln(x)/ln(base)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gamma(x)=(x-1)!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deg=0.017453292519943295"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "indeg=57.29577951308232"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sind(x)=sin(x deg)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cosd(x)=cos(x deg)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tand(x)=tan(x deg)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "asind(x)=asin(x) indeg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "acosd(x)=acos(x) indeg"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "atand(x)=atan(x) indeg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "tg(x)=tan(x)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tgd(x)=tand(x)"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/javia/arity/Compiler;

    invoke-direct {v0}, Lorg/javia/arity/Compiler;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    move v0, v1

    .line 102
    :goto_0
    sget-object v2, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 103
    sget-object v2, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    :goto_1
    :try_start_0
    sget-object v0, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 111
    sget-object v0, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    return-void
.end method

.method public static isDefinition(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 125
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(Lorg/javia/arity/Symbol;)V
    .locals 2
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;

    .line 313
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/javia/arity/Symbol;->isConst:Z

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-nez v1, :cond_2

    .line 318
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    .line 320
    :cond_2
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/javia/arity/Symbol;->newEmpty(Lorg/javia/arity/Symbol;)Lorg/javia/arity/Symbol;

    move-result-object v0

    goto :goto_1
.end method

.method addArguments([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 307
    aget-object v1, p1, v0

    invoke-static {v1, v0}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public declared-synchronized compile(Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileWithName(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;D)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/javia/arity/Symbol;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Complex;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/javia/arity/Symbol;

    iget-wide v2, p2, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p2, Lorg/javia/arity/Complex;->im:D

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Lorg/javia/arity/Constant;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    new-instance v0, Lorg/javia/arity/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;Lorg/javia/arity/Function;)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Lorg/javia/arity/FunctionAndName;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    invoke-virtual {p0, v0, v1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eval(Ljava/lang/String;)D
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Function;->eval()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllSymbols()[Lorg/javia/arity/Symbol;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 259
    new-array v0, v0, [Lorg/javia/arity/Symbol;

    .line 260
    iget-object v1, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 261
    return-object v0
.end method

.method public getDictionary()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 268
    invoke-virtual {p0}, Lorg/javia/arity/Symbols;->getAllSymbols()[Lorg/javia/arity/Symbol;

    move-result-object v1

    .line 269
    array-length v2, v1

    .line 270
    new-array v3, v2, [Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 272
    aget-object v4, v1, v0

    invoke-virtual {v4}, Lorg/javia/arity/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-object v3
.end method

.method public getTopFrame()[Lorg/javia/arity/Symbol;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/javia/arity/Symbol;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    new-array v1, v1, [Lorg/javia/arity/Symbol;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/javia/arity/Symbol;

    goto :goto_0
.end method

.method declared-synchronized lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    invoke-virtual {v1, p1, p2}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;
    .locals 1
    .parameter

    .prologue
    .line 330
    const/4 v0, -0x3

    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized popFrame()V
    .locals 3

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;

    .line 236
    invoke-virtual {v0}, Lorg/javia/arity/Symbol;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pushFrame()V
    .locals 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
