.class public Lgnu/kawa/functions/NumberPredicate;
.super Lgnu/mapping/Procedure1;
.source "NumberPredicate.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final EVEN:I = 0x2

.field public static final ODD:I = 0x1


# instance fields
.field language:Lgnu/expr/Language;

.field final op:I


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;I)V
    .locals 2
    .parameter "language"
    .parameter "name"
    .parameter "op"

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    .line 38
    iput p3, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 39
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyNumberPredicate"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/NumberPredicate;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"

    .prologue
    .line 23
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    .line 25
    .local v0, iarg1:Lgnu/math/IntNum;
    iget v2, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    packed-switch v2, :pswitch_data_0

    .line 29
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 27
    :pswitch_0
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOdd()Z

    move-result v1

    .line 31
    .local v1, result:Z
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberPredicate;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 28
    .end local v1           #result:Z
    :pswitch_1
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOdd()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .restart local v1       #result:Z
    :goto_1
    goto :goto_0

    .end local v1           #result:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 50
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 51
    .local v1, args:[Lgnu/expr/Expression;
    array-length v6, v1

    if-ne v6, v7, :cond_3

    iget v6, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v6, v8, :cond_3

    .line 53
    :cond_0
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 54
    .local v0, arg0:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-static {v6}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v3

    .line 55
    .local v3, kind:I
    const/4 v6, 0x4

    if-gt v3, v6, :cond_3

    .line 57
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 58
    .local v5, wtype:Lgnu/bytecode/PrimType;
    invoke-static {v5}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    .line 59
    .local v4, wtarget:Lgnu/expr/Target;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 60
    .local v2, code:Lgnu/bytecode/CodeAttr;
    iget v6, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v6, v8, :cond_1

    .line 61
    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 62
    :cond_1
    invoke-virtual {v0, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 63
    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 64
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 65
    iget v6, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v6, v8, :cond_2

    .line 66
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 67
    :cond_2
    sget-object v6, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, v6}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 72
    .end local v0           #arg0:Lgnu/expr/Expression;
    .end local v2           #code:Lgnu/bytecode/CodeAttr;
    .end local v3           #kind:I
    .end local v4           #wtarget:Lgnu/expr/Target;
    .end local v5           #wtype:Lgnu/bytecode/PrimType;
    :goto_0
    return-void

    .line 71
    :cond_3
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x1001

    return v0
.end method
