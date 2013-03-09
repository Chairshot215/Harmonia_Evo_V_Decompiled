.class Lorg/javia/arity/SimpleCodeGen;
.super Lorg/javia/arity/TokenConsumer;
.source "SimpleCodeGen.java"


# static fields
.field static final HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;


# instance fields
.field code:Lorg/javia/arity/ByteStack;

.field consts:Lorg/javia/arity/DoubleStack;

.field exception:Lorg/javia/arity/SyntaxException;

.field funcs:Lorg/javia/arity/FunctionStack;

.field symbols:Lorg/javia/arity/Symbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/javia/arity/SyntaxException;

    invoke-direct {v0}, Lorg/javia/arity/SyntaxException;-><init>()V

    sput-object v0, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 28
    new-instance v0, Lorg/javia/arity/ByteStack;

    invoke-direct {v0}, Lorg/javia/arity/ByteStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    .line 29
    new-instance v0, Lorg/javia/arity/DoubleStack;

    invoke-direct {v0}, Lorg/javia/arity/DoubleStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    .line 30
    new-instance v0, Lorg/javia/arity/FunctionStack;

    invoke-direct {v0}, Lorg/javia/arity/FunctionStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    .line 38
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    .line 39
    return-void
.end method


# virtual methods
.method getFun()Lorg/javia/arity/CompiledFunction;
    .locals 6

    .prologue
    .line 114
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v2}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v3, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v3}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v4, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v4}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v5}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v0
.end method

.method getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    iget v3, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v2, v0, v3}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' with arity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v1, v0, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Derivative expects arity 1 but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 67
    :cond_2
    if-eqz v1, :cond_3

    iget-byte v3, v2, Lorg/javia/arity/Symbol;->op:B

    if-lez v3, :cond_3

    iget-object v3, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-nez v3, :cond_3

    .line 68
    iget-byte v3, v2, Lorg/javia/arity/Symbol;->op:B

    invoke-static {v3}, Lorg/javia/arity/CompiledFunction;->makeOpFunction(I)Lorg/javia/arity/Function;

    move-result-object v3

    iput-object v3, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    .line 70
    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-nez v1, :cond_4

    .line 71
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid derivative "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v1, v0, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 73
    :cond_4
    return-object v2
.end method

.method push(Lorg/javia/arity/Token;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 78
    iget v2, p1, Lorg/javia/arity/Token;->id:I

    packed-switch v2, :pswitch_data_0

    .line 105
    iget-byte v0, p1, Lorg/javia/arity/Token;->vmop:B

    .line 106
    if-gtz v0, :cond_0

    .line 107
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong vmop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lorg/javia/arity/Token;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    iget-object v2, v2, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :pswitch_0
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v2, p1, Lorg/javia/arity/Token;->value:D

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/javia/arity/DoubleStack;->push(DD)V

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    .line 111
    return-void

    .line 86
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/javia/arity/SimpleCodeGen;->getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v2, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v2}, Lorg/javia/arity/Function;->getDerivative()Lorg/javia/arity/Function;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    move v0, v1

    goto :goto_0

    .line 90
    :cond_1
    iget-byte v3, v2, Lorg/javia/arity/Symbol;->op:B

    if-lez v3, :cond_2

    .line 91
    iget-byte v0, v2, Lorg/javia/arity/Symbol;->op:B

    .line 92
    const/16 v1, 0x26

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    .line 93
    sget-object v0, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    const-string v1, "eval() on implicit function"

    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    iget v2, v2, Lorg/javia/arity/SyntaxException;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 95
    :cond_2
    iget-object v3, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz v3, :cond_3

    .line 97
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v2, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v0, v2}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    move v0, v1

    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v3, v2, Lorg/javia/arity/Symbol;->valueRe:D

    iget-wide v5, v2, Lorg/javia/arity/Symbol;->valueIm:D

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/javia/arity/DoubleStack;->push(DD)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    .line 43
    return-object p0
.end method

.method start()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->clear()V

    .line 49
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->clear()V

    .line 50
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v0}, Lorg/javia/arity/FunctionStack;->clear()V

    .line 51
    return-void
.end method
