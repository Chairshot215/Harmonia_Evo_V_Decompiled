.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/object;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    .line 15
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    .line 18
    const-string v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    .line 19
    const-string v0, "class-name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    .line 20
    const-string v0, "interface"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    .line 21
    const-string v0, "throws"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    .line 22
    const-string v0, "type"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    .line 23
    const-string v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    .line 24
    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    .line 25
    const-string v0, "initform"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    .line 26
    const-string v0, "init-form"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    .line 27
    const-string v0, "init-value"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    .line 28
    const-string v0, "init-keyword"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0
    .parameter "lambda"

    .prologue
    .line 33
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    iput-object p1, p0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    .line 35
    return-void
.end method

.method static addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J
    .locals 7
    .parameter "value"
    .parameter "previous"
    .parameter "allowed"
    .parameter "kind"
    .parameter "tr"

    .prologue
    const/16 v6, 0x65

    const-wide/16 v4, 0x0

    .line 625
    invoke-static {p0, p6}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    .line 626
    .local v0, flags:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown access specifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    or-long v2, p1, v0

    return-wide v2

    .line 628
    :cond_1
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p3

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " access specifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    and-long v2, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 631
    const/16 v2, 0x77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access specifiers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 4
    .parameter "value"
    .parameter "tr"

    .prologue
    .line 637
    :goto_0
    instance-of v2, p0, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_0

    .line 638
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 639
    :cond_0
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    .line 641
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 642
    .local v1, p:Lgnu/lists/Pair;
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p1, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object p0

    .line 643
    .restart local p0
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    .line 644
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v2

    .line 646
    .end local v1           #p:Lgnu/lists/Pair;
    :goto_1
    return-wide v2

    .restart local p0
    :cond_1
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v2

    goto :goto_1
.end method

