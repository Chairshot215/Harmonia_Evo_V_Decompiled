.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpExpVisitor;
.source "FindCapturedVars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backJumpPossible:I

.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 426
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 427
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method static checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;
    .locals 6
    .parameter "current"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "Ljava/util/Set",
            "<",
            "Lgnu/expr/LambdaExp;",
            ">;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, seen:Ljava/util/Set;,"Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    iget-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v4, v5, :cond_0

    .line 228
    iget-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 272
    :goto_0
    return-object v4

    .line 229
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v4, v5, :cond_3

    .line 235
    :cond_2
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 240
    .local v2, r:Lgnu/expr/Expression;
    iget-object v4, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-eqz v4, :cond_c

    .line 242
    iget-object v4, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 244
    .local v1, p:Lgnu/expr/LambdaExp;
    invoke-static {v1, p1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v3

    .line 245
    .local v3, t:Lgnu/expr/Expression;
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v3, v4, :cond_7

    .line 247
    if-eqz v2, :cond_5

    iget-object v4, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v2, v4, :cond_6

    .line 249
    :cond_5
    iget-object v2, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 250
    iput-object v1, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_1

    .line 254
    :cond_6
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    move-object v4, v3

    .line 255
    goto :goto_0

    .line 258
    :cond_7
    if-nez v2, :cond_9

    .line 260
    move-object v2, v3

    .line 261
    iget-object v4, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v4, :cond_4

    .line 262
    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->nestedIn(Lgnu/expr/ScopeExp;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    :goto_2
    iput-object v4, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_1

    :cond_8
    iget-object v4, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_2

    .line 264
    :cond_9
    if-eqz v3, :cond_a

    if-ne v2, v3, :cond_b

    :cond_a
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 267
    :cond_b
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v4, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 268
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lgnu/expr/LambdaExp;
    .end local v3           #t:Lgnu/expr/Expression;
    :cond_c
    move-object v4, v2

    .line 272
    goto :goto_0
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 15
    new-instance v0, Lgnu/expr/FindCapturedVars;

    invoke-direct {v0}, Lgnu/expr/FindCapturedVars;-><init>()V

    .line 16
    .local v0, visitor:Lgnu/expr/FindCapturedVars;
    invoke-virtual {v0, p1}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    .line 17
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 6
    .parameter "name"
    .parameter "function"

    .prologue
    const/4 v5, 0x1

    .line 432
    move-object v2, p1

    .line 433
    .local v2, key:Ljava/lang/Object;
    if-eqz p2, :cond_0

    instance-of v3, p1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_0

    .line 435
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-nez v3, :cond_4

    .line 436
    const/4 p2, 0x0

    .line 440
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v3, :cond_5

    .line 442
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 443
    const/4 v1, 0x0

    .line 447
    .local v1, decl:Lgnu/expr/Declaration;
    :goto_1
    if-nez v1, :cond_3

    .line 449
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v3, p1}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 450
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 451
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 452
    if-eqz p2, :cond_1

    .line 453
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 454
    :cond_1
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    const-wide/16 v3, 0x800

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 456
    :cond_2
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 457
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 462
    const-wide/32 v3, 0x50000

    invoke-virtual {v1, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 463
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 464
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_3
    return-object v1

    .line 438
    .end local v1           #decl:Lgnu/expr/Declaration;
    .restart local v2       #key:Ljava/lang/Object;
    :cond_4
    new-instance v2, Lgnu/mapping/KeyPair;

    .end local v2           #key:Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v3, v0

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .local v2, key:Lgnu/mapping/KeyPair;
    goto :goto_0

    .line 446
    .end local v2           #key:Lgnu/mapping/KeyPair;
    :cond_5
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .restart local v1       #decl:Lgnu/expr/Declaration;
    goto :goto_1
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 22
    .parameter "decl"

    .prologue
    .line 294
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v16

    if-nez v16, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v16

    if-nez v16, :cond_0

    .line 300
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v16

    if-nez v16, :cond_0

    .line 303
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 304
    .local v5, curLambda:Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v14

    .line 305
    .local v14, sc:Lgnu/expr/ScopeExp;
    if-nez v14, :cond_4

    new-instance v16, Ljava/lang/Error;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "null context for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " curL:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v16

    .line 306
    :cond_4
    invoke-virtual {v14}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    .line 322
    .local v7, declLambda:Lgnu/expr/LambdaExp;
    const/4 v11, 0x0

    .line 323
    .local v11, oldParent:Lgnu/expr/LambdaExp;
    const/4 v4, 0x0

    .line 324
    .local v4, chain:Lgnu/expr/LambdaExp;
    :goto_1
    if-eq v5, v7, :cond_8

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 326
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    .line 327
    .local v6, curParent:Lgnu/expr/LambdaExp;
    if-eq v6, v11, :cond_5

    .line 330
    iget-object v4, v6, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 331
    move-object v11, v6

    .line 333
    :cond_5
    if-eqz v4, :cond_6

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 336
    :cond_6
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    goto/16 :goto_0

    .line 339
    :cond_7
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 340
    iget-object v4, v4, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 341
    goto :goto_1

    .line 342
    .end local v6           #curParent:Lgnu/expr/LambdaExp;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 344
    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 352
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    .line 354
    .local v15, value:Lgnu/expr/Expression;
    if-eqz v15, :cond_a

    move-object v0, v15

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v16, v0

    if-nez v16, :cond_e

    .line 355
    :cond_a
    const/4 v8, 0x0

    .line 367
    .local v8, declValue:Lgnu/expr/LambdaExp;
    :cond_b
    :goto_2
    const-wide/32 v16, 0x10000

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 370
    move-object v13, v5

    .line 372
    .local v13, parent:Lgnu/expr/LambdaExp;
    :goto_3
    if-ne v13, v7, :cond_10

    .line 382
    .end local v13           #parent:Lgnu/expr/LambdaExp;
    :cond_c
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    .line 384
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 385
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_0

    .line 348
    .end local v8           #declValue:Lgnu/expr/LambdaExp;
    .end local v15           #value:Lgnu/expr/Expression;
    :cond_d
    if-ne v5, v7, :cond_9

    goto/16 :goto_0

    .line 358
    .restart local v15       #value:Lgnu/expr/Expression;
    :cond_e
    move-object v0, v15

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v8, v0

    .line 359
    .restart local v8       #declValue:Lgnu/expr/LambdaExp;
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v16

    if-nez v16, :cond_0

    .line 361
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 362
    const/4 v8, 0x0

    goto :goto_2

    .line 363
    :cond_f
    if-ne v8, v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v16

    if-nez v16, :cond_b

    goto/16 :goto_0

    .line 374
    .restart local v13       #parent:Lgnu/expr/LambdaExp;
    :cond_10
    move-object v0, v13

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    move-object v0, v13

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x800

    invoke-virtual/range {v16 .. v18}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 377
    const-wide/16 v16, 0x800

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_4

    .line 370
    :cond_11
    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    goto :goto_3

    .line 387
    .end local v13           #parent:Lgnu/expr/LambdaExp;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v16

    if-nez v16, :cond_13

    if-nez v8, :cond_0

    .line 389
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v16

    if-nez v16, :cond_15

    .line 391
    move-object v10, v5

    .line 392
    .local v10, heapLambda:Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v16

    if-nez v16, :cond_14

    .line 393
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 394
    :cond_14
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    .line 395
    .restart local v13       #parent:Lgnu/expr/LambdaExp;
    move-object v12, v13

    .end local v11           #oldParent:Lgnu/expr/LambdaExp;
    .local v12, outer:Lgnu/expr/LambdaExp;
    :goto_5
    if-eq v12, v7, :cond_15

    if-eqz v12, :cond_15

    .line 397
    move-object v10, v12

    .line 398
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v16

    if-nez v16, :cond_16

    if-ne v8, v12, :cond_16

    .line 416
    .end local v10           #heapLambda:Lgnu/expr/LambdaExp;
    .end local v12           #outer:Lgnu/expr/LambdaExp;
    .end local v13           #parent:Lgnu/expr/LambdaExp;
    :cond_15
    if-nez v7, :cond_19

    .line 417
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "null declLambda for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " curL:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v3, v0

    .line 419
    .local v3, c:Lgnu/expr/ScopeExp;
    :goto_6
    if-eqz v3, :cond_19

    .line 420
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "- context:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v3, v3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_6

    .line 400
    .end local v3           #c:Lgnu/expr/ScopeExp;
    .restart local v10       #heapLambda:Lgnu/expr/LambdaExp;
    .restart local v12       #outer:Lgnu/expr/LambdaExp;
    .restart local v13       #parent:Lgnu/expr/LambdaExp;
    :cond_16
    iget-object v9, v10, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 401
    .local v9, heapDecl:Lgnu/expr/Declaration;
    if-eqz v9, :cond_17

    const-wide/16 v16, 0x800

    move-object v0, v9

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "static "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " references non-static "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 407
    :cond_17
    move-object v0, v10

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v16, v0

    if-eqz v16, :cond_18

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_18

    move-object v0, v10

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object/from16 v16, v0

    const/16 v17, 0x77

    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    const-string v19, "simple class "

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " requiring lexical link (because of reference to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") - use define-class instead"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_18
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 413
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v12

    .line 414
    goto/16 :goto_5

    .line 422
    .end local v9           #heapDecl:Lgnu/expr/Declaration;
    .end local v10           #heapLambda:Lgnu/expr/LambdaExp;
    .end local v12           #outer:Lgnu/expr/LambdaExp;
    .end local v13           #parent:Lgnu/expr/LambdaExp;
    :cond_19
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_0
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 3
    .parameter "containing"
    .parameter "decl"

    .prologue
    .line 490
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_1

    .line 492
    iget-object v1, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 493
    .local v1, rexp:Lgnu/expr/ReferenceExp;
    iget-object v0, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 494
    .local v0, orig:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 509
    .end local v0           #orig:Lgnu/expr/Declaration;
    .end local v1           #rexp:Lgnu/expr/ReferenceExp;
    :goto_0
    return-void

    .line 501
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/FluidLetExp;

    if-eqz v2, :cond_2

    .line 503
    iget-object p2, p2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    goto :goto_1

    .line 505
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {p0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_0
.end method

.method maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V
    .locals 3
    .parameter "name"
    .parameter "comp"
    .parameter "location"

    .prologue
    .line 158
    invoke-virtual {p2}, Lgnu/expr/Compilation;->warnUndefinedVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/16 v0, 0x77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no declaration seen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 16
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 24
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    move v8, v0

    .line 25
    .local v8, oldBackJumpPossible:I
    const/4 v11, 0x0

    .line 26
    .local v11, skipFunc:Z
    const/4 v10, 0x0

    .line 36
    .local v10, skipArgs:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v14, v0

    instance-of v14, v14, Lgnu/expr/ReferenceExp;

    if-eqz v14, :cond_4

    sget v14, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_4

    .line 39
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v0

    check-cast v3, Lgnu/expr/ReferenceExp;

    iget-object v14, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v14}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 41
    .local v5, decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_0

    iget-object v14, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v14, v14, Lgnu/expr/ModuleExp;

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x1000

    invoke-virtual {v5, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v14

    if-nez v14, :cond_0

    .line 45
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    .line 46
    .local v13, value:Lgnu/expr/Expression;
    instance-of v14, v13, Lgnu/expr/LambdaExp;

    if-eqz v14, :cond_0

    .line 48
    move-object v0, v13

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v7, v0

    .line 49
    .local v7, lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v14

    if-nez v14, :cond_0

    .line 50
    const/4 v11, 0x1

    .line 85
    .end local v5           #decl:Lgnu/expr/Declaration;
    .end local v7           #lexp:Lgnu/expr/LambdaExp;
    .end local v13           #value:Lgnu/expr/Expression;
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 86
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    move-object v14, v0

    if-nez v14, :cond_2

    if-nez v10, :cond_2

    .line 88
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/FindCapturedVars;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 89
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    move v14, v0

    if-le v14, v8, :cond_3

    .line 90
    const/16 v14, 0x8

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 91
    :cond_3
    return-object p1

    .line 56
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v14, v0

    instance-of v14, v14, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v14

    if-lez v14, :cond_0

    .line 58
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v3, v0

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 59
    .local v12, val:Ljava/lang/Object;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v3

    .line 60
    .local v3, arg0:Lgnu/expr/Expression;
    instance-of v14, v12, Lgnu/expr/PrimProcedure;

    if-eqz v14, :cond_0

    instance-of v14, v3, Lgnu/expr/ReferenceExp;

    if-eqz v14, :cond_0

    .line 62
    move-object v0, v12

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v9, v0

    .line 63
    .local v9, pproc:Lgnu/expr/PrimProcedure;
    check-cast v3, Lgnu/expr/ReferenceExp;

    .end local v3           #arg0:Lgnu/expr/Expression;
    iget-object v14, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v14}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 65
    .restart local v5       #decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_0

    iget-object v14, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v14, v14, Lgnu/expr/ModuleExp;

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x1000

    invoke-virtual {v5, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v14

    if-nez v14, :cond_0

    .line 68
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    .line 69
    .restart local v13       #value:Lgnu/expr/Expression;
    instance-of v14, v13, Lgnu/expr/ClassExp;

    if-eqz v14, :cond_0

    .line 71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    .line 72
    .local v4, args:[Lgnu/expr/Expression;
    move-object v0, v13

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v7, v0

    .line 73
    .restart local v7       #lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v14

    if-nez v14, :cond_0

    .line 75
    iget-object v14, v5, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    move-object v0, v14

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 76
    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 77
    const/4 v6, 0x1

    .local v6, i:I
    :goto_1
    array-length v14, v4

    if-ge v6, v14, :cond_5

    .line 78
    aget-object v14, v4, v6

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    :cond_5
    const/4 v10, 0x1

    move v11, v10

    goto/16 :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 121
    .local v1, ret:Lgnu/expr/Expression;
    iget-boolean v2, p1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v2, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 133
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_1

    .line 135
    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v3, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 136
    :cond_1
    return-object v1

    .line 124
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v0, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    const-string v2, "*init*"

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 127
    :cond_3
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V

    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 96
    iget-object v1, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 108
    .local v0, param:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-virtual {p1, v1, v2}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_1
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 164
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v1, :cond_1

    .line 166
    iget-object v3, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, name:Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 170
    .local v0, bind:Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v2, v3, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 171
    invoke-virtual {p0, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 172
    iput-object v0, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 164
    .end local v0           #bind:Lgnu/expr/Declaration;
    .end local v2           #name:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    return-object p0
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 277
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 279
    .local v1, seen:Ljava/util/Set;,"Ljava/util/Set<Lgnu/expr/LambdaExp;>;"
    invoke-static {p1, v1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v0

    .line 280
    .local v0, caller:Lgnu/expr/Expression;
    sget-object v2, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v0, v2, :cond_1

    iget-object v2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_1

    .line 286
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 287
    iget v2, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 289
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    return-object p0
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 180
    iget-object v10, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/BeginExp;

    if-eqz v10, :cond_3

    .line 190
    iget-object v5, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 191
    .local v5, inits:[Lgnu/expr/Expression;
    array-length v6, v5

    .line 192
    .local v6, len:I
    iget-object v10, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v10, Lgnu/expr/BeginExp;

    iget-object v3, v10, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 193
    .local v3, exps:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 194
    .local v4, init_index:I
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 195
    .local v2, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 196
    .local v1, begin_index:I
    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_3

    if-ge v4, v6, :cond_3

    .line 199
    aget-object v9, v3, v1

    .line 200
    .local v9, st:Lgnu/expr/Expression;
    instance-of v10, v9, Lgnu/expr/SetExp;

    if-eqz v10, :cond_2

    .line 202
    move-object v0, v9

    check-cast v0, Lgnu/expr/SetExp;

    move-object v8, v0

    .line 203
    .local v8, set:Lgnu/expr/SetExp;
    iget-object v10, v8, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-ne v10, v2, :cond_2

    aget-object v10, v5, v4

    sget-object v11, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_2

    invoke-virtual {v8}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 207
    iget-object v7, v8, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 208
    .local v7, new_value:Lgnu/expr/Expression;
    instance-of v10, v7, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_0

    instance-of v10, v7, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v10

    if-ne v10, v7, :cond_1

    .line 212
    aput-object v7, v5, v4

    .line 213
    sget-object v10, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v10, v3, v1

    .line 215
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 216
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 197
    .end local v7           #new_value:Lgnu/expr/Expression;
    .end local v8           #set:Lgnu/expr/SetExp;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1           #begin_index:I
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v3           #exps:[Lgnu/expr/Expression;
    .end local v4           #init_index:I
    .end local v5           #inits:[Lgnu/expr/Expression;
    .end local v6           #len:I
    .end local v9           #st:Lgnu/expr/Expression;
    :cond_3
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    return-object p0
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 141
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 142
    .local v1, saveModule:Lgnu/expr/ModuleExp;
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 143
    .local v0, saveDecls:Ljava/util/Hashtable;
    iput-object p1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 147
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 151
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    return-object v2

    .line 151
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    throw v2
.end method

.method protected bridge synthetic visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 471
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 472
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 478
    :cond_0
    const-wide/32 v1, 0x10000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 481
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1, v2, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 484
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 485
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 526
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 527
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 530
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 532
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 536
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 538
    :cond_2
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    return-object p0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 513
    invoke-virtual {p1}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    move-object v0, p1

    .line 521
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
