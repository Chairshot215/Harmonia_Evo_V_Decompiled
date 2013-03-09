.class public Lgnu/kawa/functions/AppendValues;
.super Lgnu/mapping/MethodProc;
.source "AppendValues.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final appendValues:Lgnu/kawa/functions/AppendValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0}, Lgnu/kawa/functions/AppendValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyAppendValues"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/AppendValues;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 23
    sget-object v1, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 26
    .local v1, endMarker:Lgnu/expr/Special;
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, arg:Ljava/lang/Object;
    if-ne v0, v1, :cond_0

    .line 34
    return-void

    .line 29
    :cond_0
    instance-of v2, v0, Lgnu/lists/Consumable;

    if-eqz v2, :cond_1

    .line 30
    check-cast v0, Lgnu/lists/Consumable;

    .end local v0           #arg:Ljava/lang/Object;
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v0, v2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 32
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 38
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 39
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    .line 40
    .local v2, nargs:I
    instance-of v3, p3, Lgnu/expr/ConsumerTarget;

    if-nez v3, :cond_0

    instance-of v3, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v3, :cond_1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 43
    aget-object v3, v0, v1

    invoke-virtual {v3, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1           #i:I
    :cond_1
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 62
    :cond_2
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 66
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method
