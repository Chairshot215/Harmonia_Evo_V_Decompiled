.class public Lgnu/q2/lang/Q2;
.super Lkawa/standard/Scheme;
.source "Q2.java"


# static fields
.field static final emptyForm:Ljava/lang/Object;

.field static instance:Lgnu/q2/lang/Q2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0}, Lgnu/lists/FString;-><init>()V

    sput-object v0, Lgnu/q2/lang/Q2;->emptyForm:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lkawa/standard/Scheme;-><init>()V

    .line 21
    sput-object p0, Lgnu/q2/lang/Q2;->instance:Lgnu/q2/lang/Q2;

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 23
    return-void
.end method

.method public static compareIndentation(II)I
    .locals 5
    .parameter "indentation1"
    .parameter "indentation2"

    .prologue
    .line 92
    ushr-int/lit8 v2, p0, 0x10

    .line 93
    .local v2, numTabs1:I
    ushr-int/lit8 v3, p0, 0x10

    .line 94
    .local v3, numTabs2:I
    and-int/lit16 v0, p0, 0xff

    .line 95
    .local v0, numSpaces1:I
    and-int/lit16 v1, p1, 0xff

    .line 96
    .local v1, numSpaces2:I
    if-ne v2, v3, :cond_0

    .line 97
    sub-int v4, v0, v1

    .line 102
    :goto_0
    return v4

    .line 98
    :cond_0
    if-ge v2, v3, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    if-le v2, v3, :cond_3

    if-lt v0, v1, :cond_3

    .line 100
    :cond_2
    sub-int v4, v2, v3

    mul-int/lit8 v4, v4, 0x8

    goto :goto_0

    .line 102
    :cond_3
    const/high16 v4, -0x8000

    goto :goto_0
.end method

.method public static getQ2Instance()Lgnu/q2/lang/Q2;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lgnu/q2/lang/Q2;->instance:Lgnu/q2/lang/Q2;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lgnu/q2/lang/Q2;

    invoke-direct {v0}, Lgnu/q2/lang/Q2;-><init>()V

    .line 29
    :cond_0
    sget-object v0, Lgnu/q2/lang/Q2;->instance:Lgnu/q2/lang/Q2;

    return-object v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lgnu/q2/lang/Q2;

    invoke-direct {v0}, Lgnu/q2/lang/Q2;-><init>()V

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 48
    return-void
.end method


# virtual methods
.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    .line 76
    .local v0, rt:Lgnu/kawa/lispexpr/ReadTable;
    const/16 v1, 0x28

    new-instance v2, Lgnu/q2/lang/Q2ReaderParens;

    invoke-direct {v2}, Lgnu/q2/lang/Q2ReaderParens;-><init>()V

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    .line 78
    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 2
    .parameter "inp"
    .parameter "messages"

    .prologue
    .line 34
    const/4 v1, 0x2

    sput v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 35
    new-instance v0, Lgnu/q2/lang/Q2Read;

    invoke-direct {v0, p1, p2}, Lgnu/q2/lang/Q2Read;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)V

    .line 36
    .local v0, lexer:Lgnu/q2/lang/Q2Read;
    return-object v0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 2
    .parameter "out"

    .prologue
    .line 41
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lgnu/q2/lang/Prompter;

    invoke-direct {v0}, Lgnu/q2/lang/Prompter;-><init>()V

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4
    .parameter "func"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 62
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 63
    .local v0, exps:[Lgnu/expr/Expression;
    aput-object p1, v0, v3

    .line 64
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/q2/lang/Q2Apply;->q2Apply:Lgnu/q2/lang/Q2Apply;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exps"

    .prologue
    .line 52
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0, v1, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v0
.end method
