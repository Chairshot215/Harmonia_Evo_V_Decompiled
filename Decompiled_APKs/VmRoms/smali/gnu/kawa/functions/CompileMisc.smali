.class public Lgnu/kawa/functions/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field static final CONVERT:I = 0x2

.field static final NOT:I = 0x3

.field static coerceMethod:Lgnu/bytecode/Method;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field code:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const-string v0, "kawa.lang.Continuation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 0
    .parameter "proc"
    .parameter "code"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    .line 21
    return-void
.end method

.method private static canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .locals 6
    .parameter "exp"

    .prologue
    const/4 v5, 0x1

    .line 380
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 382
    .local v2, args:[Lgnu/expr/Expression;
    array-length v4, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v1, v2, v4

    .local v1, arg0:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 384
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 385
    .local v3, lexp:Lgnu/expr/LambdaExp;
    iget v4, v3, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    .line 391
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static compileCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 6
    .parameter "exp"
    .parameter "comp"
    .parameter "target"
    .parameter "proc"

    .prologue
    .line 313
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 314
    .local v2, lambda:Lgnu/expr/LambdaExp;
    if-nez v2, :cond_0

    .line 316
    invoke-static {p0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 375
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-void

    .line 319
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p3

    .line 320
    .local p3, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 321
    .local v1, param:Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result p0

    if-nez p0, :cond_2

    .line 323
    new-instance v0, Lgnu/kawa/functions/CompileTimeContinuation;

    invoke-direct {v0}, Lgnu/kawa/functions/CompileTimeContinuation;-><init>()V

    .line 324
    .local v0, contProxy:Lgnu/kawa/functions/CompileTimeContinuation;
    instance-of p0, p2, Lgnu/expr/StackTarget;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 325
    .local p0, rtype:Lgnu/bytecode/Type;
    :goto_1
    iget-object v3, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {v1, v3}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v3

    .line 327
    .local v3, runFinallyBlocks:Z
    invoke-virtual {p3, p0, v3}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object p0

    .line 328
    .local p0, bl:Lgnu/bytecode/ExitableBlock;
    iput-object p0, v0, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 329
    iput-object p2, v0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 330
    new-instance p0, Lgnu/expr/QuoteExp;

    .end local p0           #bl:Lgnu/bytecode/ExitableBlock;
    invoke-direct {p0, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 331
    iget-object p0, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 332
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    goto :goto_0

    .line 324
    .end local v3           #runFinallyBlocks:Z
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 336
    .end local v0           #contProxy:Lgnu/kawa/functions/CompileTimeContinuation;
    :cond_2
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object p0

    .line 337
    .local p0, sc:Lgnu/bytecode/Scope;
    sget-object v0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    .end local v1           #param:Lgnu/expr/Declaration;
    move-result-object v1

    .line 338
    .local v1, contVar:Lgnu/bytecode/Variable;
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .line 339
    .local v0, contDecl:Lgnu/expr/Declaration;
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    .end local p0           #sc:Lgnu/bytecode/Scope;
    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 340
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 341
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 342
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v3, "<init>"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 343
    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 344
    const/4 p0, 0x0

    instance-of v3, p2, Lgnu/expr/IgnoreTarget;

    if-nez v3, :cond_3

    instance-of v3, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_5

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p3, p0, v3}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 345
    new-instance p0, Lgnu/expr/ApplyExp;

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 346
    .local p0, app:Lgnu/expr/ApplyExp;
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 348
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result p0

    .end local p0           #app:Lgnu/expr/ApplyExp;
    if-eqz p0, :cond_4

    .line 350
    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 351
    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 352
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v0, "invoked"

    .end local v0           #contDecl:Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 354
    :cond_4
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 357
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 358
    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 359
    instance-of p0, p2, Lgnu/expr/ConsumerTarget;

    if-eqz p0, :cond_6

    .line 361
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 362
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string p1, "handleException$X"

    .end local p1
    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p2
    move-result-object p0

    .line 363
    .local p0, handleMethod:Lgnu/bytecode/Method;
    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 371
    .end local v1           #contVar:Lgnu/bytecode/Variable;
    :goto_3
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 373
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 374
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0

    .line 344
    .end local p0           #handleMethod:Lgnu/bytecode/Method;
    .restart local v0       #contDecl:Lgnu/expr/Declaration;
    .restart local v1       #contVar:Lgnu/bytecode/Variable;
    .restart local p1
    .restart local p2
    :cond_5
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_2

    .line 367
    .end local v0           #contDecl:Lgnu/expr/Declaration;
    :cond_6
    sget-object p0, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v0, "handleException"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v1           #contVar:Lgnu/bytecode/Variable;
    move-result-object p0

    .line 368
    .restart local p0       #handleMethod:Lgnu/bytecode/Method;
    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 369
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_3
.end method

.method public static compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 232
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 233
    .local v0, args:[Lgnu/expr/Expression;
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 234
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong number of arguments to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 236
    .local v1, code:Lgnu/bytecode/CodeAttr;
    aget-object v3, v0, v8

    invoke-static {v3}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 237
    .local v2, type:Lgnu/bytecode/Type;
    if-eqz v2, :cond_2

    .line 239
    aget-object v3, v0, v7

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 240
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    if-nez v3, :cond_3

    .line 247
    const-string v3, "gnu.bytecode.Type"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    .line 249
    :cond_3
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    if-nez v3, :cond_4

    .line 251
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->typeType:Lgnu/bytecode/ClassType;

    const-string v4, "coerceFromObject"

    sget-object v5, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    .line 256
    :cond_4
    aget-object v3, v0, v8

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 257
    aget-object v3, v0, v7

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    sget-object v3, Lgnu/kawa/functions/CompileMisc;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 259
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public static forConvert(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 2
    .parameter "proc"

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static forNot(Ljava/lang/Object;)Lgnu/kawa/functions/CompileMisc;
    .locals 2
    .parameter "proc"

    .prologue
    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileMisc;

    check-cast p0, Lgnu/mapping/Procedure;

    .end local p0
    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileMisc;-><init>(Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static validateApplyAppendValues(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 140
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 141
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 142
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 148
    :goto_0
    return-object v2

    .line 143
    :cond_0
    array-length v2, v0

    if-nez v2, :cond_1

    .line 144
    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v1

    .line 146
    .local v1, folded:Lgnu/expr/Expression;
    if-eq v1, p0, :cond_2

    move-object v2, v1

    .line 147
    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 148
    goto :goto_0
.end method

.method public static validateApplyCallCC(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 294
    invoke-static {p0}, Lgnu/kawa/functions/CompileMisc;->canInlineCallCC(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 295
    .local v1, lexp:Lgnu/expr/LambdaExp;
    if-eqz v1, :cond_0

    .line 297
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 298
    iput-object p0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 299
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 300
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 301
    .local v0, contDecl:Lgnu/expr/Declaration;
    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    sget-object v2, Lgnu/kawa/functions/CompileMisc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 304
    .end local v0           #contDecl:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 305
    return-object p0
.end method

.method public static validateApplyConstantFunction0(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 51
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    .line 52
    .local v1, nargs:I
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p3, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 57
    .end local v0           #message:Ljava/lang/String;
    .end local p3
    :goto_0
    return-object v2

    .restart local p3
    :cond_0
    check-cast p3, Lgnu/kawa/functions/ConstantFunction0;

    .end local p3
    iget-object v2, p3, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    goto :goto_0
.end method

.method public static validateApplyConvert(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 64
    .local v1, comp:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 65
    .local v2, language:Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 66
    .local v0, args:[Lgnu/expr/Expression;
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 68
    aget-object v4, v0, v6

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v6

    .line 69
    aget-object v4, v0, v6

    invoke-virtual {v2, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 70
    .local v3, type:Lgnu/bytecode/Type;
    instance-of v4, v3, Lgnu/bytecode/Type;

    if-eqz v4, :cond_0

    .line 72
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v0, v6

    .line 73
    aget-object v4, v0, v7

    invoke-virtual {p1, v4, v3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v7

    .line 74
    invoke-static {v3, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 75
    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 80
    .end local v3           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto :goto_0
.end method

.method public static validateApplyFormat(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 98
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 99
    .local v0, retType:Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 100
    .local p1, args:[Lgnu/expr/Expression;
    array-length p2, p1

    .end local p2
    if-lez p2, :cond_6

    .line 102
    const-string p2, "gnu.kawa.functions.Format"

    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 103
    .local v1, typeFormat:Lgnu/bytecode/ClassType;
    const/4 p2, 0x0

    aget-object p2, p1, p2

    invoke-virtual {p2}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object p2

    .line 104
    .local p2, f:Ljava/lang/Object;
    const/4 p3, 0x0

    aget-object p3, p1, p3

    .end local p3
    invoke-virtual {p3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    .line 105
    .local p3, ftype:Lgnu/bytecode/Type;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v2, :cond_0

    sget-object v2, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p3, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local p0
    if-ne p2, p0, :cond_1

    const/4 p0, 0x1

    .line 108
    .local p0, skip:I
    :goto_0
    array-length p2, p1

    .end local p2           #f:Ljava/lang/Object;
    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p0

    new-array p2, p2, [Lgnu/expr/Expression;

    .line 109
    .local p2, xargs:[Lgnu/expr/Expression;
    const/4 p3, 0x0

    new-instance v2, Lgnu/expr/QuoteExp;

    .end local p3           #ftype:Lgnu/bytecode/Type;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct {v2, v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    aput-object v2, p2, p3

    .line 110
    const/4 p3, 0x1

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, p0, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance p0, Lgnu/expr/ApplyExp;

    .end local p0           #skip:I
    const-string p3, "formatToString"

    const/4 v2, 0x2

    invoke-virtual {v1, p3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 112
    .local p0, ae:Lgnu/expr/ApplyExp;
    sget-object p2, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .end local p2           #xargs:[Lgnu/expr/Expression;
    invoke-virtual {p0, p2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    move-object p2, p0

    move-object p0, p1

    .end local p1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    move-object p1, v0

    .line 133
    .end local v0           #retType:Lgnu/bytecode/Type;
    .end local v1           #typeFormat:Lgnu/bytecode/ClassType;
    .local p1, retType:Lgnu/bytecode/Type;
    :goto_1
    return-object p2

    .line 107
    .end local p0           #args:[Lgnu/expr/Expression;
    .restart local v0       #retType:Lgnu/bytecode/Type;
    .restart local v1       #typeFormat:Lgnu/bytecode/ClassType;
    .local p1, args:[Lgnu/expr/Expression;
    .local p2, f:Ljava/lang/Object;
    .restart local p3       #ftype:Lgnu/bytecode/Type;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 115
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p2, v2, :cond_3

    const-string v2, "java.io.Writer"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {p3, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    if-ne p2, p0, :cond_4

    .line 120
    array-length p0, p1

    new-array p0, p0, [Lgnu/expr/Expression;

    .line 121
    .local p0, xargs:[Lgnu/expr/Expression;
    const/4 p2, 0x0

    sget-object p3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .end local p2           #f:Ljava/lang/Object;
    .end local p3           #ftype:Lgnu/bytecode/Type;
    aput-object p3, p0, p2

    .line 122
    const/4 p2, 0x1

    const/4 p3, 0x1

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, p2, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    move-object p0, p0

    .end local p1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    move-object p1, p0

    .line 125
    .end local p0           #args:[Lgnu/expr/Expression;
    .restart local p1       #args:[Lgnu/expr/Expression;
    :cond_4
    new-instance p0, Lgnu/expr/ApplyExp;

    const-string p2, "formatToWriter"

    const/4 p3, 0x3

    invoke-virtual {v1, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 126
    .local p0, ae:Lgnu/expr/ApplyExp;
    sget-object p2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    move-object p2, p0

    move-object p0, p1

    .end local p1           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    move-object p1, v0

    .line 127
    .end local v0           #retType:Lgnu/bytecode/Type;
    .local p1, retType:Lgnu/bytecode/Type;
    goto :goto_1

    .line 129
    .restart local v0       #retType:Lgnu/bytecode/Type;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, args:[Lgnu/expr/Expression;
    .restart local p2       #f:Ljava/lang/Object;
    .restart local p3       #ftype:Lgnu/bytecode/Type;
    :cond_5
    const-string p2, "java.io.OutputStream"

    .end local p2           #f:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p2

    invoke-virtual {p3, p2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 130
    sget-object p2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 132
    .end local v0           #retType:Lgnu/bytecode/Type;
    .end local v1           #typeFormat:Lgnu/bytecode/ClassType;
    .end local p3           #ftype:Lgnu/bytecode/Type;
    .local p2, retType:Lgnu/bytecode/Type;
    :goto_2
    invoke-virtual {p0, p2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 133
    const/4 p0, 0x0

    move-object v5, p1

    .end local p1           #args:[Lgnu/expr/Expression;
    .local v5, args:[Lgnu/expr/Expression;
    move-object p1, p2

    .end local p2           #retType:Lgnu/bytecode/Type;
    .local p1, retType:Lgnu/bytecode/Type;
    move-object p2, p0

    move-object p0, v5

    .end local v5           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    goto :goto_1

    .restart local v0       #retType:Lgnu/bytecode/Type;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, args:[Lgnu/expr/Expression;
    :cond_6
    move-object p2, v0

    .end local v0           #retType:Lgnu/bytecode/Type;
    .restart local p2       #retType:Lgnu/bytecode/Type;
    goto :goto_2
.end method

.method public static validateApplyMakeProcedure(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 13
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 155
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 156
    .local v3, args:[Lgnu/expr/Expression;
    array-length v1, v3

    .line 157
    .local v1, alen:I
    const/4 v9, 0x0

    .line 158
    .local v9, method:Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 159
    .local v4, countMethods:I
    const/4 v10, 0x0

    .line 160
    .local v10, name:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 162
    aget-object v2, v3, v5

    .line 164
    .local v2, arg:Lgnu/expr/Expression;
    instance-of v12, v2, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_2

    move-object v0, v2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, key:Ljava/lang/Object;
    instance-of v12, v6, Lgnu/expr/Keyword;

    if-eqz v12, :cond_2

    .line 167
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #key:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, keyword:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    aget-object v11, v3, v5

    .line 169
    .local v11, next:Lgnu/expr/Expression;
    const-string v12, "name"

    if-ne v7, v12, :cond_1

    .line 171
    instance-of v12, v11, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_0

    .line 172
    check-cast v11, Lgnu/expr/QuoteExp;

    .end local v11           #next:Lgnu/expr/Expression;
    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 160
    .end local v7           #keyword:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    .restart local v7       #keyword:Ljava/lang/String;
    .restart local v11       #next:Lgnu/expr/Expression;
    :cond_1
    const-string v12, "method"

    if-ne v7, v12, :cond_0

    .line 176
    add-int/lit8 v4, v4, 0x1

    .line 177
    move-object v9, v11

    goto :goto_1

    .line 184
    .end local v7           #keyword:Ljava/lang/String;
    .end local v11           #next:Lgnu/expr/Expression;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 185
    move-object v9, v2

    goto :goto_1

    .line 188
    .end local v2           #arg:Lgnu/expr/Expression;
    :cond_3
    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    instance-of v12, v9, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_7

    .line 190
    move-object v0, v9

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v8, v0

    .line 191
    .local v8, lexp:Lgnu/expr/LambdaExp;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_6

    .line 193
    aget-object v2, v3, v5

    .line 195
    .restart local v2       #arg:Lgnu/expr/Expression;
    instance-of v12, v2, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_4

    check-cast v2, Lgnu/expr/QuoteExp;

    .end local v2           #arg:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #key:Ljava/lang/Object;
    instance-of v12, v6, Lgnu/expr/Keyword;

    if-eqz v12, :cond_4

    .line 198
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #key:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    .line 199
    .restart local v7       #keyword:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    aget-object v11, v3, v5

    .line 200
    .restart local v11       #next:Lgnu/expr/Expression;
    const-string v12, "name"

    if-ne v7, v12, :cond_5

    .line 201
    invoke-virtual {v8, v10}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 191
    .end local v7           #keyword:Ljava/lang/String;
    .end local v11           #next:Lgnu/expr/Expression;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 202
    .restart local v7       #keyword:Ljava/lang/String;
    .restart local v11       #next:Lgnu/expr/Expression;
    :cond_5
    const-string v12, "method"

    if-eq v7, v12, :cond_4

    .line 205
    sget-object v12, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v12, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v12

    invoke-virtual {v8, v12, v11}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .end local v7           #keyword:Ljava/lang/String;
    .end local v11           #next:Lgnu/expr/Expression;
    :cond_6
    move-object v12, v9

    .line 210
    .end local v8           #lexp:Lgnu/expr/LambdaExp;
    :goto_4
    return-object v12

    :cond_7
    move-object v12, p0

    goto :goto_4
.end method

.method public static validateApplyMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 22
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "xproc"

    .prologue
    .line 430
    move-object/from16 v0, p3

    check-cast v0, Lgnu/kawa/functions/Map;

    move-object v12, v0

    .line 431
    .local v12, mproc:Lgnu/kawa/functions/Map;
    move-object v0, v12

    iget-boolean v0, v0, Lgnu/kawa/functions/Map;->collect:Z

    move/from16 p3, v0

    .line 434
    .local p3, collect:Z
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p2

    .line 436
    .local p2, args:[Lgnu/expr/Expression;
    move-object/from16 v0, p2

    array-length v0, v0

    move v4, v0

    .line 437
    .local v4, nargs:I
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .line 533
    .end local v4           #nargs:I
    .end local p1
    .end local p2           #args:[Lgnu/expr/Expression;
    .local p0, nargs:I
    :goto_0
    return-object p1

    .line 440
    .restart local v4       #nargs:I
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2       #args:[Lgnu/expr/Expression;
    :cond_0
    add-int/lit8 v13, v4, -0x1

    .line 442
    .end local v4           #nargs:I
    .local v13, nargs:I
    const/16 p0, 0x0

    aget-object v15, p2, p0

    .line 446
    .end local p0           #exp:Lgnu/expr/ApplyExp;
    .local v15, proc:Lgnu/expr/Expression;
    invoke-virtual {v15}, Lgnu/expr/Expression;->side_effects()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x1

    move/from16 v17, p0

    .line 449
    .local v17, procSafeForMultipleEvaluation:Z
    :goto_1
    const/16 p0, 0x1

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 450
    .local p0, inits1:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    aput-object v15, p0, v4

    .line 451
    new-instance v8, Lgnu/expr/LetExp;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 452
    .local v8, let1:Lgnu/expr/LetExp;
    const-string p0, "%proc"

    .end local p0           #inits1:[Lgnu/expr/Expression;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v16

    .line 454
    .local v16, procDecl:Lgnu/expr/Declaration;
    const/16 p0, 0x0

    aget-object p0, p2, p0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 457
    const/16 p0, 0x1

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 458
    .local p0, inits2:[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/LetExp;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 459
    .local v9, let2:Lgnu/expr/LetExp;
    invoke-virtual {v8, v9}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 460
    new-instance v10, Lgnu/expr/LambdaExp;

    if-eqz p3, :cond_2

    add-int/lit8 v4, v13, 0x1

    :goto_2
    invoke-direct {v10, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 461
    .local v10, lexp:Lgnu/expr/LambdaExp;
    const/4 v4, 0x0

    aput-object v10, p0, v4

    .line 462
    const-string p0, "%loop"

    .end local p0           #inits2:[Lgnu/expr/Expression;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v11

    .line 463
    .local v11, loopDecl:Lgnu/expr/Declaration;
    invoke-virtual {v11, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 466
    new-array v5, v13, [Lgnu/expr/Expression;

    .line 467
    .local v5, inits3:[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/LetExp;

    invoke-direct {v6, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 469
    .local v6, let3:Lgnu/expr/LetExp;
    new-array v7, v13, [Lgnu/expr/Declaration;

    .line 470
    .local v7, largs:[Lgnu/expr/Declaration;
    new-array v14, v13, [Lgnu/expr/Declaration;

    .line 471
    .local v14, pargs:[Lgnu/expr/Declaration;
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v4, p0

    .end local p0           #i:I
    .local v4, i:I
    :goto_3
    if-ge v4, v13, :cond_3

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "arg"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 474
    .local p0, argName:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v18

    aput-object v18, v7, v4

    .line 475
    sget-object v18, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p0

    .end local p0           #argName:Ljava/lang/String;
    aput-object p0, v14, v4

    .line 476
    new-instance p0, Lgnu/expr/ReferenceExp;

    aget-object v18, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object p0, v5, v4

    .line 477
    aget-object p0, v14, v4

    aget-object v18, v5, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 471
    add-int/lit8 p0, v4, 0x1

    .end local v4           #i:I
    .local p0, i:I
    move/from16 v4, p0

    .end local p0           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 446
    .end local v4           #i:I
    .end local v5           #inits3:[Lgnu/expr/Expression;
    .end local v6           #let3:Lgnu/expr/LetExp;
    .end local v7           #largs:[Lgnu/expr/Declaration;
    .end local v8           #let1:Lgnu/expr/LetExp;
    .end local v9           #let2:Lgnu/expr/LetExp;
    .end local v10           #lexp:Lgnu/expr/LambdaExp;
    .end local v11           #loopDecl:Lgnu/expr/Declaration;
    .end local v14           #pargs:[Lgnu/expr/Declaration;
    .end local v16           #procDecl:Lgnu/expr/Declaration;
    .end local v17           #procSafeForMultipleEvaluation:Z
    :cond_1
    const/16 p0, 0x0

    move/from16 v17, p0

    goto/16 :goto_1

    .restart local v8       #let1:Lgnu/expr/LetExp;
    .restart local v9       #let2:Lgnu/expr/LetExp;
    .restart local v16       #procDecl:Lgnu/expr/Declaration;
    .restart local v17       #procSafeForMultipleEvaluation:Z
    .local p0, inits2:[Lgnu/expr/Expression;
    :cond_2
    move v4, v13

    .line 460
    goto :goto_2

    .line 479
    .end local p0           #inits2:[Lgnu/expr/Expression;
    .restart local v4       #i:I
    .restart local v5       #inits3:[Lgnu/expr/Expression;
    .restart local v6       #let3:Lgnu/expr/LetExp;
    .restart local v7       #largs:[Lgnu/expr/Declaration;
    .restart local v10       #lexp:Lgnu/expr/LambdaExp;
    .restart local v11       #loopDecl:Lgnu/expr/Declaration;
    .restart local v14       #pargs:[Lgnu/expr/Declaration;
    :cond_3
    if-eqz p3, :cond_4

    const-string p0, "result"

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p0

    move-object/from16 v18, p0

    .line 480
    .local v18, resultDecl:Lgnu/expr/Declaration;
    :goto_4
    add-int/lit8 p0, v13, 0x1

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 481
    .local p0, doArgs:[Lgnu/expr/Expression;
    if-eqz p3, :cond_5

    add-int/lit8 v4, v13, 0x1

    .end local v4           #i:I
    :goto_5
    new-array v5, v4, [Lgnu/expr/Expression;

    .line 482
    .local v5, recArgs:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    if-ge v4, v13, :cond_6

    .line 484
    add-int/lit8 v19, v4, 0x1

    new-instance v20, Lgnu/expr/ReferenceExp;

    aget-object v21, v14, v4

    invoke-direct/range {v20 .. v21}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v21, "car"

    invoke-static/range {v20 .. v21}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v20

    aput-object v20, p0, v19

    .line 485
    new-instance v19, Lgnu/expr/ReferenceExp;

    aget-object v20, v14, v4

    invoke-direct/range {v19 .. v20}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v20, "cdr"

    invoke-static/range {v19 .. v20}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v19

    aput-object v19, v5, v4

    .line 482
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 479
    .end local v18           #resultDecl:Lgnu/expr/Declaration;
    .end local p0           #doArgs:[Lgnu/expr/Expression;
    .local v5, inits3:[Lgnu/expr/Expression;
    :cond_4
    const/16 p0, 0x0

    move-object/from16 v18, p0

    goto :goto_4

    .restart local v18       #resultDecl:Lgnu/expr/Declaration;
    .restart local p0       #doArgs:[Lgnu/expr/Expression;
    :cond_5
    move v4, v13

    .line 481
    goto :goto_5

    .line 487
    .local v5, recArgs:[Lgnu/expr/Expression;
    :cond_6
    if-nez v17, :cond_f

    .line 488
    new-instance v4, Lgnu/expr/ReferenceExp;

    .end local v4           #i:I
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 489
    .end local v15           #proc:Lgnu/expr/Expression;
    .local v4, proc:Lgnu/expr/Expression;
    :goto_7
    const/4 v14, 0x0

    aput-object v4, p0, v14

    .line 490
    .end local v14           #pargs:[Lgnu/expr/Declaration;
    new-instance v4, Lgnu/expr/ApplyExp;

    .end local v4           #proc:Lgnu/expr/Expression;
    new-instance v14, Lgnu/expr/ReferenceExp;

    iget-object v15, v12, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v14, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v0, v4

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 p0, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    .end local p0           #doArgs:[Lgnu/expr/Expression;
    move-result-object v4

    .line 491
    .local v4, doit:Lgnu/expr/Expression;
    if-eqz p3, :cond_7

    .line 493
    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 494
    .local p0, consArgs:[Lgnu/expr/Expression;
    const/4 v14, 0x0

    aput-object v4, p0, v14

    .line 495
    const/4 v14, 0x1

    new-instance v15, Lgnu/expr/ReferenceExp;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v15, p0, v14

    .line 496
    sget-object v14, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v15, "make"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .end local p0           #consArgs:[Lgnu/expr/Expression;
    aput-object p0, v5, v13

    .line 499
    :cond_7
    new-instance p0, Lgnu/expr/ApplyExp;

    new-instance v14, Lgnu/expr/ReferenceExp;

    invoke-direct {v14, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    .end local v5           #recArgs:[Lgnu/expr/Expression;
    move-result-object p0

    .line 500
    .local p0, rec:Lgnu/expr/Expression;
    if-eqz p3, :cond_8

    .end local p0           #rec:Lgnu/expr/Expression;
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 501
    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 p0, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 502
    iput-object v6, v10, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 503
    if-eqz p3, :cond_9

    add-int/lit8 p0, v13, 0x1

    :goto_9
    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v6, v0

    .line 504
    .local v6, initArgs:[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/QuoteExp;

    .end local v4           #doit:Lgnu/expr/Expression;
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 505
    .local v4, empty:Lgnu/expr/QuoteExp;
    move/from16 p0, v13

    .end local v16           #procDecl:Lgnu/expr/Declaration;
    .local p0, i:I
    :goto_a
    add-int/lit8 v5, p0, -0x1

    .end local p0           #i:I
    .local v5, i:I
    if-ltz v5, :cond_b

    .line 507
    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 508
    .local p0, compArgs:[Lgnu/expr/Expression;
    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/ReferenceExp;

    aget-object v16, v7, v5

    invoke-direct/range {v15 .. v16}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v15, p0, v14

    .line 509
    const/4 v14, 0x1

    aput-object v4, p0, v14

    .line 510
    if-eqz p3, :cond_a

    new-instance v14, Lgnu/expr/ReferenceExp;

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 513
    .local v14, result:Lgnu/expr/Expression;
    :goto_b
    new-instance v15, Lgnu/expr/IfExp;

    new-instance v16, Lgnu/expr/ApplyExp;

    move-object v0, v12

    iget-object v0, v0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/16 p0, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    .end local p0           #compArgs:[Lgnu/expr/Expression;
    move-result-object p0

    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v15, v10, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 515
    add-int/lit8 p0, v5, 0x1

    aget-object p0, p2, p0

    aput-object p0, v6, v5

    move/from16 p0, v5

    .line 516
    .end local v5           #i:I
    .local p0, i:I
    goto :goto_a

    .line 500
    .end local v14           #result:Lgnu/expr/Expression;
    .local v4, doit:Lgnu/expr/Expression;
    .local v6, let3:Lgnu/expr/LetExp;
    .restart local v16       #procDecl:Lgnu/expr/Declaration;
    .local p0, rec:Lgnu/expr/Expression;
    :cond_8
    new-instance v5, Lgnu/expr/BeginExp;

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 p0, v5

    goto/16 :goto_8

    .end local p0           #rec:Lgnu/expr/Expression;
    :cond_9
    move/from16 p0, v13

    .line 503
    goto :goto_9

    .line 510
    .end local v16           #procDecl:Lgnu/expr/Declaration;
    .local v4, empty:Lgnu/expr/QuoteExp;
    .restart local v5       #i:I
    .local v6, initArgs:[Lgnu/expr/Expression;
    .local p0, compArgs:[Lgnu/expr/Expression;
    :cond_a
    sget-object v14, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_b

    .line 517
    .end local p0           #compArgs:[Lgnu/expr/Expression;
    :cond_b
    if-eqz p3, :cond_c

    .line 518
    aput-object v4, v6, v13

    .line 520
    :cond_c
    new-instance p0, Lgnu/expr/ApplyExp;

    new-instance p2, Lgnu/expr/ReferenceExp;

    .end local p2           #args:[Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    .line 521
    .local p0, body:Lgnu/expr/Expression;
    if-eqz p3, :cond_d

    .line 523
    const/16 p1, 0x1

    move/from16 v0, p1

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p1, v0

    .line 524
    .local p1, reverseArgs:[Lgnu/expr/Expression;
    const/16 p2, 0x0

    aput-object p0, p1, p2

    .line 525
    sget-object p0, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    .end local p0           #body:Lgnu/expr/Expression;
    const-string p2, "reverseInPlace"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 528
    .end local p1           #reverseArgs:[Lgnu/expr/Expression;
    .restart local p0       #body:Lgnu/expr/Expression;
    :cond_d
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 530
    if-eqz v17, :cond_e

    move/from16 p0, v13

    .end local v13           #nargs:I
    .local p0, nargs:I
    move-object/from16 p1, v9

    .line 531
    goto/16 :goto_0

    .restart local v13       #nargs:I
    .local p0, body:Lgnu/expr/Expression;
    :cond_e
    move/from16 p0, v13

    .end local v13           #nargs:I
    .local p0, nargs:I
    move-object/from16 p1, v8

    .line 533
    goto/16 :goto_0

    .local v4, i:I
    .local v5, recArgs:[Lgnu/expr/Expression;
    .local v6, let3:Lgnu/expr/LetExp;
    .restart local v13       #nargs:I
    .local v14, pargs:[Lgnu/expr/Declaration;
    .restart local v15       #proc:Lgnu/expr/Expression;
    .restart local v16       #procDecl:Lgnu/expr/Declaration;
    .local p0, doArgs:[Lgnu/expr/Expression;
    .local p1, visitor:Lgnu/expr/InlineCalls;
    .restart local p2       #args:[Lgnu/expr/Expression;
    :cond_f
    move-object v4, v15

    .end local v15           #proc:Lgnu/expr/Expression;
    .local v4, proc:Lgnu/expr/Expression;
    goto/16 :goto_7
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 87
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 217
    check-cast p3, Lgnu/kawa/functions/ValuesMap;

    .end local p3
    invoke-static {p0, p3}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 218
    .local v0, lexp:Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 221
    iput-object p0, v0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 222
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    iput-object v1, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 224
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 35
    iget v0, p0, Lgnu/kawa/functions/CompileMisc;->code:I

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 38
    :pswitch_0
    iget-object p0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/functions/Convert;

    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileConvert(Lgnu/kawa/functions/Convert;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    :goto_0
    return-void

    .line 41
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/Not;

    invoke-virtual {p0, v0, p1, p2, p3}, Lgnu/kawa/functions/CompileMisc;->compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public compileNot(Lgnu/kawa/functions/Not;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 265
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v1, v9, v10

    .line 266
    .local v1, arg:Lgnu/expr/Expression;
    iget-object v5, p1, Lgnu/kawa/functions/Not;->language:Lgnu/expr/Language;

    .line 267
    .local v5, language:Lgnu/expr/Language;
    instance-of v9, p4, Lgnu/expr/ConditionalTarget;

    if-eqz v9, :cond_1

    .line 269
    move-object v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v3, v0

    .line 270
    .local v3, ctarget:Lgnu/expr/ConditionalTarget;
    new-instance v6, Lgnu/expr/ConditionalTarget;

    iget-object v9, v3, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    iget-object v10, v3, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-direct {v6, v9, v10, v5}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 272
    .local v6, sub_target:Lgnu/expr/ConditionalTarget;
    iget-boolean v9, v3, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 273
    invoke-virtual {v1, p3, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 289
    .end local v3           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v6           #sub_target:Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .line 272
    .restart local v3       #ctarget:Lgnu/expr/ConditionalTarget;
    .restart local v6       #sub_target:Lgnu/expr/ConditionalTarget;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 276
    .end local v3           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v6           #sub_target:Lgnu/expr/ConditionalTarget;
    :cond_1
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 277
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 278
    .local v8, type:Lgnu/bytecode/Type;
    instance-of v9, p4, Lgnu/expr/StackTarget;

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_2

    .line 280
    invoke-virtual {v1, p3, p4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 281
    invoke-virtual {p4}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v2, v9}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 285
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v7

    .line 286
    .local v7, trueExp:Lgnu/expr/QuoteExp;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    .line 287
    .local v4, falseExp:Lgnu/expr/QuoteExp;
    invoke-static {v1, v4, v7, p3, p4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method
