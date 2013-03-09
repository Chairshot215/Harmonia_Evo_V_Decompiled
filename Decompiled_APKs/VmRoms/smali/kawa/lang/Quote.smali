.class public Lkawa/lang/Quote;
.super Lkawa/lang/Syntax;
.source "Quote.java"


# static fields
.field private static final CYCLE:Ljava/lang/Object; = null

.field protected static final QUOTE_DEPTH:I = -0x1

.field private static final WORKING:Ljava/lang/Object;

.field static final appendMethod:Lgnu/bytecode/Method;

.field static final consXMethod:Lgnu/bytecode/Method;

.field static final makePairMethod:Lgnu/bytecode/Method;

.field static final makeVectorMethod:Lgnu/bytecode/Method;

.field public static final plainQuote:Lkawa/lang/Quote;

.field public static final quasiQuote:Lkawa/lang/Quote;

.field static final quoteType:Lgnu/bytecode/ClassType;

.field static final vectorAppendMethod:Lgnu/bytecode/Method;


# instance fields
.field protected isQuasi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 21
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    .line 22
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1, v3}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->quasiQuote:Lkawa/lang/Quote;

    .line 289
    new-instance v0, Ljava/lang/String;

    const-string v1, "(working)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/lang/String;

    const-string v1, "(cycle)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    .line 475
    const-string v0, "kawa.standard.vector_append"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "apply$V"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    .line 478
    const-string v0, "kawa.lang.Quote"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    .line 479
    sget-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v1, "consX$V"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    .line 480
    sget-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v1, "append$V"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    .line 481
    sget-object v0, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    .line 482
    const-string v0, "gnu.lists.FVector"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "make"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isQuasi"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/lang/Quote;->isQuasi:Z

    .line 28
    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "args"

    .prologue
    const/4 v12, 0x1

    .line 435
    array-length v3, p0

    .line 436
    .local v3, count:I
    if-nez v3, :cond_1

    .line 437
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 472
    :cond_0
    return-object v11

    .line 438
    :cond_1
    sub-int v11, v3, v12

    aget-object v9, p0, v11

    .line 439
    .local v9, result:Ljava/lang/Object;
    sub-int v4, v3, v12

    .local v4, i:I
    move-object v11, v9

    .end local v9           #result:Ljava/lang/Object;
    :cond_2
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 441
    aget-object v6, p0, v4

    .line 442
    .local v6, list:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 443
    .local v2, copy:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 444
    .local v5, last:Lgnu/lists/Pair;
    const/4 v10, 0x0

    .local v10, syntax:Lkawa/lang/SyntaxForm;
    move-object v9, v2

    .line 447
    .end local v2           #copy:Ljava/lang/Object;
    :goto_1
    instance-of v12, v6, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_3

    .line 449
    move-object v0, v6

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v10, v0

    .line 450
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 452
    :cond_3
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v12, :cond_4

    .line 466
    if-eqz v5, :cond_2

    .line 468
    invoke-virtual {v5, v11}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .local v9, result:Lgnu/lists/Pair;
    move-object v11, v9

    .line 469
    goto :goto_0

    .line 454
    .end local v9           #result:Lgnu/lists/Pair;
    :cond_4
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 455
    .local v7, list_pair:Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, car:Ljava/lang/Object;
    if-eqz v10, :cond_5

    instance-of v12, v1, Lkawa/lang/SyntaxForm;

    if-nez v12, :cond_5

    .line 457
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v12

    invoke-static {v1, v12}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    .line 458
    :cond_5
    new-instance v8, Lgnu/lists/Pair;

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    .local v8, new_pair:Lgnu/lists/Pair;
    if-nez v5, :cond_6

    .line 460
    move-object v2, v8

    .local v2, copy:Lgnu/lists/Pair;
    move-object v12, v2

    .line 463
    .end local v2           #copy:Lgnu/lists/Pair;
    :goto_2
    move-object v5, v8

    .line 464
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v12

    .line 465
    goto :goto_1

    .line 462
    :cond_6
    invoke-virtual {v5, v8}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    move-object v12, v9

    goto :goto_2
