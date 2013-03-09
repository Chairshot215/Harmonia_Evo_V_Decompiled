.class public Lgnu/expr/ClassExp;
.super Lgnu/expr/LambdaExp;
.source "ClassExp.java"


# static fields
.field public static final CLASS_SPECIFIED:I = 0x10000

.field public static final HAS_SUBCLASS:I = 0x20000

.field public static final INTERFACE_SPECIFIED:I = 0x8000

.field public static final IS_ABSTRACT:I = 0x4000


# instance fields
.field public classNameSpecifier:Ljava/lang/String;

.field public clinitMethod:Lgnu/expr/LambdaExp;

.field explicitInit:Z

.field public initMethod:Lgnu/expr/LambdaExp;

.field instanceType:Lgnu/bytecode/ClassType;

.field partsDeclared:Z

.field simple:Z

.field public superClassIndex:I

.field public supers:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "simple"

    .prologue
    .line 69
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lgnu/expr/ClassExp;->superClassIndex:I

    .line 70
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    .line 71
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .line 72
    return-void
.end method

.method static getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V
    .locals 6
    .parameter "interfaceType"
    .parameter "mname"
    .parameter "paramTypes"
    .parameter "vec"

    .prologue
    .line 371
    instance-of v1, p0, Lgnu/expr/PairClassType;

    if-eqz v1, :cond_2

    .line 372
    move-object v0, p0

    check-cast v0, Lgnu/expr/PairClassType;

    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 396
    .local v1, implType:Lgnu/bytecode/ClassType;
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lgnu/bytecode/Type;

    .line 397
    .local v2, itypes:[Lgnu/bytecode/Type;
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 398
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, p2

    invoke-static {p2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-virtual {v1, p1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 400
    .local v1, implMethod:Lgnu/bytecode/Method;
    if-eqz v1, :cond_3

    .line 402
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p0

    .line 403
    .local p0, count:I
    if-eqz p0, :cond_0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .end local p0           #count:I
    .end local p1
    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 404
    :cond_0
    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 412
    .end local v1           #implMethod:Lgnu/bytecode/Method;
    .end local v2           #itypes:[Lgnu/bytecode/Type;
    :cond_1
    :goto_1
    return-void

    .line 373
    .local p0, interfaceType:Lgnu/bytecode/ClassType;
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    .line 380
    .local v2, reflectClass:Ljava/lang/Class;
    if-eqz v2, :cond_1

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, implTypeName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 385
    .local v2, loader:Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 389
    .local v1, implClass:Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .end local v1           #implClass:Ljava/lang/Class;
    check-cast v1, Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, implType:Lgnu/bytecode/ClassType;
    goto :goto_0

    .line 391
    .end local v1           #implType:Lgnu/bytecode/ClassType;
    .end local v2           #loader:Ljava/lang/ClassLoader;
    :catch_0
    move-exception p0

    .line 393
    .local p0, ex:Ljava/lang/Throwable;
    goto :goto_1

    .line 408
    .local v1, implMethod:Lgnu/bytecode/Method;
    .local v2, itypes:[Lgnu/bytecode/Type;
    .local p0, interfaceType:Lgnu/bytecode/ClassType;
    :cond_3
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 409
    .local v1, superInterfaces:[Lgnu/bytecode/ClassType;
    const/4 p0, 0x0

    .end local v2           #itypes:[Lgnu/bytecode/Type;
    .local p0, i:I
    :goto_2
    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 410
    aget-object v2, v1, p0

    invoke-static {v2, p1, p2, p3}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 409
    add-int/lit8 p0, p0, 0x1

    goto :goto_2
.end method

.method static invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V
    .locals 7
    .parameter "superClass"
    .parameter "comp"
    .parameter "lexp"

    .prologue
    .line 718
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 719
    .local v2, code:Lgnu/bytecode/CodeAttr;
    const-string v5, "<init>"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 721
    .local v3, superConstructor:Lgnu/bytecode/Method;
    if-nez v3, :cond_0

    .line 722
    const/16 v5, 0x65

    const-string v6, "super class does not have a default constructor"

    invoke-virtual {p1, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 725
    :cond_0
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 726
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p2, Lgnu/expr/ClassExp;

    if-eqz v5, :cond_1

    .line 728
    move-object v0, p2

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v1, v0

    .line 729
    .local v1, clExp:Lgnu/expr/ClassExp;
    iget-object v5, v1, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    iget v6, v1, Lgnu/expr/ClassExp;->superClassIndex:I

    aget-object v4, v5, v6

    .line 730
    .local v4, superExp:Lgnu/expr/Expression;
    invoke-static {v4, p0, p1}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 732
    .end local v1           #clExp:Lgnu/expr/ClassExp;
    .end local v4           #superExp:Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method static loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "superExp"
    .parameter "superClass"
    .parameter "comp"

    .prologue
    .line 707
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 709
    .local v0, code:Lgnu/bytecode/CodeAttr;
    sget-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 710
    const-string v1, "gnu.expr.PairClassType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "extractStaticLink"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 711
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 712
    return-void
.end method

.method public static slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "prefix"
    .parameter "sname"

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-static {p1}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    invoke-static {p1, v3}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 800
    .local v1, slen:I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 801
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    if-lez v1, :cond_1

    .line 804
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 805
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "clas"
    .parameter "comp"

    .prologue
    .line 417
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 418
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 419
    .local v1, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_0

    .line 421
    array-length v0, v1

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 422
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 424
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 4
    .parameter "lexp"
    .parameter "mname"

    .prologue
    const/4 v3, 0x1

    .line 812
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p2, v1}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 813
    .local v0, mdecl:Lgnu/expr/Declaration;
    iput-object p0, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 814
    invoke-virtual {p1, v3}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 815
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 816
    const-wide/32 v1, 0x100000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 817
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 818
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 819
    return-object v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 78
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ClassExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 81
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ClassExp;->compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method public compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 47
    .parameter "comp"

    .prologue
    .line 428
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    .line 429
    .local v32, saveClass:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v37, v0

    .line 432
    .local v37, saveMethod:Lgnu/bytecode/Method;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v26

    .line 433
    .local v26, new_class:Lgnu/bytecode/ClassType;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v28

    .line 436
    .local v28, outer:Lgnu/expr/LambdaExp;
    const/4 v12, 0x0

    .line 437
    .local v12, enclosing:Lgnu/bytecode/Member;
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v44, v0

    if-eqz v44, :cond_5

    .line 438
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object v12, v0

    .line 443
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 445
    move-object/from16 v0, v26

    move-object v1, v12

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 446
    move-object v0, v12

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 447
    check-cast v12, Lgnu/bytecode/ClassType;

    .end local v12           #enclosing:Lgnu/bytecode/Member;
    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 449
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 455
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/ClassExp;->usedSuperClasses(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 459
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 460
    .local v14, filename:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 461
    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 463
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v35, v0

    .line 464
    .local v35, saveLambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 466
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v9, v0

    .local v9, child:Lgnu/expr/LambdaExp;
    :goto_1
    if-eqz v9, :cond_13

    .line 472
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v44

    if-eqz v44, :cond_7

    .line 470
    :goto_2
    iget-object v9, v9, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_1

    .line 439
    .end local v9           #child:Lgnu/expr/LambdaExp;
    .end local v14           #filename:Ljava/lang/String;
    .end local v35           #saveLambda:Lgnu/expr/LambdaExp;
    .restart local v12       #enclosing:Lgnu/bytecode/Member;
    :cond_5
    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v44, v0

    if-nez v44, :cond_6

    .line 440
    move-object/from16 v12, v37

    goto/16 :goto_0

    .line 441
    :cond_6
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x24

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->indexOf(I)I

    move-result v44

    if-lez v44, :cond_0

    .line 442
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    move-object v12, v0

    goto/16 :goto_0

    .line 474
    .end local v12           #enclosing:Lgnu/bytecode/Member;
    .restart local v9       #child:Lgnu/expr/LambdaExp;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v35       #saveLambda:Lgnu/expr/LambdaExp;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v39, v0

    .line 475
    .local v39, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v38, v0

    .line 476
    .local v38, save_lambda:Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v34

    .line 477
    .local v34, saveFilename:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v36

    .line 478
    .local v36, saveLine:I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v33

    .line 479
    .local v33, saveColumn:I
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 480
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 482
    iget-object v10, v9, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 483
    .local v10, childDecl:Lgnu/expr/Declaration;
    if-eqz v10, :cond_8

    const-wide/16 v44, 0x800

    move-object v0, v10

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v44

    if-nez v44, :cond_9

    .line 485
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object v0, v9

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 486
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 487
    move-object v0, v9

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 488
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/Method;->initCode()V

    .line 489
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 490
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 491
    const-string v44, "*init*"

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_12

    .line 493
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 495
    .local v11, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v44, v0

    if-eqz v44, :cond_a

    .line 497
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 498
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v44

    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v44, v0

    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 503
    :cond_a
    iget-object v6, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 504
    .local v6, bodyFirst:Lgnu/expr/Expression;
    :goto_3
    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/BeginExp;

    move/from16 v44, v0

    if-eqz v44, :cond_c

    .line 506
    move-object v0, v6

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v5, v0

    .line 507
    .local v5, bbody:Lgnu/expr/BeginExp;
    move-object v0, v5

    iget v0, v0, Lgnu/expr/BeginExp;->length:I

    move/from16 v44, v0

    if-nez v44, :cond_b

    .line 508
    const/4 v6, 0x0

    goto :goto_3

    .line 510
    :cond_b
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v6, v44, v45

    goto :goto_3

    .line 514
    .end local v5           #bbody:Lgnu/expr/BeginExp;
    :cond_c
    const/4 v7, 0x0

    .line 516
    .local v7, calledInit:Lgnu/bytecode/ClassType;
    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v44, v0

    if-eqz v44, :cond_d

    move-object v0, v6

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v8, v0

    iget-object v13, v8, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .local v13, exp:Lgnu/expr/Expression;
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v44, v0

    if-eqz v44, :cond_d

    check-cast v13, Lgnu/expr/QuoteExp;

    .end local v13           #exp:Lgnu/expr/Expression;
    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v41

    .local v41, value:Ljava/lang/Object;
    move-object/from16 v0, v41

    instance-of v0, v0, Lgnu/expr/PrimProcedure;

    move/from16 v44, v0

    if-eqz v44, :cond_d

    .line 520
    move-object/from16 v0, v41

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object/from16 v29, v0

    .line 521
    .local v29, pproc:Lgnu/expr/PrimProcedure;
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/PrimProcedure;->isSpecial()Z

    move-result v44

    if-eqz v44, :cond_d

    const-string v44, "<init>"

    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_d

    .line 523
    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 525
    .end local v29           #pproc:Lgnu/expr/PrimProcedure;
    .end local v41           #value:Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v40

    .line 526
    .local v40, superClass:Lgnu/bytecode/ClassType;
    if-eqz v7, :cond_10

    .line 528
    sget-object v44, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object v0, v7

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_e

    move-object v0, v7

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_e

    .line 530
    const/16 v44, 0x65

    const-string v45, "call to <init> for not this or super class"

    move-object/from16 v0, p1

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 538
    :cond_e
    :goto_4
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object v0, v7

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_f

    .line 540
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v44

    new-instance v45, Ljava/util/Vector;

    const/16 v46, 0xa

    invoke-direct/range {v45 .. v46}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 542
    :cond_f
    if-eqz v7, :cond_11

    .line 544
    move-object v0, v9

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 553
    .end local v6           #bodyFirst:Lgnu/expr/Expression;
    .end local v7           #calledInit:Lgnu/bytecode/ClassType;
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v40           #superClass:Lgnu/bytecode/ClassType;
    :goto_5
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 554
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 555
    move-object/from16 v0, v39

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 556
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 557
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 655
    .end local v9           #child:Lgnu/expr/LambdaExp;
    .end local v10           #childDecl:Lgnu/expr/Declaration;
    .end local v14           #filename:Ljava/lang/String;
    .end local v26           #new_class:Lgnu/bytecode/ClassType;
    .end local v28           #outer:Lgnu/expr/LambdaExp;
    .end local v33           #saveColumn:I
    .end local v34           #saveFilename:Ljava/lang/String;
    .end local v35           #saveLambda:Lgnu/expr/LambdaExp;
    .end local v36           #saveLine:I
    .end local v38           #save_lambda:Lgnu/expr/LambdaExp;
    .end local v39           #save_method:Lgnu/bytecode/Method;
    :catchall_0
    move-exception v44

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    throw v44

    .line 532
    .restart local v6       #bodyFirst:Lgnu/expr/Expression;
    .restart local v7       #calledInit:Lgnu/bytecode/ClassType;
    .restart local v9       #child:Lgnu/expr/LambdaExp;
    .restart local v10       #childDecl:Lgnu/expr/Declaration;
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v26       #new_class:Lgnu/bytecode/ClassType;
    .restart local v28       #outer:Lgnu/expr/LambdaExp;
    .restart local v33       #saveColumn:I
    .restart local v34       #saveFilename:Ljava/lang/String;
    .restart local v35       #saveLambda:Lgnu/expr/LambdaExp;
    .restart local v36       #saveLine:I
    .restart local v38       #save_lambda:Lgnu/expr/LambdaExp;
    .restart local v39       #save_method:Lgnu/bytecode/Method;
    .restart local v40       #superClass:Lgnu/bytecode/ClassType;
    :cond_10
    if-eqz v40, :cond_e

    .line 536
    :try_start_1
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    goto :goto_4

    .line 546
    :cond_11
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_5

    .line 550
    .end local v6           #bodyFirst:Lgnu/expr/Expression;
    .end local v7           #calledInit:Lgnu/bytecode/ClassType;
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v40           #superClass:Lgnu/bytecode/ClassType;
    :cond_12
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 551
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    goto :goto_5

    .line 560
    .end local v10           #childDecl:Lgnu/expr/Declaration;
    .end local v33           #saveColumn:I
    .end local v34           #saveFilename:Ljava/lang/String;
    .end local v36           #saveLine:I
    .end local v38           #save_lambda:Lgnu/expr/LambdaExp;
    .end local v39           #save_method:Lgnu/bytecode/Method;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/ClassExp;->explicitInit:Z

    move/from16 v44, v0

    if-nez v44, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v44

    if-nez v44, :cond_16

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 567
    :cond_14
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v44

    if-eqz v44, :cond_17

    .line 569
    const/16 v22, 0x0

    .line 570
    .local v22, methods:[Lgnu/bytecode/Method;
    const/16 v27, 0x0

    .line 577
    .local v27, nmethods:I
    :goto_7
    const/16 v18, 0x0

    .local v18, i:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_21

    .line 579
    aget-object v21, v22, v18

    .line 580
    .local v21, meth:Lgnu/bytecode/Method;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v24

    .line 581
    .local v24, mname:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v30

    .line 582
    .local v30, ptypes:[Lgnu/bytecode/Type;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v31

    .line 584
    .local v31, rtype:Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v23

    .line 585
    .local v23, mimpl:Lgnu/bytecode/Method;
    if-eqz v23, :cond_18

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v44

    if-nez v44, :cond_18

    .line 577
    :cond_15
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 562
    .end local v18           #i:I
    .end local v21           #meth:Lgnu/bytecode/Method;
    .end local v22           #methods:[Lgnu/bytecode/Method;
    .end local v23           #mimpl:Lgnu/bytecode/Method;
    .end local v24           #mname:Ljava/lang/String;
    .end local v27           #nmethods:I
    .end local v30           #ptypes:[Lgnu/bytecode/Type;
    .end local v31           #rtype:Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v44, v0

    if-eqz v44, :cond_14

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->initChain:Lgnu/expr/Initializer;

    move-object/from16 v44, v0

    const-string v45, "unimplemented: explicit constructor cannot initialize "

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Initializer;->reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V

    goto :goto_6

    .line 574
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v22

    .line 575
    .restart local v22       #methods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27       #nmethods:I
    goto :goto_7

    .line 589
    .restart local v18       #i:I
    .restart local v21       #meth:Lgnu/bytecode/Method;
    .restart local v23       #mimpl:Lgnu/bytecode/Method;
    .restart local v24       #mname:Ljava/lang/String;
    .restart local v30       #ptypes:[Lgnu/bytecode/Type;
    .restart local v31       #rtype:Lgnu/bytecode/Type;
    :cond_18
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v44

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_1d

    const/16 v44, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v44

    const/16 v45, 0x74

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    const/16 v44, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v44

    const/16 v45, 0x65

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    const/16 v44, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .local v8, ch:C
    const/16 v44, 0x67

    move v0, v8

    move/from16 v1, v44

    if-eq v0, v1, :cond_19

    const/16 v44, 0x73

    move v0, v8

    move/from16 v1, v44

    if-ne v0, v1, :cond_1d

    .line 595
    :cond_19
    const/16 v44, 0x73

    move v0, v8

    move/from16 v1, v44

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v44

    if-eqz v44, :cond_1b

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1b

    .line 596
    const/16 v44, 0x0

    aget-object v17, v30, v44

    .line 601
    .local v17, ftype:Lgnu/bytecode/Type;
    :goto_a
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v45, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v44

    const/16 v45, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 603
    .local v16, fname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v15

    .line 604
    .local v15, fld:Lgnu/bytecode/Field;
    if-nez v15, :cond_1a

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v15

    .line 606
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    move/from16 v2, v45

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v20

    .line 608
    .local v20, impl:Lgnu/bytecode/Method;
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 609
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 610
    const/16 v44, 0x67

    move v0, v8

    move/from16 v1, v44

    if-ne v0, v1, :cond_1c

    .line 612
    invoke-virtual {v11, v15}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 619
    :goto_b
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_9

    .line 597
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v15           #fld:Lgnu/bytecode/Field;
    .end local v16           #fname:Ljava/lang/String;
    .end local v17           #ftype:Lgnu/bytecode/Type;
    .end local v20           #impl:Lgnu/bytecode/Method;
    :cond_1b
    const/16 v44, 0x67

    move v0, v8

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v44, v0

    if-nez v44, :cond_15

    .line 598
    move-object/from16 v17, v31

    .restart local v17       #ftype:Lgnu/bytecode/Type;
    goto/16 :goto_a

    .line 616
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    .restart local v15       #fld:Lgnu/bytecode/Field;
    .restart local v16       #fname:Ljava/lang/String;
    .restart local v20       #impl:Lgnu/bytecode/Method;
    :cond_1c
    const/16 v44, 0x1

    move-object v0, v11

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v44

    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 617
    invoke-virtual {v11, v15}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_b

    .line 623
    .end local v8           #ch:C
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v15           #fld:Lgnu/bytecode/Field;
    .end local v16           #fname:Ljava/lang/String;
    .end local v17           #ftype:Lgnu/bytecode/Type;
    .end local v20           #impl:Lgnu/bytecode/Method;
    :cond_1d
    new-instance v43, Ljava/util/Vector;

    invoke-direct/range {v43 .. v43}, Ljava/util/Vector;-><init>()V

    .line 624
    .local v43, vec:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/ClassExp;->getImplMethods(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/bytecode/Type;Ljava/util/Vector;)V

    .line 625
    invoke-virtual/range {v43 .. v43}, Ljava/util/Vector;->size()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1f

    .line 628
    invoke-virtual/range {v43 .. v43}, Ljava/util/Vector;->size()I

    move-result v44

    if-nez v44, :cond_1e

    const-string v44, "missing implementation for "

    move-object/from16 v25, v44

    .line 631
    .local v25, msg:Ljava/lang/String;
    :goto_c
    const/16 v44, 0x65

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_9

    .line 628
    .end local v25           #msg:Ljava/lang/String;
    :cond_1e
    const-string v44, "ambiguous implementation for "

    move-object/from16 v25, v44

    goto :goto_c

    .line 635
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    move/from16 v2, v45

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v20

    .line 637
    .restart local v20       #impl:Lgnu/bytecode/Method;
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 638
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v42

    .line 639
    .local v42, var:Lgnu/bytecode/Variable;
    :goto_d
    if-eqz v42, :cond_20

    .line 640
    move-object v0, v11

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 639
    invoke-virtual/range {v42 .. v42}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v42

    goto :goto_d

    .line 641
    :cond_20
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/bytecode/Method;

    .line 642
    .local v19, imethod:Lgnu/bytecode/Method;
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 643
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_9

    .line 648
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v19           #imethod:Lgnu/bytecode/Method;
    .end local v20           #impl:Lgnu/bytecode/Method;
    .end local v21           #meth:Lgnu/bytecode/Method;
    .end local v23           #mimpl:Lgnu/bytecode/Method;
    .end local v24           #mname:Ljava/lang/String;
    .end local v30           #ptypes:[Lgnu/bytecode/Type;
    .end local v31           #rtype:Lgnu/bytecode/Type;
    .end local v42           #var:Lgnu/bytecode/Variable;
    .end local v43           #vec:Ljava/util/Vector;
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ClassExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 649
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 656
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v26
.end method

.method public compilePushClass(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 86
    iget-object v5, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 88
    .local v5, new_class:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 89
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1, v5}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 92
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v4

    .line 93
    .local v4, needsLink:Z
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v4, :cond_0

    .line 123
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v4, :cond_5

    .line 97
    :cond_1
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-ne v5, v8, :cond_3

    .line 98
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v8}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    :goto_1
    const-string v8, "gnu.expr.PairClassType"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 102
    .local v7, typeType:Lgnu/bytecode/ClassType;
    if-eqz v4, :cond_4

    const/4 v8, 0x3

    move v3, v8

    .line 109
    .local v3, nargs:I
    :goto_2
    new-array v0, v3, [Lgnu/bytecode/Type;

    .line 110
    .local v0, argsClass:[Lgnu/bytecode/Type;
    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 113
    add-int/lit8 v3, v3, -0x1

    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v8, v0, v3

    .line 115
    :cond_2
    const-string v8, "java.lang.Class"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 116
    .local v6, typeClass:Lgnu/bytecode/ClassType;
    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    aput-object v6, v0, v3

    goto :goto_3

    .line 100
    .end local v0           #argsClass:[Lgnu/bytecode/Type;
    .end local v3           #nargs:I
    .end local v6           #typeClass:Lgnu/bytecode/ClassType;
    .end local v7           #typeType:Lgnu/bytecode/ClassType;
    :cond_3
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v8}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_1

    .line 102
    .restart local v7       #typeType:Lgnu/bytecode/ClassType;
    :cond_4
    const/4 v8, 0x2

    move v3, v8

    goto :goto_2

    .line 106
    .end local v7           #typeType:Lgnu/bytecode/ClassType;
    :cond_5
    const-string v8, "gnu.bytecode.Type"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    .line 107
    .restart local v7       #typeType:Lgnu/bytecode/ClassType;
    const/4 v3, 0x1

    .restart local v3       #nargs:I
    goto :goto_2

    .line 117
    .restart local v0       #argsClass:[Lgnu/bytecode/Type;
    .restart local v6       #typeClass:Lgnu/bytecode/ClassType;
    :cond_6
    const-string v8, "make"

    const/16 v9, 0x9

    invoke-virtual {v7, v8, v0, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 120
    .local v2, makeMethod:Lgnu/bytecode/Method;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 122
    invoke-virtual {p2, p1, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "comp"

    .prologue
    .line 788
    new-instance v0, Lgnu/expr/ClassInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/ClassInitializer;-><init>(Lgnu/expr/ClassExp;Lgnu/expr/Compilation;)V

    iget-object v0, v0, Lgnu/expr/ClassInitializer;->field:Lgnu/bytecode/Field;

    return-object v0
.end method

.method public declareParts(Lgnu/expr/Compilation;)V
    .locals 12
    .parameter "comp"

    .prologue
    .line 280
    iget-boolean v8, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    if-eqz v8, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lgnu/expr/ClassExp;->partsDeclared:Z

    .line 283
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 285
    .local v6, seenFields:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lgnu/expr/Declaration;>;"
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 286
    .local v1, decl:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v1, :cond_6

    .line 289
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 291
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v2

    .line 292
    .local v2, flags:I
    const-wide/16 v8, 0x800

    invoke-virtual {v1, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 293
    or-int/lit8 v2, v2, 0x8

    .line 294
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 296
    or-int/lit16 v2, v2, 0x400

    .line 297
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 298
    .local v4, ftype:Lgnu/bytecode/Type;
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string v9, "get"

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {v8, v9, v2, v10, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    .line 300
    const/4 v8, 0x1

    new-array v7, v8, [Lgnu/bytecode/Type;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 301
    .local v7, stypes:[Lgnu/bytecode/Type;
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const-string v9, "set"

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v8, v9, v2, v7, v10}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    .line 286
    .end local v2           #flags:I
    .end local v4           #ftype:Lgnu/bytecode/Type;
    .end local v7           #stypes:[Lgnu/bytecode/Type;
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_1

    .line 306
    .restart local v2       #flags:I
    :cond_4
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, fname:Ljava/lang/String;
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v8, v3, v9, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v8

    iput-object v8, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 310
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 311
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/Declaration;

    .line 312
    .local v5, old:Lgnu/expr/Declaration;
    if-eqz v5, :cond_5

    .line 313
    invoke-static {v5, v1, p1}, Lgnu/expr/ClassExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 314
    :cond_5
    invoke-virtual {v6, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 319
    .end local v2           #flags:I
    .end local v3           #fname:Ljava/lang/String;
    .end local v5           #old:Lgnu/expr/Declaration;
    :cond_6
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_3
    if-eqz v0, :cond_e

    .line 322
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 323
    const/16 v8, 0x4000

    invoke-virtual {p0, v8}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 324
    :cond_7
    const-string v8, "*init*"

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 326
    const/4 v8, 0x1

    iput-boolean v8, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    .line 327
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 328
    const/16 v8, 0x65

    const-string v9, "*init* method cannot be abstract"

    invoke-virtual {p1, v8, v9, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 329
    :cond_8
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    instance-of v8, v8, Lgnu/expr/PairClassType;

    if-eqz v8, :cond_9

    .line 330
    const/16 v8, 0x65

    const-string v9, "\'*init*\' methods only supported for simple classes"

    invoke-virtual {p1, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 336
    :cond_9
    iput-object p0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 337
    iget-object v8, p0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eq v0, v8, :cond_a

    iget-object v8, p0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eq v0, v8, :cond_a

    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v9, 0x800

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-nez v8, :cond_c

    .line 341
    :cond_b
    iget-object v8, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, p1, v9}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 342
    :cond_c
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 343
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v8, p1, v9}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 320
    :cond_d
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_3

    .line 345
    :cond_e
    iget-boolean v8, p0, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v8, :cond_f

    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v8

    if-nez v8, :cond_f

    .line 346
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v8, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 347
    :cond_f
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->isAbstract()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 348
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v9

    or-int/lit16 v9, v9, 0x400

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 349
    :cond_10
    iget-object v8, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v8, :cond_0

    .line 350
    iget-object v8, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    iget-object v10, p0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    goto/16 :goto_0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 1
    .parameter "comp"

    .prologue
    .line 127
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public final isAbstract()Z
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public isMakingClassPair()Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iget-object v1, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimple()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lgnu/expr/ClassExp;->simple:Z

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 9
    .parameter "out"

    .prologue
    const/4 v8, 0x2

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getExpClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {p1, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 740
    .local v4, name:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 742
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 743
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 745
    :cond_0
    iget v6, p0, Lgnu/expr/ClassExp;->id:I

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(I)V

    .line 746
    const-string v6, "/fl:"

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v6, p0, Lgnu/expr/ClassExp;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 747
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 750
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 751
    const-string v6, "supers:"

    const-string v7, ""

    invoke-virtual {p1, v6, v7, v8}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 754
    iget-object v6, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 755
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 757
    :cond_1
    const-string v6, ""

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 759
    .end local v2           #i:I
    :cond_2
    const/16 v6, 0x28

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 760
    const/4 v5, 0x0

    .line 761
    .local v5, prevMode:Lgnu/expr/Special;
    const/4 v2, 0x0

    .line 762
    .restart local v2       #i:I
    iget-object v6, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    move v3, v6

    .line 764
    .local v3, key_args:I
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ClassExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v1, :cond_5

    .line 766
    if-lez v2, :cond_3

    .line 767
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(C)V

    .line 768
    :cond_3
    invoke-virtual {v1, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    .line 764
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_2

    .line 762
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #key_args:I
    :cond_4
    iget-object v6, p0, Lgnu/expr/ClassExp;->keywords:[Lgnu/expr/Keyword;

    array-length v6, v6

    move v3, v6

    goto :goto_1

    .line 771
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #key_args:I
    :cond_5
    const-string v6, ") "

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_3
    if-eqz v0, :cond_6

    .line 775
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 776
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->print(Lgnu/mapping/OutPort;)V

    .line 773
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_3

    .line 778
    :cond_6
    iget-object v6, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    if-eqz v6, :cond_7

    .line 780
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeBreakLinear()V

    .line 781
    iget-object v6, p0, Lgnu/expr/ClassExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v6, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 783
    :cond_7
    const-string v6, ")"

    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setSimple(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 13
    iput-boolean p1, p0, Lgnu/expr/ClassExp;->simple:Z

    return-void
.end method

.method public setTypes(Lgnu/expr/Compilation;)V
    .locals 27
    .parameter "comp"

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    const/16 v24, 0x0

    move/from16 v17, v24

    .line 133
    .local v17, nsupers:I
    :goto_0
    move/from16 v0, v17

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    move-object/from16 v22, v0

    .line 134
    .local v22, superTypes:[Lgnu/bytecode/ClassType;
    const/16 v21, 0x0

    .line 135
    .local v21, superType:Lgnu/bytecode/ClassType;
    const/4 v9, 0x0

    .line 136
    .local v9, j:I
    const/4 v7, 0x0

    .local v7, i:I
    move v10, v9

    .end local v9           #j:I
    .local v10, j:I
    :goto_1
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 138
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v25, v0

    aget-object v25, v25, v7

    invoke-virtual/range {v24 .. v25}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v19

    .line 139
    .local v19, st:Lgnu/bytecode/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 142
    const/16 v24, 0x65

    const-string v25, "invalid super type"

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move v9, v10

    .line 136
    .end local v10           #j:I
    .restart local v9       #j:I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #j:I
    .restart local v10       #j:I
    goto :goto_1

    .line 132
    .end local v7           #i:I
    .end local v10           #j:I
    .end local v17           #nsupers:I
    .end local v19           #st:Lgnu/bytecode/Type;
    .end local v21           #superType:Lgnu/bytecode/ClassType;
    .end local v22           #superTypes:[Lgnu/bytecode/ClassType;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v17, v24

    goto :goto_0

    .line 145
    .restart local v7       #i:I
    .restart local v10       #j:I
    .restart local v17       #nsupers:I
    .restart local v19       #st:Lgnu/bytecode/Type;
    .restart local v21       #superType:Lgnu/bytecode/ClassType;
    .restart local v22       #superTypes:[Lgnu/bytecode/ClassType;
    :cond_1
    move-object/from16 v0, v19

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object/from16 v23, v0

    .line 149
    .local v23, t:Lgnu/bytecode/ClassType;
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/ClassType;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 157
    .local v13, modifiers:I
    :cond_2
    :goto_3
    move v0, v13

    and-int/lit16 v0, v0, 0x200

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 159
    if-ge v10, v7, :cond_3

    .line 160
    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "duplicate superclass for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 161
    :cond_3
    move-object/from16 v21, v23

    .line 162
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/expr/ClassExp;->superClassIndex:I

    move v9, v10

    .end local v10           #j:I
    .restart local v9       #j:I
    goto :goto_2

    .line 151
    .end local v9           #j:I
    .end local v13           #modifiers:I
    .restart local v10       #j:I
    :catch_0
    move-exception v6

    .line 153
    .local v6, ex:Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    .line 154
    .restart local v13       #modifiers:I
    if-eqz p1, :cond_2

    .line 155
    const/16 v24, 0x65

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unknown super-type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 165
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .end local v10           #j:I
    .restart local v9       #j:I
    aput-object v23, v22, v10

    goto :goto_2

    .line 167
    .end local v9           #j:I
    .end local v13           #modifiers:I
    .end local v19           #st:Lgnu/bytecode/Type;
    .end local v23           #t:Lgnu/bytecode/ClassType;
    .restart local v10       #j:I
    :cond_5
    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ClassExp;->flags:I

    move/from16 v24, v0

    const v25, 0x8000

    and-int v24, v24, v25

    if-eqz v24, :cond_6

    .line 168
    const/16 v24, 0x65

    const-string v25, "cannot be interface since has superclass"

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/ClassExp;->simple:Z

    move/from16 v24, v0

    if-nez v24, :cond_b

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ClassExp;->flags:I

    move/from16 v24, v0

    const/high16 v25, 0x1

    and-int v24, v24, v25

    if-nez v24, :cond_b

    const/high16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 173
    :cond_7
    new-instance v18, Lgnu/expr/PairClassType;

    invoke-direct/range {v18 .. v18}, Lgnu/expr/PairClassType;-><init>()V

    .line 174
    .local v18, ptype:Lgnu/expr/PairClassType;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    .line 175
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/PairClassType;->setInterface(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 177
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    move-object v8, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v25, v0

    aput-object v25, v8, v24

    .line 179
    .local v8, interfaces:[Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    sget-object v25, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 184
    .end local v8           #interfaces:[Lgnu/bytecode/ClassType;
    .end local v18           #ptype:Lgnu/expr/PairClassType;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    if-nez v21, :cond_c

    sget-object v25, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_5
    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 187
    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 188
    move-object/from16 v8, v22

    .line 194
    .restart local v8       #interfaces:[Lgnu/bytecode/ClassType;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_a

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    move-object v14, v0

    .line 212
    .local v14, name:Ljava/lang/String;
    :cond_9
    :goto_7
    if-nez v14, :cond_10

    .line 214
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v24, 0x64

    move-object v0, v15

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 215
    .local v15, nbuf:Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 216
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const/16 v24, 0x24

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 219
    .local v11, len:I
    const/4 v7, 0x0

    .line 221
    :goto_8
    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 223
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v24

    if-nez v24, :cond_f

    .line 266
    .end local v11           #len:I
    .end local v15           #nbuf:Ljava/lang/StringBuffer;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "$class"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 274
    .end local v14           #name:Ljava/lang/String;
    :cond_a
    return-void

    .line 182
    .end local v8           #interfaces:[Lgnu/bytecode/ClassType;
    :cond_b
    const v24, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getFlag(I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lgnu/bytecode/ClassType;->setInterface(Z)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v25, v21

    .line 184
    goto/16 :goto_5

    .line 191
    :cond_d
    new-array v8, v10, [Lgnu/bytecode/ClassType;

    .line 192
    .restart local v8       #interfaces:[Lgnu/bytecode/ClassType;
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object v2, v8

    move/from16 v3, v25

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .line 203
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->getName()Ljava/lang/String;

    move-result-object v14

    .line 204
    .restart local v14       #name:Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 206
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    .line 207
    .local v16, nlen:I
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    const/16 v24, 0x0

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v24, 0x1

    sub-int v24, v16, v24

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x3e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 209
    const/16 v24, 0x1

    const/16 v25, 0x1

    sub-int v25, v16, v25

    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 225
    .end local v16           #nlen:I
    .restart local v11       #len:I
    .restart local v15       #nbuf:Ljava/lang/StringBuffer;
    :cond_f
    invoke-virtual {v15, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 228
    .end local v11           #len:I
    .end local v15           #nbuf:Ljava/lang/StringBuffer;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ObjectExp;

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 229
    :cond_11
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    .line 232
    :cond_12
    const/16 v20, 0x0

    .line 233
    .local v20, start:I
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v24, 0x64

    move-object v0, v15

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .restart local v15       #nbuf:Ljava/lang/StringBuffer;
    :cond_13
    :goto_a
    const/16 v24, 0x2e

    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 237
    .local v5, dot:I
    if-gez v5, :cond_16

    .line 245
    if-nez v20, :cond_1a

    .line 247
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    if-nez v24, :cond_17

    const/16 v24, 0x0

    move-object/from16 v12, v24

    .line 249
    .local v12, mainName:Ljava/lang/String;
    :goto_b
    if-nez v12, :cond_18

    const/16 v24, -0x1

    move/from16 v5, v24

    .line 250
    :goto_c
    if-lez v5, :cond_19

    .line 251
    const/16 v24, 0x0

    add-int/lit8 v25, v5, 0x1

    move-object v0, v12

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    .end local v12           #mainName:Ljava/lang/String;
    :cond_14
    :goto_d
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 262
    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_15
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_9

    .line 239
    :cond_16
    move-object v0, v14

    move/from16 v1, v20

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    add-int/lit8 v20, v5, 0x1

    .line 242
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 243
    const/16 v24, 0x2e

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 247
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v12, v24

    goto :goto_b

    .line 249
    .restart local v12       #mainName:Ljava/lang/String;
    :cond_18
    const/16 v24, 0x2e

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v24

    move/from16 v5, v24

    goto :goto_c

    .line 252
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 255
    .end local v12           #mainName:Ljava/lang/String;
    :cond_1a
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    .line 257
    const/16 v24, 0x0

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const/16 v24, 0x24

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_d
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
    .line 662
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 663
    .local v0, comp:Lgnu/expr/Compilation;
    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 674
    :goto_0
    return-object v2

    .line 665
    :cond_0
    iget-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 669
    .local v1, saveClass:Lgnu/bytecode/ClassType;
    :try_start_0
    iget-object v2, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    iput-object v2, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 670
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 674
    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v1, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    throw v2
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
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
    .line 680
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 681
    .local v2, save:Lgnu/expr/LambdaExp;
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 682
    iget-object v3, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    iget-object v4, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    array-length v4, v4

    invoke-virtual {p1, v3, v4, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 685
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 686
    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 689
    iget-object v3, p0, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    .line 691
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 692
    .local v1, firstParam:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 695
    .end local v1           #firstParam:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 700
    :cond_1
    iput-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 702
    return-void

    .line 700
    .end local v0           #child:Lgnu/expr/LambdaExp;
    :catchall_0
    move-exception v3

    iput-object v2, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw v3
.end method
