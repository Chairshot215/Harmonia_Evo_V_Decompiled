.class public Lgnu/expr/LambdaExp;
.super Lgnu/expr/ScopeExp;
.source "LambdaExp.java"


# static fields
.field public static final ATTEMPT_INLINE:I = 0x1000

.field static final CANNOT_INLINE:I = 0x20

.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CLASS_METHOD:I = 0x40

.field static final DEFAULT_CAPTURES_ARG:I = 0x200

.field static final IMPORTS_LEX_VARS:I = 0x8

.field static final INLINE_ONLY:I = 0x2000

.field static final METHODS_COMPILED:I = 0x80

.field static final NEEDS_STATIC_LINK:I = 0x10

.field protected static final NEXT_AVAIL_FLAG:I = 0x4000

.field public static final NO_FIELD:I = 0x100

.field public static final OVERLOADABLE_FIELD:I = 0x800

.field public static final SEQUENCE_RESULT:I = 0x400

.field static searchForKeywordMethod3:Lgnu/bytecode/Method;

.field static searchForKeywordMethod4:Lgnu/bytecode/Method;

.field static final unknownContinuation:Lgnu/expr/ApplyExp;


# instance fields
.field applyMethods:Ljava/util/Vector;

.field argsArray:Lgnu/bytecode/Variable;

.field public body:Lgnu/expr/Expression;

.field capturedVars:Lgnu/expr/Declaration;

.field closureEnv:Lgnu/bytecode/Variable;

.field public closureEnvField:Lgnu/bytecode/Field;