.end method

.method public static consX$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 429
    invoke-static {p0}, Lgnu/lists/LList;->consX([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 2
    .parameter "args"

    .prologue
    .line 414
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lkawa/lang/Quote;->makeVectorMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1, p0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public static makeSymbol(Lgnu/mapping/Namespace;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 3
    .parameter "ns"
    .parameter "local"

    .prologue
    .line 79
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 80
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    return-object v2

    .line 86
    .end local v1           #name:Ljava/lang/String;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 57
    sget-object v1, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v2, -0x1

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-virtual {v1, p0, v2, v0}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 50
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "val"
    .parameter "tr"

    .prologue
    .line 62
    instance-of v0, p1, Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/expr/Expression;

    .end local p1
    move-object v0, p1

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 23
    .parameter "template"
    .parameter "depth"
    .parameter "syntax"
    .parameter "seen"
    .parameter "tr"

    .prologue
    .line 305
    move-object/from16 v0, p4

    check-cast v0, Ljava/util/IdentityHashMap;

    move-object v14, v0

    .line 306
    .local v14, map:Ljava/util/IdentityHashMap;
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 307
    .local v17, old:Ljava/lang/Object;
    sget-object v4, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v4

    if-ne v0, v1, :cond_0

    .line 309
    sget-object v4, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    .line 409
    .end local p2
    :goto_0
    return-object v4

    .line 312
    .restart local p2
    :cond_0
    sget-object v4, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v4

    if-ne v0, v1, :cond_1

    move-object/from16 v4, v17

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    if-eqz v17, :cond_2

    move-object/from16 v4, v17

    .line 317
    goto :goto_0

    .line 320
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-eqz v4, :cond_4

    .line 321
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    .local v20, result:Ljava/lang/Object;
    move-object/from16 v4, v20

    .line 405
    .end local v20           #result:Ljava/lang/Object;
    .end local p2
    :goto_1
    move-object/from16 v0, p1

    move-object v1, v4

    if-eq v0, v1, :cond_3

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    .line 406
    const/16 v5, 0x65

    const-string v6, "cycle in non-literal data"

    move-object/from16 v0, p5

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 407
    :cond_3
    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    .restart local p2
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_5

    .line 324
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p3, v0

    .line 325
    invoke-interface/range {p3 .. p3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #result:Ljava/lang/Object;
    move-object/from16 v4, v20

    goto :goto_1

    .line 327
    .end local v20           #result:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v4, v0

    if-eqz v4, :cond_14

    .line 329
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object/from16 v22, v0

    .line 330
    .local v22, vector:Lgnu/lists/FVector;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/FVector;->size()I

    move-result v16

    .line 331
    .local v16, n:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 337
    .local v12, buffer:[Ljava/lang/Object;
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 338
    .local v21, state:[B
    const/4 v15, 0x0

    .line 339
    .local v15, max_state:B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 341
    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 342
    .local v5, element:Ljava/lang/Object;
    move/from16 v6, p2

    .line 344
    .local v6, element_depth:I
    instance-of v4, v5, Lgnu/lists/Pair;

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-le v0, v1, :cond_9

    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    .local v18, pair:Lgnu/lists/Pair;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    const-string v7, "unquote-splicing"

    move-object/from16 v0, p5

    move-object v1, v4

    move-object/from16 v2, p3

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_9

    .line 350
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/lists/Pair;

    .local v19, pair_cdr:Lgnu/lists/Pair;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .end local v5           #element:Ljava/lang/Object;
    if-eq v4, v5, :cond_7

    .line 352
    .end local v19           #pair_cdr:Lgnu/lists/Pair;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid used of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in quasiquote template"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto/16 :goto_0

    .line 354
    .restart local v19       #pair_cdr:Lgnu/lists/Pair;
    :cond_7
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v12, v13

    .line 355
    const/4 v4, 0x3

    aput-byte v4, v21, v13

    .line 367
    .end local v18           #pair:Lgnu/lists/Pair;
    .end local v19           #pair_cdr:Lgnu/lists/Pair;
    :goto_3
    aget-byte v4, v21, v13

    if-le v4, v15, :cond_8

    .line 368
    aget-byte v15, v21, v13

    .line 339
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .restart local v5       #element:Ljava/lang/Object;
    :cond_9
    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 359
    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v12, v13

    .line 360
    aget-object v4, v12, v13

    if-ne v4, v5, :cond_a

    .line 361
    const/4 v4, 0x0

    aput-byte v4, v21, v13

    goto :goto_3

    .line 362
    :cond_a
    aget-object v4, v12, v13

    instance-of v4, v4, Lgnu/expr/Expression;

    if-eqz v4, :cond_b

    .line 363
    const/4 v4, 0x2

    aput-byte v4, v21, v13

    goto :goto_3

    .line 365
    :cond_b
    const/4 v4, 0x1

    aput-byte v4, v21, v13

    goto :goto_3

    .line 370
    .end local v5           #element:Ljava/lang/Object;
    .end local v6           #element_depth:I
    :cond_c
    if-nez v15, :cond_d

    .line 371
    move-object/from16 v20, v22

    .end local p2
    :goto_4
    move-object/from16 v4, v20

    .line 401
    goto/16 :goto_1

    .line 372
    .restart local p2
    :cond_d
    const/4 v4, 0x1

    if-ne v15, v4, :cond_e

    .line 373
    new-instance v20, Lgnu/lists/FVector;

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-direct {v0, v1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    .local v20, result:Lgnu/lists/FVector;
    goto :goto_4

    .line 376
    .end local v20           #result:Lgnu/lists/FVector;
    :cond_e
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v11, v0

    .line 377
    .local v11, args:[Lgnu/expr/Expression;
    const/4 v13, 0x0

    .end local p2
    :goto_5
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 379
    aget-byte v4, v21, v13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    .line 380
    aget-object p2, v12, v13

    check-cast p2, Lgnu/expr/Expression;

    aput-object p2, v11, v13

    .line 377
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 381
    :cond_f
    const/4 v4, 0x3

    if-ge v15, v4, :cond_10

    .line 382
    aget-object v4, v12, v13

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 383
    :cond_10
    aget-byte v4, v21, v13

    const/4 v5, 0x2

    if-ge v4, v5, :cond_11

    .line 385
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    .line 386
    .local v10, arg1:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v12, v13

    aput-object v5, v10, v4

    .line 387
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v10}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 391
    .end local v10           #arg1:[Ljava/lang/Object;
    :cond_11
    const/4 v4, 0x1

    new-array v10, v4, [Lgnu/expr/Expression;

    .line 392
    .local v10, arg1:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    aget-object p2, v12, v13

    check-cast p2, Lgnu/expr/Expression;

    aput-object p2, v10, v4

    .line 393
    invoke-static {v10}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 396
    .end local v10           #arg1:[Lgnu/expr/Expression;
    :cond_12
    const/4 v4, 0x3

    if-ge v15, v4, :cond_13

    .line 397
    invoke-static {v11}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v20

    .local v20, result:Lgnu/expr/ApplyExp;
    goto :goto_4

    .line 399
    .end local v20           #result:Lgnu/expr/ApplyExp;
    :cond_13
    new-instance v20, Lgnu/expr/ApplyExp;

    sget-object v4, Lkawa/lang/Quote;->vectorAppendMethod:Lgnu/bytecode/Method;

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .restart local v20       #result:Lgnu/expr/ApplyExp;
    goto :goto_4

    .line 403
    .end local v11           #args:[Lgnu/expr/Expression;
    .end local v12           #buffer:[Ljava/lang/Object;
    .end local v13           #i:I
    .end local v15           #max_state:B
    .end local v16           #n:I
    .end local v20           #result:Lgnu/expr/ApplyExp;
    .end local v21           #state:[B
    .end local v22           #vector:Lgnu/lists/FVector;
    .restart local p2
    :cond_14
    move-object/from16 v20, p1

    .local v20, result:Ljava/lang/Object;
    move-object/from16 v4, v20

    goto/16 :goto_1
.end method

.method protected expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6
    .parameter "template"
    .parameter "depth"
    .parameter "tr"

    .prologue
    .line 39
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 43
    .local v4, seen:Ljava/util/IdentityHashMap;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected expandColonForms()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 40
    .parameter "list"
    .parameter "depth"
    .parameter "syntax"
    .parameter "seen"
    .parameter "tr"

    .prologue
    .line 93
    move-object/from16 v27, p1

    .line 101
    .local v27, pair:Lgnu/lists/Pair;
    :goto_0
    move-object/from16 v32, v27

    .line 107
    .local v32, rest:Lgnu/lists/Pair;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Quote;->expandColonForms()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lgnu/lists/Pair;

    .local v25, p1:Lgnu/lists/Pair;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lgnu/lists/Pair;

    .local v26, p2:Lgnu/lists/Pair;
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {v26 .. v26}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_4

    .line 115
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v30

    .line 116
    .local v30, part1:Lgnu/expr/Expression;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v31

    .line 117
    .local v31, part2:Lgnu/expr/Expression;
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v22

    .line 118
    .local v22, ns:Lgnu/mapping/Namespace;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v37

    .line 120
    .local v37, sym:Lgnu/mapping/Symbol;
    if-eqz v37, :cond_0

    .line 121
    move-object/from16 v15, v37

    .local v15, cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .local v6, rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 245
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .end local v22           #ns:Lgnu/mapping/Namespace;
    .end local v25           #p1:Lgnu/lists/Pair;
    .end local v26           #p2:Lgnu/lists/Pair;
    .end local v30           #part1:Lgnu/expr/Expression;
    .end local v31           #part2:Lgnu/expr/Expression;
    .end local v32           #rest:Lgnu/lists/Pair;
    .end local v37           #sym:Lgnu/mapping/Symbol;
    .end local p3
    :goto_1
    move-object/from16 v0, p1

    move-object v1, v6

    if-ne v0, v1, :cond_18

    move-object/from16 v5, p3

    .line 286
    :goto_2
    return-object v5

    .line 122
    .restart local v22       #ns:Lgnu/mapping/Namespace;
    .restart local v25       #p1:Lgnu/lists/Pair;
    .restart local v26       #p2:Lgnu/lists/Pair;
    .restart local v30       #part1:Lgnu/expr/Expression;
    .restart local v31       #part2:Lgnu/expr/Expression;
    .restart local v32       #rest:Lgnu/lists/Pair;
    .restart local v37       #sym:Lgnu/mapping/Symbol;
    .restart local p3
    :cond_0
    if-eqz v22, :cond_1

    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v15, Lgnu/expr/ApplyExp;

    sget-object v5, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v6, "makeSymbol"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    invoke-static/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v31, v6, v7

    invoke-direct {v15, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .local v15, cdr:Lgnu/expr/ApplyExp;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto :goto_1

    .line 126
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/expr/ApplyExp;
    :cond_1
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v5, v0

    if-eqz v5, :cond_2

    .line 128
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v30, Lgnu/expr/ReferenceExp;

    .end local v30           #part1:Lgnu/expr/Expression;
    invoke-virtual/range {v30 .. v30}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v31, Lgnu/expr/QuoteExp;

    .end local v31           #part2:Lgnu/expr/Expression;
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    .local v15, cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto :goto_1

    .line 129
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .restart local v30       #part1:Lgnu/expr/Expression;
    .restart local v31       #part2:Lgnu/expr/Expression;
    :cond_2
    invoke-static/range {v30 .. v31}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v16

    .local v16, combinedName:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 130
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    .restart local v15       #cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto/16 :goto_1

    .line 133
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    :cond_3
    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 134
    .local v34, save:Ljava/lang/Object;
    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not a valid prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 135
    move-object/from16 v0, p5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 136
    move-object/from16 v15, v37

    .restart local v15       #cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 138
    goto/16 :goto_1

    .line 140
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .end local v16           #combinedName:Ljava/lang/String;
    .end local v22           #ns:Lgnu/mapping/Namespace;
    .end local v25           #p1:Lgnu/lists/Pair;
    .end local v26           #p2:Lgnu/lists/Pair;
    .end local v30           #part1:Lgnu/expr/Expression;
    .end local v31           #part2:Lgnu/expr/Expression;
    .end local v34           #save:Ljava/lang/Object;
    .end local v37           #sym:Lgnu/mapping/Symbol;
    :cond_4
    if-gez p2, :cond_6

    .line 162
    :cond_5
    :goto_3
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_13

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_13

    .line 164
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 165
    .local v17, form:Ljava/lang/Object;
    move-object/from16 v36, p3

    .line 166
    .local v36, subsyntax:Lkawa/lang/SyntaxForm;
    :goto_4
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_b

    .line 168
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v36, v0

    .line 169
    invoke-interface/range {v36 .. v36}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    goto :goto_4

    .line 143
    .end local v17           #form:Ljava/lang/Object;
    .end local v36           #subsyntax:Lkawa/lang/SyntaxForm;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "quasiquote"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 145
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "unquote"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 147
    add-int/lit8 p2, p2, -0x1

    .line 149
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_8

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lgnu/lists/Pair;

    .local v28, pair_cdr:Lgnu/lists/Pair;
    invoke-virtual/range {v28 .. v28}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_9

    .line 151
    .end local v28           #pair_cdr:Lgnu/lists/Pair;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid used of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in quasiquote template"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 153
    .restart local v28       #pair_cdr:Lgnu/lists/Pair;
    :cond_9
    if-nez p2, :cond_5

    .line 155
    move-object/from16 v0, p5

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v15

    .local v15, cdr:Lgnu/expr/Expression;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 156
    goto/16 :goto_1

    .line 159
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/expr/Expression;
    .end local v28           #pair_cdr:Lgnu/lists/Pair;
    :cond_a
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "unquote-splicing"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid used of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in quasiquote template"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 171
    .restart local v17       #form:Ljava/lang/Object;
    .restart local v36       #subsyntax:Lkawa/lang/SyntaxForm;
    :cond_b
    const/16 v35, -0x1

    .line 172
    .local v35, splicing:I
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_c

    .line 174
    move-object/from16 v0, v17

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    .line 175
    .local v23, op:Ljava/lang/Object;
    const-string v5, "unquote"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 176
    const/16 v35, 0x0

    .line 180
    .end local v23           #op:Ljava/lang/Object;
    :cond_c
    :goto_5
    if-ltz v35, :cond_13

    .line 182
    check-cast v17, Lgnu/lists/Pair;

    .end local v17           #form:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    .line 183
    .restart local v17       #form:Ljava/lang/Object;
    new-instance v39, Ljava/util/Vector;

    invoke-direct/range {v39 .. v39}, Ljava/util/Vector;-><init>()V

    .line 184
    .local v39, vec:Ljava/util/Vector;
    const/4 v15, 0x0

    .line 189
    .local v15, cdr:Ljava/lang/Object;
    :goto_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_d

    .line 191
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v36, v0

    .line 192
    invoke-interface/range {v36 .. v36}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    .line 194
    :cond_d
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_10

    .line 204
    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v19, v5, 0x1

    .line 205
    .local v19, nargs:I
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .line 206
    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_e

    .line 208
    move/from16 v0, v19

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v13, v0

    .line 209
    .local v13, args:[Lgnu/expr/Expression;
    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    const/4 v5, 0x1

    sub-int v5, v19, v5

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 211
    if-nez v35, :cond_12

    sget-object v5, Lkawa/lang/Quote;->consXMethod:Lgnu/bytecode/Method;

    move-object/from16 v18, v5

    .line 212
    .local v18, method:Lgnu/bytecode/Method;
    :goto_7
    new-instance v15, Lgnu/expr/ApplyExp;

    .end local v15           #cdr:Ljava/lang/Object;
    move-object v0, v15

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 214
    .end local v13           #args:[Lgnu/expr/Expression;
    .end local v18           #method:Lgnu/bytecode/Method;
    :cond_e
    move-object/from16 v6, v27

    .end local v32           #rest:Lgnu/lists/Pair;
    .local v6, rest:Lgnu/lists/Pair;
    move-object/from16 p3, v15

    .line 215
    goto/16 :goto_1

    .line 177
    .end local v6           #rest:Lgnu/lists/Pair;
    .end local v19           #nargs:I
    .end local v39           #vec:Ljava/util/Vector;
    .restart local v23       #op:Ljava/lang/Object;
    .restart local v32       #rest:Lgnu/lists/Pair;
    :cond_f
    const-string v5, "unquote-splicing"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 178
    const/16 v35, 0x1

    goto/16 :goto_5

    .line 196
    .end local v23           #op:Ljava/lang/Object;
    .restart local v15       #cdr:Ljava/lang/Object;
    .restart local v39       #vec:Ljava/util/Vector;
    :cond_10
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_11

    .line 198
    move-object/from16 v0, v17

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    check-cast v17, Lgnu/lists/Pair;

    .end local v17           #form:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    .restart local v17       #form:Ljava/lang/Object;
    goto/16 :goto_6

    .line 202
    :cond_11
    const-string v5, "improper list argument to unquote"

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 211
    .restart local v13       #args:[Lgnu/expr/Expression;
    .restart local v19       #nargs:I
    :cond_12
    sget-object v5, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    move-object/from16 v18, v5

    goto :goto_7

    .line 218
    .end local v13           #args:[Lgnu/expr/Expression;
    .end local v15           #cdr:Ljava/lang/Object;
    .end local v17           #form:Ljava/lang/Object;
    .end local v19           #nargs:I
    .end local v35           #splicing:I
    .end local v36           #subsyntax:Lkawa/lang/SyntaxForm;
    .end local v39           #vec:Ljava/util/Vector;
    :cond_13
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v14

    .line 219
    .local v14, car:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-ne v14, v5, :cond_15

    .line 221
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 222
    .local v6, rest:Ljava/lang/Object;
    instance-of v5, v6, Lgnu/lists/Pair;

    .end local v32           #rest:Lgnu/lists/Pair;
    if-eqz v5, :cond_14

    .line 224
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v27, v0

    .line 225
    goto/16 :goto_0

    :cond_14
    move-object/from16 v5, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 227
    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #cdr:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 228
    goto/16 :goto_1

    .line 230
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Ljava/lang/Object;
    .restart local v32       #rest:Lgnu/lists/Pair;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .line 231
    .restart local v15       #cdr:Ljava/lang/Object;
    instance-of v5, v14, Lgnu/expr/Expression;

    if-nez v5, :cond_16

    instance-of v5, v15, Lgnu/expr/Expression;

    if-eqz v5, :cond_17

    .line 233
    :cond_16
    const/4 v5, 0x2

    new-array v13, v5, [Lgnu/expr/Expression;

    .line 234
    .restart local v13       #args:[Lgnu/expr/Expression;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 235
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 236
    new-instance v15, Lgnu/expr/ApplyExp;

    .end local v15           #cdr:Ljava/lang/Object;
    sget-object v5, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v15, v5, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .local v15, cdr:Lgnu/expr/ApplyExp;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 237
    goto/16 :goto_1

    .line 239
    .end local v6           #rest:Ljava/lang/Object;
    .end local v13           #args:[Lgnu/expr/Expression;
    .local v15, cdr:Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, v27

    move-object v1, v14

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    .local v15, cdr:Lgnu/lists/Pair;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 240
    goto/16 :goto_1

    .line 247
    .end local v6           #rest:Ljava/lang/Object;
    .end local v14           #car:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/lists/Pair;
    .end local v32           #rest:Lgnu/lists/Pair;
    .end local p3
    :cond_18
    move-object/from16 v24, p1

    .line 248
    .local v24, p:Lgnu/lists/Pair;
    const/16 v5, 0x14

    move v0, v5

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v29, v0

    .line 249
    .local v29, pairs:[Lgnu/lists/Pair;
    const/16 v20, 0x0

    .line 252
    .local v20, npairs:I
    :goto_8
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_19

    .line 254
    mul-int/lit8 v5, v20, 0x2

    move v0, v5

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 255
    .local v38, tmp:[Lgnu/lists/Pair;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v38

    move v3, v7

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    move-object/from16 v29, v38

    .line 258
    .end local v38           #tmp:[Lgnu/lists/Pair;
    :cond_19
    add-int/lit8 v21, v20, 0x1

    .end local v20           #npairs:I
    .local v21, npairs:I
    aput-object v24, v29, v20

    .line 259
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_1a

    .line 263
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/Expression;

    move v5, v0

    if-eqz v5, :cond_1b

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v33, v5

    .local v33, result:Ljava/lang/Object;
    :goto_9
    move/from16 v20, v21

    .line 264
    .end local v21           #npairs:I
    .end local v33           #result:Ljava/lang/Object;
    .restart local v20       #npairs:I
    :goto_a
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1c

    .line 266
    aget-object v24, v29, v20

    .line 267
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v33

    .local v33, result:Lgnu/lists/Pair;
    goto :goto_a

    .line 261
    .end local v20           #npairs:I
    .end local v33           #result:Lgnu/lists/Pair;
    .restart local v21       #npairs:I
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    .end local v24           #p:Lgnu/lists/Pair;
    check-cast v24, Lgnu/lists/Pair;

    .restart local v24       #p:Lgnu/lists/Pair;
    move/from16 v20, v21

    .end local v21           #npairs:I
    .restart local v20       #npairs:I
    goto :goto_8

    .end local v20           #npairs:I
    .restart local v21       #npairs:I
    :cond_1b
    move-object/from16 v33, p3

    .line 263
    goto :goto_9

    .line 270
    .end local v21           #npairs:I
    .restart local v20       #npairs:I
    :cond_1c
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/Expression;

    move v5, v0

    if-eqz v5, :cond_1e

    .line 272
    const/4 v5, 0x2

    new-array v13, v5, [Lgnu/expr/Expression;

    .line 273
    .restart local v13       #args:[Lgnu/expr/Expression;
    const/4 v5, 0x1

    check-cast p3, Lgnu/expr/Expression;

    aput-object p3, v13, v5

    .line 274
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_1d

    .line 277
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 278
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v6, Lkawa/lang/Quote;->makePairMethod:Lgnu/bytecode/Method;

    invoke-direct {v5, v6, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto/16 :goto_2

    .line 282
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 283
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v6, Lkawa/lang/Quote;->appendMethod:Lgnu/bytecode/Method;

    invoke-direct {v5, v6, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto/16 :goto_2

    .end local v13           #args:[Lgnu/expr/Expression;
    :cond_1e
    move-object/from16 v5, v33

    .line 286
    goto/16 :goto_2
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "val"
    .parameter "tr"

    .prologue
    .line 67
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 420
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_1

    .line 422
    .end local v1           #pair:Lgnu/lists/Pair;
    :cond_0
    const-string v2, "wrong number of arguments to quote"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 423
    :goto_0
    return-object v2

    .restart local v1       #pair:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lkawa/lang/Quote;->isQuasi:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v2, v3, p2}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method
