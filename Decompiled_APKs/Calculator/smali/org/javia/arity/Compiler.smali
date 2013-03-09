.class Lorg/javia/arity/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# instance fields
.field private final codeGen:Lorg/javia/arity/OptCodeGen;

.field private final decl:Lorg/javia/arity/Declaration;

.field private final declParser:Lorg/javia/arity/DeclarationParser;

.field private final exception:Lorg/javia/arity/SyntaxException;

.field private final lexer:Lorg/javia/arity/Lexer;

.field private final rpn:Lorg/javia/arity/RPN;

.field private final simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/javia/arity/SyntaxException;

    invoke-direct {v0}, Lorg/javia/arity/SyntaxException;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    .line 24
    new-instance v0, Lorg/javia/arity/Lexer;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/Lexer;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    .line 25
    new-instance v0, Lorg/javia/arity/RPN;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/RPN;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    .line 26
    new-instance v0, Lorg/javia/arity/DeclarationParser;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/DeclarationParser;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->declParser:Lorg/javia/arity/DeclarationParser;

    .line 27
    new-instance v0, Lorg/javia/arity/OptCodeGen;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/OptCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    .line 28
    new-instance v0, Lorg/javia/arity/SimpleCodeGen;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/SimpleCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    .line 29
    new-instance v0, Lorg/javia/arity/Declaration;

    invoke-direct {v0}, Lorg/javia/arity/Declaration;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    return-void
.end method


# virtual methods
.method compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    .line 38
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v3, p0, Lorg/javia/arity/Compiler;->declParser:Lorg/javia/arity/DeclarationParser;

    invoke-virtual {v0, p2, v2, v3}, Lorg/javia/arity/Declaration;->parse(Ljava/lang/String;Lorg/javia/arity/Lexer;Lorg/javia/arity/DeclarationParser;)V

    .line 40
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget v0, v0, Lorg/javia/arity/Declaration;->arity:I

    if-ne v0, v4, :cond_2

    .line 42
    :try_start_0
    new-instance v0, Lorg/javia/arity/Constant;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v2, v2, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/javia/arity/Constant;-><init>(Lorg/javia/arity/Complex;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->pushFrame()V

    .line 54
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v0, v0, Lorg/javia/arity/Declaration;->args:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/javia/arity/Symbols;->addArguments([Ljava/lang/String;)V

    .line 56
    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    invoke-virtual {v1, p1}, Lorg/javia/arity/OptCodeGen;->setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/javia/arity/RPN;->setConsumer(Lorg/javia/arity/TokenConsumer;)V

    .line 57
    iget-object v0, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v1, v1, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Lexer;->scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->popFrame()V

    .line 61
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget v0, v0, Lorg/javia/arity/Declaration;->arity:I

    .line 62
    if-ne v0, v4, :cond_0

    .line 63
    iget-object v0, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    iget v0, v0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    invoke-virtual {v1, v0}, Lorg/javia/arity/OptCodeGen;->getFun(I)Lorg/javia/arity/CompiledFunction;

    move-result-object v0

    .line 67
    :cond_1
    iput-object p2, v0, Lorg/javia/arity/Function;->comment:Ljava/lang/String;

    .line 68
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-object v2, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    if-eq v0, v2, :cond_2

    .line 45
    throw v0

    .line 59
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->popFrame()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    invoke-virtual {v1, p1}, Lorg/javia/arity/SimpleCodeGen;->setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/javia/arity/RPN;->setConsumer(Lorg/javia/arity/TokenConsumer;)V

    .line 33
    iget-object v0, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    invoke-virtual {v0, p2, v1}, Lorg/javia/arity/Lexer;->scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V

    .line 34
    iget-object v0, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    invoke-virtual {v0}, Lorg/javia/arity/SimpleCodeGen;->getFun()Lorg/javia/arity/CompiledFunction;

    move-result-object v0

    return-object v0
.end method

.method compileWithName(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lorg/javia/arity/FunctionAndName;

    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/Compiler;->compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v1

    iget-object v2, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v2, v2, Lorg/javia/arity/Declaration;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/javia/arity/FunctionAndName;-><init>(Lorg/javia/arity/Function;Ljava/lang/String;)V

    return-object v0
.end method
