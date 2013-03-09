.class public Lorg/javia/arity/UnitTest;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static allOk:Z

.field static checkCounter:I

.field private static final profileCases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "(100.5 + 20009.999)*(7+4+3)/(5/2)^3!)*2"

    aput-object v1, v0, v3

    const-string v1, "fun1(x)=(x+2)*(x+3)"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "otherFun(x)=(fun1(x-1)*x+1)*(fun1(2-x)+10)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "log(x+30.5, 3)^.7*sin(x+.5)"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    .line 629
    sput-boolean v4, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 630
    sput v3, Lorg/javia/arity/UnitTest;->checkCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 607
    invoke-static {p0, p1, p2, p3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    :cond_0
    return-void
.end method

.method static check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 614
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 615
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 617
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 619
    :cond_1
    return-void
.end method

.method static check(Z)V
    .locals 1
    .parameter

    .prologue
    .line 622
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 623
    if-nez p0, :cond_0

    .line 624
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 627
    :cond_0
    return-void
.end method

.method static equal(DD)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x3cd203af9ee75616L

    .line 600
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sub-double v0, p0, p2

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equal(DLorg/javia/arity/Complex;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 594
    iget-wide v0, p2, Lorg/javia/arity/Complex;->re:D

    invoke-static {p0, p1, v0, v1}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iget-wide v2, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 590
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 391
    array-length v2, p0

    .line 392
    if-nez v2, :cond_1

    .line 393
    invoke-static {}, Lorg/javia/arity/UnitTest;->runUnitTests()V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    aget-object v3, p0, v0

    const-string v4, "-profile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    if-ne v2, v1, :cond_2

    .line 397
    invoke-static {}, Lorg/javia/arity/UnitTest;->profile()V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v3, Lorg/javia/arity/Symbols;

    invoke-direct {v3}, Lorg/javia/arity/Symbols;-><init>()V

    move v0, v1

    .line 400
    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    .line 401
    aget-object v1, p0, v0

    invoke-virtual {v3, v1}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v1

    .line 402
    invoke-virtual {v3, v1}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 404
    :cond_3
    add-int/lit8 v0, v2, -0x1

    aget-object v0, p0, v0

    invoke-static {v3, v0}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_4
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    .line 408
    :goto_2
    if-ge v0, v2, :cond_0

    .line 409
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    .line 410
    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 411
    iget-object v3, v3, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 412
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static profile()V
    .locals 4

    .prologue
    .line 471
    sget-object v1, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    .line 472
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    .line 474
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 475
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 476
    aget-object v3, v1, v0

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
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

    .line 481
    :cond_0
    return-void
.end method

.method static profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v2

    .line 419
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 433
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v1, v0

    .line 435
    :goto_0
    const/16 v6, 0x3e8

    if-ge v1, v6, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 439
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compilation time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " us"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2}, Lorg/javia/arity/Function;->arity()I

    move-result v1

    new-array v1, v1, [D

    .line 452
    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 454
    :goto_1
    const v5, 0x186a0

    if-ge v0, v5, :cond_1

    .line 455
    invoke-virtual {v2, v1}, Lorg/javia/arity/Function;->eval([D)D

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 457
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 458
    sub-long/2addr v0, v3

    .line 459
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execution time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x64

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v0, v0

    const-wide/high16 v5, 0x4059

    div-double/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    return-void

    .line 459
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static runUnitTests()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-wide/high16 v11, -0x4010

    const-wide/high16 v9, 0x3ff0

    const-wide/16 v7, 0x0

    .line 484
    sput v13, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 486
    const-wide/high16 v0, -0x10

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 487
    const-wide/high16 v0, 0x7ff8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 489
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0}, Lorg/javia/arity/Complex;-><init>()V

    .line 490
    new-instance v1, Lorg/javia/arity/Complex;

    invoke-direct {v1}, Lorg/javia/arity/Complex;-><init>()V

    .line 491
    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    .line 493
    invoke-virtual {v0, v7, v8, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 494
    const-wide v3, 0x4000fbe76c8b4396L

    invoke-virtual {v0, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 495
    const-wide v3, 0x3ff00000000001c2L

    invoke-virtual {v0, v7, v8, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 496
    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 497
    invoke-virtual {v0, v9, v10, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1+i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 498
    const-wide v3, 0x3ff1eb851eb851ecL

    const-wide v5, 0x3ff1eb851eb851ecL

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.12+1.1i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 499
    const-wide v3, 0x3ff1f9a6b50b0f28L

    invoke-virtual {v0, v3, v4, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.123-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 501
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-virtual {v1, v7, v8, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v3

    const-wide v4, 0x3fa620227b598efaL

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 502
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-virtual {v1, v9, v10, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v3

    const-wide v4, -0x4059dfdd84a67106L

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 504
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    invoke-static {v2, v3, v9, v10}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 505
    const-wide v2, 0x401d8e64b8d4ddadL

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide/high16 v3, 0x4000

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 506
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x400921fb54442d18L

    invoke-virtual {v1, v7, v8, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 508
    const-wide/high16 v2, 0x4000

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x401d8e64b8d4ddadL

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 509
    const-wide v2, 0x400921fb54442d18L

    invoke-virtual {v0, v7, v8, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 511
    invoke-static {v9, v10}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    invoke-static {v2, v3, v7, v8}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 512
    invoke-virtual {v0, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v7, v8, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 514
    invoke-virtual {v0, v7, v8, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 515
    invoke-virtual {v0, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 516
    invoke-virtual {v0, v7, v8, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x3fdfdf7d1bddb102L

    const-wide v5, -0x403c2a9aa17621dcL

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 517
    const-wide/high16 v2, -0x4000

    invoke-virtual {v0, v2, v3, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, -0x403a0b3593673371L

    const-wide v5, 0x3fd4e517e5914ed7L

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 518
    const-wide/high16 v2, 0x4010

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide/high16 v3, 0x4038

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 519
    const-wide/high16 v2, 0x4010

    const-wide/high16 v4, 0x4008

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v2, 0x3f906d4886f77388L

    const-wide v4, -0x3fdd222761c5d807L

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 521
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff8

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 522
    const-wide v0, -0x406147ae147ae148L

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff8

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 523
    const-wide v0, -0x406147ae147ae148L

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 524
    const-wide v0, 0x3f9eb851eb851eb8L

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4000

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 525
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 526
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 528
    const-wide v0, 0x3ff3c28f5c28f5c3L

    const-wide v2, 0x3f947ae147ae147bL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3d70a3d70a3d7L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 529
    const-wide v0, 0x3ff3c28f5c28f5c3L

    const-wide v2, 0x3fd999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3333333333334L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 530
    const-wide v0, -0x400c3d70a3d70a3dL

    const-wide v2, 0x3f947ae147ae147bL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400c28f5c28f5c29L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 531
    const-wide v0, -0x400c3d70a3d70a3dL

    const-wide v2, 0x3fd999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400cccccccccccccL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 533
    invoke-static {}, Lorg/javia/arity/TestFormat;->testFormat()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 535
    invoke-static {}, Lorg/javia/arity/TestEval;->testEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 537
    invoke-static {}, Lorg/javia/arity/UnitTest;->testRecursiveEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 539
    invoke-static {}, Lorg/javia/arity/UnitTest;->testFrame()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 541
    invoke-static {}, Lorg/javia/arity/TestFormat;->testSizeCases()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 543
    sget-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** Some tests FAILED ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** All tests passed OK ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static testFrame()Z
    .locals 12

    .prologue
    const/16 v11, 0x27

    const/16 v10, 0x26

    const-wide/high16 v8, 0x3ff0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    :try_start_0
    new-instance v3, Lorg/javia/arity/Symbols;

    invoke-direct {v3}, Lorg/javia/arity/Symbols;-><init>()V

    .line 555
    const-string v2, "a"

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {v3, v2, v4, v5}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    .line 556
    const-string v2, "a"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v2, v4, v8

    if-nez v2, :cond_0

    move v2, v0

    .line 558
    :goto_0
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->pushFrame()V

    .line 559
    if-eqz v2, :cond_1

    const-string v2, "a"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v2, v4, v8

    if-nez v2, :cond_1

    move v2, v0

    .line 560
    :goto_1
    const-string v4, "a"

    const-wide/high16 v5, 0x4000

    invoke-virtual {v3, v4, v5, v6}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    .line 561
    if-eqz v2, :cond_2

    const-string v2, "a"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    cmpl-double v2, v4, v6

    if-nez v2, :cond_2

    move v2, v0

    .line 562
    :goto_2
    const-string v4, "a"

    const-wide/high16 v5, 0x4008

    invoke-virtual {v3, v4, v5, v6}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    .line 563
    if-eqz v2, :cond_3

    const-string v2, "a"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008

    cmpl-double v2, v4, v6

    if-nez v2, :cond_3

    move v2, v0

    .line 565
    :goto_3
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->popFrame()V

    .line 566
    if-eqz v2, :cond_4

    const-string v2, "a"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_4

    move v2, v0

    .line 570
    :goto_4
    new-instance v3, Lorg/javia/arity/Symbols;

    invoke-direct {v3}, Lorg/javia/arity/Symbols;-><init>()V

    .line 571
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->pushFrame()V

    .line 572
    const-string v4, "base"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    .line 573
    const-string v4, "x"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    .line 574
    if-eqz v2, :cond_5

    const-string v2, "x"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B

    if-ne v2, v11, :cond_5

    move v2, v0

    .line 575
    :goto_5
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->pushFrame()V

    .line 576
    if-eqz v2, :cond_6

    const-string v2, "base"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B

    if-ne v2, v10, :cond_6

    move v2, v0

    .line 577
    :goto_6
    if-eqz v2, :cond_7

    const-string v2, "x"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B

    if-ne v2, v11, :cond_7

    move v2, v0

    .line 578
    :goto_7
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->popFrame()V

    .line 579
    if-eqz v2, :cond_8

    const-string v2, "base"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B

    if-ne v2, v10, :cond_8

    move v2, v0

    .line 580
    :goto_8
    if-eqz v2, :cond_9

    const-string v2, "x"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B

    if-ne v2, v11, :cond_9

    move v2, v0

    .line 581
    :goto_9
    invoke-virtual {v3}, Lorg/javia/arity/Symbols;->popFrame()V

    .line 582
    if-eqz v2, :cond_a

    const-string v2, "x"

    invoke-virtual {v3, v2}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v2

    iget-byte v2, v2, Lorg/javia/arity/Symbol;->op:B
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v10, :cond_a

    .line 586
    :goto_a
    return v0

    :cond_0
    move v2, v1

    .line 556
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 559
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 561
    goto/16 :goto_2

    :cond_3
    move v2, v1

    .line 563
    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 566
    goto :goto_4

    :cond_5
    move v2, v1

    .line 574
    goto :goto_5

    :cond_6
    move v2, v1

    .line 576
    goto :goto_6

    :cond_7
    move v2, v1

    .line 577
    goto :goto_7

    :cond_8
    move v2, v1

    .line 579
    goto :goto_8

    :cond_9
    move v2, v1

    .line 580
    goto :goto_9

    :cond_a
    move v0, v1

    .line 582
    goto :goto_a

    .line 583
    :catch_0
    move-exception v0

    move v0, v1

    .line 584
    goto :goto_a
.end method

.method static testRecursiveEval()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000

    const-wide/high16 v6, 0x3ff0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 633
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    .line 634
    const-string v2, "myfun"

    new-instance v3, Lorg/javia/arity/MyFun;

    invoke-direct {v3}, Lorg/javia/arity/MyFun;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V

    .line 636
    :try_start_0
    const-string v2, "1+myfun(x)"

    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v1

    .line 637
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v1, v2, v3}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4000

    invoke-virtual {v1, v2, v3}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4008

    invoke-virtual {v1, v2, v3}, Lorg/javia/arity/Function;->eval(D)D
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/high16 v3, -0x4010

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 642
    :catch_0
    move-exception v1

    .line 643
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    goto :goto_0
.end method
