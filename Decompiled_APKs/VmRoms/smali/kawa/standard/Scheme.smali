.class public Lkawa/standard/Scheme;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Scheme.java"


# static fields
.field public static final apply:Lgnu/kawa/functions/Apply;

.field static final applyFieldDecl:Lgnu/expr/Declaration;

.field public static final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field public static booleanType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final forEach:Lgnu/kawa/functions/Map;

.field public static final instance:Lkawa/standard/Scheme;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static final isEq:Lgnu/kawa/functions/IsEq;

.field public static final isEqual:Lgnu/kawa/functions/IsEqual;

.field public static final isEqv:Lgnu/kawa/functions/IsEqv;

.field public static final isEven:Lgnu/kawa/functions/NumberPredicate;

.field public static final isOdd:Lgnu/kawa/functions/NumberPredicate;

.field protected static final kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

.field public static final map:Lgnu/kawa/functions/Map;

.field public static final not:Lgnu/kawa/functions/Not;

.field public static final nullEnvironment:Lgnu/mapping/Environment;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field public static final r4Environment:Lgnu/mapping/Environment;

.field public static final r5Environment:Lgnu/mapping/Environment;

.field static typeToStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lgnu/bytecode/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final unitNamespace:Lgnu/mapping/Namespace;

.field public static final writeFormat:Lgnu/lists/AbstractFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x53

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 54
    const-string v1, "null-environment"

    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    .line 55
    const-string v1, "r4rs-environment"

    sget-object v2, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    .line 56
    const-string v1, "r5rs-environment"

    sget-object v2, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    .line 57
    const-string v1, "kawa-environment"

    sget-object v2, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-static {v1, v2}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    .line 59
    new-instance v1, Lkawa/standard/Scheme;

    sget-object v2, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v1, v2}, Lkawa/standard/Scheme;-><init>(Lgnu/mapping/Environment;)V

    sput-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    .line 60
    new-instance v1, Lgnu/kawa/reflect/InstanceOf;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "instance?"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v1, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 61
    new-instance v1, Lgnu/kawa/functions/Not;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "not"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v1, Lkawa/standard/Scheme;->not:Lgnu/kawa/functions/Not;

    .line 62
    new-instance v1, Lgnu/kawa/functions/ApplyToArgs;

    const-string v2, "apply-to-args"

    sget-object v3, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/ApplyToArgs;-><init>(Ljava/lang/String;Lgnu/expr/Language;)V

    sput-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 63
    const-string v1, "kawa.standard.Scheme"

    const-string v2, "applyToArgs"

    invoke-static {v1, v2}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 66
    new-instance v1, Lgnu/kawa/functions/Apply;

    const-string v2, "apply"

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/Apply;-><init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V

    sput-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 67
    new-instance v1, Lgnu/kawa/functions/IsEq;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "eq?"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 68
    new-instance v1, Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "eqv?"

    sget-object v4, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/functions/IsEqv;-><init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V

    sput-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 69
    new-instance v1, Lgnu/kawa/functions/IsEqual;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "equal?"

    invoke-direct {v1, v2, v3}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v1, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    .line 70
    new-instance v1, Lgnu/kawa/functions/Map;

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v4, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v5, v2, v3, v4}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v1, Lkawa/standard/Scheme;->map:Lgnu/kawa/functions/Map;

    .line 71
    new-instance v1, Lgnu/kawa/functions/Map;

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v4, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v6, v2, v3, v4}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v1, Lkawa/standard/Scheme;->forEach:Lgnu/kawa/functions/Map;

    .line 72
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "="

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 74
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, ">"

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, ">="

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 78
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "<"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 80
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "<="

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 82
    new-instance v1, Lgnu/kawa/functions/NumberPredicate;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "odd?"

    invoke-direct {v1, v2, v3, v5}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v1, Lkawa/standard/Scheme;->isOdd:Lgnu/kawa/functions/NumberPredicate;

    .line 83
    new-instance v1, Lgnu/kawa/functions/NumberPredicate;

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v3, "even?"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v1, Lkawa/standard/Scheme;->isEven:Lgnu/kawa/functions/NumberPredicate;

    .line 85
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v1}, Lkawa/standard/Scheme;->initScheme()V

    .line 87
    sget v0, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    .line 88
    .local v0, withServlets:I
    if-lez v0, :cond_0

    .line 92
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    if-le v0, v5, :cond_1

    const-string v2, "gnu.kawa.servlet.servlets"

    :goto_0
    invoke-virtual {v1, v2}, Lkawa/standard/Scheme;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :cond_0
    :goto_1
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v1, v5, v7}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v1, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 935
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v1, v6, v7}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v1, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 1134
    const-string v1, "http://kawa.gnu.org/unit"

    const-string v2, "unit"

    invoke-static {v1, v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    sput-object v1, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    return-void

    .line 92
    :cond_1
    :try_start_1
    const-string v2, "gnu.kawa.servlet.HTTP"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 844
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 845
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 846
    invoke-virtual {p0}, Lkawa/standard/Scheme;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/standard/Scheme;->userEnv:Lgnu/mapping/Environment;

    .line 847
    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/Environment;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 850
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 851
    iput-object p1, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 852
    return-void
.end method

.method public static builtin()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public static eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 9
    .parameter "port"
    .parameter "env"

    .prologue
    .line 874
    new-instance v4, Lgnu/text/SourceMessages;

    invoke-direct {v4}, Lgnu/text/SourceMessages;-><init>()V

    .line 877
    .local v4, messages:Lgnu/text/SourceMessages;
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v3

    check-cast v3, Lgnu/kawa/lispexpr/LispReader;

    .line 879
    .local v3, lexer:Lgnu/kawa/lispexpr/LispReader;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v0

    .line 880
    .local v0, body:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 881
    new-instance v5, Lgnu/text/SyntaxException;

    invoke-direct {v5, v4}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v5
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 884
    .end local v0           #body:Ljava/lang/Object;
    .end local v3           #lexer:Lgnu/kawa/lispexpr/LispReader;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 888
    .local v1, e:Lgnu/text/SyntaxException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eval: errors while compiling:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 882
    .end local v1           #e:Lgnu/text/SyntaxException;
    .restart local v0       #body:Ljava/lang/Object;
    .restart local v3       #lexer:Lgnu/kawa/lispexpr/LispReader;
    :cond_0
    :try_start_1
    invoke-static {v0, p1, v4}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    return-object v5

    .line 891
    .end local v0           #body:Ljava/lang/Object;
    .end local v3           #lexer:Lgnu/kawa/lispexpr/LispReader;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 893
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eval: I/O exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 896
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 898
    .local v2, ex:Ljava/lang/RuntimeException;
    throw v2

    .line 900
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v5

    move-object v2, v5

    .line 902
    .local v2, ex:Ljava/lang/Error;
    throw v2

    .line 904
    .end local v2           #ex:Ljava/lang/Error;
    :catch_4
    move-exception v5

    move-object v2, v5

    .line 906
    .local v2, ex:Ljava/lang/Throwable;
    new-instance v5, Lgnu/mapping/WrappedException;

    invoke-direct {v5, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2
    .parameter "sexpr"
    .parameter "env"

    .prologue
    .line 918
    :try_start_0
    invoke-static {p0, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 920
    :catch_0
    move-exception v0

    .line 922
    .local v0, ex:Ljava/lang/RuntimeException;
    throw v0

    .line 924
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 926
    .local v0, ex:Ljava/lang/Error;
    throw v0

    .line 928
    .end local v0           #ex:Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 930
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static eval(Ljava/lang/String;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 1
    .parameter "string"
    .parameter "env"

    .prologue
    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p0}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkawa/standard/Scheme;->eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "exp"

    .prologue
    .line 1131
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lkawa/standard/Scheme;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    return-object v0
.end method

.method public static getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 8
    .parameter "name"

    .prologue
    .line 1024
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    .line 1025
    sget-object v5, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Type;

    .line 1026
    .local v4, type:Lgnu/bytecode/Type;
    if-nez v4, :cond_2

    const-string v5, "elisp:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "clisp:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1029
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1030
    .local v1, colon:I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 1031
    .local v0, clas:Ljava/lang/Class;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, lang:Ljava/lang/String;
    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v2

    .line 1033
    .local v2, interp:Lgnu/expr/Language;
    if-nez v2, :cond_1

    .line 1034
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' - unknown language \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1037
    :cond_1
    invoke-virtual {v2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 1038
    if-eqz v4, :cond_2

    .line 1039
    sget-object v5, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #colon:I
    .end local v2           #interp:Lgnu/expr/Language;
    .end local v3           #lang:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method static declared-synchronized getTypeMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 957
    const-class v0, Lkawa/standard/Scheme;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 959
    new-instance v1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    sput-object v1, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    .line 962
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "void"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "never-returns"

    sget-object v3, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "Object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "String"

    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "number"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "gnu.math.Quantity"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "complex"

    const-string v3, "gnu.math.Complex"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "real"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "rational"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "integer"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "symbol"

    const-string v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "namespace"

    const-string v3, "gnu.mapping.Namespace"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "keyword"

    const-string v3, "gnu.expr.Keyword"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair"

    const-string v3, "gnu.lists.Pair"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair-with-position"

    const-string v3, "gnu.lists.PairWithPosition"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "constant-string"

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "abstract-string"

    const-string v3, "gnu.lists.CharSeq"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "character"

    const-string v3, "gnu.text.Char"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "vector"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "list"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "function"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "procedure"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "input-port"

    const-string v3, "gnu.mapping.InPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "output-port"

    const-string v3, "gnu.mapping.OutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string-output-port"

    const-string v3, "gnu.mapping.CharArrayOutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "record"

    const-string v3, "kawa.lang.Record"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class-type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s8vector"

    const-string v3, "gnu.lists.S8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u8vector"

    const-string v3, "gnu.lists.U8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s16vector"

    const-string v3, "gnu.lists.S16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u16vector"

    const-string v3, "gnu.lists.U16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s32vector"

    const-string v3, "gnu.lists.S32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u32vector"

    const-string v3, "gnu.lists.U32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s64vector"

    const-string v3, "gnu.lists.S64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u64vector"

    const-string v3, "gnu.lists.U64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f32vector"

    const-string v3, "gnu.lists.F32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f64vector"

    const-string v3, "gnu.lists.F64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "document"

    const-string v3, "gnu.kawa.xml.KDocument"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "readtable"

    const-string v3, "gnu.kawa.lispexpr.ReadTable"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 957
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "exp"

    .prologue
    .line 949
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method private initScheme()V
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 115
    iget-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    sget-object v1, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    sget-object v3, Lkawa/standard/Scheme;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 117
    const-string v0, "lambda"

    const-string v1, "kawa.standard.SchemeCompilation"

    const-string v2, "lambda"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "quote"

    const-string v1, "kawa.lang.Quote"

    const-string v2, "plainQuote"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "%define"

    const-string v1, "kawa.standard.define"

    const-string v2, "defineRaw"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "define"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "if"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "set!"

    const-string v1, "kawa.standard.set_b"

    const-string v2, "set"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "cond"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "case"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "and"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "or"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "%let"

    const-string v1, "kawa.standard.let"

    const-string v2, "let"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "let"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "let*"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "letrec"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "begin"

    const-string v1, "kawa.standard.begin"

    const-string v2, "begin"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "do"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "delay"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "%make-promise"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "quasiquote"

    const-string v1, "kawa.lang.Quote"

    const-string v2, "quasiQuote"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "define-syntax"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "let-syntax"

    const-string v1, "kawa.standard.let_syntax"

    const-string v2, "let_syntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "letrec-syntax"

    const-string v1, "kawa.standard.let_syntax"

    const-string v2, "letrec_syntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "syntax-rules"

    const-string v1, "kawa.standard.syntax_rules"

    const-string v2, "syntax_rules"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 154
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 157
    const-string v0, "not"

    const-string v1, "kawa.standard.Scheme"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "boolean?"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "eq?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "isEq"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "eqv?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "isEqv"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "equal?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "isEqual"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "pair?"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "cons"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "car"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "cdr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "set-car!"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "set-cdr!"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "caar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "cadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "cdar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "cddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "caaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "caadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "cadar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "caddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "cdaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "cdadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "cddar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "cdddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "caaaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "caaadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "caadar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "caaddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "cadaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "cadadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "caddar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "cadddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "cdaaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "cdaadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "cdadar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "cdaddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "cddaar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "cddadr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "cdddar"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "cddddr"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "null?"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "list?"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "length"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "append"

    const-string v1, "kawa.standard.append"

    const-string v2, "append"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "reverse"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "reverse!"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "list-tail"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "list-ref"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "memq"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "memv"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "member"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "assq"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "assv"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "assoc"

    const-string v1, "kawa.lib.lists"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "symbol?"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "symbol->string"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "string->symbol"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "symbol=?"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "symbol-local-name"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "symbol-namespace"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "symbol-namespace-uri"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "symbol-prefix"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "namespace-uri"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "namespace-prefix"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "number?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "quantity?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "complex?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "real?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "rational?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "integer?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "exact?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "inexact?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "="

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "numEqu"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "<"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "numLss"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, ">"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "numGrt"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "<="

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "numLEq"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, ">="

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "numGEq"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "zero?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "positive?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "negative?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "odd?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "isOdd"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "even?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "isEven"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "max"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "min"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "+"

    const-string v1, "gnu.kawa.functions.AddOp"

    const-string v2, "$Pl"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "-"

    const-string v1, "gnu.kawa.functions.AddOp"

    const-string v2, "$Mn"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "*"

    const-string v1, "gnu.kawa.functions.MultiplyOp"

    const-string v2, "$St"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "/"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "$Sl"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "abs"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "quotient"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "quotient"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "remainder"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "remainder"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "modulo"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "modulo"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "div"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "div"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "mod"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "mod"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "div0"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "div0"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "mod0"

    const-string v1, "gnu.kawa.functions.DivideOp"

    const-string v2, "mod0"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "div-and-mod"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "div0-and-mod0"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "gcd"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "lcm"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "numerator"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "denominator"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "floor"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "ceiling"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "truncate"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "round"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "rationalize"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "exp"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "log"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "sin"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "cos"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "tan"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "asin"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "acos"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "atan"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "sqrt"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "expt"

    const-string v1, "kawa.standard.expt"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "make-rectangular"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "make-polar"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "real-part"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "imag-part"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "magnitude"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "angle"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "inexact"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "exact"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "exact->inexact"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "inexact->exact"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "number->string"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "string->number"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "char?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "char=?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "char<?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "char>?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "char<=?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "char>=?"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "char-ci=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "char-ci<?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "char-ci>?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "char-ci<=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "char-ci>=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "char-alphabetic?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "char-numeric?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "char-whitespace?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "char-upper-case?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "char-lower-case?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "char-title-case?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "char->integer"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "integer->char"

    const-string v1, "kawa.lib.characters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "char-upcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "char-downcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "char-titlecase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "char-foldcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "char-general-category"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "string?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "make-string"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "string-length"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "string-ref"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "string-set!"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "string=?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "string<?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "string>?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "string<=?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "string>=?"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "string-ci=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "string-ci<?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "string-ci>?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "string-ci<=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "string-ci>=?"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "string-normalize-nfd"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "string-normalize-nfkd"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "string-normalize-nfc"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "string-normalize-nfkc"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "substring"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "string-append"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "string-append/shared"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "string->list"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "list->string"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "string-copy"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "string-fill!"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "vector?"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "make-vector"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "vector-length"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "vector-ref"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "vector-set!"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "list->vector"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "vector->list"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "vector-fill!"

    const-string v1, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "vector-append"

    const-string v1, "kawa.standard.vector_append"

    const-string v2, "vectorAppend"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "values-append"

    const-string v1, "gnu.kawa.functions.AppendValues"

    const-string v2, "appendValues"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "procedure?"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "apply"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "apply"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "map"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "map"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "for-each"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "forEach"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "call-with-current-continuation"

    const-string v1, "gnu.kawa.functions.CallCC"

    const-string v2, "callcc"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "call/cc"

    const-string v1, "kawa.standard.callcc"

    const-string v2, "callcc"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "force"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "call-with-input-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "call-with-output-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "input-port?"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "output-port?"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "current-input-port"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "current-output-port"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "with-input-from-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "with-output-to-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "open-input-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "open-output-file"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "close-input-port"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "close-output-port"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "read"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "read-line"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "read-char"

    const-string v1, "kawa.standard.readchar"

    const-string v2, "readChar"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "peek-char"

    const-string v1, "kawa.standard.readchar"

    const-string v2, "peekChar"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "eof-object?"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "char-ready?"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "write"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "display"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "print-as-xml"

    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v2, "writeFormat"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "write-char"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "newline"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "load"

    const-string v1, "kawa.standard.load"

    const-string v2, "load"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "load-relative"

    const-string v1, "kawa.standard.load"

    const-string v2, "loadRelative"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "transcript-off"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "transcript-on"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "call-with-input-string"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "open-input-string"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "open-output-string"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "get-output-string"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "call-with-output-string"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "force-output"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "port-line"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "set-port-line!"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "port-column"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "current-error-port"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "input-port-line-number"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "set-input-port-line-number!"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "input-port-column-number"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "input-port-read-state"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "default-prompter"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "input-port-prompter"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "set-input-port-prompter!"

    const-string v1, "kawa.lib.ports"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "base-uri"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "%syntax-error"

    const-string v1, "kawa.standard.syntax_error"

    const-string v2, "syntax_error"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "syntax-error"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 431
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 433
    const-string v0, "values"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "call-with-values"

    const-string v1, "kawa.standard.call_with_values"

    const-string v2, "callWithValues"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "let-values"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "let*-values"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "case-lambda"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "receive"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "eval"

    const-string v1, "kawa.lang.Eval"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "repl"

    const-string v1, "kawa.standard.SchemeCompilation"

    const-string v2, "repl"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "scheme-report-environment"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "null-environment"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "interaction-environment"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "dynamic-wind"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 448
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 450
    const-string v0, "define-private"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "define-constant"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "define-autoload"

    const-string v1, "kawa.standard.define_autoload"

    const-string v2, "define_autoload"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "define-autoloads-from-file"

    const-string v1, "kawa.standard.define_autoload"

    const-string v2, "define_autoloads_from_file"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "exit"

    const-string v1, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "command-line"

    const-string v1, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "bitwise-arithmetic-shift"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ashift"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "arithmetic-shift"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ashift"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "ash"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ashift"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "bitwise-arithmetic-shift-left"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ashiftl"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "bitwise-arithmetic-shift-right"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ashiftr"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "bitwise-and"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "and"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "logand"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "and"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "bitwise-ior"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ior"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "logior"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "ior"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "bitwise-xor"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "xor"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "logxor"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "xor"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "bitwise-if"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "bitwise-not"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "not"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "lognot"

    const-string v1, "gnu.kawa.functions.BitwiseOp"

    const-string v2, "not"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "logop"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "bitwise-bit-set?"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "logbit?"

    const-string v1, "kawa.lib.numbers"

    const-string v2, "bitwise-bit-set?"

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "logtest"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "bitwise-bit-count"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "logcount"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "bitwise-copy-bit"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "bitwise-copy-bit-field"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "bitwise-bit-field"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v0, "bit-extract"

    const-string v1, "kawa.lib.numbers"

    const-string v2, "bitwise-bit-field"

    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "bitwise-length"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "integer-length"

    const-string v1, "kawa.lib.numbers"

    const-string v2, "bitwise$Mnlength"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "bitwise-first-bit-set"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "bitwise-rotate-bit-field"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "bitwise-reverse-bit-field"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "string-upcase!"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "string-downcase!"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "string-capitalize!"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "string-upcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "string-downcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "string-titlecase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "string-foldcase"

    const-string v1, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "string-capitalize"

    const-string v1, "kawa.lib.strings"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "primitive-virtual-method"

    const-string v1, "kawa.standard.prim_method"

    const-string v2, "virtual_method"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "primitive-static-method"

    const-string v1, "kawa.standard.prim_method"

    const-string v2, "static_method"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "primitive-interface-method"

    const-string v1, "kawa.standard.prim_method"

    const-string v2, "interface_method"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "primitive-constructor"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "primitive-op1"

    const-string v1, "kawa.standard.prim_method"

    const-string v2, "op1"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "primitive-get-field"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "primitive-set-field"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "primitive-get-static"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "primitive-set-static"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "primitive-array-new"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "primitive-array-get"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v0, "primitive-array-set"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "primitive-array-length"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "subtype?"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, "primitive-throw"

    const-string v1, "kawa.standard.prim_throw"

    const-string v2, "primitiveThrow"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "try-finally"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "try-catch"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "throw"

    const-string v1, "kawa.standard.throw_name"

    const-string v2, "throwName"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "catch"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "error"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "as"

    const-string v1, "gnu.kawa.functions.Convert"

    const-string v2, "as"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "instance?"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "instanceOf"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "synchronized"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "object"

    const-string v1, "kawa.standard.object"

    const-string v2, "objectSyntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "define-class"

    const-string v1, "kawa.standard.define_class"

    const-string v2, "define_class"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "define-simple-class"

    const-string v1, "kawa.standard.define_class"

    const-string v2, "define_simple_class"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "this"

    const-string v1, "kawa.standard.thisRef"

    const-string v2, "thisSyntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "make"

    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v2, "make"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "slot-ref"

    const-string v1, "gnu.kawa.reflect.SlotGet"

    const-string v2, "slotRef"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "slot-set!"

    const-string v1, "gnu.kawa.reflect.SlotSet"

    const-string v2, "set$Mnfield$Ex"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "field"

    const-string v1, "gnu.kawa.reflect.SlotGet"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "class-methods"

    const-string v1, "gnu.kawa.reflect.ClassMethods"

    const-string v2, "classMethods"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "static-field"

    const-string v1, "gnu.kawa.reflect.SlotGet"

    const-string v2, "staticField"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "invoke"

    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v2, "invoke"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "invoke-static"

    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v2, "invokeStatic"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "invoke-special"

    const-string v1, "gnu.kawa.reflect.Invoke"

    const-string v2, "invokeSpecial"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v0, "define-macro"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "%define-macro"

    const-string v1, "kawa.standard.define_syntax"

    const-string v2, "define_macro"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "define-syntax-case"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "syntax-case"

    const-string v1, "kawa.standard.syntax_case"

    const-string v2, "syntax_case"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "%define-syntax"

    const-string v1, "kawa.standard.define_syntax"

    const-string v2, "define_syntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "syntax"

    const-string v1, "kawa.standard.syntax"

    const-string v2, "syntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "quasisyntax"

    const-string v1, "kawa.standard.syntax"

    const-string v2, "quasiSyntax"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "syntax-object->datum"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "datum->syntax-object"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "syntax->expression"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "syntax-body->expression"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "generate-temporaries"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "with-syntax"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "identifier?"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "free-identifier=?"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "syntax-source"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "syntax-line"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "syntax-column"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "begin-for-syntax"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "define-for-syntax"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "include"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "include-relative"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "file-exists?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "file-directory?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "file-readable?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "file-writable?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "delete-file"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "system-tmpdir"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "make-temporary-file"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "rename-file"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "copy-file"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "create-directory"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "->pathname"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "port-char-encoding"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    const-string v0, "symbol-read-case"

    const-string v1, "P"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string v0, "system"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "make-process"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "tokenize-string-to-string-array"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "tokenize-string-using-shell"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "command-parse"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "process-command-line-assignments"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "record-accessor"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "record-modifier"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "record-predicate"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "record-constructor"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "make-record-type"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "record-type-descriptor"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "record-type-name"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "record-type-field-names"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "record?"

    const-string v1, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "define-record-type"

    const-string v1, "gnu.kawa.slib.DefineRecordType"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "when"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "unless"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "fluid-let"

    const-string v1, "kawa.standard.fluid_let"

    const-string v2, "fluid_let"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "constant-fold"

    const-string v1, "kawa.standard.constant_fold"

    const-string v2, "constant_fold"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "make-parameter"

    const-string v1, "kawa.lib.parameters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "parameterize"

    const-string v1, "kawa.lib.parameters"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "compile-file"

    const-string v1, "kawa.lib.system"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "environment-bound?"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "scheme-implementation-version"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "scheme-window"

    const-string v1, "kawa.lib.windows"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "define-procedure"

    const-string v1, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "add-procedure-properties"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "make-procedure"

    const-string v1, "gnu.kawa.functions.MakeProcedure"

    const-string v2, "makeProcedure"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "procedure-property"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "set-procedure-property!"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "provide"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "test-begin"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "quantity->number"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "quantity->unit"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "make-quantity"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "define-namespace"

    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_namespace"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "define-xml-namespace"

    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_xml_namespace"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "define-private-namespace"

    const-string v1, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_private_namespace"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "define-unit"

    const-string v1, "kawa.standard.define_unit"

    const-string v2, "define_unit"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "define-base-unit"

    const-string v1, "kawa.standard.define_unit"

    const-string v2, "define_base_unit"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "duration"

    const-string v1, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "gentemp"

    const-string v1, "kawa.lib.misc"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "defmacro"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "setter"

    const-string v1, "gnu.kawa.functions.Setter"

    const-string v2, "setter"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "resource-url"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "module-uri"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "future"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "sleep"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "runnable"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "trace"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "untrace"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "disassemble"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v0, "format"

    const-string v1, "gnu.kawa.functions.Format"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "parse-format"

    const-string v1, "gnu.kawa.functions.ParseFormat"

    const-string v2, "parseFormat"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "make-element"

    const-string v1, "gnu.kawa.xml.MakeElement"

    const-string v2, "makeElement"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "make-attribute"

    const-string v1, "gnu.kawa.xml.MakeAttribute"

    const-string v2, "makeAttribute"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "map-values"

    const-string v1, "gnu.kawa.functions.ValuesMap"

    const-string v2, "valuesMap"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "children"

    const-string v1, "gnu.kawa.xml.Children"

    const-string v2, "children"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "attributes"

    const-string v1, "gnu.kawa.xml.Attributes"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "unescaped-data"

    const-string v1, "gnu.kawa.xml.MakeUnescapedData"

    const-string v2, "unescapedData"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "keyword?"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "keyword->string"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "string->keyword"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "location"

    const-string v1, "kawa.standard.location"

    const-string v2, "location"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "define-alias"

    const-string v1, "kawa.standard.define_alias"

    const-string v2, "define_alias"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "define-variable"

    const-string v1, "kawa.standard.define_variable"

    const-string v2, "define_variable"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "define-member-alias"

    const-string v1, "kawa.standard.define_member_alias"

    const-string v2, "define_member_alias"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "define-enum"

    const-string v1, "gnu.kawa.slib.enums"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "import"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "require"

    const-string v1, "kawa.standard.require"

    const-string v2, "require"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "module-name"

    const-string v1, "kawa.standard.module_name"

    const-string v2, "module_name"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "module-extends"

    const-string v1, "kawa.standard.module_extends"

    const-string v2, "module_extends"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "module-implements"

    const-string v1, "kawa.standard.module_implements"

    const-string v2, "module_implements"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "module-static"

    const-string v1, "kawa.standard.module_static"

    const-string v2, "module_static"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "module-export"

    const-string v1, "kawa.standard.export"

    const-string v2, "module_export"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "export"

    const-string v1, "kawa.standard.export"

    const-string v2, "export"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "module-compile-options"

    const-string v1, "kawa.standard.module_compile_options"

    const-string v2, "module_compile_options"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v0, "with-compile-options"

    const-string v1, "kawa.standard.with_compile_options"

    const-string v2, "with_compile_options"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v0, "array?"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "array-rank"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "make-array"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "array"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "array-start"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "array-end"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "shape"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "array-ref"

    const-string v1, "gnu.kawa.functions.ArrayRef"

    const-string v2, "arrayRef"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "array-set!"

    const-string v1, "gnu.kawa.functions.ArraySet"

    const-string v2, "arraySet"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "share-array"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "s8vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "make-s8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "s8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "s8vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "s8vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "s8vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "s8vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "list->s8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "u8vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v0, "make-u8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "u8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "u8vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "u8vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "u8vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "u8vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "list->u8vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "s16vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "make-s16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "s16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "s16vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "s16vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "s16vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "s16vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "list->s16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "u16vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "make-u16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "u16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "u16vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "u16vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "u16vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "u16vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v0, "list->u16vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "s32vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "make-s32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "s32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "s32vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "s32vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, "s32vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "s32vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v0, "list->s32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "u32vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "make-u32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "u32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v0, "u32vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, "u32vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "u32vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "u32vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "list->u32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "s64vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v0, "make-s64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "s64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "s64vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "s64vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "s64vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "s64vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "list->s64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "u64vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "make-u64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v0, "u64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "u64vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "u64vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "u64vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "u64vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "list->u64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, "f32vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "make-f32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "f32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "f32vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "f32vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "f32vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v0, "f32vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v0, "list->f32vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "f64vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "make-f64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "f64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "f64vector-length"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "f64vector-ref"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "f64vector-set!"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v0, "f64vector->list"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "list->f64vector"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v0, "cut"

    const-string v1, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v0, "cute"

    const-string v1, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "cond-expand"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "%cond-expand"

    const-string v1, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "*print-base*"

    const-string v1, "gnu.kawa.functions.DisplayFormat"

    const-string v2, "outBase"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "*print-radix*"

    const-string v1, "gnu.kawa.functions.DisplayFormat"

    const-string v2, "outRadix"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "*print-right-margin*"

    const-string v1, "gnu.text.PrettyWriter"

    const-string v2, "lineLengthLoc"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "*print-miser-width*"

    const-string v1, "gnu.text.PrettyWriter"

    const-string v2, "miserWidthLoc"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "html"

    const-string v1, "gnu.kawa.xml.XmlNamespace"

    const-string v2, "HTML"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "unit"

    const-string v1, "kawa.standard.Scheme"

    const-string v2, "unitNamespace"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "path"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "pathType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v0, "filepath"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "filepathType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "URI"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "URIType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "resolve-uri"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v0, "vector"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "vectorType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "string"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "stringType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v0, "list"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "listType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "regex"

    const-string v1, "gnu.kawa.lispexpr.LangObjType"

    const-string v2, "regexType"

    invoke-virtual {p0, v0, v1, v2}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "path?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "filepath?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v0, "URI?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "absolute-path?"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "path-scheme"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v0, "path-authority"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v0, "path-user-info"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "path-host"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v0, "path-port"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "path-file"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v0, "path-parent"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "path-directory"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "path-last"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "path-extension"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "path-fragment"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "path-query"

    const-string v1, "kawa.lib.files"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0}, Lgnu/mapping/SimpleEnvironment;->setLocked()V

    .line 841
    return-void
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 1448
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 1449
    return-void
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 5
    .parameter "name"

    .prologue
    .line 1105
    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1108
    .local v0, t:Lgnu/bytecode/Type;
    if-eqz v0, :cond_0

    .line 1109
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    .line 1113
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 1118
    .end local v0           #t:Lgnu/bytecode/Type;
    .local v1, t:Lgnu/bytecode/Type;
    :goto_1
    return-object v1

    .line 1112
    .end local v1           #t:Lgnu/bytecode/Type;
    :cond_1
    invoke-static {p0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .restart local v0       #t:Lgnu/bytecode/Type;
    goto :goto_0

    .line 1115
    :cond_2
    invoke-static {p0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_3

    .line 1117
    sget-object v2, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v0

    .line 1118
    .end local v0           #t:Lgnu/bytecode/Type;
    .restart local v1       #t:Lgnu/bytecode/Type;
    goto :goto_1
.end method


# virtual methods
.method public asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "ident"

    .prologue
    .line 1424
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 52
    .parameter "symbol"
    .parameter "tr"

    .prologue
    .line 1146
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v21

    .line 1147
    .local v21, namespace:Lgnu/mapping/Namespace;
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v19

    .line 1148
    .local v19, local:Ljava/lang/String;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/kawa/xml/XmlNamespace;

    move/from16 v47, v0

    if-eqz v47, :cond_0

    .line 1149
    check-cast v21, Lgnu/kawa/xml/XmlNamespace;

    .end local v21           #namespace:Lgnu/mapping/Namespace;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XmlNamespace;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v47

    .line 1411
    .end local p0
    :goto_0
    return-object v47

    .line 1150
    .restart local v21       #namespace:Lgnu/mapping/Namespace;
    .restart local p0
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual/range {v48 .. v48}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_1

    .line 1152
    invoke-static/range {v19 .. v19}, Lgnu/math/Unit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v45

    .line 1153
    .local v45, val:Lgnu/math/NamedUnit;
    if-eqz v45, :cond_1

    .line 1154
    invoke-static/range {v45 .. v45}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v47

    goto :goto_0

    .line 1156
    .end local v45           #val:Lgnu/math/NamedUnit;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1157
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    .line 1158
    .local v16, len:I
    if-nez v16, :cond_2

    .line 1159
    const/16 v47, 0x0

    goto :goto_0

    .line 1160
    :cond_2
    const/16 v47, 0x1

    move/from16 v0, v16

    move/from16 v1, v47

    if-le v0, v1, :cond_6

    const/16 v47, 0x1

    sub-int v47, v16, v47

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    const/16 v48, 0x3f

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_6

    .line 1162
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v18

    .line 1163
    .local v18, llen:I
    const/16 v47, 0x1

    move/from16 v0, v18

    move/from16 v1, v47

    if-le v0, v1, :cond_6

    .line 1165
    const/16 v47, 0x0

    const/16 v48, 0x1

    sub-int v48, v18, v48

    move-object/from16 v0, v19

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v33

    .line 1166
    .local v33, tlocal:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v34

    .line 1167
    .local v34, tsymbol:Lgnu/mapping/Symbol;
    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v32

    .line 1168
    .local v32, texp:Lgnu/expr/Expression;
    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v47, v0

    if-eqz v47, :cond_5

    .line 1170
    move-object/from16 v0, v32

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v33, v0

    .end local v33           #tlocal:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1171
    .local v7, decl:Lgnu/expr/Declaration;
    if-eqz v7, :cond_3

    const-wide/32 v47, 0x10000

    move-object v0, v7

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v47

    if-eqz v47, :cond_4

    .line 1172
    :cond_3
    const/16 v32, 0x0

    .line 1176
    .end local v7           #decl:Lgnu/expr/Declaration;
    :cond_4
    :goto_1
    if-eqz v32, :cond_6

    .line 1178
    new-instance v17, Lgnu/expr/LambdaExp;

    const/16 v47, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-direct {v0, v1}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1179
    .local v17, lexp:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 1180
    const/16 p0, 0x0

    check-cast p0, Ljava/lang/Object;

    .end local p0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v28

    .line 1181
    .local v28, param:Lgnu/expr/Declaration;
    new-instance v47, Lgnu/expr/ApplyExp;

    sget-object v48, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    new-instance v51, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v51, v49, v50

    const/16 v50, 0x1

    aput-object v32, v49, v50

    invoke-direct/range {v47 .. v49}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v47, v17

    .line 1184
    goto/16 :goto_0

    .line 1174
    .end local v17           #lexp:Lgnu/expr/LambdaExp;
    .end local v28           #param:Lgnu/expr/Declaration;
    .restart local v33       #tlocal:Ljava/lang/String;
    .restart local p0
    :cond_5
    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v47, v0

    if-nez v47, :cond_4

    .line 1175
    const/16 v32, 0x0

    goto :goto_1

    .line 1188
    .end local v18           #llen:I
    .end local v32           #texp:Lgnu/expr/Expression;
    .end local v33           #tlocal:Ljava/lang/String;
    .end local v34           #tsymbol:Lgnu/mapping/Symbol;
    :cond_6
    const/16 v47, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1191
    .local v4, ch0:C
    const/16 v47, 0x2d

    move v0, v4

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    const/16 v47, 0x2b

    move v0, v4

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    const/16 v47, 0xa

    move v0, v4

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v47

    if-ltz v47, :cond_13

    .line 1198
    :cond_7
    const/16 v31, 0x0

    .line 1199
    .local v31, state:I
    const/4 v13, 0x0

    .line 1200
    .local v13, i:I
    :goto_2
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 1202
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1203
    .local v3, ch:C
    const/16 v47, 0xa

    move v0, v3

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v47

    if-ltz v47, :cond_a

    .line 1204
    const/16 v47, 0x3

    move/from16 v0, v31

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    const/16 v47, 0x2

    move/from16 v31, v47

    .line 1200
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1204
    :cond_8
    const/16 v47, 0x5

    move/from16 v0, v31

    move/from16 v1, v47

    if-ge v0, v1, :cond_9

    const/16 v47, 0x4

    move/from16 v31, v47

    goto :goto_3

    :cond_9
    const/16 v47, 0x5

    move/from16 v31, v47

    goto :goto_3

    .line 1205
    :cond_a
    const/16 v47, 0x2b

    move v0, v3

    move/from16 v1, v47

    if-eq v0, v1, :cond_b

    const/16 v47, 0x2d

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    :cond_b
    if-nez v31, :cond_c

    .line 1206
    const/16 v31, 0x1

    goto :goto_3

    .line 1207
    :cond_c
    const/16 v47, 0x2e

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    const/16 v47, 0x3

    move/from16 v0, v31

    move/from16 v1, v47

    if-ge v0, v1, :cond_d

    .line 1208
    const/16 v31, 0x3

    goto :goto_3

    .line 1209
    :cond_d
    const/16 v47, 0x65

    move v0, v3

    move/from16 v1, v47

    if-eq v0, v1, :cond_e

    const/16 v47, 0x45

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_12

    :cond_e
    const/16 v47, 0x2

    move/from16 v0, v31

    move/from16 v1, v47

    if-eq v0, v1, :cond_f

    const/16 v47, 0x4

    move/from16 v0, v31

    move/from16 v1, v47

    if-ne v0, v1, :cond_12

    :cond_f
    add-int/lit8 v47, v13, 0x1

    move/from16 v0, v47

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 1212
    add-int/lit8 v15, v13, 0x1

    .line 1213
    .local v15, j:I
    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 1214
    .local v24, next:C
    const/16 v47, 0x2d

    move/from16 v0, v24

    move/from16 v1, v47

    if-eq v0, v1, :cond_10

    const/16 v47, 0x2b

    move/from16 v0, v24

    move/from16 v1, v47

    if-ne v0, v1, :cond_11

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 1215
    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 1216
    :cond_11
    const/16 v47, 0xa

    move/from16 v0, v24

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v47

    if-gez v47, :cond_14

    .line 1225
    .end local v3           #ch:C
    .end local v15           #j:I
    .end local v24           #next:C
    :cond_12
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    const/16 v47, 0x1

    move/from16 v0, v31

    move/from16 v1, v47

    if-le v0, v1, :cond_13

    .line 1227
    new-instance v25, Lgnu/math/DFloNum;

    const/16 v47, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v25, num:Lgnu/math/DFloNum;
    const/4 v9, 0x0

    .line 1229
    .local v9, div:Z
    new-instance v46, Ljava/util/Vector;

    invoke-direct/range {v46 .. v46}, Ljava/util/Vector;-><init>()V

    .local v46, vec:Ljava/util/Vector;
    move v14, v13

    .line 1230
    .end local v13           #i:I
    .local v14, i:I
    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_20

    .line 1232
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1233
    .restart local v3       #ch:C
    const/16 v47, 0x2a

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_1a

    .line 1235
    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 1339
    .end local v3           #ch:C
    .end local v9           #div:Z
    .end local v13           #i:I
    .end local v25           #num:Lgnu/math/DFloNum;
    .end local v31           #state:I
    .end local v46           #vec:Ljava/util/Vector;
    :cond_13
    const/16 v47, 0x2

    move/from16 v0, v16

    move/from16 v1, v47

    if-le v0, v1, :cond_24

    const/16 v47, 0x3c

    move v0, v4

    move/from16 v1, v47

    if-ne v0, v1, :cond_24

    const/16 v47, 0x1

    sub-int v47, v16, v47

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    const/16 v48, 0x3e

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_24

    .line 1341
    const/16 v47, 0x1

    const/16 v48, 0x1

    sub-int v48, v16, v48

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1342
    add-int/lit8 v16, v16, -0x2

    .line 1343
    const/16 v30, 0x1

    .line 1347
    .local v30, sawAngle:Z
    :goto_5
    const/16 v29, 0x0

    .line 1348
    .local v29, rank:I
    :goto_6
    const/16 v47, 0x2

    move/from16 v0, v16

    move/from16 v1, v47

    if-le v0, v1, :cond_25

    const/16 v47, 0x2

    sub-int v47, v16, v47

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    const/16 v48, 0x5b

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_25

    const/16 v47, 0x1

    sub-int v47, v16, v47

    move-object/from16 v0, v20

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v47

    const/16 v48, 0x5d

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_25

    .line 1350
    add-int/lit8 v16, v16, -0x2

    .line 1351
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 1218
    .end local v29           #rank:I
    .end local v30           #sawAngle:Z
    .restart local v3       #ch:C
    .restart local v13       #i:I
    .restart local v15       #j:I
    .restart local v24       #next:C
    .restart local v31       #state:I
    :cond_14
    const/16 v31, 0x5

    .line 1219
    add-int/lit8 v13, v15, 0x1

    goto/16 :goto_3

    .line 1236
    .end local v15           #j:I
    .end local v24           #next:C
    .restart local v9       #div:Z
    .restart local v25       #num:Lgnu/math/DFloNum;
    .restart local v46       #vec:Ljava/util/Vector;
    :cond_15
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v13, v14

    .line 1244
    .end local v14           #i:I
    .restart local v13       #i:I
    :cond_16
    :goto_7
    const/16 v47, 0x1

    sub-int v40, v13, v47

    .line 1248
    .local v40, unitStart:I
    :goto_8
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v47

    if-nez v47, :cond_1b

    .line 1250
    const/16 v47, 0x1

    sub-int v39, v13, v47

    .line 1251
    .local v39, unitEnd:I
    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_13

    .line 1263
    :goto_9
    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1264
    const/4 v12, 0x0

    .line 1265
    .local v12, expRequired:Z
    const/16 v47, 0x5e

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_31

    .line 1267
    const/4 v12, 0x1

    .line 1268
    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 1269
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1271
    :goto_a
    move/from16 v22, v9

    .line 1272
    .local v22, neg:Z
    const/16 v47, 0x2b

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_1d

    .line 1274
    const/4 v12, 0x1

    .line 1275
    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 1276
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1285
    :goto_b
    const/16 v23, 0x0

    .line 1286
    .local v23, nexp:I
    const/4 v11, 0x0

    .line 1289
    .local v11, exp:I
    :goto_c
    const/16 v47, 0xa

    move v0, v3

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 1290
    .local v8, dig:I
    if-gtz v8, :cond_1f

    .line 1292
    add-int/lit8 v13, v13, -0x1

    .line 1301
    :cond_17
    if-nez v23, :cond_18

    .line 1303
    const/4 v11, 0x1

    .line 1304
    if-nez v12, :cond_13

    .line 1307
    :cond_18
    if-eqz v22, :cond_19

    .line 1308
    neg-int v11, v11

    .line 1309
    :cond_19
    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v14, v13

    .line 1310
    .end local v13           #i:I
    .restart local v14       #i:I
    goto/16 :goto_4

    .line 1238
    .end local v8           #dig:I
    .end local v11           #exp:I
    .end local v12           #expRequired:Z
    .end local v14           #i:I
    .end local v22           #neg:Z
    .end local v23           #nexp:I
    .end local v39           #unitEnd:I
    .end local v40           #unitStart:I
    .restart local v13       #i:I
    :cond_1a
    const/16 v47, 0x2f

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_16

    .line 1240
    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    if-nez v9, :cond_13

    .line 1241
    const/4 v9, 0x1

    .line 1242
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v13, v14

    .end local v14           #i:I
    .restart local v13       #i:I
    goto/16 :goto_7

    .line 1255
    .restart local v40       #unitStart:I
    :cond_1b
    move v0, v13

    move/from16 v1, v16

    if-ne v0, v1, :cond_1c

    .line 1257
    move/from16 v39, v13

    .line 1258
    .restart local v39       #unitEnd:I
    const/16 v3, 0x31

    .line 1259
    goto/16 :goto_9

    .line 1261
    .end local v39           #unitEnd:I
    :cond_1c
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v13, v14

    .end local v14           #i:I
    .restart local v13       #i:I
    goto/16 :goto_8

    .line 1278
    .end local v13           #i:I
    .restart local v12       #expRequired:Z
    .restart local v14       #i:I
    .restart local v22       #neg:Z
    .restart local v39       #unitEnd:I
    :cond_1d
    const/16 v47, 0x2d

    move v0, v3

    move/from16 v1, v47

    if-ne v0, v1, :cond_30

    .line 1280
    const/4 v12, 0x1

    .line 1281
    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 1282
    add-int/lit8 v13, v14, 0x1

    .end local v14           #i:I
    .restart local v13       #i:I
    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1283
    if-nez v22, :cond_1e

    const/16 v47, 0x1

    move/from16 v22, v47

    :goto_d
    goto :goto_b

    :cond_1e
    const/16 v47, 0x0

    move/from16 v22, v47

    goto :goto_d

    .line 1295
    .restart local v8       #dig:I
    .restart local v11       #exp:I
    .restart local v23       #nexp:I
    :cond_1f
    mul-int/lit8 v47, v11, 0xa

    add-int v11, v47, v8

    .line 1296
    add-int/lit8 v23, v23, 0x1

    .line 1297
    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_17

    .line 1299
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .restart local v14       #i:I
    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v13, v14

    .line 1300
    .end local v14           #i:I
    .restart local v13       #i:I
    goto/16 :goto_c

    .line 1311
    .end local v3           #ch:C
    .end local v8           #dig:I
    .end local v11           #exp:I
    .end local v12           #expRequired:Z
    .end local v13           #i:I
    .end local v22           #neg:Z
    .end local v23           #nexp:I
    .end local v39           #unitEnd:I
    .end local v40           #unitStart:I
    .restart local v14       #i:I
    :cond_20
    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 1313
    invoke-virtual/range {v46 .. v46}, Ljava/util/Vector;->size()I

    move-result v47

    shr-int/lit8 v26, v47, 0x1

    .line 1314
    .local v26, nunits:I
    move/from16 v0, v26

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v41, v0

    .line 1315
    .local v41, units:[Lgnu/expr/Expression;
    const/4 v13, 0x0

    .end local v14           #i:I
    .restart local v13       #i:I
    :goto_e
    move v0, v13

    move/from16 v1, v26

    if-ge v0, v1, :cond_22

    .line 1317
    mul-int/lit8 v47, v13, 0x2

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 1318
    .local v37, uname:Ljava/lang/String;
    sget-object v47, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v44

    .line 1319
    .local v44, usym:Lgnu/mapping/Symbol;
    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v42

    .line 1320
    .local v42, uref:Lgnu/expr/Expression;
    mul-int/lit8 v47, v13, 0x2

    add-int/lit8 v47, v47, 0x1

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgnu/math/IntNum;

    .line 1321
    .local v36, uexp:Lgnu/math/IntNum;
    invoke-virtual/range {v36 .. v36}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v47

    const-wide/16 v49, 0x1

    cmp-long v47, v47, v49

    if-eqz v47, :cond_21

    .line 1322
    new-instance v43, Lgnu/expr/ApplyExp;

    sget-object v47, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput-object v42, v48, v49

    const/16 v49, 0x1

    invoke-static/range {v36 .. v36}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v50

    aput-object v50, v48, v49

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .end local v42           #uref:Lgnu/expr/Expression;
    .local v43, uref:Lgnu/expr/Expression;
    move-object/from16 v42, v43

    .line 1324
    .end local v43           #uref:Lgnu/expr/Expression;
    .restart local v42       #uref:Lgnu/expr/Expression;
    :cond_21
    aput-object v42, v41, v13

    .line 1315
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1327
    .end local v36           #uexp:Lgnu/math/IntNum;
    .end local v37           #uname:Ljava/lang/String;
    .end local v42           #uref:Lgnu/expr/Expression;
    .end local v44           #usym:Lgnu/mapping/Symbol;
    :cond_22
    const/16 v47, 0x1

    move/from16 v0, v26

    move/from16 v1, v47

    if-ne v0, v1, :cond_23

    .line 1328
    const/16 v47, 0x0

    aget-object v38, v41, v47

    .line 1331
    .local v38, unit:Lgnu/expr/Expression;
    :goto_f
    new-instance v47, Lgnu/expr/ApplyExp;

    sget-object v48, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v25 .. v25}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v51

    aput-object v51, v49, v50

    const/16 v50, 0x1

    aput-object v38, v49, v50

    invoke-direct/range {v47 .. v49}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto/16 :goto_0

    .line 1330
    .end local v38           #unit:Lgnu/expr/Expression;
    :cond_23
    new-instance v38, Lgnu/expr/ApplyExp;

    sget-object v47, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local v38       #unit:Lgnu/expr/Expression;
    goto :goto_f

    .line 1346
    .end local v9           #div:Z
    .end local v13           #i:I
    .end local v25           #num:Lgnu/math/DFloNum;
    .end local v26           #nunits:I
    .end local v31           #state:I
    .end local v38           #unit:Lgnu/expr/Expression;
    .end local v41           #units:[Lgnu/expr/Expression;
    .end local v46           #vec:Ljava/util/Vector;
    :cond_24
    const/16 v30, 0x0

    .restart local v30       #sawAngle:Z
    goto/16 :goto_5

    .line 1354
    .restart local v29       #rank:I
    :cond_25
    move-object/from16 v6, v20

    .line 1355
    .local v6, cname:Ljava/lang/String;
    if-eqz v29, :cond_26

    .line 1356
    const/16 v47, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1360
    :cond_26
    :try_start_0
    invoke-static {v6}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v35

    .line 1361
    .local v35, type:Lgnu/bytecode/Type;
    if-lez v29, :cond_28

    if-eqz v30, :cond_27

    if-nez v35, :cond_28

    .line 1363
    :cond_27
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v34

    .line 1364
    .restart local v34       #tsymbol:Lgnu/mapping/Symbol;
    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v32

    .line 1365
    .restart local v32       #texp:Lgnu/expr/Expression;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v32

    .line 1366
    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ErrorExp;

    move/from16 v47, v0

    if-nez v47, :cond_28

    .line 1367
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v35

    .line 1369
    .end local v32           #texp:Lgnu/expr/Expression;
    .end local v34           #tsymbol:Lgnu/mapping/Symbol;
    :cond_28
    if-eqz v35, :cond_2a

    .line 1373
    :goto_10
    add-int/lit8 v29, v29, -0x1

    if-ltz v29, :cond_29

    .line 1374
    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v35

    goto :goto_10

    .line 1375
    :cond_29
    invoke-static/range {v35 .. v35}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v47

    goto/16 :goto_0

    .line 1379
    :cond_2a
    invoke-static {v6}, Lgnu/bytecode/Type;->lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v35

    .line 1380
    move-object/from16 v0, v35

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v47, v0

    if-eqz v47, :cond_2b

    .line 1381
    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v5

    .line 1390
    .local v5, clas:Ljava/lang/Class;
    :goto_11
    if-eqz v5, :cond_2f

    .line 1392
    if-lez v29, :cond_2e

    .line 1394
    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v35

    .line 1395
    :goto_12
    add-int/lit8 v29, v29, -0x1

    if-ltz v29, :cond_2d

    .line 1396
    invoke-static/range {v35 .. v35}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v35

    goto :goto_12

    .line 1384
    .end local v5           #clas:Ljava/lang/Class;
    :cond_2b
    const/16 v47, 0x2e

    move-object v0, v6

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v47

    if-gez v47, :cond_2c

    .line 1385
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {v6}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1387
    :cond_2c
    invoke-static {v6}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .restart local v5       #clas:Ljava/lang/Class;
    goto :goto_11

    .line 1397
    :cond_2d
    invoke-virtual/range {v35 .. v35}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v5

    .line 1399
    :cond_2e
    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v47

    goto/16 :goto_0

    .line 1402
    .end local v5           #clas:Ljava/lang/Class;
    .end local v35           #type:Lgnu/bytecode/Type;
    :catch_0
    move-exception v47

    move-object/from16 v10, v47

    .line 1404
    .local v10, ex:Ljava/lang/ClassNotFoundException;
    invoke-static/range {v20 .. v20}, Lgnu/bytecode/ArrayClassLoader;->getContextPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v27

    .line 1405
    .local v27, pack:Ljava/lang/Package;
    if-eqz v27, :cond_2f

    .line 1406
    invoke-static/range {v27 .. v27}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v47

    goto/16 :goto_0

    .line 1408
    .end local v10           #ex:Ljava/lang/ClassNotFoundException;
    .end local v27           #pack:Ljava/lang/Package;
    :catch_1
    move-exception v47

    .line 1411
    :cond_2f
    const/16 v47, 0x0

    goto/16 :goto_0

    .end local v6           #cname:Ljava/lang/String;
    .end local v29           #rank:I
    .end local v30           #sawAngle:Z
    .restart local v3       #ch:C
    .restart local v9       #div:Z
    .restart local v12       #expRequired:Z
    .restart local v14       #i:I
    .restart local v22       #neg:Z
    .restart local v25       #num:Lgnu/math/DFloNum;
    .restart local v31       #state:I
    .restart local v39       #unitEnd:I
    .restart local v40       #unitStart:I
    .restart local v46       #vec:Ljava/util/Vector;
    :cond_30
    move v13, v14

    .end local v14           #i:I
    .restart local v13       #i:I
    goto/16 :goto_b

    .end local v22           #neg:Z
    :cond_31
    move v14, v13

    .end local v13           #i:I
    .restart local v14       #i:I
    goto/16 :goto_a
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 5

    .prologue
    .line 1429
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v1

    .line 1430
    .local v1, tab:Lgnu/kawa/lispexpr/ReadTable;
    const/16 v2, 0x3a

    iput-char v2, v1, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    .line 1431
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    .line 1432
    .local v0, dispatchTable:Lgnu/kawa/lispexpr/ReaderDispatch;
    const/16 v2, 0x27

    new-instance v3, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v4, "syntax"

    invoke-virtual {p0, v4}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1433
    const/16 v2, 0x60

    new-instance v3, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v4, "quasisyntax"

    invoke-virtual {p0, v4}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1434
    const/16 v2, 0x2c

    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1435
    const-string v2, "path"

    const-string v3, "gnu.kawa.lispexpr.LangObjType"

    const-string v4, "pathType"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v2, "filepath"

    const-string v3, "gnu.kawa.lispexpr.LangObjType"

    const-string v4, "filepathType"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v2, "URI"

    const-string v3, "gnu.kawa.lispexpr.LangObjType"

    const-string v4, "URIType"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v2, "symbol"

    const-string v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1439
    const-string v2, "namespace"

    const-string v3, "gnu.mapping.Namespace"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1440
    const-string v2, "duration"

    const-string v3, "kawa.lib.numbers"

    const-string v4, "duration"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    .line 1442
    return-object v1
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 7
    .parameter "type"

    .prologue
    .line 1083
    sget-object v6, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 1085
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    .line 1086
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1088
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1089
    .local v3, s:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/Type;

    .line 1090
    .local v5, t:Lgnu/bytecode/Type;
    sget-object v6, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1092
    .local v2, it:Lgnu/bytecode/Type;
    if-eq v2, v5, :cond_0

    .line 1093
    sget-object v6, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1096
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #it:Lgnu/bytecode/Type;
    .end local v3           #s:Ljava/lang/String;
    .end local v5           #t:Lgnu/bytecode/Type;
    :cond_1
    sget-object v6, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1097
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_2

    move-object v6, v4

    .line 1099
    :goto_1
    return-object v6

    :cond_2
    invoke-super {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 1
    .parameter "readable"

    .prologue
    .line 938
    if-eqz p1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    const-string v0, "Scheme"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 1
    .parameter "decl"

    .prologue
    .line 943
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "clas"

    .prologue
    .line 1046
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 1077
    :goto_0
    return-object v1

    .line 1049
    :cond_0
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1051
    :cond_1
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1053
    :cond_2
    const-string v1, "gnu.math.DFloNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1055
    :cond_3
    const-string v1, "gnu.math.RatNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1057
    :cond_4
    const-string v1, "gnu.math.RealNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1058
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1059
    :cond_5
    const-string v1, "gnu.math.Numeric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1061
    :cond_6
    const-string v1, "gnu.lists.FVector"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1063
    :cond_7
    const-string v1, "gnu.lists.LList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1065
    :cond_8
    const-string v1, "gnu.text.Path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1066
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1067
    :cond_9
    const-string v1, "gnu.text.URIPath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1069
    :cond_a
    const-string v1, "gnu.text.FilePath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_0

    .line 1071
    :cond_b
    const-string v1, "java.lang.Class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1072
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    goto/16 :goto_0

    .line 1073
    :cond_c
    const-string v1, "gnu.bytecode.Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    goto/16 :goto_0

    .line 1075
    :cond_d
    const-string v1, "gnu.bytecode.ClassType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1076
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    goto/16 :goto_0

    .line 1077
    :cond_e
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 1123
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4
    .parameter "func"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 1416
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 1417
    .local v0, exps:[Lgnu/expr/Expression;
    aput-object p1, v0, v3

    .line 1418
    const/4 v1, 0x1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/ReferenceExp;

    sget-object v3, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v2, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method