.method private static matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .locals 2
    .parameter "value"
    .parameter "tr"

    .prologue
    .line 666
    instance-of v0, p0, Lgnu/expr/Keyword;

    if-eqz v0, :cond_1

    .line 667
    check-cast p0, Lgnu/expr/Keyword;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    .line 672
    :cond_0
    :goto_0
    const-string v0, "private"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    const-wide/32 v0, 0x1000000

    .line 688
    :goto_1
    return-wide v0

    .line 668
    .restart local p0
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 669
    check-cast p0, Lgnu/lists/FString;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, value:Ljava/lang/String;
    goto :goto_0

    .line 670
    .local p0, value:Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, value:Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local p0           #value:Ljava/lang/String;
    :cond_3
    const-string v0, "protected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    const-wide/32 v0, 0x2000000

    goto :goto_1

    .line 676
    :cond_4
    const-string v0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    const-wide/32 v0, 0x4000000

    goto :goto_1

    .line 678
    :cond_5
    const-string v0, "package"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 679
    const-wide/32 v0, 0x8000000

    goto :goto_1

    .line 680
    :cond_6
    const-string v0, "volatile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 681
    const-wide v0, 0x80000000L

    goto :goto_1

    .line 682
    :cond_7
    const-string v0, "transient"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 683
    const-wide v0, 0x100000000L

    goto :goto_1

    .line 684
    :cond_8
    const-string v0, "enum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 685
    const-wide v0, 0x200000000L

    goto :goto_1

    .line 686
    :cond_9
    const-string v0, "final"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 687
    const-wide v0, 0x400000000L

    goto :goto_1

    .line 688
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private static matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J
    .locals 8
    .parameter "pair"
    .parameter "tr"

    .prologue
    const-wide/16 v6, 0x0

    .line 651
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v1

    .line 652
    .local v1, icar:J
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, cdr:Ljava/lang/Object;
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v5, :cond_0

    cmp-long v5, v1, v6

    if-nez v5, :cond_1

    :cond_0
    move-wide v5, v1

    .line 661
    .end local v0           #cdr:Ljava/lang/Object;
    :goto_0
    return-wide v5

    .line 655
    .restart local v0       #cdr:Ljava/lang/Object;
    :cond_1
    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_2

    .line 657
    check-cast v0, Lgnu/lists/Pair;

    .end local v0           #cdr:Ljava/lang/Object;
    invoke-static {v0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v3

    .line 658
    .local v3, icdr:J
    cmp-long v5, v3, v6

    if-eqz v5, :cond_2

    .line 659
    or-long v5, v1, v3

    goto :goto_0

    .end local v3           #icdr:J
    :cond_2
    move-wide v5, v6

    .line 661
    goto :goto_0
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .locals 4
    .parameter "exp"
    .parameter "tag"
    .parameter "tr"

    .prologue
    const/4 v3, 0x0

    .line 610
    instance-of v2, p0, Lgnu/expr/Keyword;

    if-eqz v2, :cond_1

    .line 611
    check-cast p0, Lgnu/expr/Keyword;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, value:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    .end local v1           #value:Ljava/lang/String;
    :goto_1
    return v2

    .line 612
    .restart local p0
    :cond_1
    instance-of v2, p0, Lgnu/lists/FString;

    if-eqz v2, :cond_2

    .line 613
    check-cast p0, Lgnu/lists/FString;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v1           #value:Ljava/lang/String;
    .restart local p0
    :cond_2
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_3

    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object v0

    .local v0, qvalue:Ljava/lang/Object;
    instance-of v2, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0

    .end local v0           #qvalue:Ljava/lang/Object;
    .end local v1           #value:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 618
    goto :goto_1

    .restart local v1       #value:Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 619
    goto :goto_1
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .locals 14
    .parameter "d"
    .parameter "oexp"
    .parameter "initPair"
    .parameter "tr"
    .parameter "initSyntax"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 558
    instance-of v9, p0, Lgnu/expr/Declaration;

    if-eqz v9, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/expr/Declaration;

    move-object v9, v0

    const-wide/16 v10, 0x800

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v9

    move v6, v9

    .line 561
    .local v6, isStatic:Z
    :goto_0
    if-eqz v6, :cond_3

    iget-object v9, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v4, v9

    .line 562
    .local v4, initMethod:Lgnu/expr/LambdaExp;
    :goto_1
    if-nez v4, :cond_0

    .line 564
    new-instance v4, Lgnu/expr/LambdaExp;

    .end local v4           #initMethod:Lgnu/expr/LambdaExp;
    new-instance v9, Lgnu/expr/BeginExp;

    invoke-direct {v9}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v4, v9}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 565
    .restart local v4       #initMethod:Lgnu/expr/LambdaExp;
    invoke-virtual {v4, v12}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 566
    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v9}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 567
    if-eqz v6, :cond_4

    .line 569
    const-string v9, "$clinit$"

    invoke-virtual {v4, v9}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 570
    iput-object v4, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    .line 580
    :goto_2
    iget-object v9, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v9, v4, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 581
    iput-object v4, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 583
    :cond_0
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 584
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object v7, v0

    .line 585
    .local v7, saveLambda:Lgnu/expr/LambdaExp;
    move-object v0, v4

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 586
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v5

    .line 587
    .local v5, initValue:Lgnu/expr/Expression;
    instance-of v9, p0, Lgnu/expr/Declaration;

    if-eqz v9, :cond_5

    .line 589
    move-object v0, p0

    check-cast v0, Lgnu/expr/Declaration;

    move-object v3, v0

    .line 590
    .local v3, decl:Lgnu/expr/Declaration;
    new-instance v8, Lgnu/expr/SetExp;

    invoke-direct {v8, v3, v5}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 591
    .local v8, sexp:Lgnu/expr/SetExp;
    invoke-virtual {v8, v3}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 592
    invoke-virtual {v3, v13}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 593
    move-object v5, v8

    .line 597
    .end local v3           #decl:Lgnu/expr/Declaration;
    .end local v8           #sexp:Lgnu/expr/SetExp;
    :goto_3
    iget-object p0, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .end local p0
    check-cast p0, Lgnu/expr/BeginExp;

    invoke-virtual {p0, v5}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 598
    move-object v0, v7

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 599
    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 600
    return-void

    .line 558
    .end local v4           #initMethod:Lgnu/expr/LambdaExp;
    .end local v5           #initValue:Lgnu/expr/Expression;
    .end local v6           #isStatic:Z
    .end local v7           #saveLambda:Lgnu/expr/LambdaExp;
    .restart local p0
    :cond_1
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v9, :cond_2

    move v6, v12

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move v6, v9

    goto :goto_0

    .line 561
    .restart local v6       #isStatic:Z
    :cond_3
    iget-object v9, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v4, v9

    goto :goto_1

    .line 574
    .restart local v4       #initMethod:Lgnu/expr/LambdaExp;
    :cond_4
    const-string v9, "$finit$"

    invoke-virtual {v4, v9}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 575
    iput-object v4, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 578
    new-instance v9, Lgnu/expr/Declaration;

    sget-object v10, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v9, v10}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v13, v9}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_2

    .line 596
    .restart local v5       #initValue:Lgnu/expr/Expression;
    .restart local v7       #saveLambda:Lgnu/expr/LambdaExp;
    :cond_5
    new-instance v9, Lgnu/expr/QuoteExp;

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v5, v9}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    goto :goto_3
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 51
    .parameter "saved"
    .parameter "tr"

    .prologue
    .line 326
    const/4 v5, 0x0

    aget-object v37, p1, v5

    check-cast v37, Lgnu/expr/ClassExp;

    .line 327
    .local v37, oexp:Lgnu/expr/ClassExp;
    const/4 v5, 0x1

    aget-object v16, p1, v5

    .line 328
    .local v16, components:Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v26, p1, v5

    check-cast v26, Ljava/util/Vector;

    .line 329
    .local v26, inits:Ljava/util/Vector;
    const/4 v5, 0x3

    aget-object v33, p1, v5

    check-cast v33, Lgnu/expr/LambdaExp;

    .line 330
    .local v33, method_list:Lgnu/expr/LambdaExp;
    const/4 v5, 0x4

    aget-object v45, p1, v5

    .line 331
    .local v45, superlist:Ljava/lang/Object;
    const/4 v5, 0x5

    aget-object v13, p1, v5

    .line 332
    .local v13, classNamePair:Ljava/lang/Object;
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    iput-object v0, v1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 334
    invoke-static/range {v45 .. v45}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v35

    .line 335
    .local v35, num_supers:I
    if-gez v35, :cond_0

    .line 337
    const/16 v5, 0x65

    const-string v6, "object superclass specification not a list"

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 338
    const/16 v35, 0x0

    .line 340
    :cond_0
    move/from16 v0, v35

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v47, v0

    .line 341
    .local v47, supers:[Lgnu/expr/Expression;
    const/16 v20, 0x0

    .end local p1
    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    .line 343
    :goto_1
    move-object/from16 v0, v45

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_1

    .line 346
    check-cast v45, Lkawa/lang/SyntaxForm;

    .end local v45           #superlist:Ljava/lang/Object;
    invoke-interface/range {v45 .. v45}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v45

    .restart local v45       #superlist:Ljava/lang/Object;
    goto :goto_1

    .line 348
    :cond_1
    move-object/from16 v0, v45

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v46, v0

    .line 349
    .local v46, superpair:Lgnu/lists/Pair;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v47, v20

    .line 350
    aget-object v5, v47, v20

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_2

    .line 352
    aget-object p1, v47, v20

    check-cast p1, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v19

    .line 354
    .local v19, decl:Lgnu/expr/Declaration;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v48

    .local v48, svalue:Lgnu/expr/Expression;
    move-object/from16 v0, v48

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v5, v0

    if-eqz v5, :cond_2

    .line 355
    check-cast v48, Lgnu/expr/ClassExp;

    .end local v48           #svalue:Lgnu/expr/Expression;
    const/high16 v5, 0x2

    move-object/from16 v0, v48

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 357
    .end local v19           #decl:Lgnu/expr/Declaration;
    :cond_2
    invoke-virtual/range {v46 .. v46}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v45

    .line 341
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 360
    .end local v46           #superpair:Lgnu/lists/Pair;
    :cond_3
    if-eqz v13, :cond_4

    .line 362
    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v12

    .line 363
    .local v12, classNameExp:Lgnu/expr/Expression;
    invoke-virtual {v12}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v15

    .line 367
    .local v15, classNameVal:Ljava/lang/Object;
    move-object v0, v15

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v28, v0

    .line 371
    .local v28, isString:Z
    if-eqz v28, :cond_6

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, classNameSpecifier:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 373
    move-object v0, v14

    move-object/from16 v1, v37

    iput-object v0, v1, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    .line 381
    .end local v12           #classNameExp:Lgnu/expr/Expression;
    .end local v14           #classNameSpecifier:Ljava/lang/String;
    .end local v15           #classNameVal:Ljava/lang/Object;
    .end local v28           #isString:Z
    :cond_4
    :goto_2
    move-object/from16 v0, v47

    move-object/from16 v1, v37

    iput-object v0, v1, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 383
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 387
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v30

    .line 388
    .local v30, len:I
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 390
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    .line 391
    .local v21, init:Ljava/lang/Object;
    if-eqz v21, :cond_5

    .line 392
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v21, Lgnu/lists/Pair;

    .end local v21           #init:Ljava/lang/Object;
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    .line 388
    :cond_5
    add-int/lit8 v20, v20, 0x2

    goto :goto_3

    .line 376
    .end local v30           #len:I
    .restart local v12       #classNameExp:Lgnu/expr/Expression;
    .restart local v15       #classNameVal:Ljava/lang/Object;
    .restart local v28       #isString:Z
    :cond_6
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .line 377
    .local v42, savedPos:Ljava/lang/Object;
    const/16 v5, 0x65

    const-string v6, "class-name specifier must be a non-empty string literal"

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 378
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_2

    .line 395
    .end local v12           #classNameExp:Lgnu/expr/Expression;
    .end local v15           #classNameVal:Ljava/lang/Object;
    .end local v28           #isString:Z
    .end local v42           #savedPos:Ljava/lang/Object;
    .restart local v30       #len:I
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 398
    move-object/from16 v6, v33

    .line 399
    .local v6, meth:Lgnu/expr/LambdaExp;
    const/16 v24, 0x0

    .line 400
    .local v24, init_index:I
    const/16 v17, 0x0

    .line 401
    .local v17, componentsSyntax:Lkawa/lang/SyntaxForm;
    move-object/from16 v36, v16

    .local v36, obj:Ljava/lang/Object;
    :goto_4
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v36

    move-object v1, v5

    if-eq v0, v1, :cond_23

    .line 403
    :goto_5
    move-object/from16 v0, v36

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_8

    .line 405
    move-object/from16 v0, v36

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v17, v0

    .line 406
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v36

    goto :goto_5

    .line 408
    :cond_8
    move-object/from16 v0, v36

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 409
    .local v38, pair:Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 410
    .local v43, savedPos1:Ljava/lang/Object;
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v39

    .line 411
    .local v39, pair_car:Ljava/lang/Object;
    move-object/from16 v32, v17

    .line 412
    .local v32, memberSyntax:Lkawa/lang/SyntaxForm;
    :goto_6
    move-object/from16 v0, v39

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_9

    .line 414
    move-object/from16 v0, v39

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v32, v0

    .line 415
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v39

    goto :goto_6

    .line 419
    :cond_9
    :try_start_0
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v36

    .line 420
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_a

    .line 424
    move-object/from16 v0, v36

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v36

    .line 541
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_4

    .line 427
    :cond_a
    :try_start_1
    move-object/from16 v0, v39

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 428
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v39

    .line 429
    move-object/from16 v31, v32

    .line 430
    .local v31, memberCarSyntax:Lkawa/lang/SyntaxForm;
    :goto_7
    move-object/from16 v0, v39

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_b

    .line 432
    move-object/from16 v0, v39

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v31, v0

    .line 433
    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v39

    goto :goto_7

    .line 435
    :cond_b
    move-object/from16 v0, v39

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_1c

    .line 438
    :cond_c
    const/16 v49, 0x0

    .line 439
    .local v49, type:Ljava/lang/Object;
    const/16 v34, 0x0

    .line 440
    .local v34, nKeywords:I
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v11, v38

    .line 441
    .local v11, args:Ljava/lang/Object;
    :goto_8
    const/16 v22, 0x0

    .line 442
    .local v22, initPair:Lgnu/lists/Pair;
    const/16 v23, 0x0

    .local v23, initSyntax:Lkawa/lang/SyntaxForm;
    move-object/from16 v5, v49

    .line 443
    .end local v49           #type:Ljava/lang/Object;
    :goto_9
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v11, v7, :cond_18

    .line 445
    :goto_a
    instance-of v7, v11, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_e

    .line 447
    move-object v0, v11

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v32, v0

    .line 448
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    goto :goto_a

    .line 440
    .end local v11           #args:Ljava/lang/Object;
    .end local v22           #initPair:Lgnu/lists/Pair;
    .end local v23           #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v49       #type:Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    goto :goto_8

    .line 450
    .end local v49           #type:Ljava/lang/Object;
    .restart local v11       #args:Ljava/lang/Object;
    .restart local v22       #initPair:Lgnu/lists/Pair;
    .restart local v23       #initSyntax:Lkawa/lang/SyntaxForm;
    :cond_e
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 451
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v29

    .line 452
    .local v29, key:Ljava/lang/Object;
    :goto_b
    move-object/from16 v0, v29

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v7, v0

    if-eqz v7, :cond_f

    .line 453
    check-cast v29, Lkawa/lang/SyntaxForm;

    .end local v29           #key:Ljava/lang/Object;
    invoke-interface/range {v29 .. v29}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v29

    .restart local v29       #key:Ljava/lang/Object;
    goto :goto_b

    .line 454
    :cond_f
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 455
    .local v44, savedPos2:Ljava/lang/Object;
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 456
    sget-object v7, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v29

    move-object v1, v7

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v7, v0

    if-eqz v7, :cond_15

    :cond_10
    instance-of v7, v11, Lgnu/lists/Pair;

    if-eqz v7, :cond_15

    .line 459
    add-int/lit8 v34, v34, 0x1

    .line 460
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 461
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v50

    .line 462
    .local v50, value:Ljava/lang/Object;
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 463
    sget-object v7, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v29

    move-object v1, v7

    if-eq v0, v1, :cond_11

    sget-object v7, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v29

    move-object v1, v7

    if-ne v0, v1, :cond_13

    .line 464
    :cond_11
    move-object/from16 v49, v50

    .restart local v49       #type:Ljava/lang/Object;
    move-object/from16 v5, v49

    .line 499
    .end local v49           #type:Ljava/lang/Object;
    .end local v50           #value:Ljava/lang/Object;
    :cond_12
    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 541
    .end local v11           #args:Ljava/lang/Object;
    .end local v22           #initPair:Lgnu/lists/Pair;
    .end local v23           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v29           #key:Ljava/lang/Object;
    .end local v31           #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .end local v34           #nKeywords:I
    .end local v44           #savedPos2:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :goto_d
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v5

    .line 465
    .restart local v11       #args:Ljava/lang/Object;
    .restart local v22       #initPair:Lgnu/lists/Pair;
    .restart local v23       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v29       #key:Ljava/lang/Object;
    .restart local v31       #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .restart local v34       #nKeywords:I
    .restart local v44       #savedPos2:Ljava/lang/Object;
    .restart local v50       #value:Ljava/lang/Object;
    :cond_13
    :try_start_2
    sget-object v7, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v29

    move-object v1, v7

    if-eq v0, v1, :cond_14

    sget-object v7, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v29

    move-object v1, v7

    if-eq v0, v1, :cond_14

    sget-object v7, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v29

    move-object v1, v7

    if-eq v0, v1, :cond_14

    sget-object v7, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v29

    move-object v1, v7

    if-ne v0, v1, :cond_12

    .line 470
    :cond_14
    move-object/from16 v22, v38

    .line 471
    move-object/from16 v23, v32

    goto :goto_c

    .line 478
    .end local v50           #value:Ljava/lang/Object;
    :cond_15
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v7, :cond_16

    if-nez v22, :cond_16

    .line 481
    move-object/from16 v22, v38

    .line 482
    move-object/from16 v23, v32

    goto :goto_c

    .line 484
    :cond_16
    instance-of v7, v11, Lgnu/lists/Pair;

    if-eqz v7, :cond_17

    if-nez v34, :cond_17

    if-nez v22, :cond_17

    if-nez v5, :cond_17

    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v7, :cond_17

    .line 489
    move-object/from16 v49, v29

    .line 490
    .restart local v49       #type:Ljava/lang/Object;
    move-object/from16 v22, v38

    .line 491
    move-object/from16 v23, v32

    .line 492
    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    move-object/from16 v5, v49

    goto :goto_c

    .line 496
    .end local v49           #type:Ljava/lang/Object;
    :cond_17
    const/4 v11, 0x0

    .line 501
    .end local v11           #args:Ljava/lang/Object;
    .end local v29           #key:Ljava/lang/Object;
    .end local v44           #savedPos2:Ljava/lang/Object;
    :cond_18
    if-eqz v22, :cond_19

    .line 503
    add-int/lit8 v25, v24, 0x1

    .end local v24           #init_index:I
    .local v25, init_index:I
    :try_start_3
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    .line 504
    .local v18, d:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/Declaration;

    move v5, v0

    if-eqz v5, :cond_1a

    move-object/from16 v0, v18

    check-cast v0, Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    const-wide/16 v7, 0x800

    move-object/from16 v0, v19

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    move/from16 v27, v5

    .line 507
    .local v27, isStatic:Z
    :goto_e
    add-int/lit8 v24, v25, 0x1

    .end local v25           #init_index:I
    .restart local v24       #init_index:I
    :try_start_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_19

    .line 508
    move-object/from16 v0, v18

    move-object/from16 v1, v37

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    .end local v18           #d:Ljava/lang/Object;
    .end local v22           #initPair:Lgnu/lists/Pair;
    .end local v23           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v27           #isStatic:Z
    .end local v34           #nKeywords:I
    :cond_19
    :goto_f
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 504
    .end local v24           #init_index:I
    .restart local v18       #d:Ljava/lang/Object;
    .restart local v22       #initPair:Lgnu/lists/Pair;
    .restart local v23       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v25       #init_index:I
    .restart local v34       #nKeywords:I
    :cond_1a
    :try_start_5
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_1b

    const/4 v5, 0x1

    move/from16 v27, v5

    goto :goto_e

    :cond_1b
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_e

    .line 511
    .end local v18           #d:Ljava/lang/Object;
    .end local v22           #initPair:Lgnu/lists/Pair;
    .end local v23           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v25           #init_index:I
    .end local v34           #nKeywords:I
    .restart local v24       #init_index:I
    :cond_1c
    :try_start_6
    move-object/from16 v0, v39

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_22

    .line 513
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v41

    .line 518
    .local v41, save_scope:Lgnu/expr/ScopeExp;
    if-eqz v32, :cond_1d

    .line 519
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 520
    :cond_1d
    const-string v5, "*init*"

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 521
    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v5}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 522
    :cond_1e
    move-object v0, v6

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 523
    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v40, v0

    .line 524
    .local v40, saveLambda:Lgnu/expr/LambdaExp;
    move-object v0, v6

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    move-object v5, v0

    move-object/from16 v0, v39

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    if-eqz v31, :cond_21

    if-eqz v32, :cond_1f

    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v9

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v10

    if-eq v9, v10, :cond_21

    :cond_1f
    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v9

    move-object v10, v9

    :goto_10
    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 531
    move-object/from16 v0, v40

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 532
    if-eqz v32, :cond_20

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 534
    :cond_20
    iget-object v6, v6, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 535
    goto/16 :goto_f

    .line 525
    :cond_21
    const/4 v9, 0x0

    move-object v10, v9

    goto :goto_10

    .line 537
    .end local v40           #saveLambda:Lgnu/expr/LambdaExp;
    .end local v41           #save_scope:Lgnu/expr/ScopeExp;
    :cond_22
    const-string v5, "invalid field/method definition"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    .line 547
    .end local v31           #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .end local v32           #memberSyntax:Lkawa/lang/SyntaxForm;
    .end local v38           #pair:Lgnu/lists/Pair;
    .end local v39           #pair_car:Ljava/lang/Object;
    .end local v43           #savedPos1:Ljava/lang/Object;
    :cond_23
    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    if-eqz v5, :cond_24

    .line 548
    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    move-object/from16 v0, v37

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 549
    :cond_24
    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    if-eqz v5, :cond_25

    .line 550
    move-object/from16 v0, v37

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    move-object/from16 v0, v37

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 551
    :cond_25
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 552
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 553
    return-void

    .line 541
    .end local v24           #init_index:I
    .restart local v22       #initPair:Lgnu/lists/Pair;
    .restart local v23       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v25       #init_index:I
    .restart local v31       #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .restart local v32       #memberSyntax:Lkawa/lang/SyntaxForm;
    .restart local v34       #nKeywords:I
    .restart local v38       #pair:Lgnu/lists/Pair;
    .restart local v39       #pair_car:Ljava/lang/Object;
    .restart local v43       #savedPos1:Ljava/lang/Object;
    :catchall_1
    move-exception v5

    move/from16 v24, v25

    .end local v25           #init_index:I
    .restart local v24       #init_index:I
    goto/16 :goto_d
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 39
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 40
    const-string v3, "missing superclass specification in object"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 53
    :goto_0
    return-object v3

    .line 41
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 42
    .local v1, pair:Lgnu/lists/Pair;
    new-instance v0, Lgnu/expr/ObjectExp;

    invoke-direct {v0}, Lgnu/expr/ObjectExp;-><init>()V

    .line 43
    .local v0, oexp:Lgnu/expr/ObjectExp;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 47
    const-string v3, "missing superclass specification after object class name"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pair:Lgnu/lists/Pair;
    check-cast v1, Lgnu/lists/Pair;

    .line 50
    .restart local v1       #pair:Lgnu/lists/Pair;
    :cond_2
    invoke-virtual {p0, v1, v0, p2}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, saved:[Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p0, v2, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    :cond_3
    move-object v3, v0

    .line 53
    goto :goto_0
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 40
    .parameter "pair"
    .parameter "oexp"
    .parameter "tr"

    .prologue
    .line 61
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v37

    .line 63
    .local v37, superlist:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .line 64
    .local v16, components:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 65
    .local v15, classNamePair:Ljava/lang/Object;
    const/16 v25, 0x0

    .line 66
    .local v25, method_list:Lgnu/expr/LambdaExp;
    const/16 v23, 0x0

    .line 67
    .local v23, last_method:Lgnu/expr/LambdaExp;
    const-wide/16 v4, 0x0

    .line 69
    .local v4, classAccessFlag:J
    new-instance v19, Ljava/util/Vector;

    const/16 v3, 0x14

    move-object/from16 v0, v19

    move v1, v3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 70
    .local v19, inits:Ljava/util/Vector;
    move-object/from16 v29, v16

    .end local v15           #classNamePair:Ljava/lang/Object;
    .end local p0
    .local v29, obj:Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v29

    move-object v1, v3

    if-eq v0, v1, :cond_32

    .line 74
    :goto_1
    move-object/from16 v0, v29

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_0

    .line 75
    check-cast v29, Lkawa/lang/SyntaxForm;

    .end local v29           #obj:Ljava/lang/Object;
    invoke-interface/range {v29 .. v29}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v29

    .restart local v29       #obj:Ljava/lang/Object;
    goto :goto_1

    .line 76
    :cond_0
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-nez v3, :cond_1

    .line 78
    const/16 v3, 0x65

    const-string v4, "object member not a list"

    .end local v4           #classAccessFlag:J
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 79
    const/4 v3, 0x0

    .line 321
    :goto_2
    return-object v3

    .line 81
    .restart local v4       #classAccessFlag:J
    :cond_1
    move-object/from16 v0, v29

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 82
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    .line 83
    .local v30, pair_car:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_2

    .line 84
    check-cast v30, Lkawa/lang/SyntaxForm;

    .end local v30           #pair_car:Ljava/lang/Object;
    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    .restart local v30       #pair_car:Ljava/lang/Object;
    goto :goto_3

    .line 85
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v29

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 87
    .local v32, savedPos1:Ljava/lang/Object;
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v3, v0

    if-eqz v3, :cond_9

    .line 89
    :goto_4
    move-object/from16 v0, v29

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_3

    .line 90
    check-cast v29, Lkawa/lang/SyntaxForm;

    .end local v29           #obj:Ljava/lang/Object;
    invoke-interface/range {v29 .. v29}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v29

    .restart local v29       #obj:Ljava/lang/Object;
    goto :goto_4

    .line 91
    :cond_3
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-eqz v3, :cond_9

    .line 93
    sget-object v3, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    move-object v1, v3

    if-ne v0, v1, :cond_5

    .line 95
    move-object/from16 v0, v29

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v30, v0

    .end local v30           #pair_car:Ljava/lang/Object;
    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v39

    .line 96
    .local v39, val:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v39

    move-object v1, v3

    if-ne v0, v1, :cond_4

    .line 97
    const/high16 v3, 0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_5
    check-cast v29, Lgnu/lists/Pair;

    .end local v29           #obj:Ljava/lang/Object;
    invoke-virtual/range {v29 .. v29}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v29

    .line 101
    .restart local v29       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    :cond_4
    const v3, 0x8000

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_5

    .line 104
    .end local v39           #val:Ljava/lang/Object;
    .restart local v30       #pair_car:Ljava/lang/Object;
    :cond_5
    sget-object v3, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    move-object v1, v3

    if-ne v0, v1, :cond_7

    .line 106
    if-eqz v15, :cond_6

    .line 107
    const/16 v3, 0x65

    const-string v6, "duplicate class-name specifiers"

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_6
    move-object/from16 v15, v29

    .line 109
    .restart local v15       #classNamePair:Ljava/lang/Object;
    check-cast v29, Lgnu/lists/Pair;

    .end local v29           #obj:Ljava/lang/Object;
    invoke-virtual/range {v29 .. v29}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v29

    .line 110
    .restart local v29       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 113
    .end local v15           #classNamePair:Ljava/lang/Object;
    :cond_7
    sget-object v3, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    move-object v1, v3

    if-ne v0, v1, :cond_9

    .line 115
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 116
    .local v33, savedPos2:Ljava/lang/Object;
    move-object/from16 v0, v29

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v30, v0

    .end local v30           #pair_car:Ljava/lang/Object;
    invoke-virtual/range {v30 .. v30}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-wide v6, 0x603000000L

    const-string v8, "class"

    move-object/from16 v9, p3

    invoke-static/range {v3 .. v9}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v4

    .line 120
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object v3, v0

    if-nez v3, :cond_8

    .line 121
    const/16 v3, 0x65

    const-string v6, "access specifier for anonymous class"

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 122
    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 123
    check-cast v29, Lgnu/lists/Pair;

    .end local v29           #obj:Ljava/lang/Object;
    invoke-virtual/range {v29 .. v29}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v29

    .line 124
    .restart local v29       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 129
    .end local v33           #savedPos2:Ljava/lang/Object;
    .restart local v30       #pair_car:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-nez v3, :cond_a

    .line 131
    const/16 v3, 0x65

    const-string v4, "object member not a list"

    .end local v4           #classAccessFlag:J
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 134
    .restart local v4       #classAccessFlag:J
    :cond_a
    move-object/from16 v0, v30

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 135
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    .line 136
    :goto_6
    move-object/from16 v0, v30

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_b

    .line 137
    check-cast v30, Lkawa/lang/SyntaxForm;

    .end local v30           #pair_car:Ljava/lang/Object;
    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    .restart local v30       #pair_car:Ljava/lang/Object;
    goto :goto_6

    .line 138
    :cond_b
    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/lang/String;

    move v3, v0

    if-nez v3, :cond_c

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v3, v0

    if-nez v3, :cond_c

    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v3, v0

    if-eqz v3, :cond_2e

    .line 141
    :cond_c
    const/16 v38, 0x0

    .line 142
    .local v38, typePair:Lgnu/lists/Pair;
    move-object/from16 v36, v30

    .line 145
    .local v36, sname:Ljava/lang/Object;
    const/4 v13, 0x0

    .line 146
    .local v13, allocationFlag:I
    const-wide/16 v7, 0x0

    .line 147
    .local v7, accessFlag:J
    move-object/from16 v0, v36

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v3, v0

    if-eqz v3, :cond_d

    .line 149
    const/16 v17, 0x0

    .line 150
    .local v17, decl:Lgnu/expr/Declaration;
    move-object/from16 v14, p1

    .line 160
    :goto_7
    const/16 v28, 0x0

    .line 161
    .local v28, nKeywords:I
    const/16 v35, 0x0

    .line 162
    .local v35, seenInit:Z
    const/16 v18, 0x0

    .local v18, initPair:Lgnu/lists/Pair;
    move-object v3, v14

    .line 163
    :goto_8
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v6, :cond_22

    move-object/from16 p0, v3

    .line 165
    :goto_9
    move-object/from16 v0, p0

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_e

    .line 166
    check-cast p0, Lkawa/lang/SyntaxForm;

    invoke-interface/range {p0 .. p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    .local v14, args:Ljava/lang/Object;
    move-object/from16 p0, v14

    goto :goto_9

    .line 154
    .end local v14           #args:Ljava/lang/Object;
    .end local v17           #decl:Lgnu/expr/Declaration;
    .end local v18           #initPair:Lgnu/lists/Pair;
    .end local v28           #nKeywords:I
    .end local v35           #seenInit:Z
    :cond_d
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v17

    .line 155
    .restart local v17       #decl:Lgnu/expr/Declaration;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 156
    const-wide/32 v9, 0x100000

    move-object/from16 v0, v17

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 157
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .restart local v14       #args:Ljava/lang/Object;
    goto :goto_7

    .line 167
    .end local v14           #args:Ljava/lang/Object;
    .restart local v18       #initPair:Lgnu/lists/Pair;
    .restart local v28       #nKeywords:I
    .restart local v35       #seenInit:Z
    :cond_e
    move-object/from16 v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 168
    move-object/from16 v22, p1

    .line 169
    .local v22, keyPair:Lgnu/lists/Pair;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    .line 170
    .local v21, key:Ljava/lang/Object;
    :goto_a
    move-object/from16 v0, v21

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v3, v0

    if-eqz v3, :cond_f

    .line 171
    check-cast v21, Lkawa/lang/SyntaxForm;

    .end local v21           #key:Ljava/lang/Object;
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v21

    .restart local v21       #key:Ljava/lang/Object;
    goto :goto_a

    .line 172
    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 173
    .restart local v33       #savedPos2:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 174
    .restart local v14       #args:Ljava/lang/Object;
    sget-object v3, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v3, v0

    if-eqz v3, :cond_1f

    :cond_10
    instance-of v3, v14, Lgnu/lists/Pair;

    if-eqz v3, :cond_1f

    .line 177
    add-int/lit8 v28, v28, 0x1

    .line 178
    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 179
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 180
    .local v6, value:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 181
    sget-object v3, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_11

    sget-object v3, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-ne v0, v1, :cond_13

    .line 182
    :cond_11
    move-object/from16 v38, p1

    .line 251
    .end local v6           #value:Ljava/lang/Object;
    :cond_12
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v3, v14

    .line 252
    goto/16 :goto_8

    .line 183
    .restart local v6       #value:Ljava/lang/Object;
    :cond_13
    sget-object v3, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-ne v0, v1, :cond_18

    .line 185
    if-eqz v13, :cond_14

    .line 186
    const/16 v3, 0x65

    const-string v9, "duplicate allocation: specification"

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 187
    :cond_14
    const-string v3, "class"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "static"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 189
    :cond_15
    const/16 v13, 0x800

    goto :goto_b

    .line 190
    :cond_16
    const-string v3, "instance"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 191
    const/16 v13, 0x1000

    goto :goto_b

    .line 193
    :cond_17
    const/16 v3, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown allocation kind \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #value:Ljava/lang/Object;
    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_b

    .line 195
    .restart local v6       #value:Ljava/lang/Object;
    :cond_18
    sget-object v3, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_19

    sget-object v3, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_19

    sget-object v3, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_19

    sget-object v3, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-ne v0, v1, :cond_1b

    .line 200
    :cond_19
    if-eqz v35, :cond_1a

    .line 201
    const/16 v3, 0x65

    const-string v6, "duplicate initialization"

    .end local v6           #value:Ljava/lang/Object;
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 202
    :cond_1a
    const/16 v35, 0x1

    .line 206
    sget-object v3, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-eq v0, v1, :cond_12

    .line 207
    move-object/from16 v18, p1

    goto/16 :goto_b

    .line 209
    .restart local v6       #value:Ljava/lang/Object;
    :cond_1b
    sget-object v3, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-ne v0, v1, :cond_1d

    .line 211
    instance-of v3, v6, Lgnu/expr/Keyword;

    if-nez v3, :cond_1c

    .line 212
    const/16 v3, 0x65

    const-string v6, "invalid \'init-keyword\' - not a keyword"

    .end local v6           #value:Ljava/lang/Object;
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 213
    .restart local v6       #value:Ljava/lang/Object;
    :cond_1c
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-eq v3, v6, :cond_12

    .line 215
    const/16 v3, 0x77

    const-string v6, "init-keyword option ignored"

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 217
    .restart local v6       #value:Ljava/lang/Object;
    :cond_1d
    sget-object v3, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v21

    move-object v1, v3

    if-ne v0, v1, :cond_1e

    .line 219
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 220
    .local v34, savedPos3:Ljava/lang/Object;
    const-wide v9, 0x78f000000L

    const-string v11, "field"

    move-object/from16 v12, p3

    invoke-static/range {v6 .. v12}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v7

    .line 223
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 227
    .end local v34           #savedPos3:Ljava/lang/Object;
    :cond_1e
    const/16 v3, 0x77

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #value:Ljava/lang/Object;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown slot keyword \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_b

    .line 230
    :cond_1f
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v3, :cond_20

    if-nez v35, :cond_20

    .line 233
    move-object/from16 v18, v22

    .line 234
    const/16 v35, 0x1

    goto/16 :goto_b

    .line 236
    :cond_20
    instance-of v3, v14, Lgnu/lists/Pair;

    if-eqz v3, :cond_21

    if-nez v28, :cond_21

    if-nez v35, :cond_21

    if-nez v38, :cond_21

    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v6, :cond_21

    .line 241
    move-object/from16 v38, v22

    .line 242
    move-object/from16 v18, p1

    .line 243
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 244
    const/16 v35, 0x1

    goto/16 :goto_b

    .line 248
    :cond_21
    const/4 v14, 0x0

    move-object v3, v14

    .line 253
    .end local v14           #args:Ljava/lang/Object;
    .end local v21           #key:Ljava/lang/Object;
    .end local v22           #keyPair:Lgnu/lists/Pair;
    .end local v33           #savedPos2:Ljava/lang/Object;
    :cond_22
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v6, :cond_24

    .line 255
    const/16 v4, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v4           #classAccessFlag:J
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid argument list for slot \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " args:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_23

    const-string v3, "null"

    :goto_c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move v1, v4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 257
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 255
    :cond_23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 259
    .restart local v4       #classAccessFlag:J
    :cond_24
    if-eqz v35, :cond_25

    .line 261
    const/16 v3, 0x800

    if-ne v13, v3, :cond_26

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 263
    .local v20, isStatic:Z
    :goto_d
    if-eqz v17, :cond_27

    move-object/from16 v3, v17

    :goto_e
    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 267
    .end local v20           #isStatic:Z
    :cond_25
    if-nez v17, :cond_29

    .line 269
    if-nez v35, :cond_2d

    .line 271
    const/16 v3, 0x65

    const-string v4, "missing field name"

    .end local v4           #classAccessFlag:J
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 272
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 261
    .restart local v4       #classAccessFlag:J
    :cond_26
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_d

    .line 263
    .restart local v20       #isStatic:Z
    :cond_27
    if-eqz v20, :cond_28

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_28
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    .line 277
    .end local v20           #isStatic:Z
    :cond_29
    if-eqz v38, :cond_2a

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 279
    :cond_2a
    if-eqz v13, :cond_2b

    .line 280
    int-to-long v9, v13

    move-object/from16 v0, v17

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 281
    :cond_2b
    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-eqz v3, :cond_2c

    .line 282
    move-object/from16 v0, v17

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 283
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 284
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 308
    .end local v7           #accessFlag:J
    .end local v13           #allocationFlag:I
    .end local v17           #decl:Lgnu/expr/Declaration;
    .end local v18           #initPair:Lgnu/lists/Pair;
    .end local v28           #nKeywords:I
    .end local v35           #seenInit:Z
    .end local v36           #sname:Ljava/lang/Object;
    .end local v38           #typePair:Lgnu/lists/Pair;
    :cond_2d
    :goto_f
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 287
    :cond_2e
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/lists/Pair;

    move v3, v0

    if-eqz v3, :cond_31

    .line 289
    move-object/from16 v0, v30

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v27, v0

    .line 290
    .local v27, mpair:Lgnu/lists/Pair;
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v26

    .line 291
    .local v26, mname:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move v3, v0

    if-nez v3, :cond_2f

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v3, v0

    if-nez v3, :cond_2f

    .line 294
    const/16 v3, 0x65

    const-string v4, "missing method name"

    .end local v4           #classAccessFlag:J
    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 295
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 297
    .restart local v4       #classAccessFlag:J
    :cond_2f
    new-instance v24, Lgnu/expr/LambdaExp;

    invoke-direct/range {v24 .. v24}, Lgnu/expr/LambdaExp;-><init>()V

    .line 298
    .local v24, lexp:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ClassExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v17

    .line 299
    .restart local v17       #decl:Lgnu/expr/Declaration;
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 300
    if-nez v23, :cond_30

    .line 301
    move-object/from16 v25, v24

    .line 304
    :goto_10
    move-object/from16 v23, v24

    .line 305
    goto :goto_f

    .line 303
    :cond_30
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_10

    .line 307
    .end local v17           #decl:Lgnu/expr/Declaration;
    .end local v24           #lexp:Lgnu/expr/LambdaExp;
    .end local v26           #mname:Ljava/lang/Object;
    .end local v27           #mpair:Lgnu/lists/Pair;
    :cond_31
    const/16 v3, 0x65

    const-string v6, "invalid field/method definition"

    move-object/from16 v0, p3

    move v1, v3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_f

    .line 310
    .end local v30           #pair_car:Ljava/lang/Object;
    .end local v32           #savedPos1:Ljava/lang/Object;
    :cond_32
    const-wide/16 v9, 0x0

    cmp-long v3, v4, v9

    if-eqz v3, :cond_33

    .line 311
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object v3, v0

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 313
    :cond_33
    const/4 v3, 0x6

    move v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/4 v3, 0x0

    aput-object p2, v31, v3

    const/4 v3, 0x1

    aput-object v16, v31, v3

    const/4 v3, 0x2

    aput-object v19, v31, v3

    const/4 v3, 0x3

    aput-object v25, v31, v3

    const/4 v3, 0x4

    aput-object v37, v31, v3

    const/4 v3, 0x5

    aput-object v15, v31, v3

    .local v31, result:[Ljava/lang/Object;
    move-object/from16 v3, v31

    .line 321
    goto/16 :goto_2
.end method
