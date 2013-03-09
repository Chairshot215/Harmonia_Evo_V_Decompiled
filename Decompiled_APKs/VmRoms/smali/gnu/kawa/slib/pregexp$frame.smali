.class public Lgnu/kawa/slib/pregexp$frame;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp;->pregexpMatchPositionsAux(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field backrefs:Ljava/lang/Object;

.field case$Mnsensitive$Qu:Ljava/lang/Object;

.field identity:Lgnu/mapping/Procedure;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field sn:Ljava/lang/Object;

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit112:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "pregexp.scm:460"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    return-void
.end method

.method public static lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x"

    .prologue
    .line 460
    return-object p0
.end method

.method static lambda4()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    invoke-static {p2}, Lgnu/kawa/slib/pregexp$frame;->lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "re"
    .parameter "i"
    .parameter "sk"
    .parameter "fk"

    .prologue
    new-instance v10, Lgnu/kawa/slib/pregexp$frame0;

    invoke-direct {v10}, Lgnu/kawa/slib/pregexp$frame0;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v10

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object v1, v10

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    .line 465
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1

    .line 467
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->start:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 633
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object v5

    .line 467
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 469
    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_3

    .line 471
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_2
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 473
    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_4

    .line 474
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_4
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 475
    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_6

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v5, v0

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_5

    .line 477
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 478
    :cond_5
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 479
    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v5, v0

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7

    .line 481
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 482
    :cond_7
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 483
    :cond_8
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v18

    .local v18, x:Z
    if-eqz v18, :cond_a

    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_b

    .line 485
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    move-object v5, v0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_d

    sget-object v5, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 486
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_e

    .line 487
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 483
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_a
    if-nez v18, :cond_9

    .line 488
    :cond_b
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v18, v5, 0x1

    if-eqz v18, :cond_f

    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_10

    .line 489
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    :try_start_2
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v10

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2
    :try_start_3
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v5, v6}, Lgnu/kawa/slib/pregexp;->isPregexpCheckIfInCharClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_13

    .line 491
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 485
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_d
    sget-object v5, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto/16 :goto_1

    .line 487
    .end local p0
    .end local p1
    .end local p2
    :cond_e
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 488
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_f
    if-nez v18, :cond_c

    .line 492
    :cond_10
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .local v18, x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_14

    sget-object v5, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_15

    .line 493
    .end local v18           #x:Ljava/lang/Object;
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    :try_start_4
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v10

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local p3
    :try_start_5
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p2, v0

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v12

    .line 494
    .local v12, c:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    move-object v5, v0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_17

    sget-object v5, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    move-object v13, v5

    .line 495
    .local v13, c$Ls:Lgnu/expr/ModuleMethod;
    :goto_3
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_18

    .line 496
    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_19

    .line 497
    :cond_12
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 491
    .end local v12           #c:C
    .end local v13           #c$Ls:Lgnu/expr/ModuleMethod;
    .end local p0
    .local v18, x:Z
    .restart local p3
    :cond_13
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 492
    .local v18, x:Ljava/lang/Object;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_14
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_11

    .line 497
    .end local v18           #x:Ljava/lang/Object;
    :cond_15
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {v5}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 499
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .local v17, tmp:Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1b

    .line 501
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1a

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 492
    .end local v17           #tmp:Ljava/lang/Object;
    .local v18, x:Z
    :cond_16
    if-eqz v18, :cond_15

    goto/16 :goto_2

    .line 494
    .end local v18           #x:Z
    .end local p1
    .end local p2
    .end local p3
    .restart local v12       #c:C
    :cond_17
    sget-object v5, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    move-object v13, v5

    goto/16 :goto_3

    .line 495
    .restart local v13       #c$Ls:Lgnu/expr/ModuleMethod;
    .local v18, x:Ljava/lang/Object;
    :cond_18
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_12

    .line 497
    :cond_19
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 502
    .end local v12           #c:C
    .end local v13           #c$Ls:Lgnu/expr/ModuleMethod;
    .end local v18           #x:Ljava/lang/Object;
    .restart local v17       #tmp:Ljava/lang/Object;
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1a
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    invoke-static {v5}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_1b
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit82:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1d

    .line 504
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1c

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 505
    :cond_1c
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Lgnu/kawa/slib/pregexp$frame0;->lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_1d
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit17:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1f

    .line 511
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1e

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 512
    :cond_1e
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_1f
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_20

    .line 516
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v5, v6}, Lgnu/kawa/slib/pregexp$frame0;->lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_20
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit4:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_21

    .line 523
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v10, v5}, Lgnu/kawa/slib/pregexp$frame0;->lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_21
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit20:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_24

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    move-object v5, v0

    sget-object v6, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lgnu/kawa/slib/pregexp;->pregexpListRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 533
    .local v12, c:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v5, :cond_22

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    .line 538
    .local v11, backref:Ljava/lang/Object;
    :goto_4
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v5, :cond_23

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    :try_start_6
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 540
    invoke-virtual {v5, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    :try_start_7
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p2, v0

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v11}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :try_start_8
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    move-object v6, v0

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v8, v0

    iget-object v9, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    iget-object v10, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-static/range {v5 .. v10}, Lgnu/kawa/slib/pregexp;->pregexpStringMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 535
    .end local v11           #backref:Ljava/lang/Object;
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_22
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit102:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-static {v5}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v5

    goto :goto_4

    .line 542
    .restart local v11       #backref:Ljava/lang/Object;
    :cond_23
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v11           #backref:Ljava/lang/Object;
    .end local v12           #c:Ljava/lang/Object;
    :cond_24
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit100:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_25

    .line 544
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_25
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit103:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_27

    .line 549
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/pregexp;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 552
    .local v14, found$Mnit$Qu:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v5, :cond_26

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_26
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v14           #found$Mnit$Qu:Ljava/lang/Object;
    :cond_27
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit104:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_29

    .line 554
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/pregexp;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 557
    .restart local v14       #found$Mnit$Qu:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v5, :cond_28

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_28
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v14           #found$Mnit$Qu:Ljava/lang/Object;
    :cond_29
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit105:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2b

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 560
    .local v15, n$Mnactual:Ljava/lang/Object;
    .local v16, sn$Mnactual:Ljava/lang/Object;
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 561
    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit106:Lgnu/lists/PairWithPosition;

    sget-object v7, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 563
    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/pregexp;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 565
    .restart local v14       #found$Mnit$Qu:Ljava/lang/Object;
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v5, :cond_2a

    .line 566
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_2a
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v14           #found$Mnit$Qu:Ljava/lang/Object;
    .end local v15           #n$Mnactual:Ljava/lang/Object;
    .end local v16           #sn$Mnactual:Ljava/lang/Object;
    :cond_2b
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit107:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2d

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 569
    .restart local v15       #n$Mnactual:Ljava/lang/Object;
    .restart local v16       #sn$Mnactual:Ljava/lang/Object;
    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 570
    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit108:Lgnu/lists/PairWithPosition;

    sget-object v7, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 572
    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/pregexp;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 574
    .restart local v14       #found$Mnit$Qu:Ljava/lang/Object;
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v5, :cond_2c

    .line 575
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    :cond_2c
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v14           #found$Mnit$Qu:Ljava/lang/Object;
    .end local v15           #n$Mnactual:Ljava/lang/Object;
    .end local v16           #sn$Mnactual:Ljava/lang/Object;
    :cond_2d
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit109:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_2f

    .line 577
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/pregexp;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 579
    .restart local v14       #found$Mnit$Qu:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v5, :cond_2e

    .line 580
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {v5, v6, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 581
    :cond_2e
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v14           #found$Mnit$Qu:Ljava/lang/Object;
    :cond_2f
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .restart local v18       #x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_31

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_32

    .line 583
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    move-object v5, v0

    iput-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    .line 584
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 585
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 586
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object v8, v10, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 499
    :cond_31
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit61:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_30

    .line 586
    :cond_32
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v6, Lgnu/kawa/slib/pregexp;->Lit68:Lgnu/mapping/SimpleSymbol;

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_36

    .line 594
    sget-object v5, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_9
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq v5, v6, :cond_33

    const/4 v5, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    iput-boolean v5, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    .line 595
    sget-object v5, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    .line 594
    sget-object v5, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    iget-boolean v5, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz v5, :cond_35

    iget-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    :try_start_a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    if-eq v5, v6, :cond_34

    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    :goto_7
    iput-boolean v5, v10, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v6, Lkawa/lib/lists;->cddddr:Lgnu/expr/GenericProc;

    iget-object v7, v10, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v10, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    .line 599
    sget-object v5, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v10, v5, v6}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 594
    :cond_33
    const/4 v5, 0x0

    goto :goto_5

    :cond_34
    const/4 v5, 0x0

    goto :goto_6

    :cond_35
    iget-boolean v5, v10, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    goto :goto_7

    .line 631
    :cond_36
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    invoke-static {v5}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v17           #tmp:Ljava/lang/Object;
    .end local v18           #x:Ljava/lang/Object;
    :cond_37
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 632
    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_38

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v10, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 633
    :cond_38
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v5, v6

    invoke-static {v5}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 486
    .end local p0
    .local v18, x:Z
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p1
    .end local p2
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 490
    .restart local p1
    .restart local p2
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p1
    .end local p2
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 493
    .end local v18           #x:Z
    .restart local p0
    .restart local p2
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p2
    .end local p3
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 540
    .restart local v11       #backref:Ljava/lang/Object;
    .restart local v12       #c:Ljava/lang/Object;
    .restart local v17       #tmp:Ljava/lang/Object;
    .restart local p2
    .restart local p3
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p2
    .end local p3
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x3

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 594
    .end local v11           #backref:Ljava/lang/Object;
    .end local v12           #c:Ljava/lang/Object;
    .local v18, x:Ljava/lang/Object;
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_9
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "maximal?"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 597
    :catch_a
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "could-loop-infinitely?"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