.field public defaultArgs:[Lgnu/expr/Expression;

.field private firstArgsArrayArg:Lgnu/expr/Declaration;

.field public firstChild:Lgnu/expr/LambdaExp;

.field heapFrame:Lgnu/bytecode/Variable;

.field initChain:Lgnu/expr/Initializer;

.field public inlineHome:Lgnu/expr/LambdaExp;

.field public keywords:[Lgnu/expr/Keyword;

.field public max_args:I

.field public min_args:I

.field public nameDecl:Lgnu/expr/Declaration;

.field public nextSibling:Lgnu/expr/LambdaExp;

.field primBodyMethods:[Lgnu/bytecode/Method;

.field primMethods:[Lgnu/bytecode/Method;

.field properties:[Ljava/lang/Object;

.field public returnContinuation:Lgnu/expr/Expression;

.field public returnType:Lgnu/bytecode/Type;

.field selectorValue:I

.field public staticLinkField:Lgnu/bytecode/Field;

.field tailCallers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgnu/expr/LambdaExp;",
            ">;"
        }
    .end annotation
.end field

.field thisValue:Lgnu/mapping/Procedure;

.field thisVariable:Lgnu/bytecode/Variable;

.field throwsSpecification:[Lgnu/expr/Expression;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v0, v2

    check-cast v0, Lgnu/expr/Expression;

    move-object v1, v0

    invoke-direct {v3, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    sput-object v3, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "args"

    .prologue
    .line 476
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 477
    iput p1, p0, Lgnu/expr/LambdaExp;->min_args:I

    .line 478
    iput p1, p0, Lgnu/expr/LambdaExp;->max_args:I

    .line 479
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 483
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 484
    iput-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 485
    return-void
.end method


# virtual methods
.method final addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 4
    .parameter "comp"
    .parameter "field"

    .prologue
    .line 624
    move-object v1, p0

    .line 625
    .local v1, owner:Lgnu/expr/LambdaExp;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 642
    :cond_0
    :goto_0
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 643
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    .line 644
    :cond_1
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 645
    return-void

    .line 633
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 634
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3

    iget-object v2, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    .line 638
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 639
    .local v0, frameType:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    goto :goto_0
.end method

.method addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 59
    .parameter "ctype"
    .parameter "comp"
    .parameter "closureEnvType"

    .prologue
    .line 805
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v36

    .line 806
    .local v36, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v42

    .line 808
    .local v42, outer:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v56, v0

    if-nez v56, :cond_12

    const/16 v56, 0x0

    move/from16 v25, v56

    .line 809
    .local v25, key_args:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    if-nez v56, :cond_13

    const/16 v56, 0x0

    move/from16 v41, v56

    .line 810
    .local v41, opt_args:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v56, v0

    move/from16 v0, v56

    and-int/lit16 v0, v0, 0x200

    move/from16 v56, v0

    if-eqz v56, :cond_14

    const/16 v56, 0x0

    move/from16 v40, v56

    .line 812
    .local v40, numStubs:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v56, v0

    if-ltz v56, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v56, v0

    add-int v56, v56, v40

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ge v0, v1, :cond_15

    :cond_0
    const/16 v56, 0x1

    move/from16 v54, v56

    .line 814
    .local v54, varArgs:Z
    :goto_3
    add-int/lit8 v56, v40, 0x1

    move/from16 v0, v56

    new-array v0, v0, [Lgnu/bytecode/Method;

    move-object/from16 v31, v0

    .line 818
    .local v31, methods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v56, v0

    if-nez v56, :cond_1

    .line 820
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 824
    :cond_1
    const/16 v20, 0x0

    .line 825
    .local v20, isInitMethod:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    if-eqz v56, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    const-wide/16 v57, 0x1000

    invoke-virtual/range {v56 .. v58}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v56

    if-eqz v56, :cond_16

    .line 827
    const/16 v21, 0x0

    .line 858
    .local v21, isStatic:Z
    :cond_2
    :goto_4
    new-instance v38, Ljava/lang/StringBuffer;

    const/16 v56, 0x3c

    move-object/from16 v0, v38

    move/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 859
    .local v38, nameBuf:Ljava/lang/StringBuffer;
    if-eqz v21, :cond_20

    const/16 v56, 0x8

    move/from16 v33, v56

    .line 860
    .local v33, mflags:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    if-eqz v56, :cond_3

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v56

    if-eqz v56, :cond_21

    .line 863
    or-int/lit8 v33, v33, 0x1

    .line 872
    :cond_3
    :goto_6
    invoke-virtual/range {v42 .. v42}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v56

    if-nez v56, :cond_4

    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v56, v0

    if-eqz v56, :cond_5

    :cond_4
    if-nez v36, :cond_6

    .line 875
    :cond_5
    const-string v56, "lambda"

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    move-object/from16 v0, p2

    iget v0, v0, Lgnu/expr/Compilation;->method_counter:I

    move/from16 v56, v0

    add-int/lit8 v56, v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p2

    iput v0, v1, Lgnu/expr/Compilation;->method_counter:I

    move-object/from16 v0, v38

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 878
    :cond_6
    const/16 v56, 0x43

    move/from16 v0, v20

    move/from16 v1, v56

    if-ne v0, v1, :cond_24

    .line 879
    const-string v56, "<clinit>"

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    :cond_7
    :goto_7
    const/16 v56, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v56

    if-eqz v56, :cond_8

    .line 883
    const-string v56, "$C"

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v56

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_25

    if-nez v20, :cond_25

    const/16 v56, 0x1

    move/from16 v55, v56

    .line 887
    .local v55, withContext:Z
    :goto_8
    if-eqz v20, :cond_9

    .line 889
    if-eqz v21, :cond_26

    .line 893
    and-int/lit8 v56, v33, -0x3

    add-int/lit8 v33, v56, 0x1

    .line 902
    :cond_9
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v56

    if-nez v56, :cond_a

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v56

    if-eqz v56, :cond_b

    .line 903
    :cond_a
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x400

    move/from16 v33, v0

    .line 907
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v56

    if-eqz v56, :cond_c

    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v56, v0

    if-eqz v56, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v57, v0

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_c

    .line 910
    const/16 v19, 0x0

    .line 911
    .local v19, inherited:[Lgnu/bytecode/Method;
    const/16 v18, 0x0

    .line 913
    .local v18, iarg:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v43

    .line 916
    .local v43, param:Lgnu/expr/Declaration;
    :goto_a
    if-nez v43, :cond_27

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v56, v0

    if-eqz v56, :cond_2a

    .line 973
    .end local v18           #iarg:I
    .end local v19           #inherited:[Lgnu/bytecode/Method;
    .end local v43           #param:Lgnu/expr/Declaration;
    :cond_c
    :goto_b
    const/16 v56, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v56

    if-nez v56, :cond_d

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v56

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_32

    :cond_d
    sget-object v56, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v47, v56

    .line 978
    .local v47, rtype:Lgnu/bytecode/Type;
    :goto_c
    if-eqz p3, :cond_33

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_33

    const/16 v56, 0x1

    move/from16 v15, v56

    .line 980
    .local v15, extraArg:I
    :goto_d
    const/4 v9, 0x0

    .line 981
    .local v9, ctxArg:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v56

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_e

    if-nez v20, :cond_e

    .line 983
    const/4 v9, 0x1

    .line 985
    :cond_e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    .line 986
    .local v37, nameBaseLength:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v40

    if-gt v0, v1, :cond_4b

    .line 988
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 989
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v56, v0

    add-int v44, v56, v17

    .line 990
    .local v44, plainArgs:I
    move/from16 v39, v44

    .line 991
    .local v39, numArgs:I
    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_f

    if-eqz v54, :cond_f

    .line 992
    add-int/lit8 v39, v39, 0x1

    .line 993
    :cond_f
    add-int v56, v15, v39

    add-int v56, v56, v9

    move/from16 v0, v56

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 994
    .local v6, atypes:[Lgnu/bytecode/Type;
    if-lez v15, :cond_10

    .line 995
    const/16 v56, 0x0

    aput-object p3, v6, v56

    .line 996
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v53

    .line 997
    .local v53, var:Lgnu/expr/Declaration;
    if-eqz v53, :cond_11

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v56

    if-eqz v56, :cond_11

    .line 998
    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v53

    .line 999
    :cond_11
    const/16 v22, 0x0

    .local v22, itype:I
    move/from16 v23, v22

    .end local v22           #itype:I
    .local v23, itype:I
    :goto_f
    move/from16 v0, v23

    move/from16 v1, v44

    if-ge v0, v1, :cond_34

    .line 1000
    add-int/lit8 v22, v23, 0x1

    .end local v23           #itype:I
    .restart local v22       #itype:I
    add-int v56, v15, v23

    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v57

    aput-object v57, v6, v56

    .line 999
    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v53

    move/from16 v23, v22

    .end local v22           #itype:I
    .restart local v23       #itype:I
    goto :goto_f

    .line 808
    .end local v6           #atypes:[Lgnu/bytecode/Type;
    .end local v9           #ctxArg:I
    .end local v15           #extraArg:I
    .end local v17           #i:I
    .end local v20           #isInitMethod:C
    .end local v21           #isStatic:Z
    .end local v23           #itype:I
    .end local v25           #key_args:I
    .end local v31           #methods:[Lgnu/bytecode/Method;
    .end local v33           #mflags:I
    .end local v37           #nameBaseLength:I
    .end local v38           #nameBuf:Ljava/lang/StringBuffer;
    .end local v39           #numArgs:I
    .end local v40           #numStubs:I
    .end local v41           #opt_args:I
    .end local v44           #plainArgs:I
    .end local v47           #rtype:Lgnu/bytecode/Type;
    .end local v53           #var:Lgnu/expr/Declaration;
    .end local v54           #varArgs:Z
    .end local v55           #withContext:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v56, v0

    move/from16 v25, v56

    goto/16 :goto_0

    .line 809
    .restart local v25       #key_args:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v56, v0

    sub-int v56, v56, v25

    move/from16 v41, v56

    goto/16 :goto_1

    .restart local v41       #opt_args:I
    :cond_14
    move/from16 v40, v41

    .line 810
    goto/16 :goto_2

    .line 812
    .restart local v40       #numStubs:I
    :cond_15
    const/16 v56, 0x0

    move/from16 v54, v56

    goto/16 :goto_3

    .line 828
    .restart local v20       #isInitMethod:C
    .restart local v31       #methods:[Lgnu/bytecode/Method;
    .restart local v54       #varArgs:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    if-eqz v56, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    const-wide/16 v57, 0x800

    invoke-virtual/range {v56 .. v58}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v56

    if-eqz v56, :cond_17

    .line 830
    const/16 v21, 0x1

    .restart local v21       #isStatic:Z
    goto/16 :goto_4

    .line 831
    .end local v21           #isStatic:Z
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v56

    if-eqz v56, :cond_1b

    .line 833
    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v56, v0

    if-eqz v56, :cond_1a

    .line 835
    move-object/from16 v0, v42

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v7, v0

    .line 836
    .local v7, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v56

    if-eqz v56, :cond_18

    if-eqz p3, :cond_18

    const/16 v56, 0x1

    move/from16 v21, v56

    .line 837
    .restart local v21       #isStatic:Z
    :goto_10
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_19

    .line 838
    const/16 v20, 0x49

    goto/16 :goto_4

    .line 836
    .end local v21           #isStatic:Z
    :cond_18
    const/16 v56, 0x0

    move/from16 v21, v56

    goto :goto_10

    .line 839
    .restart local v21       #isStatic:Z
    :cond_19
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    if-ne v0, v1, :cond_2

    .line 841
    const/16 v20, 0x43

    .line 842
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 846
    .end local v7           #cl:Lgnu/expr/ClassExp;
    .end local v21           #isStatic:Z
    :cond_1a
    const/16 v21, 0x0

    .restart local v21       #isStatic:Z
    goto/16 :goto_4

    .line 848
    .end local v21           #isStatic:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v56, v0

    if-nez v56, :cond_1c

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1d

    .line 849
    :cond_1c
    const/16 v21, 0x0

    .restart local v21       #isStatic:Z
    goto/16 :goto_4

    .line 850
    .end local v21           #isStatic:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    if-eqz v56, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v56, v0

    if-eqz v56, :cond_1f

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    check-cast v32, Lgnu/expr/ModuleExp;

    .line 853
    .local v32, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual/range {v32 .. v32}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v56

    if-nez v56, :cond_1e

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v56

    if-nez v56, :cond_1e

    const/16 v56, 0x1

    move/from16 v21, v56

    .line 854
    .restart local v21       #isStatic:Z
    :goto_11
    goto/16 :goto_4

    .line 853
    .end local v21           #isStatic:Z
    :cond_1e
    const/16 v56, 0x0

    move/from16 v21, v56

    goto :goto_11

    .line 856
    .end local v32           #mexp:Lgnu/expr/ModuleExp;
    :cond_1f
    const/16 v21, 0x1

    .restart local v21       #isStatic:Z
    goto/16 :goto_4

    .line 859
    .restart local v38       #nameBuf:Ljava/lang/StringBuffer;
    :cond_20
    const/16 v56, 0x0

    move/from16 v33, v56

    goto/16 :goto_5

    .line 866
    .restart local v33       #mflags:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v56

    if-eqz v56, :cond_23

    const/16 v56, 0x0

    move/from16 v12, v56

    .line 867
    .local v12, defaultFlag:S
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v56

    if-eqz v56, :cond_22

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v12

    .line 869
    :cond_22
    or-int v33, v33, v12

    goto/16 :goto_6

    .line 866
    .end local v12           #defaultFlag:S
    :cond_23
    const/16 v56, 0x1

    move/from16 v12, v56

    goto :goto_12

    .line 880
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v56

    if-eqz v56, :cond_7

    .line 881
    invoke-static/range {v36 .. v36}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 884
    :cond_25
    const/16 v56, 0x0

    move/from16 v55, v56

    goto/16 :goto_8

    .line 899
    .restart local v55       #withContext:Z
    :cond_26
    and-int/lit8 v56, v33, 0x2

    add-int/lit8 v33, v56, 0x2

    goto/16 :goto_9

    .line 921
    .restart local v18       #iarg:I
    .restart local v19       #inherited:[Lgnu/bytecode/Method;
    .restart local v43       #param:Lgnu/expr/Declaration;
    :cond_27
    invoke-virtual/range {v43 .. v43}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v56

    if-eqz v56, :cond_29

    .line 923
    add-int/lit8 v18, v18, -0x1

    .line 914
    :cond_28
    invoke-virtual/range {v43 .. v43}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v43

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 926
    :cond_29
    const-wide/16 v56, 0x2000

    move-object/from16 v0, v43

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v56

    if-nez v56, :cond_28

    .line 928
    :cond_2a
    if-nez v19, :cond_2b

    .line 930
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    .line 931
    .local v29, mangled:Ljava/lang/String;
    new-instance v16, Lgnu/expr/LambdaExp$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lgnu/expr/LambdaExp$1;-><init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V

    .line 942
    .local v16, filter:Lgnu/bytecode/Filter;
    const/16 v56, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v19

    .line 944
    .end local v16           #filter:Lgnu/bytecode/Filter;
    .end local v29           #mangled:Ljava/lang/String;
    :cond_2b
    const/16 v51, 0x0

    .line 945
    .local v51, type:Lgnu/bytecode/Type;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17       #i:I
    :cond_2c
    :goto_13
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_2f

    .line 947
    aget-object v30, v19, v17

    .line 948
    .local v30, method:Lgnu/bytecode/Method;
    if-nez v43, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v56

    move-object/from16 v45, v56

    .line 950
    .local v45, ptype:Lgnu/bytecode/Type;
    :goto_14
    if-nez v51, :cond_2e

    .line 951
    move-object/from16 v51, v45

    goto :goto_13

    .line 948
    .end local v45           #ptype:Lgnu/bytecode/Type;
    :cond_2d
    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v56

    aget-object v56, v56, v18

    move-object/from16 v45, v56

    goto :goto_14

    .line 952
    .restart local v45       #ptype:Lgnu/bytecode/Type;
    :cond_2e
    move-object/from16 v0, v45

    move-object/from16 v1, v51

    if-eq v0, v1, :cond_2c

    .line 955
    if-nez v43, :cond_28

    goto/16 :goto_b

    .line 961
    .end local v30           #method:Lgnu/bytecode/Method;
    .end local v45           #ptype:Lgnu/bytecode/Type;
    :cond_2f
    if-eqz v51, :cond_30

    .line 963
    if-eqz v43, :cond_31

    .line 964
    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 968
    :cond_30
    :goto_15
    if-nez v43, :cond_28

    goto/16 :goto_b

    .line 966
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_15

    .line 973
    .end local v17           #i:I
    .end local v18           #iarg:I
    .end local v19           #inherited:[Lgnu/bytecode/Method;
    .end local v43           #param:Lgnu/expr/Declaration;
    .end local v51           #type:Lgnu/bytecode/Type;
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v56

    move-object/from16 v47, v56

    goto/16 :goto_c

    .line 978
    .restart local v47       #rtype:Lgnu/bytecode/Type;
    :cond_33
    const/16 v56, 0x0

    move/from16 v15, v56

    goto/16 :goto_d

    .line 1001
    .restart local v6       #atypes:[Lgnu/bytecode/Type;
    .restart local v9       #ctxArg:I
    .restart local v15       #extraArg:I
    .restart local v17       #i:I
    .restart local v23       #itype:I
    .restart local v37       #nameBaseLength:I
    .restart local v39       #numArgs:I
    .restart local v44       #plainArgs:I
    .restart local v53       #var:Lgnu/expr/Declaration;
    :cond_34
    if-eqz v9, :cond_35

    .line 1002
    move-object v0, v6

    array-length v0, v0

    move/from16 v56, v0

    const/16 v57, 0x1

    sub-int v56, v56, v57

    sget-object v57, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v57, v6, v56

    .line 1003
    :cond_35
    move/from16 v0, v44

    move/from16 v1, v39

    if-ge v0, v1, :cond_38

    .line 1005
    invoke-virtual/range {v53 .. v53}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v26

    .line 1006
    .local v26, lastType:Lgnu/bytecode/Type;
    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1007
    .local v27, lastTypeName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v56

    const/high16 v57, 0x31

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_3b

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v56, v0

    if-eqz v56, :cond_3b

    .line 1009
    move/from16 v0, v33

    or-int/lit16 v0, v0, 0x80

    move/from16 v33, v0

    .line 1012
    :goto_16
    if-gtz v25, :cond_36

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_36

    const-string v56, "gnu.lists.LList"

    move-object/from16 v0, v56

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_37

    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v56, v0

    if-nez v56, :cond_37

    .line 1021
    :cond_36
    sget-object v26, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 1022
    new-instance v56, Lgnu/bytecode/Variable;

    const-string v57, "argsArray"

    sget-object v58, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-direct/range {v56 .. v58}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1026
    :cond_37
    move-object/from16 v0, v53

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    .line 1027
    move-object v0, v6

    array-length v0, v0

    move/from16 v56, v0

    if-eqz v55, :cond_3c

    const/16 v57, 0x2

    :goto_17
    sub-int v56, v56, v57

    aput-object v26, v6, v56

    .line 1029
    .end local v26           #lastType:Lgnu/bytecode/Type;
    .end local v27           #lastTypeName:Ljava/lang/String;
    :cond_38
    if-eqz v55, :cond_39

    .line 1030
    const-string v56, "$X"

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    :cond_39
    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v56, v0

    if-nez v56, :cond_3a

    move-object/from16 v0, v42

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v56, v0

    if-eqz v56, :cond_3d

    move-object/from16 v0, v42

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object/from16 v43, v0

    const/high16 v56, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v56

    if-eqz v56, :cond_3d

    :cond_3a
    const/16 v56, 0x1

    move/from16 v8, v56

    .line 1037
    .local v8, classSpecified:Z
    :goto_18
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1044
    const/16 v46, 0x0

    .line 1045
    .local v46, renameCount:I
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    .line 1049
    .local v28, len:I
    :goto_19
    move-object/from16 v48, p1

    .local v48, t:Lgnu/bytecode/ClassType;
    :goto_1a
    if-eqz v48, :cond_3f

    .line 1051
    move-object/from16 v0, v48

    move-object/from16 v1, v36

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v56

    if-eqz v56, :cond_3e

    .line 1053
    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1054
    const/16 v56, 0x24

    move-object/from16 v0, v38

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1055
    add-int/lit8 v46, v46, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1057
    goto :goto_19

    .line 1011
    .end local v8           #classSpecified:Z
    .end local v28           #len:I
    .end local v46           #renameCount:I
    .end local v48           #t:Lgnu/bytecode/ClassType;
    .restart local v26       #lastType:Lgnu/bytecode/Type;
    .restart local v27       #lastTypeName:Ljava/lang/String;
    :cond_3b
    const-string v56, "$V"

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_16

    .line 1027
    :cond_3c
    const/16 v57, 0x1

    goto :goto_17

    .line 1032
    .end local v26           #lastType:Lgnu/bytecode/Type;
    .end local v27           #lastTypeName:Ljava/lang/String;
    :cond_3d
    const/16 v56, 0x0

    move/from16 v8, v56

    goto :goto_18

    .line 1059
    .restart local v8       #classSpecified:Z
    .restart local v28       #len:I
    .restart local v46       #renameCount:I
    .restart local v48       #t:Lgnu/bytecode/ClassType;
    :cond_3e
    if-eqz v8, :cond_43

    .line 1066
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object v2, v6

    move-object/from16 v3, v47

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v30

    .line 1067
    .restart local v30       #method:Lgnu/bytecode/Method;
    aput-object v30, v31, v17

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    if-eqz v56, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v56, v0

    if-lez v56, :cond_4a

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v35, v0

    .line 1072
    .local v35, n:I
    move/from16 v0, v35

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    move-object v14, v0

    .line 1073
    .local v14, exceptions:[Lgnu/bytecode/ClassType;
    const/16 v24, 0x0

    .local v24, j:I
    :goto_1b
    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_49

    .line 1075
    const/4 v13, 0x0

    .line 1076
    .local v13, exception:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    move-object/from16 v56, v0

    aget-object v49, v56, v24

    .line 1077
    .local v49, throwsExpr:Lgnu/expr/Expression;
    const/16 v34, 0x0

    .line 1078
    .local v34, msg:Ljava/lang/String;
    move-object/from16 v0, v49

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v56, v0

    if-eqz v56, :cond_46

    .line 1080
    move-object/from16 v0, v49

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v50, v0

    .line 1081
    .local v50, throwsRef:Lgnu/expr/ReferenceExp;
    invoke-virtual/range {v50 .. v50}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v10

    .line 1082
    .local v10, decl:Lgnu/expr/Declaration;
    if-eqz v10, :cond_45

    .line 1084
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    .line 1085
    .local v11, declValue:Lgnu/expr/Expression;
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v56, v0

    if-eqz v56, :cond_44

    .line 1086
    check-cast v11, Lgnu/expr/ClassExp;

    .end local v11           #declValue:Lgnu/expr/Expression;
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v13

    .line 1106
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v50           #throwsRef:Lgnu/expr/ReferenceExp;
    :cond_40
    :goto_1c
    if-nez v13, :cond_41

    if-nez v34, :cond_41

    .line 1107
    const-string v34, "invalid throws specification"

    .line 1108
    :cond_41
    if-eqz v34, :cond_42

    .line 1110
    const/16 v56, 0x65

    move-object/from16 v0, p2

    move/from16 v1, v56

    move-object/from16 v2, v34

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 1111
    sget-object v13, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 1113
    :cond_42
    aput-object v13, v14, v24

    .line 1073
    add-int/lit8 v24, v24, 0x1

    goto :goto_1b

    .line 1049
    .end local v13           #exception:Lgnu/bytecode/ClassType;
    .end local v14           #exceptions:[Lgnu/bytecode/ClassType;
    .end local v24           #j:I
    .end local v30           #method:Lgnu/bytecode/Method;
    .end local v34           #msg:Ljava/lang/String;
    .end local v35           #n:I
    .end local v49           #throwsExpr:Lgnu/expr/Expression;
    :cond_43
    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v48

    goto/16 :goto_1a

    .line 1089
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v11       #declValue:Lgnu/expr/Expression;
    .restart local v13       #exception:Lgnu/bytecode/ClassType;
    .restart local v14       #exceptions:[Lgnu/bytecode/ClassType;
    .restart local v24       #j:I
    .restart local v30       #method:Lgnu/bytecode/Method;
    .restart local v34       #msg:Ljava/lang/String;
    .restart local v35       #n:I
    .restart local v49       #throwsExpr:Lgnu/expr/Expression;
    .restart local v50       #throwsRef:Lgnu/expr/ReferenceExp;
    :cond_44
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "throws specification "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " has non-class lexical binding"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto :goto_1c

    .line 1093
    .end local v11           #declValue:Lgnu/expr/Expression;
    :cond_45
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "unknown class "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v50 .. v50}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto :goto_1c

    .line 1095
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v50           #throwsRef:Lgnu/expr/ReferenceExp;
    :cond_46
    move-object/from16 v0, v49

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v56, v0

    if-eqz v56, :cond_40

    .line 1097
    move-object/from16 v0, v49

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v52

    .line 1098
    .local v52, value:Ljava/lang/Object;
    move-object/from16 v0, v52

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v56, v0

    if-eqz v56, :cond_47

    .line 1099
    check-cast v52, Ljava/lang/Class;

    .end local v52           #value:Ljava/lang/Object;
    invoke-static/range {v52 .. v52}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v52

    .line 1100
    :cond_47
    move-object/from16 v0, v52

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v56, v0

    if-eqz v56, :cond_48

    .line 1101
    move-object/from16 v0, v52

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v13, v0

    .line 1102
    :cond_48
    if-eqz v13, :cond_40

    sget-object v56, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    move-object v0, v13

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v56

    if-nez v56, :cond_40

    .line 1104
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " does not extend Throwable"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1c

    .line 1115
    .end local v13           #exception:Lgnu/bytecode/ClassType;
    .end local v34           #msg:Ljava/lang/String;
    .end local v49           #throwsExpr:Lgnu/expr/Expression;
    :cond_49
    new-instance v5, Lgnu/bytecode/ExceptionsAttr;

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 1116
    .local v5, attr:Lgnu/bytecode/ExceptionsAttr;
    invoke-virtual {v5, v14}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    .line 986
    .end local v5           #attr:Lgnu/bytecode/ExceptionsAttr;
    .end local v14           #exceptions:[Lgnu/bytecode/ClassType;
    .end local v24           #j:I
    .end local v35           #n:I
    :cond_4a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e

    .line 1119
    .end local v6           #atypes:[Lgnu/bytecode/Type;
    .end local v8           #classSpecified:Z
    .end local v23           #itype:I
    .end local v28           #len:I
    .end local v30           #method:Lgnu/bytecode/Method;
    .end local v39           #numArgs:I
    .end local v44           #plainArgs:I
    .end local v46           #renameCount:I
    .end local v48           #t:Lgnu/bytecode/ClassType;
    .end local v53           #var:Lgnu/expr/Declaration;
    :cond_4b
    return-void
.end method

.method addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 3
    .parameter "comp"
    .parameter "closureEnvType"

    .prologue
    .line 789
    move-object v1, p0

    .line 790
    .local v1, sc:Lgnu/expr/ScopeExp;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-nez v2, :cond_0

    .line 791
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    .line 795
    :cond_0
    if-eqz v1, :cond_1

    .line 796
    check-cast v1, Lgnu/expr/ClassExp;

    .end local v1           #sc:Lgnu/expr/ScopeExp;
    iget-object v0, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .line 799
    .local v0, ctype:Lgnu/bytecode/ClassType;
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 800
    return-void

    .line 798
    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    .restart local v1       #sc:Lgnu/expr/ScopeExp;
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .restart local v0       #ctype:Lgnu/bytecode/ClassType;
    goto :goto_1
.end method

.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 10
    .parameter "comp"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1124
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v1

    .line 1126
    .local v1, main:Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1127
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1132
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_1

    .line 1134
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    iget-object v6, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-nez v5, :cond_3

    if-nez v0, :cond_2

    .line 1142
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "$ctx"

    invoke-virtual {v5, v8, v6, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 1146
    .local v2, var:Lgnu/bytecode/Variable;
    invoke-virtual {v2, v9}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1148
    .end local v2           #var:Lgnu/bytecode/Variable;
    :cond_2
    if-nez v0, :cond_5

    .line 1180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 1182
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 1184
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1185
    return-void

    .line 1136
    :cond_3
    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 1150
    :cond_5
    iget-object v2, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1152
    .restart local v2       #var:Lgnu/bytecode/Variable;
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1177
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1178
    goto :goto_0

    .line 1155
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1159
    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v2

    goto :goto_2

    .line 1169
    :cond_8
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1171
    .local v3, vname:Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1172
    .local v4, vtype:Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    invoke-virtual {v5, v8, v4, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .end local v2           #var:Lgnu/bytecode/Variable;
    iput-object v2, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1174
    .restart local v2       #var:Lgnu/bytecode/Variable;
    invoke-virtual {v2, v9}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_2
.end method

.method allocChildMethods(Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "comp"

    .prologue
    .line 1206
    iget-object v1, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v1, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v1, :cond_5

    .line 1209
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v5, :cond_0

    .line 1212
    invoke-virtual {v1, p0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 1214
    :cond_0
    instance-of v5, v1, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_2

    .line 1216
    move-object v0, v1

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v2, v0

    .line 1217
    .local v2, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v2}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1220
    instance-of v5, p0, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_1

    instance-of v5, p0, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_3

    .line 1221
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    .line 1229
    .local v4, parentFrameType:Lgnu/bytecode/ClassType;
    :goto_1
    iget-object v5, v2, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v4}, Lgnu/bytecode/ClassType;->setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v2, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    iput-object v5, v2, Lgnu/expr/ClassExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1207
    .end local v2           #cl:Lgnu/expr/ClassExp;
    .end local v4           #parentFrameType:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 1224
    .restart local v2       #cl:Lgnu/expr/ClassExp;
    :cond_3
    iget-object v5, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v3, v5

    .line 1227
    .local v3, parentFrame:Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    .restart local v4       #parentFrameType:Lgnu/bytecode/ClassType;
    goto :goto_1

    .line 1224
    .end local v3           #parentFrame:Lgnu/bytecode/Variable;
    .end local v4           #parentFrameType:Lgnu/bytecode/ClassType;
    :cond_4
    iget-object v5, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v3, v5

    goto :goto_2

    .line 1234
    .end local v2           #cl:Lgnu/expr/ClassExp;
    :cond_5
    return-void
.end method

.method allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 14
    .parameter "comp"

    .prologue
    .line 573
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_0

    .line 574
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 619
    :goto_0
    return-object v11

    .line 575
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v7

    .line 576
    .local v7, needsClosure:Z
    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v5, v11

    .line 578
    .local v5, frameType:Lgnu/bytecode/ClassType;
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_8

    const-string v11, "lambda"

    move-object v3, v11

    .line 581
    .local v3, fname:Ljava/lang/String;
    :goto_2
    const/16 v1, 0x10

    .line 582
    .local v1, fflags:I
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v11, v11, Lgnu/expr/ModuleExp;

    if-eqz v11, :cond_a

    .line 584
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v0

    .line 585
    .local v0, external_access:Z
    if-eqz v0, :cond_1

    .line 586
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$Prvt$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    :cond_1
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v12, 0x800

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 589
    or-int/lit8 v1, v1, 0x8

    .line 593
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v11, Lgnu/expr/ModuleExp;

    invoke-virtual {v11}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v11

    if-nez v11, :cond_2

    .line 594
    and-int/lit8 v1, v1, -0x11

    .line 599
    :cond_2
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v0, :cond_3

    iget-boolean v11, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v11, :cond_4

    .line 600
    :cond_3
    or-int/lit8 v1, v1, 0x1

    .line 601
    :cond_4
    iget v11, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_5

    .line 603
    move-object v4, v3

    .line 604
    .local v4, fname0:Ljava/lang/String;
    iget v11, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v12, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v11, v12, :cond_9

    iget v11, p0, Lgnu/expr/LambdaExp;->min_args:I

    move v9, v11

    .line 605
    .local v9, suffix:I
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v10, v9, 0x1

    .end local v9           #suffix:I
    .local v10, suffix:I
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v11

    if-nez v11, :cond_b

    .line 615
    .end local v0           #external_access:Z
    .end local v4           #fname0:Ljava/lang/String;
    .end local v10           #suffix:I
    :cond_5
    :goto_4
    sget-object v8, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 616
    .local v8, rtype:Lgnu/bytecode/Type;
    invoke-virtual {v5, v3, v8, v1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v2

    .line 617
    .local v2, field:Lgnu/bytecode/Field;
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_6

    .line 618
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iput-object v2, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    :cond_6
    move-object v11, v2

    .line 619
    goto/16 :goto_0

    .line 576
    .end local v1           #fflags:I
    .end local v2           #field:Lgnu/bytecode/Field;
    .end local v3           #fname:Ljava/lang/String;
    .end local v5           #frameType:Lgnu/bytecode/ClassType;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #rtype:Lgnu/bytecode/Type;
    :cond_7
    iget-object v11, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v5, v11

    goto/16 :goto_1

    .line 579
    .restart local v5       #frameType:Lgnu/bytecode/ClassType;
    .restart local v6       #name:Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    goto/16 :goto_2

    .line 604
    .restart local v0       #external_access:Z
    .restart local v1       #fflags:I
    .restart local v3       #fname:Ljava/lang/String;
    .restart local v4       #fname0:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x1

    move v9, v11

    goto :goto_3

    .line 611
    .end local v0           #external_access:Z
    .end local v4           #fname0:Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$Fn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    if-nez v7, :cond_5

    .line 613
    or-int/lit8 v1, v1, 0x8

    goto :goto_4

    .restart local v0       #external_access:Z
    .restart local v4       #fname0:Ljava/lang/String;
    .restart local v10       #suffix:I
    :cond_b
    move v9, v10

    .end local v10           #suffix:I
    .restart local v9       #suffix:I
    goto :goto_3
.end method

.method public allocFrame(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 1238
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1

    .line 1241
    instance-of v1, p0, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_2

    .line 1242
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1249
    .local v0, frameType:Lgnu/bytecode/ClassType;
    :goto_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1251
    .end local v0           #frameType:Lgnu/bytecode/ClassType;
    :cond_1
    return-void

    .line 1245
    :cond_2
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 1246
    .restart local v0       #frameType:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1247
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_0
.end method

.method allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "outer"
    .parameter "comp"

    .prologue
    .line 1190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1191
    const/4 v0, 0x0

    .line 1201
    .local v0, closureEnvType:Lgnu/bytecode/ObjectType;
    :goto_0
    invoke-virtual {p0, p2, v0}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 1202
    return-void

    .line 1192
    .end local v0           #closureEnvType:Lgnu/bytecode/ObjectType;
    :cond_0
    instance-of v2, p1, Lgnu/expr/ClassExp;

    if-nez v2, :cond_1

    instance-of v2, p1, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_2

    .line 1193
    :cond_1
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .restart local v0       #closureEnvType:Lgnu/bytecode/ObjectType;
    goto :goto_0

    .line 1196
    .end local v0           #closureEnvType:Lgnu/bytecode/ObjectType;
    :cond_2
    move-object v1, p1

    .line 1197
    .local v1, owner:Lgnu/expr/LambdaExp;
    :goto_1
    iget-object v2, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v2, :cond_3

    .line 1198
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_1

    .line 1199
    :cond_3
    iget-object v2, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    .restart local v0       #closureEnvType:Lgnu/bytecode/ObjectType;
    goto :goto_0
.end method

.method allocParameters(Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "comp"

    .prologue
    .line 1255
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1257
    .local v0, code:Lgnu/bytecode/CodeAttr;
    const/4 v1, 0x0

    .line 1258
    .local v1, i:I
    const/4 v2, 0x0

    .line 1260
    .local v2, j:I
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 1261
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v3

    .line 1262
    .local v3, line:I
    if-lez v3, :cond_0

    .line 1263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1265
    :cond_0
    iget-object v4, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_1

    .line 1266
    iget-object v4, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v4, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 1267
    :cond_1
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1711
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 1712
    new-instance v0, Lgnu/expr/Closure;

    invoke-direct {v0, p0, p1}, Lgnu/expr/Closure;-><init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 1713
    return-void
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 2
    .parameter "decl"

    .prologue
    .line 42
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "heapFrame"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 51
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    .line 54
    iput-object p1, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    .line 57
    :cond_1
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 665
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_0

    .line 761
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 733
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    .line 734
    .local v3, outer:Lgnu/expr/LambdaExp;
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 735
    .local v5, rtype:Lgnu/bytecode/Type;
    iget v6, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_1

    iget-boolean v6, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v6, :cond_3

    instance-of v6, v3, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_3

    .line 738
    :cond_1
    iget-object v6, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v6, :cond_2

    .line 739
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 740
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 741
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 742
    invoke-static {p0, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 760
    :goto_1
    invoke-virtual {p2, p1, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 746
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 747
    .local v1, field:Lgnu/bytecode/Field;
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 748
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 751
    :cond_4
    iget-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 752
    .local v4, parent:Lgnu/expr/LambdaExp;
    iget-object v6, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v2, v6

    .line 755
    .local v2, frame:Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 756
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 752
    .end local v2           #frame:Lgnu/bytecode/Variable;
    :cond_5
    iget-object v6, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v2, v6

    goto :goto_2
.end method

.method compileAsMethod(Lgnu/expr/Compilation;)V
    .locals 28
    .parameter "comp"

    .prologue
    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/expr/LambdaExp;->flags:I

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1500
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    .line 1501
    .local v20, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    .line 1502
    .local v19, save_lambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v14, v24, v25

    .line 1505
    .local v14, method:Lgnu/bytecode/Method;
    invoke-virtual {v14}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v9

    .line 1506
    .local v9, isStatic:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v15, v24, v25

    .line 1507
    .local v15, numStubs:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->restArgType()Lgnu/bytecode/Type;

    move-result-object v17

    .line 1509
    .local v17, restArgType:Lgnu/bytecode/Type;
    const/16 v18, 0x0

    .line 1510
    .local v18, saveDeclFlags:[J
    if-lez v15, :cond_2

    .line 1512
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 1513
    const/4 v11, 0x0

    .line 1514
    .local v11, k:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1515
    .local v7, decl:Lgnu/expr/Declaration;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 1516
    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object v0, v7

    iget-wide v0, v0, Lgnu/expr/Declaration;->flags:J

    move-wide/from16 v24, v0

    aput-wide v24, v18, v11

    .line 1515
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_1

    .line 1519
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v11           #k:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    const/16 v24, 0x1

    move/from16 v6, v24

    .line 1521
    .local v6, ctxArg:Z
    :goto_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-gt v8, v15, :cond_12

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1524
    if-ge v8, v15, :cond_10

    .line 1526
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 1527
    .local v5, code:Lgnu/bytecode/CodeAttr;
    add-int/lit8 v21, v8, 0x1

    .line 1529
    .local v21, toCall:I
    :goto_4
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1530
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1519
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v6           #ctxArg:Z
    .end local v8           #i:I
    .end local v21           #toCall:I
    :cond_3
    const/16 v24, 0x0

    move/from16 v6, v24

    goto :goto_2

    .line 1531
    .restart local v5       #code:Lgnu/bytecode/CodeAttr;
    .restart local v6       #ctxArg:Z
    .restart local v8       #i:I
    .restart local v21       #toCall:I
    :cond_4
    move/from16 v0, v21

    move v1, v15

    if-ne v0, v1, :cond_7

    if-eqz v17, :cond_7

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 1533
    .local v23, varArgs:Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 1534
    .local v4, callContextSave:Lgnu/bytecode/Variable;
    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1535
    .local v22, var:Lgnu/bytecode/Variable;
    if-nez v9, :cond_6

    .line 1537
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1539
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1540
    :cond_5
    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1542
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1543
    .restart local v7       #decl:Lgnu/expr/Declaration;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v8

    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 1545
    move-object v0, v7

    iget-wide v0, v0, Lgnu/expr/Declaration;->flags:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x40

    or-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object v2, v7

    iput-wide v0, v2, Lgnu/expr/Declaration;->flags:J

    .line 1546
    move-object/from16 v0, v22

    move-object v1, v7

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1547
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1548
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1543
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_6

    .line 1531
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :cond_7
    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_5

    .line 1550
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v7       #decl:Lgnu/expr/Declaration;
    .restart local v10       #j:I
    .restart local v22       #var:Lgnu/bytecode/Variable;
    .restart local v23       #varArgs:Z
    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v24, v22

    :goto_7
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1551
    move v10, v8

    :goto_8
    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 1553
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v16

    .line 1554
    .local v16, paramTarget:Lgnu/expr/Target;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1551
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_8

    .line 1550
    .end local v16           #paramTarget:Lgnu/expr/Target;
    :cond_9
    const/16 v24, 0x0

    goto :goto_7

    .line 1556
    :cond_a
    if-eqz v23, :cond_b

    .line 1559
    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1560
    .local v13, lastTypeName:Ljava/lang/String;
    const-string v24, "gnu.lists.LList"

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1561
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 1566
    .local v3, arg:Lgnu/expr/Expression;
    :goto_9
    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1568
    .end local v3           #arg:Lgnu/expr/Expression;
    .end local v13           #lastTypeName:Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 1569
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1570
    :cond_c
    if-eqz v9, :cond_f

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1574
    :goto_a
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1575
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1576
    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1521
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v21           #toCall:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1562
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v5       #code:Lgnu/bytecode/CodeAttr;
    .restart local v7       #decl:Lgnu/expr/Declaration;
    .restart local v10       #j:I
    .restart local v13       #lastTypeName:Ljava/lang/String;
    .restart local v21       #toCall:I
    .restart local v22       #var:Lgnu/bytecode/Variable;
    .restart local v23       #varArgs:Z
    :cond_d
    const-string v24, "java.lang.Object[]"

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1563
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v24, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v3       #arg:Lgnu/expr/Expression;
    goto :goto_9

    .line 1565
    .end local v3           #arg:Lgnu/expr/Expression;
    :cond_e
    new-instance v24, Ljava/lang/Error;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unimplemented #!rest type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1573
    .end local v13           #lastTypeName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1580
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v21           #toCall:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :cond_10
    if-eqz v18, :cond_11

    .line 1582
    const/4 v11, 0x0

    .line 1583
    .restart local v11       #k:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1584
    .restart local v7       #decl:Lgnu/expr/Declaration;
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1586
    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    aget-wide v24, v18, v11

    move-wide/from16 v0, v24

    move-object v2, v7

    iput-wide v0, v2, Lgnu/expr/Declaration;->flags:J

    .line 1587
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object v1, v7

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1584
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_c

    .line 1590
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v11           #k:I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->initCode()V

    .line 1591
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1592
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1593
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1595
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 1596
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 1597
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    goto/16 :goto_b

    .line 1601
    :cond_12
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1602
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    goto/16 :goto_0
.end method

.method public compileBody(Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "comp"

    .prologue
    .line 1608
    iget-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1609
    .local v0, callContextSave:Lgnu/bytecode/Variable;
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1610
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1612
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    const-string v4, "$ctx"

    invoke-virtual {v3, v4}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 1613
    .local v2, var:Lgnu/bytecode/Variable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    .line 1614
    iput-object v2, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1615
    :cond_0
    invoke-static {p1}, Lgnu/expr/ConsumerTarget;->makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;

    move-result-object v1

    .line 1619
    .end local v2           #var:Lgnu/bytecode/Variable;
    .local v1, target:Lgnu/expr/Target;
    :goto_0
    iget-object v3, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iget-object v4, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    :goto_1
    invoke-virtual {v3, p1, v1, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 1621
    iput-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1622
    return-void

    .line 1618
    .end local v1           #target:Lgnu/expr/Target;
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .restart local v1       #target:Lgnu/expr/Target;
    goto :goto_0

    :cond_2
    move-object v4, p0

    .line 1619
    goto :goto_1
.end method

.method public compileEnd(Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "comp"

    .prologue
    .line 538
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 539
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    iget-object v2, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->reachableHere()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 545
    :cond_1
    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 546
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 549
    :cond_2
    iget-object v0, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_4

    .line 551
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_3

    .line 553
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 555
    :cond_3
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 558
    :cond_4
    iget-object v2, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_5

    .line 559
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 560
    :cond_5
    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "comp"

    .prologue
    .line 649
    iget-object v1, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v1, :cond_0

    .line 650
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 651
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 652
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v1}, Lgnu/expr/LambdaExp;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 660
    :goto_0
    new-instance v1, Lgnu/expr/ProcInitializer;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/ProcInitializer;-><init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    iget-object v1, v1, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    return-object v1

    .line 656
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 657
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public declareClosureEnv()Lgnu/bytecode/Variable;
    .locals 9

    .prologue
    .line 428
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 430
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 431
    .local v2, parent:Lgnu/expr/LambdaExp;
    instance-of v6, v2, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_0

    .line 432
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 433
    :cond_0
    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v3, v6

    .line 435
    .local v3, parentFrame:Lgnu/bytecode/Variable;
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*init*"

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 436
    iget-object v6, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 468
    .end local v2           #parent:Lgnu/expr/LambdaExp;
    .end local v3           #parentFrame:Lgnu/bytecode/Variable;
    :cond_1
    :goto_1
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    return-object v6

    .line 433
    .restart local v2       #parent:Lgnu/expr/LambdaExp;
    :cond_2
    iget-object v6, v2, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v3, v6

    goto :goto_0

    .line 437
    .restart local v3       #parentFrame:Lgnu/bytecode/Variable;
    :cond_3
    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getNeedsStaticLink()Z

    move-result v6

    if-nez v6, :cond_4

    instance-of v6, v2, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_4

    .line 439
    const/4 v6, 0x0

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-nez v6, :cond_7

    .line 442
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v5

    .line 443
    .local v5, primMethod:Lgnu/bytecode/Method;
    const-string v6, "*init*"

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 444
    .local v1, isInit:Z
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    .line 446
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 449
    :cond_5
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    .line 450
    .local v0, envType:Lgnu/bytecode/Type;
    new-instance v6, Lgnu/bytecode/Variable;

    const-string v7, "closureEnv"

    invoke-direct {v6, v7, v0}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 452
    if-eqz v1, :cond_6

    .line 453
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 456
    .local v4, prev:Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v4, v7}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 457
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_1

    .line 455
    .end local v4           #prev:Lgnu/bytecode/Variable;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #prev:Lgnu/bytecode/Variable;
    goto :goto_2

    .line 460
    .end local v0           #envType:Lgnu/bytecode/Type;
    .end local v1           #isInit:Z
    .end local v4           #prev:Lgnu/bytecode/Variable;
    .end local v5           #primMethod:Lgnu/bytecode/Method;
    :cond_7
    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 461
    iput-object v3, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 464
    :cond_8
    new-instance v6, Lgnu/bytecode/Variable;

    const-string v7, "closureEnv"

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 465
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    goto/16 :goto_1
.end method

.method public declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;
    .locals 3
    .parameter "clas"

    .prologue
    .line 413
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 416
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 417
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 419
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    iget-object v1, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 423
    :cond_2
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method enterFunction(Lgnu/expr/Compilation;)V
    .locals 32
    .parameter "comp"

    .prologue
    .line 1277
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    .line 1280
    .local v8, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->noteStartFunction(Lgnu/bytecode/CodeAttr;)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v28

    if-nez v28, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v28

    if-nez v28, :cond_1

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v28

    if-nez v28, :cond_2

    .line 1287
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object v13, v0

    .line 1289
    .local v13, field:Lgnu/bytecode/Field;
    if-nez v13, :cond_0

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object v13, v0

    .line 1291
    :cond_0
    invoke-virtual {v8, v13}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1300
    .end local v13           #field:Lgnu/bytecode/Field;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v28

    if-nez v28, :cond_5

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v28

    move-object/from16 v14, v28

    .line 1305
    .local v14, frameType:Lgnu/bytecode/ClassType;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    move-object v10, v0

    .local v10, decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v10, :cond_5

    .line 1308
    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1306
    :goto_3
    iget-object v10, v10, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    goto :goto_2

    .line 1294
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 1302
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object v14, v5

    goto :goto_1

    .line 1310
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v14       #frameType:Lgnu/bytecode/ClassType;
    :cond_4
    const/16 v28, 0x0

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    .line 1313
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v28

    if-nez v28, :cond_8

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    check-cast v14, Lgnu/bytecode/ClassType;

    .line 1316
    .restart local v14       #frameType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 1317
    const-string v28, "staticLink"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 1319
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v28, v0

    if-nez v28, :cond_8

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 1321
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 1322
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 1323
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1324
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v9

    .line 1325
    .local v9, constructor:Lgnu/bytecode/Method;
    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 1329
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1333
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1337
    .end local v9           #constructor:Lgnu/bytecode/Method;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object v5, v0

    .line 1338
    .local v5, argsArray:Lgnu/bytecode/Variable;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    if-nez v28, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 1341
    const/4 v5, 0x0

    .line 1346
    :cond_9
    const/4 v15, 0x0

    .line 1347
    .local v15, i:I
    const/16 v21, 0x0

    .line 1348
    .local v21, opt_i:I
    const/16 v17, 0x0

    .line 1349
    .local v17, key_i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v28, v0

    if-nez v28, :cond_a

    const/16 v28, 0x0

    move/from16 v16, v28

    .line 1350
    .local v16, key_args:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v28, v0

    if-nez v28, :cond_b

    const/16 v28, 0x0

    move/from16 v20, v28

    .line 1352
    .local v20, opt_args:I
    :goto_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 1491
    :goto_6
    return-void

    .line 1349
    .end local v16           #key_args:I
    .end local v20           #opt_args:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v16, v28

    goto :goto_4

    .line 1350
    .restart local v16       #key_args:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v28, v28, v16

    move/from16 v20, v28

    goto :goto_5

    .line 1355
    .restart local v20       #opt_args:I
    :cond_c
    const/16 v25, -0x1

    .line 1356
    .local v25, plainArgs:I
    const/4 v12, 0x0

    .line 1357
    .local v12, defaultStart:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v19

    .line 1358
    .local v19, mainMethod:Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v7, v0

    .line 1360
    .local v7, callContextSave:Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    .local v23, param:Lgnu/expr/Declaration;
    move/from16 v18, v17

    .end local v17           #key_i:I
    .local v18, key_i:I
    move/from16 v22, v21

    .end local v21           #opt_i:I
    .local v22, opt_i:I
    :goto_7
    if-eqz v23, :cond_1e

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    const/16 v28, 0x0

    :goto_8
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    if-eqz v5, :cond_d

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    .line 1369
    move/from16 v25, v15

    .line 1370
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    sub-int v12, v25, v28

    .line 1378
    :cond_d
    :goto_9
    if-gez v25, :cond_e

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 1381
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    .line 1382
    .local v24, paramType:Lgnu/bytecode/Type;
    if-ltz v25, :cond_15

    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v26, v28

    .line 1388
    .local v26, stackType:Lgnu/bytecode/Type;
    :goto_a
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v28

    if-nez v28, :cond_f

    .line 1389
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 1391
    :cond_f
    if-gez v25, :cond_16

    .line 1394
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v28

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .line 1474
    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 1475
    add-int/lit8 v28, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v28

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1476
    :cond_10
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1477
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 1478
    :cond_11
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1480
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v27

    .line 1481
    .local v27, var:Lgnu/bytecode/Variable;
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1482
    sget-object v28, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1483
    :cond_12
    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1488
    .end local v24           #paramType:Lgnu/bytecode/Type;
    .end local v26           #stackType:Lgnu/bytecode/Type;
    .end local v27           #var:Lgnu/bytecode/Variable;
    :goto_c
    add-int/lit8 v15, v15, 0x1

    .line 1360
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move/from16 v18, v17

    .end local v17           #key_i:I
    .restart local v18       #key_i:I
    move/from16 v22, v21

    .end local v21           #opt_i:I
    .restart local v22       #opt_i:I
    goto/16 :goto_7

    .line 1362
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v28

    const-string v29, "$ctx"

    invoke-virtual/range {v28 .. v29}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v28

    goto/16 :goto_8

    .line 1374
    :cond_14
    const/16 v25, 0x0

    .line 1375
    const/4 v12, 0x0

    goto/16 :goto_9

    .restart local v24       #paramType:Lgnu/bytecode/Type;
    :cond_15
    move-object/from16 v26, v24

    .line 1382
    goto :goto_a

    .line 1396
    .restart local v26       #stackType:Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    move v0, v15

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    .line 1398
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1399
    invoke-virtual {v8, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1400
    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto :goto_b

    .line 1402
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    add-int v28, v28, v20

    move v0, v15

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 1404
    sub-int v28, v15, v25

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1405
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1406
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1407
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfIntLt()V

    .line 1408
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1409
    sub-int v28, v15, v25

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1410
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitArrayLoad()V

    .line 1411
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v28, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    add-int v29, v12, v22

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1413
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    goto/16 :goto_b

    .line 1415
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v28, v0

    if-gez v28, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    add-int v28, v28, v20

    move v0, v15

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 1419
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    sub-int v28, v15, v25

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1421
    sget-object v28, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1422
    sget-object v26, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_b

    .line 1426
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_19
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1427
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v28, v0

    add-int v28, v28, v20

    sub-int v28, v28, v25

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v28, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    aget-object v28, v28, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v28, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    add-int v29, v12, v22

    aget-object v11, v28, v29

    .line 1433
    .local v11, defaultArg:Lgnu/expr/Expression;
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 1435
    sget-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    if-nez v28, :cond_1a

    .line 1437
    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 1438
    .local v6, argts:[Lgnu/bytecode/Type;
    const/16 v28, 0x0

    sget-object v29, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v29, v6, v28

    .line 1439
    const/16 v28, 0x1

    sget-object v29, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v29, v6, v28

    .line 1440
    const/16 v28, 0x2

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v29, v6, v28

    .line 1441
    const/16 v28, 0x3

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v29, v6, v28

    .line 1442
    sget-object v28, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string v29, "searchForKeyword"

    sget-object v30, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v31, 0x9

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v6

    move-object/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v28

    sput-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    .line 1447
    .end local v6           #argts:[Lgnu/bytecode/Type;
    :cond_1a
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1448
    sget-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_b

    .line 1452
    :cond_1b
    sget-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    if-nez v28, :cond_1c

    .line 1454
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 1455
    .restart local v6       #argts:[Lgnu/bytecode/Type;
    const/16 v28, 0x0

    sget-object v29, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v29, v6, v28

    .line 1456
    const/16 v28, 0x1

    sget-object v29, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v29, v6, v28

    .line 1457
    const/16 v28, 0x2

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v29, v6, v28

    .line 1458
    sget-object v28, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string v29, "searchForKeyword"

    sget-object v30, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v31, 0x9

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object v2, v6

    move-object/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v28

    sput-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    .line 1463
    .end local v6           #argts:[Lgnu/bytecode/Type;
    :cond_1c
    sget-object v28, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1464
    const/16 v28, 0x1

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1465
    sget-object v28, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 1467
    const/16 v28, 0x1

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 1468
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1469
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_b

    .line 1486
    .end local v11           #defaultArg:Lgnu/expr/Expression;
    :cond_1d
    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v28, v0

    move-object v0, v8

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_c

    .line 1490
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .end local v24           #paramType:Lgnu/bytecode/Type;
    .end local v26           #stackType:Lgnu/bytecode/Type;
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_1e
    move-object v0, v7

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .line 1491
    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_6

    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_1f
    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_c
.end method

.method evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "ctx"

    .prologue
    .line 1719
    :try_start_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1721
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1723
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    const-string v2, "error evaluating default argument"

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateApplyMethods(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 564
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateMatchMethods(Lgnu/expr/LambdaExp;)V

    .line 565
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 566
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V

    .line 569
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V

    goto :goto_0
.end method

.method getArg(I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "i"

    .prologue
    .line 526
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 528
    .local v0, var:Lgnu/expr/Declaration;
    :goto_0
    if-nez v0, :cond_0

    .line 529
    new-instance v1, Ljava/lang/Error;

    const-string v2, "internal error - getArg"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :cond_0
    if-nez p1, :cond_1

    .line 531
    return-object v0

    .line 532
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 526
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallConvention()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 248
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-lt v0, v2, :cond_0

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 255
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 249
    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 254
    goto :goto_0

    .line 255
    :cond_2
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-eqz v0, :cond_3

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCaller()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public final getCanCall()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCanRead()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "comp"

    .prologue
    .line 275
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: getCompiledClassType"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected final getExpClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1868
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, cname:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1870
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1871
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1872
    :cond_0
    return-object v0
.end method

.method public getHeapFrameType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 765
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_1

    .line 766
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    .line 768
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    goto :goto_0
.end method

.method public final getImportsLexVars()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInlineOnly()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMainMethod()Lgnu/bytecode/Method;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 347
    .local v0, methods:[Lgnu/bytecode/Method;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public final getMethod(I)Lgnu/bytecode/Method;
    .locals 4
    .parameter "argCount"

    .prologue
    const/4 v3, 0x0

    .line 333
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v2, :cond_0

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_1

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-le p1, v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 339
    :goto_0
    return-object v2

    .line 335
    :cond_1
    iget v2, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v0, p1, v2

    .line 336
    .local v0, index:I
    if-gez v0, :cond_2

    move-object v2, v3

    .line 337
    goto :goto_0

    .line 338
    :cond_2
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v2

    .line 339
    .local v1, length:I
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-ge v0, v1, :cond_3

    move v3, v0

    :goto_1
    aget-object v2, v2, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    goto :goto_1
.end method

.method public final getNeedsClosureEnv()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNeedsStaticLink()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOwningLambda()Lgnu/expr/LambdaExp;
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 777
    .local v1, exp:Lgnu/expr/ScopeExp;
    :goto_0
    if-nez v1, :cond_0

    .line 778
    const/4 v2, 0x0

    .line 783
    .end local v1           #exp:Lgnu/expr/ScopeExp;
    :goto_1
    return-object v2

    .line 779
    .restart local v1       #exp:Lgnu/expr/ScopeExp;
    :cond_0
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_2

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_3

    .line 783
    :cond_2
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1           #exp:Lgnu/expr/ScopeExp;
    move-object v2, v1

    goto :goto_1

    .line 775
    .restart local v1       #exp:Lgnu/expr/ScopeExp;
    :cond_3
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1896
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1898
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v0, v1

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_1

    .line 1900
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1901
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 1904
    .end local v0           #i:I
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 1921
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1923
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1926
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method getSelectorValue(Lgnu/expr/Compilation;)I
    .locals 2
    .parameter "comp"

    .prologue
    .line 310
    iget v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 311
    .local v0, s:I
    if-nez v0, :cond_0

    .line 313
    iget v0, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 314
    iget-object v1, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v1

    add-int/2addr v1, v0

    iput v1, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 315
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 317
    :cond_0
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public incomingArgs()I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-lez v0, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method inlinedIn(Lgnu/expr/LambdaExp;)Z
    .locals 2
    .parameter "outer"

    .prologue
    .line 395
    move-object v0, p0

    .local v0, exp:Lgnu/expr/LambdaExp;
    :goto_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    if-ne v0, p1, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 400
    :goto_1
    return v1

    .line 395
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAbstract()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClassGenerated()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClassMethod()Z
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isHandlingTailCalls()Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isModuleBody()Z
    .locals 1

    .prologue
    .line 231
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    return v0
.end method

.method public loadHeapFrame(Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "comp"

    .prologue
    .line 490
    iget-object v1, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 491
    .local v1, curLambda:Lgnu/expr/LambdaExp;
    :goto_0
    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 495
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_2

    if-ne p0, v1, :cond_2

    .line 497
    iget-object v4, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 521
    :cond_1
    return-void

    .line 501
    :cond_2
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_4

    .line 503
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 504
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 511
    .local v2, curType:Lgnu/bytecode/ClassType;
    :goto_1
    if-eq v1, p0, :cond_1

    .line 513
    iget-object v3, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 514
    .local v3, link:Lgnu/bytecode/Field;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 516
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 517
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .end local v2           #curType:Lgnu/bytecode/ClassType;
    check-cast v2, Lgnu/bytecode/ClassType;

    .line 519
    .restart local v2       #curType:Lgnu/bytecode/ClassType;
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 520
    goto :goto_1

    .line 508
    .end local v2           #curType:Lgnu/bytecode/ClassType;
    .end local v3           #link:Lgnu/bytecode/Field;
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 509
    iget-object v2, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .restart local v2       #curType:Lgnu/bytecode/ClassType;
    goto :goto_1
.end method

.method protected mustCompile()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1690
    iget-object v2, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v3

    .line 1702
    :goto_0
    return v2

    .line 1692
    :cond_0
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v2, :cond_2

    .line 1694
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v1, v2

    .local v1, i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1696
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v0, v2, v1

    .line 1698
    .local v0, def:Lgnu/expr/Expression;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_1

    move v2, v3

    .line 1699
    goto :goto_0

    .line 1702
    .end local v0           #def:Lgnu/expr/Expression;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public outerLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0
.end method

.method public outerLambdaNotInline()Lgnu/expr/LambdaExp;
    .locals 4

    .prologue
    .line 377
    move-object v1, p0

    .local v1, exp:Lgnu/expr/ScopeExp;
    :cond_0
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    if-eqz v1, :cond_1

    .line 379
    instance-of v3, v1, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_0

    .line 381
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    .line 382
    .local v2, result:Lgnu/expr/LambdaExp;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    .line 386
    .end local v2           #result:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 13
    .parameter "out"

    .prologue
    .line 1803
    const-string v10, "(Lambda/"

    const-string v11, ")"

    const/4 v12, 0x2

    invoke-virtual {p1, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1804
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    .line 1805
    .local v9, sym:Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 1807
    invoke-virtual {p1, v9}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1808
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1810
    :cond_0
    iget v10, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(I)V

    .line 1811
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1812
    const-string v10, "fl:"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v10, p0, Lgnu/expr/LambdaExp;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1814
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 1815
    const-string v10, "("

    const/4 v11, 0x0

    const-string v12, ")"

    invoke-virtual {p1, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1816
    const/4 v8, 0x0

    .line 1817
    .local v8, prevMode:Lgnu/expr/Special;
    const/4 v2, 0x0

    .line 1818
    .local v2, i:I
    const/4 v6, 0x0

    .line 1819
    .local v6, opt_i:I
    iget-object v10, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v10, :cond_6

    const/4 v10, 0x0

    move v3, v10

    .line 1820
    .local v3, key_args:I
    :goto_0
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v10, :cond_7

    const/4 v10, 0x0

    move v5, v10

    .line 1821
    .local v5, opt_args:I
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1822
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1823
    const/4 v2, -0x1

    move v7, v6

    .line 1824
    .end local v6           #opt_i:I
    .local v7, opt_i:I
    :goto_2
    if-eqz v0, :cond_b

    .line 1827
    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v2, v10, :cond_8

    .line 1828
    const/4 v4, 0x0

    .line 1835
    .local v4, mode:Lgnu/expr/Special;
    :goto_3
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    if-eq v0, v10, :cond_1

    .line 1836
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1837
    :cond_1
    if-eq v4, v8, :cond_2

    .line 1839
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1840
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1842
    :cond_2
    const/4 v1, 0x0

    .line 1843
    .local v1, defaultArg:Lgnu/expr/Expression;
    sget-object v10, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    if-eq v4, v10, :cond_3

    sget-object v10, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    if-ne v4, v10, :cond_d

    .line 1844
    :cond_3
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    aget-object v1, v10, v7

    .line 1845
    :goto_4
    if-eqz v1, :cond_4

    .line 1846
    const/16 v10, 0x28

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1847
    :cond_4
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 1848
    if-eqz v1, :cond_5

    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    if-eq v1, v10, :cond_5

    .line 1850
    const/16 v10, 0x20

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1851
    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1852
    const/16 v10, 0x29

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1854
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1855
    move-object v8, v4

    .line 1824
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v7, v6

    .end local v6           #opt_i:I
    .restart local v7       #opt_i:I
    goto :goto_2

    .line 1819
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #defaultArg:Lgnu/expr/Expression;
    .end local v3           #key_args:I
    .end local v4           #mode:Lgnu/expr/Special;
    .end local v5           #opt_args:I
    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    :cond_6
    iget-object v10, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v10, v10

    move v3, v10

    goto :goto_0

    .line 1820
    .restart local v3       #key_args:I
    :cond_7
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v10, v10

    sub-int/2addr v10, v3

    move v5, v10

    goto :goto_1

    .line 1829
    .end local v6           #opt_i:I
    .restart local v0       #decl:Lgnu/expr/Declaration;
    .restart local v5       #opt_args:I
    .restart local v7       #opt_i:I
    :cond_8
    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v10, v5

    if-ge v2, v10, :cond_9

    .line 1830
    sget-object v4, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1831
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_9
    iget v10, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v10, :cond_a

    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v10, v5

    if-ne v2, v10, :cond_a

    .line 1832
    sget-object v4, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1834
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_a
    sget-object v4, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1857
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_b
    const-string v10, ")"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 1859
    iget-object v10, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v10, :cond_c

    .line 1860
    const-string v10, "<null body>"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1863
    :goto_5
    const-string v10, ")"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1864
    return-void

    .line 1862
    :cond_c
    iget-object v10, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_5

    .restart local v1       #defaultArg:Lgnu/expr/Expression;
    .restart local v4       #mode:Lgnu/expr/Special;
    :cond_d
    move v6, v7

    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    goto :goto_4

    .end local v1           #defaultArg:Lgnu/expr/Expression;
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_e
    move v7, v6

    .end local v6           #opt_i:I
    .restart local v7       #opt_i:I
    goto/16 :goto_2
.end method

.method public final restArgType()Lgnu/bytecode/Type;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 353
    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_0

    move-object v4, v8

    .line 365
    :goto_0
    return-object v4

    .line 355
    :cond_0
    iget-object v4, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v4, :cond_1

    .line 356
    new-instance v4, Ljava/lang/Error;

    const-string v5, "internal error - restArgType"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    :cond_1
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 358
    .local v2, methods:[Lgnu/bytecode/Method;
    iget v4, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v4, :cond_2

    array-length v4, v2

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    iget v6, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move-object v4, v8

    .line 359
    goto :goto_0

    .line 360
    :cond_2
    array-length v4, v2

    sub-int/2addr v4, v7

    aget-object v1, v2, v4

    .line 361
    .local v1, method:Lgnu/bytecode/Method;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v3

    .line 362
    .local v3, types:[Lgnu/bytecode/Type;
    array-length v4, v3

    sub-int v0, v4, v7

    .line 363
    .local v0, ilast:I
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    add-int/lit8 v0, v0, -0x1

    .line 365
    :cond_3
    aget-object v4, v3, v0

    goto :goto_0
.end method

.method setCallersNeedStaticLink()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 196
    .local v2, outer:Lgnu/expr/LambdaExp;
    iget-object v3, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v0, v3, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .local v0, app:Lgnu/expr/ApplyExp;
    :goto_0
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, v0, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 199
    .local v1, caller:Lgnu/expr/LambdaExp;
    :goto_1
    if-eq v1, v2, :cond_0

    instance-of v3, v1, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 199
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_1

    .line 196
    :cond_0
    iget-object v0, v0, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    goto :goto_0

    .line 202
    .end local v1           #caller:Lgnu/expr/LambdaExp;
    :cond_1
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 1
    .parameter "called"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCanRead(Z)V
    .locals 1
    .parameter "read"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setClassMethod(Z)V
    .locals 1
    .parameter "isMethod"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCoercedReturnType(Lgnu/bytecode/Type;)V
    .locals 3
    .parameter "returnType"

    .prologue
    .line 1937
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1938
    if-eqz p1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    .line 1943
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1944
    .local v0, value:Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1945
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1947
    .end local v0           #value:Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method public final setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V
    .locals 3
    .parameter "type"
    .parameter "language"

    .prologue
    .line 1953
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1955
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1956
    .local v1, value:Lgnu/expr/Expression;
    invoke-static {v1, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1957
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1959
    .end local v1           #value:Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {p2, p1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1960
    .local v0, rtype:Lgnu/bytecode/Type;
    if-eqz v0, :cond_1

    .line 1961
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 1962
    :cond_1
    return-void
.end method

.method public setExceptions([Lgnu/expr/Expression;)V
    .locals 0
    .parameter "exceptions"

    .prologue
    .line 100
    iput-object p1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 101
    return-void
.end method

.method public final setImportsLexVars()V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 176
    .local v0, old:I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 179
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 181
    :cond_0
    return-void
.end method

.method public final setImportsLexVars(Z)V
    .locals 1
    .parameter "importsLexVars"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setInlineOnly(Z)V
    .locals 1
    .parameter "inlineOnly"

    .prologue
    .line 147
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    return-void
.end method

.method public final setNeedsStaticLink()V
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 186
    .local v0, old:I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 189
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 191
    :cond_0
    return-void
.end method

.method public final setNeedsStaticLink(Z)V
    .locals 1
    .parameter "needsStaticLink"

    .prologue
    .line 159
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1909
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    monitor-exit p0

    return-void

    .line 1909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setReturnType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "returnType"

    .prologue
    .line 1932
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1933
    return-void
.end method

.method public setType(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 292
    iput-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 293
    return-void
.end method

.method public side_effects()Z
    .locals 1

    .prologue
    .line 1875
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getExpClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1881
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v0

    .line 1882
    .local v0, l:I
    if-gtz v0, :cond_0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 1883
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    .line 1884
    :cond_0
    if-lez v0, :cond_1

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "l:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1887
    :cond_1
    return-object v1
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 23
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "decl"

    .prologue
    .line 1730
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 1731
    .local v5, args:[Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x1000

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1733
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v12

    .line 1734
    .local v12, inlined:Lgnu/expr/Expression;
    if-eqz v12, :cond_0

    .line 1735
    move-object/from16 v0, p2

    move-object v1, v12

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v20

    .line 1798
    .end local v12           #inlined:Lgnu/expr/Expression;
    :goto_0
    return-object v20

    .line 1737
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 1738
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    .line 1739
    .local v6, args_length:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v17

    .line 1741
    .local v17, msg:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 1742
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto :goto_0

    .line 1743
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v9

    .line 1744
    .local v9, conv:I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v8

    .line 1747
    .local v8, comp:Lgnu/expr/Compilation;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x2

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    const/16 v20, 0x3

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    :cond_2
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v15

    .local v15, method:Lgnu/bytecode/Method;
    if-eqz v15, :cond_9

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v13

    .line 1763
    .local v13, isStatic:Z
    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object v7, v0

    check-cast v7, Lgnu/expr/ClassExp;

    .line 1766
    .local v7, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1770
    .end local v7           #cl:Lgnu/expr/ClassExp;
    :cond_3
    new-instance v16, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 1772
    .local v16, mproc:Lgnu/expr/PrimProcedure;
    if-eqz v13, :cond_4

    .line 1773
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v14, v0

    .line 1795
    .local v14, margs:[Lgnu/expr/Expression;
    :goto_1
    new-instance v19, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1796
    .local v19, nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1776
    .end local v14           #margs:[Lgnu/expr/Expression;
    .end local v19           #nexp:Lgnu/expr/ApplyExp;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    .line 1779
    .local v10, curLambda:Lgnu/expr/LambdaExp;
    :goto_2
    if-nez v10, :cond_5

    .line 1780
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "internal error: missing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1781
    :cond_5
    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 1785
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    .line 1786
    .local v11, d:Lgnu/expr/Declaration;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1787
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "calling non-static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " from static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1783
    .end local v11           #d:Lgnu/expr/Declaration;
    :cond_7
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    goto :goto_2

    .line 1790
    .restart local v11       #d:Lgnu/expr/Declaration;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v18

    .line 1791
    .local v18, nargs:I
    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v14, v0

    .line 1792
    .restart local v14       #margs:[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v14

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1793
    const/16 v20, 0x0

    new-instance v21, Lgnu/expr/ThisExp;

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v21, v14, v20

    goto/16 :goto_1

    .end local v10           #curLambda:Lgnu/expr/LambdaExp;
    .end local v11           #d:Lgnu/expr/Declaration;
    .end local v13           #isStatic:Z
    .end local v14           #margs:[Lgnu/expr/Expression;
    .end local v15           #method:Lgnu/bytecode/Method;
    .end local v16           #mproc:Lgnu/expr/PrimProcedure;
    .end local v18           #nargs:I
    :cond_9
    move-object/from16 v20, p1

    .line 1798
    goto/16 :goto_0
.end method

.method public final variable_args()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 1629
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 1631
    .local v0, comp:Lgnu/expr/Compilation;
    if-nez v0, :cond_1

    .line 1632
    const/4 v1, 0x0

    .line 1640
    .local v1, saveLambda:Lgnu/expr/LambdaExp;
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1644
    if-eqz v0, :cond_0

    .line 1645
    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_0
    return-object v2

    .line 1635
    .end local v1           #saveLambda:Lgnu/expr/LambdaExp;
    :cond_1
    iget-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1636
    .restart local v1       #saveLambda:Lgnu/expr/LambdaExp;
    iput-object p0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 1644
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 1645
    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_2
    throw v2
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1652
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method protected final visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 1657
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1658
    .local v0, save:Lgnu/expr/LambdaExp;
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1661
    :try_start_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 1662
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 1663
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    .line 1664
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v2, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    :cond_0
    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1670
    return-void

    .line 1668
    :catchall_0
    move-exception v1

    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw v1
.end method

.method protected final visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 1674
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1676
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v1, v3

    .line 1677
    .local v1, len:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1679
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 1680
    .local v2, val:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 1682
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    check-cast v2, Lgnu/expr/Expression;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {p1, v2, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1677
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1686
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    return-void
.end method
