.class public Lorg/apache/xpath/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "WalkerFactory.java"


# static fields
.field public static final BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final BITS_COUNT:I = 0xff

.field public static final BITS_RESERVED:I = 0xf00

.field public static final BIT_ANCESTOR:I = 0x2000

.field public static final BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final BIT_ATTRIBUTE:I = 0x8000

.field public static final BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final BIT_CHILD:I = 0x10000

.field public static final BIT_DESCENDANT:I = 0x20000

.field public static final BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final BIT_FILTER:I = 0x4000000

.field public static final BIT_FOLLOWING:I = 0x80000

.field public static final BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final BIT_MATCH_PATTERN:I = -0x80000000

.field public static final BIT_NAMESPACE:I = 0x200000

.field public static final BIT_NODETEST_ANY:I = 0x40000000

.field public static final BIT_PARENT:I = 0x400000

.field public static final BIT_PRECEDING:I = 0x800000

.field public static final BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final BIT_PREDICATE:I = 0x1000

.field public static final BIT_ROOT:I = 0x8000000

.field public static final BIT_SELF:I = 0x2000000

.field static final DEBUG_ITERATOR_CREATION:Z

.field static final DEBUG_PATTERN_CREATION:Z

.field static final DEBUG_WALKER_CREATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analyze(Lorg/apache/xpath/compiler/Compiler;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/high16 v6, 0x800

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    if-eq v4, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, p1, v3}, Lorg/apache/xpath/axes/WalkerFactory;->analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_NULL_ERROR_HANDLER"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const/high16 v4, 0x400

    or-int/2addr v0, v4

    :goto_0
    const/16 v4, 0x409

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x4000

    or-int/2addr v0, v4

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p1

    if-gez p1, :cond_0

    :cond_3
    and-int/lit16 v4, v2, 0xff

    or-int/2addr v0, v4

    return v0

    :pswitch_2
    or-int/2addr v0, v6

    goto :goto_0

    :pswitch_3
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :pswitch_4
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :pswitch_5
    const v4, 0x8000

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_6
    const/high16 v4, 0x20

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_7
    const/high16 v4, 0x1

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_8
    const/high16 v4, 0x2

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_9
    const/4 v4, 0x2

    if-ne v4, v2, :cond_4

    if-ne v6, v0, :cond_4

    const/high16 v4, 0x2000

    or-int/2addr v0, v4

    :cond_4
    const/high16 v4, 0x4

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_a
    const/high16 v4, 0x8

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_b
    const/high16 v4, 0x10

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_c
    const/high16 v4, 0x80

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_d
    const/high16 v4, 0x100

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_e
    const/high16 v4, 0x40

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_f
    const/high16 v4, 0x200

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_10
    const v4, -0x7fff8000

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_11
    const v4, -0x7fffe000

    or-int/2addr v0, v4

    goto :goto_0

    :pswitch_12
    const/high16 v4, -0x7fc0

    or-int/2addr v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static canCrissCross(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDownOnly(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUpOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canSkipSubtrees(I)Z
    .locals 2

    const/high16 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ER_NULL_ERROR_HANDLER"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/4 v8, 0x0

    packed-switch v10, :pswitch_data_1

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    :goto_0
    const/16 v4, 0x14

    const/16 v5, 0x14

    new-instance v0, Lorg/apache/xpath/patterns/FunctionPattern;

    invoke-direct {v0, v7, v4, v5}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    const/4 v9, 0x1

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    return-object v0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x500

    const/16 v4, 0x13

    const/16 v5, 0x13

    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    const/16 v2, 0x500

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x1000

    const/16 v4, 0xa

    const/16 v5, 0x9

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x4

    const/4 v5, 0x0

    goto :goto_1

    :pswitch_7
    const/16 v4, 0xa

    const/4 v5, 0x3

    goto :goto_1

    :pswitch_8
    const/4 v4, 0x5

    const/4 v5, 0x1

    goto :goto_1

    :pswitch_9
    const/16 v4, 0xd

    const/16 v5, 0xd

    goto :goto_1

    :pswitch_a
    const/4 v4, 0x3

    const/16 v5, 0xa

    goto :goto_1

    :pswitch_b
    const/4 v4, 0x7

    const/16 v5, 0xc

    goto :goto_1

    :pswitch_c
    const/4 v4, 0x6

    const/16 v5, 0xb

    goto :goto_1

    :pswitch_d
    const/16 v4, 0xc

    const/4 v5, 0x7

    goto :goto_1

    :pswitch_e
    const/16 v4, 0xb

    const/4 v5, 0x6

    goto :goto_1

    :pswitch_f
    const/4 v4, 0x1

    const/4 v5, 0x5

    goto :goto_1

    :pswitch_10
    const/4 v4, 0x0

    const/4 v5, 0x4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    const/4 v2, 0x0

    and-int/lit16 v4, p3, 0xff

    const/4 v1, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_NULL_ERROR_HANDLER"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v0, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v0, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    :goto_1
    return-object v0

    :pswitch_2
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v6, 0x13

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-direct {v0, p2, v10}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-direct {v0, p2, v8}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x2

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v6, 0x9

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x3

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_8
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x4

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_9
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x5

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_a
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x6

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_b
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v6, 0x7

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_c
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v6, 0xb

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_d
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v6, 0xc

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_e
    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v6, 0xa

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v6, 0xd

    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v5

    and-int/lit16 v6, v5, 0x1043

    if-eqz v6, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static diagnoseIterator(Ljava/lang/String;ILorg/apache/xpath/compiler/Compiler;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xpath/compiler/Compiler;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 9

    const/4 v7, 0x1

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v8

    add-int/2addr v8, p1

    add-int/lit8 v1, v8, -0x1

    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    add-int/lit8 p1, p1, 0x1

    const/4 v3, 0x0

    move v5, p1

    :goto_0
    if-ge v5, v1, :cond_1

    add-int/lit8 v4, v5, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    :pswitch_0
    return v7

    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAnalysisBitFromAxes(I)I
    .locals 2

    const/high16 v1, 0x400

    const/high16 v0, 0x4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/16 v0, 0x2000

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x4000

    goto :goto_0

    :pswitch_4
    const v0, 0x8000

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x2

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x10

    goto :goto_0

    :pswitch_9
    const/high16 v0, 0x20

    goto :goto_0

    :pswitch_a
    const/high16 v0, 0x40

    goto :goto_0

    :pswitch_b
    const/high16 v0, 0x80

    goto :goto_0

    :pswitch_c
    const/high16 v0, 0x100

    goto :goto_0

    :pswitch_d
    const/high16 v0, 0x200

    goto :goto_0

    :pswitch_e
    const/high16 v0, 0x2000

    goto :goto_0

    :pswitch_f
    const/high16 v0, 0x800

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getAnalysisString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getStepCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v1, 0x4000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const-string v1, "NTANY|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_1

    const-string v1, "PRED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_2

    const-string v1, "ANC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_3

    const-string v1, "ANCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    const-string v1, "ATTR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/high16 v1, 0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const-string v1, "CH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const/high16 v1, 0x2

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/high16 v1, 0x4

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string v1, "DESCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const/high16 v1, 0x8

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    const-string v1, "FOL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const/high16 v1, 0x10

    and-int/2addr v1, p0

    if-eqz v1, :cond_9

    const-string v1, "FOLS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const/high16 v1, 0x20

    and-int/2addr v1, p0

    if-eqz v1, :cond_a

    const-string v1, "NS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const/high16 v1, 0x40

    and-int/2addr v1, p0

    if-eqz v1, :cond_b

    const-string v1, "P|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    const/high16 v1, 0x80

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    const-string v1, "PREC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const/high16 v1, 0x100

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    const-string v1, "PRECS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    const/high16 v1, 0x200

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    const-string v1, ".|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const/high16 v1, 0x400

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "FLT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const/high16 v1, 0x800

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "R|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_NULL_ERROR_HANDLER"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/4 v1, 0x6

    :goto_0
    :pswitch_2
    return v1

    :pswitch_3
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_5
    const/16 v1, 0xc

    goto :goto_0

    :pswitch_6
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_8
    move v1, v2

    goto :goto_0

    :pswitch_9
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x13

    goto :goto_0

    :pswitch_b
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_c
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_d
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_e
    const/16 v1, 0xd

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x14

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public static getStepCount(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static hasPredicate(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAbsolute(I)Z
    .locals 1

    const/high16 v0, 0xc00

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static isDownwardAxisOfMany(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq v0, p0, :cond_0

    const/4 v0, 0x4

    if-eq v0, p0, :cond_0

    const/4 v0, 0x6

    if-eq v0, p0, :cond_0

    const/16 v0, 0xb

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaturalDocOrder(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x20

    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p3}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/high16 v8, 0x20

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_0

    const/high16 v8, 0x18

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x180

    invoke-static {p3, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v8, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    if-eq v8, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "ER_NULL_ERROR_HANDLER"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    if-gez v2, :cond_5

    :cond_4
    move v6, v7

    goto :goto_0

    :pswitch_2
    if-gtz v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    :pswitch_3
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_5
    move p1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isOneStep(I)Z
    .locals 2

    const/4 v0, 0x1

    and-int/lit16 v1, p0, 0xff

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v5, 0x409

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    if-eq v11, v7, :cond_3

    const/16 v10, 0x409

    if-eq v5, v10, :cond_1

    const/16 v10, 0x23

    if-eq v5, v10, :cond_1

    :cond_0
    :goto_1
    :pswitch_0
    return v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v12, :cond_0

    invoke-static {p0, p1, v7}, Lorg/apache/xpath/axes/WalkerFactory;->mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v3

    if-nez v3, :cond_0

    packed-switch v7, :pswitch_data_0

    :pswitch_1
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "ER_NULL_ERROR_HANDLER"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v8

    invoke-static {v11, v9}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_2
    if-ne v9, v6, :cond_0

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepTestType(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v4

    if-gez v4, :cond_4

    :cond_3
    move v8, v9

    goto :goto_1

    :pswitch_3
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x1

    :pswitch_5
    if-eq v12, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_6
    if-ne v9, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v10

    if-eq v11, v10, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result v10

    if-gtz v10, :cond_0

    :cond_5
    move p1, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    add-int/lit8 v0, p1, 0x2

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    :pswitch_2
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_4
    invoke-static {v3}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v4

    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isSet(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWild(I)Z
    .locals 1

    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadOneWalker(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v1, p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    :cond_0
    return-object v0
.end method

.method static loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v5

    :cond_0
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v21

    if-nez v6, :cond_5

    move-object/from16 v6, v21

    :goto_0
    move-object/from16 v7, v21

    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    if-gez p2, :cond_0

    :cond_1
    const/16 v14, 0xd

    const/16 v17, 0xd

    move-object/from16 v23, v21

    move-object/from16 v16, v21

    :goto_1
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v9

    const/4 v2, 0x2

    if-eq v9, v2, :cond_2

    const/16 v2, 0x1000

    if-ne v9, v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    if-ne v9, v2, :cond_6

    const/4 v12, 0x2

    :goto_2
    invoke-static {v14}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v8, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getLocalName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setNamespace(Ljava/lang/String;)V

    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setLocalName(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getPredicates()[Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setWhatToShow(I)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    const/16 v2, 0xb

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_7

    const/16 v2, 0xf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    :cond_3
    :goto_3
    move-object/from16 v16, v8

    :cond_4
    :goto_4
    move v14, v15

    move-object/from16 v23, v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v16

    goto :goto_1

    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    goto/16 :goto_0

    :cond_6
    const/16 v12, 0x9

    goto :goto_2

    :cond_7
    const/4 v2, 0x4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_4

    :cond_9
    const/16 v2, 0x10

    if-ge v14, v2, :cond_a

    new-instance v20, Lorg/apache/xpath/patterns/ContextMatchStepPattern;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;-><init>(II)V

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v19

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    :cond_a
    return-object v21
.end method

.method static loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v3

    if-eq v5, v3, :cond_1

    invoke-static {p1, p2, p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    invoke-virtual {v4, p0}, Lorg/apache/xpath/axes/AxesWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    if-nez v1, :cond_2

    move-object v1, v4

    :goto_0
    move-object v2, v4

    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result p2

    if-gez p2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_0
.end method

.method public static mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v7

    const/4 v1, 0x0

    :goto_1
    const/16 v10, 0x1d

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v11

    if-ne v10, v11, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v7, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_0
    move v5, v9

    :cond_0
    :goto_2
    return v5

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    move v5, v9

    goto :goto_2

    :pswitch_3
    move v5, v9

    goto :goto_2

    :pswitch_4
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v5, v9

    goto :goto_2

    :pswitch_5
    invoke-static {v2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v8

    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v9

    goto :goto_2

    :cond_1
    invoke-static {p0, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v5, v9

    goto :goto_2

    :cond_2
    :pswitch_6
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v1

    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isOneStep(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v3, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    :goto_0
    instance-of v4, v3, Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v4, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    :cond_0
    return-object v3

    :cond_1
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenOnly(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v3, Lorg/apache/xpath/axes/ChildIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/apache/xpath/axes/ChildTestIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksAttributes(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Lorg/apache/xpath/axes/AttributeIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/AttributeIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksNamespaces(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/high16 v4, 0x40

    invoke-static {v0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    new-instance v3, Lorg/apache/xpath/axes/OneStepIteratorForward;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_6
    new-instance v3, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_7
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v3, Lorg/apache/xpath/axes/DescendantIterator;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_0

    :cond_8
    invoke-static {p0, v1, v5, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v3, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    goto :goto_0

    :cond_9
    new-instance v3, Lorg/apache/xpath/axes/WalkingIteratorSorted;

    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIteratorSorted;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    goto :goto_0
.end method

.method public static walksAncestors(I)Z
    .locals 1

    const/16 v0, 0x6000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksAttributes(I)Z
    .locals 1

    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksChildren(I)Z
    .locals 1

    const/high16 v0, 0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksChildrenAndExtraAndSelfOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x800

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

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

.method public static walksChildrenOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x200

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x800

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

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

.method public static walksDescendants(I)Z
    .locals 1

    const/high16 v0, 0x6

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksDescendantsAndExtraAndSelfOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x800

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

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

.method public static walksDownExtraOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksDownOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksExtraNodes(I)Z
    .locals 1

    const v0, 0x208000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksExtraNodesOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x200

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksFilteredList(I)Z
    .locals 1

    const/high16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksFollowingOnlyMaybeAbsolute(I)Z
    .locals 1

    const/high16 v0, 0x218

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksInDocOrder(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksNamespaces(I)Z
    .locals 1

    const/high16 v0, 0x20

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSelfOnly(I)Z
    .locals 1

    const/high16 v0, 0x200

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSideways(I)Z
    .locals 1

    const/high16 v0, 0x198

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtree(I)Z
    .locals 1

    const/high16 v0, 0x7

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksSubtreeOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSubtreeOnlyFromRootOrContext(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x400

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksSubtreeOnlyMaybeAbsolute(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static walksUp(I)Z
    .locals 1

    const v0, 0x406000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    return v0
.end method

.method public static walksUpOnly(I)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
