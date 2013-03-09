.class public Lgnu/expr/Compilation;
.super Ljava/lang/Object;
.source "Compilation.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static final BODY_PARSED:I = 0x4

.field public static final CALL_WITH_CONSUMER:I = 0x2

.field public static final CALL_WITH_CONTINUATIONS:I = 0x4

.field public static final CALL_WITH_RETURN:I = 0x1

.field public static final CALL_WITH_TAILCALLS:I = 0x3

.field public static final CALL_WITH_UNSPECIFIED:I = 0x0

.field public static final CLASS_WRITTEN:I = 0xe

.field public static final COMPILED:I = 0xc

.field public static final COMPILE_SETUP:I = 0xa

.field public static final ERROR_SEEN:I = 0x64

.field public static final MODULE_NONSTATIC:I = -0x1

.field public static final MODULE_STATIC:I = 0x1

.field public static final MODULE_STATIC_DEFAULT:I = 0x0

.field public static final MODULE_STATIC_RUN:I = 0x2

.field public static final PROLOG_PARSED:I = 0x2

.field public static final PROLOG_PARSING:I = 0x1

.field public static final RESOLVED:I = 0x6

.field public static final WALKED:I = 0x8

.field public static apply0args:[Lgnu/bytecode/Type;

.field public static apply0method:Lgnu/bytecode/Method;

.field public static apply1args:[Lgnu/bytecode/Type;

.field public static apply1method:Lgnu/bytecode/Method;

.field public static apply2args:[Lgnu/bytecode/Type;

.field public static apply2method:Lgnu/bytecode/Method;

.field public static apply3method:Lgnu/bytecode/Method;

.field public static apply4method:Lgnu/bytecode/Method;

.field private static applyCpsArgs:[Lgnu/bytecode/Type;

.field public static applyCpsMethod:Lgnu/bytecode/Method;

.field public static applyNargs:[Lgnu/bytecode/Type;

.field public static applyNmethod:Lgnu/bytecode/Method;

.field public static applymethods:[Lgnu/bytecode/Method;

.field public static argsCallContextField:Lgnu/bytecode/Field;

.field private static chainUninitialized:Lgnu/expr/Compilation;

.field static checkArgCountMethod:Lgnu/bytecode/Method;

.field public static classPrefixDefault:Ljava/lang/String;

.field private static final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/expr/Compilation;",
            ">;"
        }
    .end annotation
.end field

.field public static debugPrintExpr:Z

.field public static debugPrintFinalExpr:Z

.field public static defaultCallConvention:I

.field public static defaultClassFileVersion:I

.field public static emitSourceDebugExtAttr:Z

.field public static final falseConstant:Lgnu/bytecode/Field;

.field public static generateMainDefault:Z

.field public static getCallContextInstanceMethod:Lgnu/bytecode/Method;

.field public static getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocationMethod:Lgnu/bytecode/Method;

.field public static final getProcedureBindingMethod:Lgnu/bytecode/Method;

.field public static final getSymbolProcedureMethod:Lgnu/bytecode/Method;

.field public static final getSymbolValueMethod:Lgnu/bytecode/Method;

.field public static inlineOk:Z

.field public static final int1Args:[Lgnu/bytecode/Type;

.field public static javaStringType:Lgnu/bytecode/ClassType;

.field static makeListMethod:Lgnu/bytecode/Method;

.field public static moduleStatic:I

.field public static noArgsField:Lgnu/bytecode/Field;

.field public static final objArrayType:Lgnu/bytecode/ArrayType;

.field public static options:Lgnu/text/Options;

.field public static pcCallContextField:Lgnu/bytecode/Field;

.field public static procCallContextField:Lgnu/bytecode/Field;

.field public static scmBooleanType:Lgnu/bytecode/ClassType;

.field public static scmKeywordType:Lgnu/bytecode/ClassType;

.field public static scmListType:Lgnu/bytecode/ClassType;

.field public static scmSequenceType:Lgnu/bytecode/ClassType;

.field static final setNameMethod:Lgnu/bytecode/Method;

.field public static final string1Arg:[Lgnu/bytecode/Type;

.field public static final sym1Arg:[Lgnu/bytecode/Type;

.field public static final trueConstant:Lgnu/bytecode/Field;

.field public static typeApplet:Lgnu/bytecode/ClassType;

.field public static typeCallContext:Lgnu/bytecode/ClassType;

.field public static typeClass:Lgnu/bytecode/ClassType;

.field public static typeClassType:Lgnu/bytecode/ClassType;

.field public static final typeConsumer:Lgnu/bytecode/ClassType;

.field public static typeEnvironment:Lgnu/bytecode/ClassType;

.field public static typeLanguage:Lgnu/bytecode/ClassType;

.field public static typeLocation:Lgnu/bytecode/ClassType;

.field public static typeMethodProc:Lgnu/bytecode/ClassType;

.field public static typeModuleBody:Lgnu/bytecode/ClassType;

.field public static typeModuleMethod:Lgnu/bytecode/ClassType;

.field public static typeModuleWithContext:Lgnu/bytecode/ClassType;

.field public static typeObject:Lgnu/bytecode/ClassType;

.field public static typeObjectType:Lgnu/bytecode/ClassType;

.field public static typePair:Lgnu/bytecode/ClassType;

.field public static typeProcedure:Lgnu/bytecode/ClassType;

.field public static typeProcedure0:Lgnu/bytecode/ClassType;

.field public static typeProcedure1:Lgnu/bytecode/ClassType;

.field public static typeProcedure2:Lgnu/bytecode/ClassType;

.field public static typeProcedure3:Lgnu/bytecode/ClassType;

.field public static typeProcedure4:Lgnu/bytecode/ClassType;

.field public static typeProcedureArray:[Lgnu/bytecode/ClassType;

.field public static typeProcedureN:Lgnu/bytecode/ClassType;

.field public static typeRunnable:Lgnu/bytecode/ClassType;

.field public static typeServlet:Lgnu/bytecode/ClassType;

.field public static typeString:Lgnu/bytecode/ClassType;

.field public static typeSymbol:Lgnu/bytecode/ClassType;

.field public static typeType:Lgnu/bytecode/ClassType;

.field public static typeValues:Lgnu/bytecode/ClassType;

.field public static warnAsError:Lgnu/text/Options$OptionInfo;

.field public static warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

.field public static warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

.field public static warnUnknownMember:Lgnu/text/Options$OptionInfo;


# instance fields
.field callContextVar:Lgnu/bytecode/Variable;

.field callContextVarForInit:Lgnu/bytecode/Variable;

.field public classPrefix:Ljava/lang/String;

.field classes:[Lgnu/bytecode/ClassType;

.field clinitChain:Lgnu/expr/Initializer;

.field clinitMethod:Lgnu/bytecode/Method;

.field public curClass:Lgnu/bytecode/ClassType;

.field public curLambda:Lgnu/expr/LambdaExp;

.field public currentOptions:Lgnu/text/Options;

.field protected current_scope:Lgnu/expr/ScopeExp;

.field public explicit:Z

.field public exprStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lgnu/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field forNameHelper:Lgnu/bytecode/Method;

.field fswitch:Lgnu/bytecode/SwitchState;

.field fswitchIndex:Lgnu/bytecode/Field;

.field public generateMain:Z

.field public immediate:Z

.field private keyUninitialized:I

.field langOptions:I

.field protected language:Lgnu/expr/Language;

.field public lexer:Lgnu/text/Lexer;

.field public lexical:Lgnu/expr/NameLookup;

.field litTable:Lgnu/expr/LitTable;

.field loader:Lgnu/bytecode/ArrayClassLoader;

.field localFieldIndex:I

.field public mainClass:Lgnu/bytecode/ClassType;

.field public mainLambda:Lgnu/expr/ModuleExp;

.field maxSelectorValue:I

.field protected messages:Lgnu/text/SourceMessages;

.field public method:Lgnu/bytecode/Method;

.field method_counter:I

.field public minfo:Lgnu/expr/ModuleInfo;

.field public moduleClass:Lgnu/bytecode/ClassType;

.field moduleInstanceMainField:Lgnu/bytecode/Field;

.field moduleInstanceVar:Lgnu/bytecode/Variable;

.field public mustCompile:Z

.field private nextUninitialized:Lgnu/expr/Compilation;

.field numClasses:I

.field pedantic:Z

.field public pendingImports:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field public thisDecl:Lgnu/bytecode/Variable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 107
    sput-boolean v10, Lgnu/expr/Compilation;->debugPrintExpr:Z

    .line 112
    new-instance v4, Lgnu/text/Options;

    invoke-direct {v4}, Lgnu/text/Options;-><init>()V

    sput-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    .line 113
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-undefined-variable"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "warn if no compiler-visible binding for a variable"

    invoke-virtual {v4, v5, v9, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    .line 117
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-unknown-member"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "warn if referencing an unknown method or field"

    invoke-virtual {v4, v5, v9, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    .line 121
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-invoke-unknown-method"

    sget-object v6, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    const-string v7, "warn if invoke calls an unknown method (subsumed by warn-unknown-member)"

    invoke-virtual {v4, v5, v9, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    .line 125
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-as-error"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "Make all warnings into errors"

    invoke-virtual {v4, v5, v9, v6, v7}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    .line 160
    const/high16 v4, 0x31

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 201
    sput v10, Lgnu/expr/Compilation;->moduleStatic:I

    .line 232
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    .line 233
    const-string v4, "java.lang.Boolean"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .line 234
    const-string v4, "java.lang.String"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    .line 235
    sget-object v4, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    .line 236
    const-string v4, "gnu.expr.Keyword"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    .line 237
    const-string v4, "gnu.lists.Sequence"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    .line 238
    const-string v4, "gnu.lists.LList"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    .line 239
    const-string v4, "gnu.lists.Pair"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    .line 240
    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-static {v4}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 241
    const-string v4, "java.lang.Runnable"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    .line 242
    const-string v4, "gnu.bytecode.Type"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    .line 243
    const-string v4, "gnu.bytecode.ObjectType"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    .line 245
    sget-object v4, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    .line 246
    const-string v4, "gnu.bytecode.ClassType"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    .line 247
    const-string v4, "gnu.mapping.Procedure"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .line 249
    const-string v4, "gnu.expr.Language"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    .line 251
    const-string v4, "gnu.mapping.Environment"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    .line 253
    const-string v4, "gnu.mapping.Location"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 255
    const-string v4, "gnu.mapping.Symbol"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    .line 257
    sget-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v5, "getSymbolValue"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getSymbolValueMethod:Lgnu/bytecode/Method;

    .line 259
    sget-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v5, "getSymbolProcedure"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getSymbolProcedureMethod:Lgnu/bytecode/Method;

    .line 261
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v5, "get"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    .line 264
    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v5, "getProcedure"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getProcedureBindingMethod:Lgnu/bytecode/Method;

    .line 267
    sget-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    .line 269
    sget-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v5, "FALSE"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    .line 272
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "setName"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->setNameMethod:Lgnu/bytecode/Method;

    .line 276
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->int1Args:[Lgnu/bytecode/Type;

    .line 277
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    .line 278
    sget-object v4, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sput-object v4, Lgnu/expr/Compilation;->sym1Arg:[Lgnu/bytecode/Type;

    .line 280
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getLocation"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

    .line 284
    new-array v2, v11, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v10

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v9

    .line 285
    .local v2, args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getLocation"

    sget-object v6, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v7, 0x11

    invoke-virtual {v4, v5, v2, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

    .line 291
    new-array v3, v11, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v4, v3, v10

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v3, v9

    .line 292
    .local v3, makeListArgs:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v5, "makeList"

    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const/16 v7, 0x9

    invoke-virtual {v4, v5, v3, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    .line 297
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getCurrent"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const/16 v8, 0x9

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

    .line 301
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sput-object v4, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 302
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    .line 303
    new-array v4, v11, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v9

    sput-object v4, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    .line 304
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    .line 308
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply0"

    sget-object v6, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/16 v8, 0x11

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    .line 319
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply1"

    sget-object v6, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    .line 321
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply2"

    sget-object v6, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    .line 323
    new-array v0, v12, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v10

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v9

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v11

    .line 324
    .local v0, apply3args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply3"

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v0, v6, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    .line 326
    new-array v1, v13, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v10

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v9

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v11

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v12

    .line 327
    .local v1, apply4args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply4"

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v1, v6, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    .line 329
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "applyN"

    sget-object v6, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .line 331
    new-array v2, v11, [Lgnu/bytecode/Type;

    .line 332
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v10

    .line 333
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v2, v9

    .line 334
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "checkArgCount"

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v7, 0x9

    invoke-virtual {v4, v5, v2, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->checkArgCountMethod:Lgnu/bytecode/Method;

    .line 339
    const/4 v4, 0x6

    new-array v4, v4, [Lgnu/bytecode/Method;

    sget-object v5, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    aput-object v5, v4, v9

    sget-object v5, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    aput-object v5, v4, v11

    sget-object v5, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    aput-object v5, v4, v12

    sget-object v5, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    aput-object v5, v4, v13

    const/4 v5, 0x5

    sget-object v6, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    sput-object v4, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .line 343
    const-string v4, "gnu.mapping.Procedure0"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    .line 345
    const-string v4, "gnu.mapping.Procedure1"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    .line 347
    const-string v4, "gnu.mapping.Procedure2"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    .line 349
    const-string v4, "gnu.mapping.Procedure3"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    .line 351
    const-string v4, "gnu.mapping.Procedure4"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    .line 353
    const-string v4, "gnu.mapping.ProcedureN"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    .line 355
    const-string v4, "gnu.expr.ModuleBody"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    .line 357
    const-string v4, "gnu.expr.ModuleWithContext"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    .line 359
    const-string v4, "java.applet.Applet"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 360
    const-string v4, "gnu.kawa.servlet.KawaServlet"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    .line 363
    const-string v4, "gnu.mapping.CallContext"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 365
    const-string v4, "gnu.lists.Consumer"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "getInstance"

    invoke-virtual {v4, v5, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    .line 369
    const-string v4, "gnu.mapping.Values"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 371
    sget-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v5, "noArgs"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    .line 373
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "pc"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    .line 375
    const-string v4, "gnu.mapping.MethodProc"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    .line 377
    const-string v4, "gnu.expr.ModuleMethod"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 380
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "values"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->argsCallContextField:Lgnu/bytecode/Field;

    .line 382
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "proc"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    .line 384
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    .line 385
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply"

    sget-object v6, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->applyCpsMethod:Lgnu/bytecode/Method;

    .line 389
    const/4 v4, 0x5

    new-array v4, v4, [Lgnu/bytecode/ClassType;

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v9

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v11

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v12

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v13

    sput-object v4, Lgnu/expr/Compilation;->typeProcedureArray:[Lgnu/bytecode/ClassType;

    .line 396
    sput-boolean v10, Lgnu/expr/Compilation;->generateMainDefault:Z

    .line 459
    sput-boolean v9, Lgnu/expr/Compilation;->inlineOk:Z

    .line 620
    const-string v4, ""

    sput-object v4, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    .line 1080
    sput-boolean v9, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    .line 2971
    new-instance v4, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v4}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v4, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 2
    .parameter "language"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 129
    new-instance v0, Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-direct {v0, v1}, Lgnu/text/Options;-><init>(Lgnu/text/Options;)V

    iput-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    .line 398
    sget-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateMain:Z

    .line 622
    sget-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    iput-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    .line 977
    iput-object p1, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    .line 978
    iput-object p2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    .line 979
    iput-object p3, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    .line 980
    return-void
.end method

.method private checkLoop()V
    .locals 2

    .prologue
    .line 2696
    iget-object p0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .end local p0
    check-cast p0, Lgnu/expr/LambdaExp;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%do%loop"

    if-eq v0, v1, :cond_0

    .line 2697
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad loop state"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2698
    :cond_0
    return-void
.end method

.method public static demangle2(CC)C
    .locals 2
    .parameter "char1"
    .parameter "char2"

    .prologue
    const/16 v1, 0x25

    .line 844
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 876
    const v0, 0xffff

    :goto_0
    return v0

    .line 846
    :sswitch_0
    const/16 v0, 0x26

    goto :goto_0

    .line 847
    :sswitch_1
    const/16 v0, 0x40

    goto :goto_0

    .line 848
    :sswitch_2
    const/16 v0, 0x3a

    goto :goto_0

    .line 849
    :sswitch_3
    const/16 v0, 0x2c

    goto :goto_0

    .line 850
    :sswitch_4
    const/16 v0, 0x22

    goto :goto_0

    .line 851
    :sswitch_5
    const/16 v0, 0x2e

    goto :goto_0

    .line 852
    :sswitch_6
    const/16 v0, 0x3d

    goto :goto_0

    .line 853
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 854
    :sswitch_8
    const/16 v0, 0x3e

    goto :goto_0

    .line 855
    :sswitch_9
    const/16 v0, 0x5b

    goto :goto_0

    .line 856
    :sswitch_a
    const/16 v0, 0x7b

    goto :goto_0

    .line 857
    :sswitch_b
    const/16 v0, 0x28

    goto :goto_0

    .line 858
    :sswitch_c
    const/16 v0, 0x3c

    goto :goto_0

    :sswitch_d
    move v0, v1

    .line 859
    goto :goto_0

    .line 860
    :sswitch_e
    const/16 v0, 0x2d

    goto :goto_0

    .line 861
    :sswitch_f
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_10
    move v0, v1

    .line 862
    goto :goto_0

    .line 863
    :sswitch_11
    const/16 v0, 0x2b

    goto :goto_0

    .line 864
    :sswitch_12
    const/16 v0, 0x3f

    goto :goto_0

    .line 865
    :sswitch_13
    const/16 v0, 0x5d

    goto :goto_0

    .line 866
    :sswitch_14
    const/16 v0, 0x7d

    goto :goto_0

    .line 867
    :sswitch_15
    const/16 v0, 0x29

    goto :goto_0

    .line 868
    :sswitch_16
    const/16 v0, 0x3b

    goto :goto_0

    .line 869
    :sswitch_17
    const/16 v0, 0x2f

    goto :goto_0

    .line 870
    :sswitch_18
    const/16 v0, 0x5c

    goto :goto_0

    .line 871
    :sswitch_19
    const/16 v0, 0x2a

    goto :goto_0

    .line 872
    :sswitch_1a
    const/16 v0, 0x7e

    goto :goto_0

    .line 873
    :sswitch_1b
    const/16 v0, 0x5e

    goto :goto_0

    .line 874
    :sswitch_1c
    const/16 v0, 0x7c

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        0x41006d -> :sswitch_0
        0x410074 -> :sswitch_1
        0x43006c -> :sswitch_2
        0x43006d -> :sswitch_3
        0x440071 -> :sswitch_4
        0x440074 -> :sswitch_5
        0x450071 -> :sswitch_6
        0x450078 -> :sswitch_7
        0x470072 -> :sswitch_8
        0x4c0042 -> :sswitch_9
        0x4c0043 -> :sswitch_a
        0x4c0050 -> :sswitch_b
        0x4c0073 -> :sswitch_c
        0x4d0063 -> :sswitch_d
        0x4d006e -> :sswitch_e
        0x4e006d -> :sswitch_f
        0x500063 -> :sswitch_10
        0x50006c -> :sswitch_11
        0x510075 -> :sswitch_12
        0x520042 -> :sswitch_13
        0x520043 -> :sswitch_14
        0x520050 -> :sswitch_15
        0x530043 -> :sswitch_16
        0x53006c -> :sswitch_17
        0x530071 -> :sswitch_18
        0x530074 -> :sswitch_19
        0x54006c -> :sswitch_1a
        0x550070 -> :sswitch_1b
        0x560042 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static demangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static demangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .parameter "name"
    .parameter "reversible"

    .prologue
    const/16 v13, 0x24

    const/4 v12, 0x1

    .line 886
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 887
    .local v9, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 888
    .local v6, len:I
    const/4 v7, 0x0

    .line 889
    .local v7, mangled:Z
    const/4 v8, 0x0

    .line 890
    .local v8, predicate:Z
    const/4 v4, 0x0

    .line 891
    .local v4, downCaseNext:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_8

    .line 893
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 894
    .local v2, ch:C
    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 896
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 897
    const/4 v4, 0x0

    .line 900
    :cond_0
    if-nez p1, :cond_3

    const/16 v10, 0x69

    if-ne v2, v10, :cond_3

    if-nez v5, :cond_3

    const/4 v10, 0x2

    if-le v6, v10, :cond_3

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x73

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, d:C
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 904
    const/4 v7, 0x1

    .line 905
    const/4 v8, 0x1

    .line 906
    add-int/lit8 v5, v5, 0x1

    .line 907
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 909
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    add-int/lit8 v5, v5, 0x1

    .line 891
    .end local v3           #d:C
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 915
    :cond_3
    if-ne v2, v13, :cond_5

    add-int/lit8 v10, v5, 0x2

    if-ge v10, v6, :cond_5

    .line 917
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 918
    .local v0, c1:C
    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 919
    .local v1, c2:C
    invoke-static {v0, v1}, Lgnu/expr/Compilation;->demangle2(CC)C

    move-result v3

    .line 920
    .restart local v3       #d:C
    const v10, 0xffff

    if-eq v3, v10, :cond_4

    .line 922
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    add-int/lit8 v5, v5, 0x2

    .line 924
    const/4 v7, 0x1

    .line 925
    const/4 v4, 0x1

    .line 926
    goto :goto_1

    .line 928
    :cond_4
    const/16 v10, 0x54

    if-ne v0, v10, :cond_7

    const/16 v10, 0x6f

    if-ne v1, v10, :cond_7

    add-int/lit8 v10, v5, 0x3

    if-ge v10, v6, :cond_7

    add-int/lit8 v10, v5, 0x3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_7

    .line 931
    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    add-int/lit8 v5, v5, 0x3

    .line 933
    const/4 v7, 0x1

    .line 934
    const/4 v4, 0x1

    .line 935
    goto :goto_1

    .line 938
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v3           #d:C
    :cond_5
    if-nez p1, :cond_7

    if-le v5, v12, :cond_7

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    sub-int v10, v5, v12

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 942
    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 943
    const/4 v7, 0x1

    .line 944
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 946
    :cond_7
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 948
    .end local v2           #ch:C
    :cond_8
    if-eqz v8, :cond_9

    .line 949
    const/16 v10, 0x3f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 950
    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    return-object v10

    :cond_a
    move-object v10, p0

    goto :goto_2
.end method

.method private dumpInitializers(Lgnu/expr/Initializer;)V
    .locals 1
    .parameter "inits"

    .prologue
    .line 602
    invoke-static {p1}, Lgnu/expr/Initializer;->reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;

    move-result-object v0

    .line 603
    .local v0, init:Lgnu/expr/Initializer;
    :goto_0
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p0}, Lgnu/expr/Initializer;->emit(Lgnu/expr/Compilation;)V

    .line 603
    iget-object v0, v0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method public static declared-synchronized findForImmediateLiterals(I)Lgnu/expr/Compilation;
    .locals 5
    .parameter "key"

    .prologue
    .line 2946
    const-class v3, Lgnu/expr/Compilation;

    monitor-enter v3

    const/4 v2, 0x0

    .line 2947
    .local v2, prev:Lgnu/expr/Compilation;
    :try_start_0
    sget-object v0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2949
    .local v0, comp:Lgnu/expr/Compilation;
    :goto_0
    iget-object v1, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2950
    .local v1, next:Lgnu/expr/Compilation;
    iget v4, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    if-ne v4, p0, :cond_1

    .line 2952
    if-nez v2, :cond_0

    .line 2953
    sput-object v1, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2956
    :goto_1
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    monitor-exit v3

    return-object v0

    .line 2955
    :cond_0
    :try_start_1
    iput-object v1, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2946
    .end local v0           #comp:Lgnu/expr/Compilation;
    .end local v1           #next:Lgnu/expr/Compilation;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 2959
    .restart local v0       #comp:Lgnu/expr/Compilation;
    .restart local v1       #next:Lgnu/expr/Compilation;
    :cond_1
    move-object v2, v0

    .line 2960
    move-object v0, v1

    .line 2961
    goto :goto_0
.end method

.method public static final getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 5
    .parameter "clas"
    .parameter "lexp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1154
    const-string v2, "<init>"

    invoke-virtual {p0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1155
    .local v1, meth:Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1165
    :goto_0
    return-object v2

    .line 1158
    :cond_0
    instance-of v2, p1, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_1

    .line 1160
    new-array v0, v4, [Lgnu/bytecode/Type;

    .line 1161
    .local v0, args:[Lgnu/bytecode/Type;
    iget-object v2, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1165
    :goto_1
    const-string v2, "<init>"

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v2, v4, v0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 1164
    .end local v0           #args:[Lgnu/bytecode/Type;
    :cond_1
    sget-object v0, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .restart local v0       #args:[Lgnu/bytecode/Type;
    goto :goto_1
.end method

.method public static getCurrent()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 2976
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    return-object v0
.end method

.method public static isValidJavaName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 721
    .local v1, len:I
    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 726
    :goto_0
    return v2

    .line 723
    :cond_1
    move v0, v1

    .local v0, i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    .line 724
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 725
    goto :goto_0

    .line 726
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 3
    .parameter "value"
    .parameter "type"

    .prologue
    .line 2788
    const/4 v2, 0x2

    new-array v1, v2, [Lgnu/expr/Expression;

    .line 2789
    .local v1, exps:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2790
    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 2791
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/kawa/functions/Convert;->getInstance()Lgnu/kawa/functions/Convert;

    move-result-object v2

    invoke-direct {v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2792
    .local v0, c:Lgnu/expr/QuoteExp;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1
    .parameter "value"
    .parameter "type"

    .prologue
    .line 2803
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 707
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .parameter "name"
    .parameter "kind"

    .prologue
    const/16 v13, 0x24

    const/4 v12, 0x1

    const/16 v11, 0x10

    const/4 v10, 0x0

    .line 744
    if-ltz p1, :cond_0

    move v7, v12

    .line 745
    .local v7, reversible:Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 746
    .local v3, len:I
    const/4 v9, 0x6

    if-ne v3, v9, :cond_1

    const-string v9, "*init*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 747
    const-string v9, "<init>"

    .line 836
    :goto_1
    return-object v9

    .end local v3           #len:I
    .end local v7           #reversible:Z
    :cond_0
    move v7, v10

    .line 744
    goto :goto_0

    .line 748
    .restart local v3       #len:I
    .restart local v7       #reversible:Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 749
    .local v4, mangled:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 750
    .local v8, upcaseNext:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_10

    .line 752
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 753
    .local v0, ch:C
    if-eqz v8, :cond_2

    .line 755
    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    .line 756
    const/4 v8, 0x0

    .line 758
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 760
    if-nez v2, :cond_3

    .line 761
    const-string v9, "$N"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 750
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 764
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0x5f

    if-ne v0, v9, :cond_7

    .line 765
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 766
    :cond_7
    if-ne v0, v13, :cond_9

    .line 767
    if-le p1, v12, :cond_8

    const-string v9, "$$"

    :goto_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const-string v9, "$"

    goto :goto_4

    .line 770
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 825
    invoke-virtual {v4, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 826
    shr-int/lit8 v9, v0, 0xc

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 827
    shr-int/lit8 v9, v0, 0x8

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 828
    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 829
    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 831
    :cond_a
    :goto_5
    if-nez v7, :cond_4

    .line 832
    const/4 v8, 0x1

    goto :goto_3

    .line 772
    :sswitch_0
    const-string v9, "$Pl"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 774
    :sswitch_1
    if-eqz v7, :cond_b

    .line 775
    const-string v9, "$Mn"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 778
    :cond_b
    add-int/lit8 v9, v2, 0x1

    if-ge v9, v3, :cond_c

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v6, v9

    .line 779
    .local v6, next:C
    :goto_6
    const/16 v9, 0x3e

    if-ne v6, v9, :cond_d

    .line 781
    const-string v9, "$To$"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v6           #next:C
    :cond_c
    move v6, v10

    .line 778
    goto :goto_6

    .line 784
    .restart local v6       #next:C
    :cond_d
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-nez v9, :cond_a

    .line 785
    const-string v9, "$Mn"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 788
    .end local v6           #next:C
    :sswitch_2
    const-string v9, "$St"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 789
    :sswitch_3
    const-string v9, "$Sl"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 790
    :sswitch_4
    const-string v9, "$Eq"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 791
    :sswitch_5
    const-string v9, "$Ls"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 792
    :sswitch_6
    const-string v9, "$Gr"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 793
    :sswitch_7
    const-string v9, "$At"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 794
    :sswitch_8
    const-string v9, "$Tl"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 795
    :sswitch_9
    const-string v9, "$Pc"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 796
    :sswitch_a
    const-string v9, "$Dt"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 797
    :sswitch_b
    const-string v9, "$Cm"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 798
    :sswitch_c
    const-string v9, "$LP"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 799
    :sswitch_d
    const-string v9, "$RP"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 800
    :sswitch_e
    const-string v9, "$LB"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 801
    :sswitch_f
    const-string v9, "$RB"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 802
    :sswitch_10
    const-string v9, "$LC"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 803
    :sswitch_11
    const-string v9, "$RC"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 804
    :sswitch_12
    const-string v9, "$Sq"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 805
    :sswitch_13
    const-string v9, "$Dq"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 806
    :sswitch_14
    const-string v9, "$Am"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 807
    :sswitch_15
    const-string v9, "$Nm"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 809
    :sswitch_16
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_e

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    move v1, v9

    .line 810
    .local v1, first:C
    :goto_7
    if-nez v7, :cond_f

    add-int/lit8 v9, v2, 0x1

    if-ne v9, v3, :cond_f

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 813
    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v9

    invoke-virtual {v4, v10, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 814
    const-string v9, "is"

    invoke-virtual {v4, v10, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .end local v1           #first:C
    :cond_e
    move v1, v10

    .line 809
    goto :goto_7

    .line 817
    .restart local v1       #first:C
    :cond_f
    const-string v9, "$Qu"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 819
    .end local v1           #first:C
    :sswitch_17
    const-string v9, "$Ex"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 820
    :sswitch_18
    const-string v9, "$Cl"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 821
    :sswitch_19
    const-string v9, "$SC"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 822
    :sswitch_1a
    const-string v9, "$Up"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 823
    :sswitch_1b
    const-string v9, "$VB"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 835
    .end local v0           #ch:C
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, mname:Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, p0

    goto/16 :goto_1

    :cond_11
    move-object v9, v5

    goto/16 :goto_1

    .line 770
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_17
        0x22 -> :sswitch_13
        0x23 -> :sswitch_15
        0x25 -> :sswitch_9
        0x26 -> :sswitch_14
        0x27 -> :sswitch_12
        0x28 -> :sswitch_c
        0x29 -> :sswitch_d
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_b
        0x2d -> :sswitch_1
        0x2e -> :sswitch_a
        0x2f -> :sswitch_3
        0x3a -> :sswitch_18
        0x3b -> :sswitch_19
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_6
        0x3f -> :sswitch_16
        0x40 -> :sswitch_7
        0x5b -> :sswitch_e
        0x5d -> :sswitch_f
        0x5e -> :sswitch_1a
        0x7b -> :sswitch_10
        0x7c -> :sswitch_1b
        0x7d -> :sswitch_11
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method public static mangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "reversible"

    .prologue
    .line 734
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 712
    if-eqz p0, :cond_0

    invoke-static {p0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 715
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mangleURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    .line 642
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 643
    .local v0, hasSlash:Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 644
    .local v1, len:I
    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    const-string v2, "class:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move v9, v1

    .end local v1           #len:I
    .local v9, len:I
    move-object v1, p0

    move p0, v0

    .local p0, hasSlash:I
    move v0, v9

    .line 702
    .end local v9           #len:I
    .local v0, len:I
    :goto_1
    return-object v1

    .line 642
    .end local v0           #len:I
    .local p0, name:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    .local v0, hasSlash:Z
    .restart local v1       #len:I
    :cond_1
    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 650
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #hasSlash:Z
    move-result-object p0

    .line 651
    add-int/lit8 v1, v1, -0x5

    .line 652
    const/4 v0, 0x1

    .restart local v0       #hasSlash:Z
    move v3, v0

    .local v3, hasSlash:I
    move v0, v1

    .line 660
    .end local v1           #len:I
    .local v0, len:I
    :goto_2
    const/4 v1, 0x0

    .line 661
    .local v1, start:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, sbuf:Ljava/lang/StringBuffer;
    move v7, v1

    .end local v1           #start:I
    .local v7, start:I
    move v4, v0

    .line 664
    .end local v0           #len:I
    .local v4, len:I
    :goto_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 665
    .local v6, slash:I
    if-gez v6, :cond_4

    move v1, v4

    .line 666
    .local v1, end:I
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 667
    .local v2, first:Z
    :goto_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 670
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, host:Ljava/lang/String;
    sub-int v2, v1, v7

    const/4 v7, 0x4

    if-le v2, v7, :cond_2

    .end local v2           #first:Z
    .end local v7           #start:I
    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_2
    invoke-static {v0, v5}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    move v0, v1

    .end local v1           #end:I
    .local v0, end:I
    move v1, v4

    .line 698
    .end local v4           #len:I
    .local v1, len:I
    :goto_6
    if-gez v6, :cond_9

    .line 702
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #name:Ljava/lang/String;
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    move-object v1, p0

    move p0, v3

    .end local v3           #hasSlash:I
    .local p0, hasSlash:I
    goto :goto_1

    .line 654
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v6           #slash:I
    .local v0, hasSlash:Z
    .restart local v1       #len:I
    .local p0, name:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    if-le v1, v2, :cond_c

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 657
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 658
    add-int/lit8 v1, v1, -0x4

    move v3, v0

    .restart local v3       #hasSlash:I
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    goto :goto_2

    .end local v0           #len:I
    .restart local v4       #len:I
    .restart local v5       #sbuf:Ljava/lang/StringBuffer;
    .restart local v6       #slash:I
    .restart local v7       #start:I
    :cond_4
    move v1, v6

    .line 665
    goto :goto_4

    .line 666
    .local v1, end:I
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5

    .line 676
    .restart local v2       #first:Z
    :cond_6
    if-eq v7, v1, :cond_b

    .line 678
    if-nez v2, :cond_7

    .line 679
    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 680
    :cond_7
    if-ne v1, v4, :cond_a

    .line 682
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 683
    .local v0, dot:I
    add-int/lit8 v8, v7, 0x1

    if-le v0, v8, :cond_a

    if-nez v2, :cond_a

    .line 686
    sub-int v0, v4, v0

    .line 687
    .local v0, extLen:I
    const/4 v2, 0x4

    if-le v0, v2, :cond_8

    .end local v2           #first:Z
    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    const-string v2, "html"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 690
    :cond_8
    sub-int v1, v4, v0

    .line 691
    .end local v4           #len:I
    .local v1, len:I
    move v0, v1

    .line 692
    .local v0, end:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 696
    :goto_7
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 700
    .end local v7           #start:I
    :cond_9
    add-int/lit8 v0, v6, 0x1

    .local v0, start:I
    move v7, v0

    .end local v0           #start:I
    .restart local v7       #start:I
    move v4, v1

    .line 701
    .end local v1           #len:I
    .restart local v4       #len:I
    goto/16 :goto_3

    .local v1, end:I
    :cond_a
    move v0, v1

    .end local v1           #end:I
    .local v0, end:I
    move v1, v4

    .end local v4           #len:I
    .local v1, len:I
    goto :goto_7

    .end local v0           #end:I
    .local v1, end:I
    .restart local v2       #first:Z
    .restart local v4       #len:I
    :cond_b
    move v0, v1

    .end local v1           #end:I
    .restart local v0       #end:I
    move v1, v4

    .end local v4           #len:I
    .local v1, len:I
    goto :goto_6

    .end local v2           #first:Z
    .end local v3           #hasSlash:I
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v6           #slash:I
    .end local v7           #start:I
    .local v0, hasSlash:Z
    :cond_c
    move v3, v0

    .restart local v3       #hasSlash:I
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    goto/16 :goto_2
.end method

.method private static putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "name"
    .parameter "sbuf"

    .prologue
    const/16 v2, 0x2e

    .line 627
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 628
    .local v0, dot:I
    if-lez v0, :cond_0

    .line 630
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 631
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 632
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 634
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    return-void
.end method

.method private registerClass(Lgnu/bytecode/ClassType;)V
    .locals 4
    .parameter "new_class"

    .prologue
    const/4 v3, 0x0

    .line 1084
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    if-nez v1, :cond_2

    .line 1085
    const/16 v1, 0x14

    new-array v1, v1, [Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassType;->addModifiers(I)V

    .line 1094
    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-lez v1, :cond_1

    .line 1097
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object p1, v1, v3

    .line 1098
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    aput-object v2, v1, v3

    .line 1100
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/Compilation;->numClasses:I

    aput-object p1, v1, v2

    .line 1101
    return-void

    .line 1086
    :cond_2
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1088
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/bytecode/ClassType;

    .line 1089
    .local v0, new_classes:[Lgnu/bytecode/ClassType;
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1092
    .end local v0           #new_classes:[Lgnu/bytecode/ClassType;
    :cond_3
    const/16 v1, 0x21

    goto :goto_1
.end method

.method public static declared-synchronized registerForImmediateLiterals(Lgnu/expr/Compilation;)I
    .locals 4
    .parameter "comp"

    .prologue
    .line 2932
    const-class v2, Lgnu/expr/Compilation;

    monitor-enter v2

    const/4 v1, 0x0

    .line 2933
    .local v1, i:I
    :try_start_0
    sget-object v0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .local v0, c:Lgnu/expr/Compilation;
    :goto_0
    if-eqz v0, :cond_1

    .line 2935
    iget v3, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    if-gt v1, v3, :cond_0

    .line 2936
    iget v3, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    add-int/lit8 v1, v3, 0x1

    .line 2933
    :cond_0
    iget-object v0, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    goto :goto_0

    .line 2938
    :cond_1
    iput v1, p0, Lgnu/expr/Compilation;->keyUninitialized:I

    .line 2939
    sget-object v3, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    iput-object v3, p0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2940
    sput-object p0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    monitor-exit v2

    return v1

    .line 2932
    .end local v0           #c:Lgnu/expr/Compilation;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static restoreCurrent(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "saved"

    .prologue
    .line 2993
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2994
    return-void
.end method

.method public static setCurrent(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 2981
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2982
    return-void
.end method

.method public static setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    .locals 2
    .parameter "comp"

    .prologue
    .line 2986
    sget-object v1, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    .line 2987
    .local v0, save:Lgnu/expr/Compilation;
    sget-object v1, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2988
    return-object v0
.end method

.method public static setupLiterals(I)V
    .locals 7
    .parameter "key"

    .prologue
    .line 2903
    invoke-static {p0}, Lgnu/expr/Compilation;->findForImmediateLiterals(I)Lgnu/expr/Compilation;

    move-result-object v1

    .line 2906
    .local v1, comp:Lgnu/expr/Compilation;
    :try_start_0
    iget-object v4, v1, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    iget-object v5, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2909
    .local v0, clas:Ljava/lang/Class;
    iget-object v4, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    iget-object v3, v4, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v3, init:Lgnu/expr/Literal;
    :goto_0
    if-eqz v3, :cond_0

    .line 2918
    iget-object v4, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v3, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2910
    iget-object v3, v3, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 2921
    :cond_0
    const/4 v4, 0x0

    iput-object v4, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    return-void

    .line 2923
    .end local v0           #clas:Ljava/lang/Class;
    .end local v3           #init:Lgnu/expr/Literal;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2925
    .local v2, ex:Ljava/lang/Throwable;
    new-instance v4, Lgnu/mapping/WrappedException;

    const-string v5, "internal error"

    invoke-direct {v4, v5, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private startClassInit()Lgnu/bytecode/Method;
    .locals 8

    .prologue
    .line 1905
    iget-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string v4, "<clinit>"

    sget-object v5, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v7, 0x9

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1908
    iget-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1910
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 1914
    .local v1, languageType:Lgnu/bytecode/ClassType;
    const-string v3, "registerEnvironment"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 1916
    .local v2, registerMethod:Lgnu/bytecode/Method;
    if-eqz v2, :cond_1

    .line 1917
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1919
    .end local v1           #languageType:Lgnu/bytecode/ClassType;
    .end local v2           #registerMethod:Lgnu/bytecode/Method;
    :cond_1
    iget-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v3
.end method

.method private varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 10
    .parameter "source"
    .parameter "singleArgs"
    .parameter "counter"
    .parameter "lastArgType"
    .parameter "ctxVar"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1830
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 1831
    .local v6, code:Lgnu/bytecode/CodeAttr;
    check-cast p4, Lgnu/bytecode/ArrayType;

    .end local p4
    invoke-virtual {p4}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1832
    .local v4, elType:Lgnu/bytecode/Type;
    const-string v0, "java.lang.Object"

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v8, v2

    .line 1833
    .local v8, mustConvert:Z
    :goto_0
    if-eqz p5, :cond_1

    if-nez v8, :cond_1

    .line 1835
    invoke-virtual {v6, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1836
    invoke-virtual {v6, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1837
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v1, "getRestArgsArray"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1901
    :goto_1
    return-void

    .end local v8           #mustConvert:Z
    :cond_0
    move v8, v3

    .line 1832
    goto :goto_0

    .line 1839
    .restart local v8       #mustConvert:Z
    :cond_1
    if-nez p2, :cond_2

    if-nez v8, :cond_2

    .line 1840
    invoke-virtual {v6, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1

    .line 1843
    :cond_2
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 1844
    if-nez p3, :cond_4

    .line 1846
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p3

    .line 1847
    if-eqz p5, :cond_7

    .line 1849
    invoke-virtual {v6, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1850
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v1, "getArgCount"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1857
    :goto_2
    if-eqz p2, :cond_3

    .line 1859
    invoke-virtual {v6, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1860
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1862
    :cond_3
    invoke-virtual {v6, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1864
    :cond_4
    invoke-virtual {v6, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1865
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 1866
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1867
    .local v9, testLabel:Lgnu/bytecode/Label;
    new-instance v7, Lgnu/bytecode/Label;

    invoke-direct {v7, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1868
    .local v7, loopTopLabel:Lgnu/bytecode/Label;
    invoke-virtual {v7, v6}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1869
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1870
    invoke-virtual {v7, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1872
    invoke-virtual {v6, v2}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1873
    invoke-virtual {v6, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1874
    if-eqz p5, :cond_8

    .line 1875
    invoke-virtual {v6, p5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1878
    :goto_3
    invoke-virtual {v6, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1879
    if-eqz p2, :cond_5

    .line 1881
    invoke-virtual {v6, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1882
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitAdd(Lgnu/bytecode/PrimType;)V

    .line 1884
    :cond_5
    if-eqz p5, :cond_9

    .line 1885
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v1, "getArgAsObject"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1888
    :goto_4
    if-eqz v8, :cond_6

    .line 1890
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1894
    :cond_6
    invoke-virtual {v6, v4}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 1895
    invoke-virtual {v9, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1896
    const/4 v0, -0x1

    invoke-virtual {v6, p3, v0}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1897
    invoke-virtual {v6, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1898
    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V

    .line 1899
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_1

    .line 1854
    .end local v7           #loopTopLabel:Lgnu/bytecode/Label;
    .end local v9           #testLabel:Lgnu/bytecode/Label;
    :cond_7
    invoke-virtual {v6, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1855
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    goto :goto_2

    .line 1877
    .restart local v7       #loopTopLabel:Lgnu/bytecode/Label;
    .restart local v9       #testLabel:Lgnu/bytecode/Label;
    :cond_8
    invoke-virtual {v6, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 1887
    :cond_9
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_4
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "new_class"

    .prologue
    .line 1105
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1107
    sget-boolean v0, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setStratum(Ljava/lang/String;)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 1111
    :cond_1
    invoke-direct {p0, p1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 1112
    sget v0, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 1113
    return-void
.end method

.method public addMainClass(Lgnu/expr/ModuleExp;)V
    .locals 4
    .parameter "module"

    .prologue
    .line 1123
    invoke-virtual {p1, p0}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1124
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1125
    .local v2, type:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1126
    .local v0, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 1128
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1129
    .local v1, sup:Lgnu/bytecode/ClassType;
    if-nez v1, :cond_1

    .line 1131
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1132
    sget-object v1, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 1138
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1139
    sget-object v3, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->addInterface(Lgnu/bytecode/ClassType;)V

    .line 1140
    :cond_2
    invoke-virtual {v2, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1142
    iput-object v2, p1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 1143
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1144
    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-static {v3, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 1145
    return-void

    .line 1133
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1134
    sget-object v1, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1136
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0
.end method

.method public allocLocalField(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 2371
    if-nez p2, :cond_0

    .line 2372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tmp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2373
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 2374
    .local v0, field:Lgnu/bytecode/Field;
    return-object v0
.end method

.method callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V
    .locals 11
    .parameter "clas"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/ClassType;",
            "Ljava/util/Vector",
            "<",
            "Lgnu/bytecode/ClassType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1240
    .local p2, seen:Ljava/util/Vector;,"Ljava/util/Vector<Lgnu/bytecode/ClassType;>;"
    if-nez p1, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1244
    .local v8, name:Ljava/lang/String;
    const-string v9, "java.lang.Object"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1247
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    .local v4, i:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 1248
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v8, :cond_2

    goto :goto_0

    .line 1250
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1255
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 1256
    .local v5, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v5, :cond_4

    .line 1258
    array-length v7, v5

    .line 1259
    .local v7, n:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 1260
    aget-object v9, v5, v4

    invoke-virtual {p0, v9, p2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1259
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1263
    .end local v7           #n:I
    :cond_4
    const/4 v1, 0x1

    .line 1264
    .local v1, clEnvArgs:I
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1266
    instance-of v9, p1, Lgnu/expr/PairClassType;

    if-eqz v9, :cond_5

    .line 1267
    check-cast p1, Lgnu/expr/PairClassType;

    .end local p1
    iget-object p1, p1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 1283
    .restart local p1
    :goto_2
    const-string v9, "$finit$"

    invoke-virtual {p1, v9, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    .line 1284
    .local v6, meth:Lgnu/bytecode/Method;
    if-eqz v6, :cond_0

    .line 1286
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 1287
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 1272
    .end local v2           #code:Lgnu/bytecode/CodeAttr;
    .end local v6           #meth:Lgnu/bytecode/Method;
    :cond_5
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object p1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1275
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1277
    .local v3, ex:Ljava/lang/Throwable;
    goto :goto_0

    .line 1282
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public cleanupAfterCompilation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1019
    const/4 v0, 0x0

    .local v0, iClass:I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->cleanupAfterCompilation()V

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    iput-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1022
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 1024
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    iput-object v2, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1026
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v2, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1027
    iput-object v2, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 1028
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_2

    .line 1029
    iput-object v2, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1030
    :cond_2
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 442
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 443
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-nez p1, :cond_0

    .line 444
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 449
    .end local p1
    :goto_0
    return-void

    .line 445
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_1

    .line 446
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V
    .locals 17
    .parameter "value"
    .parameter "target"

    .prologue
    .line 491
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move v15, v0

    if-eqz v15, :cond_1

    .line 597
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 493
    .restart local p2
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Values;

    move v15, v0

    if-eqz v15, :cond_2

    .line 495
    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Values;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v14

    .line 496
    .local v14, values:[Ljava/lang/Object;
    array-length v7, v14

    .line 497
    .local v7, len:I
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move v15, v0

    if-eqz v15, :cond_2

    .line 499
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 501
    aget-object v15, v14, v6

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 499
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 506
    .end local v6           #i:I
    .end local v7           #len:I
    .end local v14           #values:[Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v15, v0

    if-eqz v15, :cond_4

    .line 508
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v4, v0

    .line 509
    .local v4, ctarg:Lgnu/expr/ConditionalTarget;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v0, v4

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    :goto_2
    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    :cond_3
    move-object v0, v4

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    goto :goto_2

    .line 513
    .end local v4           #ctarg:Lgnu/expr/ConditionalTarget;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/StackTarget;

    move v15, v0

    if-eqz v15, :cond_c

    .line 515
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/StackTarget;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/StackTarget;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 516
    .local v12, type:Lgnu/bytecode/Type;
    instance-of v15, v12, Lgnu/bytecode/PrimType;

    if-eqz v15, :cond_7

    .line 520
    :try_start_0
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 521
    .local v11, signature:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 522
    .local v3, code:Lgnu/bytecode/CodeAttr;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    :cond_5
    const/16 v15, 0x20

    move v10, v15

    .line 524
    .local v10, sig1:C
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move v15, v0

    if-eqz v15, :cond_6

    .line 526
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    .line 527
    .local v8, num:Ljava/lang/Number;
    sparse-switch v10, :sswitch_data_0

    .line 549
    .end local v8           #num:Ljava/lang/Number;
    :cond_6
    const/16 v15, 0x43

    if-ne v10, v15, :cond_9

    .line 551
    move-object v0, v12

    check-cast v0, Lgnu/bytecode/PrimType;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/bytecode/PrimType;->charValue(Ljava/lang/Object;)C

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 561
    .end local v3           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #sig1:C
    .end local v11           #signature:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 566
    :cond_7
    sget-object v15, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v12, v15, :cond_b

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v15, v0

    if-eqz v15, :cond_b

    .line 568
    move-object/from16 v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object/from16 p2, v0

    .end local p2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto/16 :goto_0

    .line 522
    .restart local v3       #code:Lgnu/bytecode/CodeAttr;
    .restart local v11       #signature:Ljava/lang/String;
    .restart local p2
    :cond_8
    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v10, v15

    goto :goto_3

    .line 530
    .restart local v8       #num:Ljava/lang/Number;
    .restart local v10       #sig1:C
    :sswitch_0
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 533
    :sswitch_1
    invoke-virtual {v8}, Ljava/lang/Number;->shortValue()S

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 536
    :sswitch_2
    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 539
    :sswitch_3
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto/16 :goto_0

    .line 542
    :sswitch_4
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto/16 :goto_0

    .line 545
    :sswitch_5
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto/16 :goto_0

    .line 554
    .end local v8           #num:Ljava/lang/Number;
    :cond_9
    const/16 v15, 0x5a

    if-ne v10, v15, :cond_7

    .line 556
    invoke-static/range {p1 .. p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v13

    .line 557
    .local v13, val:Z
    if-eqz v13, :cond_a

    const/4 v15, 0x1

    :goto_4
    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    .line 573
    .end local v3           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #sig1:C
    .end local v11           #signature:Ljava/lang/String;
    .end local v13           #val:Z
    :cond_b
    :try_start_2
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    .line 593
    .end local v12           #type:Lgnu/bytecode/Type;
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 594
    if-nez p1, :cond_f

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 575
    .restart local v12       #type:Lgnu/bytecode/Type;
    :catch_1
    move-exception v5

    .line 577
    .local v5, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v9, sbuf:Ljava/lang/StringBuffer;
    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_d

    .line 579
    const-string v15, "cannot convert void to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    :goto_7
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    const/16 v15, 0x77

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 582
    :cond_d
    const-string v15, "cannot convert literal (of type "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    if-nez p1, :cond_e

    .line 584
    const-string v15, "<null>"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    :goto_8
    const-string v15, ") to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 586
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 594
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v9           #sbuf:Ljava/lang/StringBuffer;
    .end local v12           #type:Lgnu/bytecode/Type;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v15

    goto :goto_6

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "value"

    .prologue
    .line 453
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v1, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v0

    .line 454
    .local v0, literal:Lgnu/expr/Literal;
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 455
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0, v1}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 456
    :cond_0
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    return-object v1
.end method

.method public compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V
    .locals 12
    .parameter "mexp"
    .parameter "fname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    const/4 v3, 0x0

    .line 1036
    .local v3, makeJar:Z
    const-string v8, ".zip"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1037
    const/4 v3, 0x0

    .line 1046
    :goto_0
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lgnu/expr/Compilation;->process(I)V

    .line 1048
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v4, zar_file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1050
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1053
    :cond_0
    if-eqz v3, :cond_3

    .line 1054
    new-instance v7, Ljava/util/jar/JarOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1059
    .local v7, zout:Ljava/util/zip/ZipOutputStream;
    :goto_1
    iget v8, p0, Lgnu/expr/Compilation;->numClasses:I

    new-array v1, v8, [[B

    .line 1060
    .local v1, classBytes:[[B
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 1061
    .local v5, zcrc:Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .local v2, iClass:I
    :goto_2
    iget v8, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v8, :cond_4

    .line 1063
    iget-object v8, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v8, v2

    .line 1064
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v8

    aput-object v8, v1, v2

    .line 1065
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v6, zent:Ljava/util/zip/ZipEntry;
    aget-object v8, v1, v2

    array-length v8, v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 1069
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 1070
    aget-object v8, v1, v2

    const/4 v9, 0x0

    aget-object v10, v1, v2

    array-length v10, v10

    invoke-virtual {v5, v8, v9, v10}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1071
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 1073
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1074
    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1038
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    .end local v1           #classBytes:[[B
    .end local v2           #iClass:I
    .end local v4           #zar_file:Ljava/io/File;
    .end local v5           #zcrc:Ljava/util/zip/CRC32;
    .end local v6           #zent:Ljava/util/zip/ZipEntry;
    .end local v7           #zout:Ljava/util/zip/ZipOutputStream;
    :cond_1
    const-string v8, ".jar"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1039
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1042
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1043
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1057
    .restart local v4       #zar_file:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v7       #zout:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_1

    .line 1076
    .restart local v1       #classBytes:[[B
    .restart local v2       #iClass:I
    .restart local v5       #zcrc:Ljava/util/zip/CRC32;
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1077
    return-void
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    return-object v0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public currentScope()Lgnu/expr/ScopeExp;
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "decl"
    .parameter "msg1"
    .parameter "msg2"

    .prologue
    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V

    .line 2599
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 2590
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    const/16 p1, 0x65

    .line 2593
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p0, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method public error(CLjava/lang/String;Lgnu/text/SourceLocator;)V
    .locals 6
    .parameter "severity"
    .parameter "message"
    .parameter "location"

    .prologue
    .line 2573
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2574
    .local v2, file:Ljava/lang/String;
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    .line 2575
    .local v3, line:I
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    .line 2576
    .local v4, column:I
    if-eqz v2, :cond_0

    if-gtz v3, :cond_1

    .line 2578
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2579
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 2580
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v4

    .line 2583
    :cond_1
    const/16 v0, 0x77

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2584
    const/16 p1, 0x65

    .line 2585
    :cond_2
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 2586
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V
    .locals 8
    .parameter "severity"
    .parameter "message"
    .parameter "code"
    .parameter "decl"

    .prologue
    .line 2604
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    const/16 p1, 0x65

    .line 2607
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2608
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 2609
    .local v3, line:I
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v4

    .line 2610
    .local v4, column:I
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v7

    .line 2611
    .local v7, decl_line:I
    if-lez v7, :cond_1

    .line 2613
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2614
    move v3, v7

    .line 2615
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getColumnNumber()I

    move-result v4

    .line 2617
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2618
    return-void
.end method

.method public findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "name"

    .prologue
    .line 612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_1

    .line 614
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    .line 617
    :goto_1
    return-object v1

    .line 612
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public freeLocalField(Lgnu/bytecode/Field;)V
    .locals 0
    .parameter "field"

    .prologue
    .line 2416
    return-void
.end method

.method public generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V
    .locals 35
    .parameter "lexp"

    .prologue
    .line 1461
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move/from16 v21, v4

    .line 1463
    .local v21, numApplyMethods:I
    :goto_0
    if-nez v21, :cond_1

    .line 1610
    :goto_1
    return-void

    .line 1461
    .end local v21           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v21, v4

    goto :goto_0

    .line 1465
    .restart local v21       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    .line 1466
    .local v31, save_class:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v4

    sget-object v5, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1469
    :cond_2
    sget-object v27, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1470
    .local v27, procType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    .line 1471
    .local v32, save_method:Lgnu/bytecode/Method;
    const/4 v12, 0x0

    .line 1472
    .local v12, code:Lgnu/bytecode/CodeAttr;
    const/4 v4, 0x1

    new-array v10, v4, [Lgnu/bytecode/Type;

    const/4 v4, 0x0

    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v5, v10, v4

    .line 1475
    .local v10, applyArgs:[Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v4, v0

    const-string v5, "apply"

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v10, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v12

    .line 1479
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1481
    .local v9, ctxVar:Lgnu/bytecode/Variable;
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1482
    sget-object v4, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1483
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v11

    .line 1485
    .local v11, aswitch:Lgnu/bytecode/SwitchState;
    const/16 v16, 0x0

    .end local v10           #applyArgs:[Lgnu/bytecode/Type;
    .local v16, j:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_18

    .line 1487
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/LambdaExp;

    .line 1488
    .local v5, source:Lgnu/expr/LambdaExp;
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v26, v0

    .line 1489
    .local v26, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v22, v0

    .line 1491
    .local v22, numMethods:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    .line 1495
    const/4 v4, 0x1

    sub-int v4, v22, v4

    if-ne v15, v4, :cond_b

    iget v4, v5, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v4, :cond_3

    iget v4, v5, Lgnu/expr/LambdaExp;->max_args:I

    iget v6, v5, Lgnu/expr/LambdaExp;->min_args:I

    add-int v6, v6, v22

    if-lt v4, v6, :cond_b

    :cond_3
    const/4 v4, 0x1

    move/from16 v34, v4

    .line 1499
    .local v34, varArgs:Z
    :goto_4
    move/from16 v19, v15

    .line 1501
    .local v19, methodIndex:I
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v4

    add-int/2addr v4, v15

    invoke-virtual {v11, v4, v12}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v4, v0

    invoke-virtual {v4, v5}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v29

    .line 1504
    .local v29, saveLoc1:Lgnu/text/SourceLocator;
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v18

    .line 1505
    .local v18, line:I
    if-lez v18, :cond_4

    .line 1506
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v12

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1508
    :cond_4
    aget-object v25, v26, v19

    .line 1509
    .local v25, primMethod:Lgnu/bytecode/Method;
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v24

    .line 1510
    .local v24, primArgTypes:[Lgnu/bytecode/Type;
    iget v4, v5, Lgnu/expr/LambdaExp;->min_args:I

    add-int v6, v4, v19

    .line 1511
    .local v6, singleArgs:I
    const/4 v7, 0x0

    .line 1512
    .local v7, counter:Lgnu/bytecode/Variable;
    const/16 v23, 0x0

    .line 1514
    .local v23, pendingIfEnds:I
    const/4 v4, 0x4

    if-le v15, v4, :cond_6

    const/4 v4, 0x1

    move/from16 v0, v22

    move v1, v4

    if-le v0, v1, :cond_6

    .line 1516
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 1517
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1518
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v8, "getArgCount"

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1519
    iget v4, v5, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v4, :cond_5

    .line 1521
    iget v4, v5, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1522
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1524
    :cond_5
    invoke-virtual {v12, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1527
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    move/from16 v20, v4

    .line 1528
    .local v20, needsThis:I
    :goto_5
    if-eqz v34, :cond_d

    const/4 v4, 0x2

    :goto_6
    add-int/2addr v4, v6

    move-object/from16 v0, v24

    array-length v0, v0

    move v8, v0

    if-ge v4, v8, :cond_e

    const/4 v4, 0x1

    move v14, v4

    .line 1530
    .local v14, explicitFrameArg:I
    :goto_7
    add-int v4, v20, v14

    if-lez v4, :cond_7

    .line 1532
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v8, v0

    if-ne v4, v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v8, v0

    if-eq v4, v8, :cond_7

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object v4, v0

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1537
    :cond_7
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v33

    .line 1538
    .local v33, var:Lgnu/expr/Declaration;
    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1539
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v33

    .line 1540
    :cond_8
    const/16 v17, 0x0

    .local v17, k:I
    :goto_8
    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_10

    .line 1542
    if-eqz v7, :cond_9

    iget v4, v5, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_9

    .line 1544
    invoke-virtual {v12, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1545
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1546
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1547
    iget v4, v5, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v4, v17, v4

    aget-object v4, v26, v4

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1548
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1549
    add-int/lit8 v23, v23, 0x1

    .line 1550
    const/4 v4, -0x1

    invoke-virtual {v12, v7, v4}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1553
    :cond_9
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1554
    const/4 v4, 0x4

    move/from16 v0, v17

    move v1, v4

    if-gt v0, v1, :cond_f

    if-nez v34, :cond_f

    iget v4, v5, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v8, 0x4

    if-gt v4, v8, :cond_f

    .line 1555
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v10, v17, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1564
    :goto_9
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v28

    .line 1565
    .local v28, ptype:Lgnu/bytecode/Type;
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v28

    move-object v1, v4

    if-eq v0, v1, :cond_a

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v30

    .line 1568
    .local v30, saveLoc2:Lgnu/text/SourceLocator;
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1572
    .end local v30           #saveLoc2:Lgnu/text/SourceLocator;
    :cond_a
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v33

    .line 1540
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 1495
    .end local v6           #singleArgs:I
    .end local v7           #counter:Lgnu/bytecode/Variable;
    .end local v14           #explicitFrameArg:I
    .end local v17           #k:I
    .end local v18           #line:I
    .end local v19           #methodIndex:I
    .end local v20           #needsThis:I
    .end local v23           #pendingIfEnds:I
    .end local v24           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v25           #primMethod:Lgnu/bytecode/Method;
    .end local v28           #ptype:Lgnu/bytecode/Type;
    .end local v29           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v33           #var:Lgnu/expr/Declaration;
    .end local v34           #varArgs:Z
    :cond_b
    const/4 v4, 0x0

    move/from16 v34, v4

    goto/16 :goto_4

    .line 1527
    .restart local v6       #singleArgs:I
    .restart local v7       #counter:Lgnu/bytecode/Variable;
    .restart local v18       #line:I
    .restart local v19       #methodIndex:I
    .restart local v23       #pendingIfEnds:I
    .restart local v24       #primArgTypes:[Lgnu/bytecode/Type;
    .restart local v25       #primMethod:Lgnu/bytecode/Method;
    .restart local v29       #saveLoc1:Lgnu/text/SourceLocator;
    .restart local v34       #varArgs:Z
    :cond_c
    const/4 v4, 0x1

    move/from16 v20, v4

    goto/16 :goto_5

    .line 1528
    .restart local v20       #needsThis:I
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_7

    .line 1559
    .restart local v14       #explicitFrameArg:I
    .restart local v17       #k:I
    .restart local v33       #var:Lgnu/expr/Declaration;
    :cond_f
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v8, "values"

    invoke-virtual {v4, v8}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1561
    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1562
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_9

    .line 1575
    :cond_10
    if-eqz v34, :cond_11

    .line 1577
    add-int v4, v14, v6

    aget-object v8, v24, v4

    .line 1578
    .local v8, lastArgType:Lgnu/bytecode/Type;
    instance-of v4, v8, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_12

    move-object/from16 v4, p0

    .line 1579
    invoke-direct/range {v4 .. v9}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1592
    .end local v6           #singleArgs:I
    .end local v7           #counter:Lgnu/bytecode/Variable;
    .end local v8           #lastArgType:Lgnu/bytecode/Type;
    :cond_11
    :goto_a
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1593
    move-object v0, v12

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1594
    :goto_b
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_15

    .line 1595
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_b

    .line 1580
    .restart local v6       #singleArgs:I
    .restart local v7       #counter:Lgnu/bytecode/Variable;
    .restart local v8       #lastArgType:Lgnu/bytecode/Type;
    :cond_12
    const-string v4, "gnu.lists.LList"

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    .end local v7           #counter:Lgnu/bytecode/Variable;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1583
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1584
    invoke-virtual {v12, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1585
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "getRestArgsList"

    .end local v6           #singleArgs:I
    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v12, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1587
    .restart local v6       #singleArgs:I
    :cond_13
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v8, v4, :cond_14

    .line 1588
    invoke-virtual {v12, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_a

    .line 1590
    :cond_14
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #source:Lgnu/expr/LambdaExp;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported #!rest type:"

    .end local v6           #singleArgs:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1596
    .end local v8           #lastArgType:Lgnu/bytecode/Type;
    .restart local v5       #source:Lgnu/expr/LambdaExp;
    :cond_15
    sget v4, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v6, 0x2

    if-ge v4, v6, :cond_16

    .line 1597
    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1599
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1600
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1491
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1485
    .end local v14           #explicitFrameArg:I
    .end local v17           #k:I
    .end local v18           #line:I
    .end local v19           #methodIndex:I
    .end local v20           #needsThis:I
    .end local v23           #pendingIfEnds:I
    .end local v24           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v25           #primMethod:Lgnu/bytecode/Method;
    .end local v29           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v33           #var:Lgnu/expr/Declaration;
    .end local v34           #varArgs:Z
    :cond_17
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1603
    .end local v5           #source:Lgnu/expr/LambdaExp;
    .end local v15           #i:I
    .end local v22           #numMethods:I
    .end local v26           #primMethods:[Lgnu/bytecode/Method;
    :cond_18
    invoke-virtual {v11, v12}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1604
    sget-object v4, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v5, "applyError"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    .line 1605
    .local v13, errMethod:Lgnu/bytecode/Method;
    invoke-virtual {v12, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1606
    invoke-virtual {v12}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1607
    invoke-virtual {v11, v12}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1608
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1609
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method public generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V
    .locals 41
    .parameter "lexp"

    .prologue
    .line 1618
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move/from16 v25, v5

    .line 1620
    .local v25, numApplyMethods:I
    :goto_0
    if-nez v25, :cond_1

    .line 1822
    :goto_1
    return-void

    .line 1618
    .end local v25           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v25, v5

    goto :goto_0

    .line 1622
    .restart local v25       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v36, v0

    .line 1623
    .local v36, save_class:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1624
    sget-object v31, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1625
    .local v31, procType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1627
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v37, v0

    .line 1628
    .local v37, save_method:Lgnu/bytecode/Method;
    const/4 v13, 0x0

    .line 1629
    .local v13, code:Lgnu/bytecode/CodeAttr;
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    const/4 v5, 0x5

    move/from16 v16, v5

    .line 1631
    .local v16, i:I
    :goto_2
    const/4 v5, 0x6

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_26

    .line 1635
    const/16 v23, 0x0

    .line 1636
    .local v23, needThisApply:Z
    const/4 v12, 0x0

    .line 1637
    .local v12, aswitch:Lgnu/bytecode/SwitchState;
    const/16 v21, 0x0

    .line 1638
    .local v21, mname:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1640
    .local v11, applyArgs:[Lgnu/bytecode/Type;
    const/16 v17, 0x0

    .local v17, j:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    .line 1642
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/LambdaExp;

    .line 1645
    .local v6, source:Lgnu/expr/LambdaExp;
    move-object v0, v6

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v30, v0

    .line 1646
    .local v30, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v26, v0

    .line 1647
    .local v26, numMethods:I
    iget v5, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v5, :cond_3

    iget v5, v6, Lgnu/expr/LambdaExp;->max_args:I

    iget v7, v6, Lgnu/expr/LambdaExp;->min_args:I

    add-int v7, v7, v26

    if-lt v5, v7, :cond_7

    :cond_3
    const/4 v5, 0x1

    move/from16 v40, v5

    .line 1650
    .local v40, varArgs:Z
    :goto_4
    const/16 v38, 0x0

    .line 1651
    .local v38, skipThisProc:Z
    const/4 v5, 0x5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 1653
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v20, v16, v5

    .line 1654
    .local v20, methodIndex:I
    if-ltz v20, :cond_4

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    const/4 v5, 0x1

    sub-int v5, v26, v5

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_5

    if-eqz v40, :cond_5

    .line 1656
    :cond_4
    const/16 v38, 0x1

    .line 1657
    :cond_5
    const/16 v26, 0x1

    .line 1658
    const/16 v40, 0x0

    .line 1667
    :goto_5
    if-eqz v38, :cond_a

    .line 1640
    .end local v6           #source:Lgnu/expr/LambdaExp;
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1629
    .end local v11           #applyArgs:[Lgnu/bytecode/Type;
    .end local v12           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v16           #i:I
    .end local v17           #j:I
    .end local v20           #methodIndex:I
    .end local v21           #mname:Ljava/lang/String;
    .end local v23           #needThisApply:Z
    .end local v26           #numMethods:I
    .end local v30           #primMethods:[Lgnu/bytecode/Method;
    .end local v38           #skipThisProc:Z
    .end local v40           #varArgs:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_2

    .line 1647
    .restart local v6       #source:Lgnu/expr/LambdaExp;
    .restart local v11       #applyArgs:[Lgnu/bytecode/Type;
    .restart local v12       #aswitch:Lgnu/bytecode/SwitchState;
    .restart local v16       #i:I
    .restart local v17       #j:I
    .restart local v21       #mname:Ljava/lang/String;
    .restart local v23       #needThisApply:Z
    .restart local v26       #numMethods:I
    .restart local v30       #primMethods:[Lgnu/bytecode/Method;
    :cond_7
    const/4 v5, 0x0

    move/from16 v40, v5

    goto :goto_4

    .line 1662
    .restart local v38       #skipThisProc:Z
    .restart local v40       #varArgs:Z
    :cond_8
    const/4 v5, 0x5

    iget v7, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v20, v5, v7

    .line 1663
    .restart local v20       #methodIndex:I
    if-lez v20, :cond_9

    move/from16 v0, v26

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    if-nez v40, :cond_9

    .line 1664
    const/16 v38, 0x1

    .line 1665
    :cond_9
    const/4 v5, 0x1

    sub-int v20, v26, v5

    goto :goto_5

    .line 1669
    :cond_a
    if-nez v23, :cond_d

    .line 1672
    const/4 v5, 0x5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_b

    .line 1674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apply"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1675
    add-int/lit8 v5, v16, 0x1

    new-array v11, v5, [Lgnu/bytecode/Type;

    .line 1676
    move/from16 v18, v16

    .local v18, k:I
    :goto_7
    if-lez v18, :cond_c

    .line 1677
    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v11, v18

    .line 1676
    add-int/lit8 v18, v18, -0x1

    goto :goto_7

    .line 1681
    .end local v18           #k:I
    :cond_b
    const-string v21, "applyN"

    .line 1682
    const/4 v5, 0x2

    new-array v11, v5, [Lgnu/bytecode/Type;

    .line 1683
    const/4 v5, 0x1

    sget-object v7, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v7, v11, v5

    .line 1685
    :cond_c
    const/4 v5, 0x0

    aput-object v31, v11, v5

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    sget v7, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_15

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_8
    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v11

    move-object v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    .line 1691
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1692
    const-string v5, "selector"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1693
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v12

    .line 1695
    const/16 v23, 0x1

    .line 1698
    :cond_d
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v5

    invoke-virtual {v12, v5, v13}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v34

    .line 1701
    .local v34, saveLoc1:Lgnu/text/SourceLocator;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v19

    .line 1702
    .local v19, line:I
    if-lez v19, :cond_e

    .line 1703
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1705
    :cond_e
    aget-object v29, v30, v20

    .line 1706
    .local v29, primMethod:Lgnu/bytecode/Method;
    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v28

    .line 1707
    .local v28, primArgTypes:[Lgnu/bytecode/Type;
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    add-int v7, v5, v20

    .line 1708
    .local v7, singleArgs:I
    const/4 v8, 0x0

    .line 1709
    .local v8, counter:Lgnu/bytecode/Variable;
    const/16 v27, 0x0

    .line 1711
    .local v27, pendingIfEnds:I
    const/4 v5, 0x4

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_10

    const/4 v5, 0x1

    move/from16 v0, v26

    move v1, v5

    if-le v0, v1, :cond_10

    .line 1713
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 1714
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1715
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1716
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v5, :cond_f

    .line 1718
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1719
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1721
    :cond_f
    invoke-virtual {v13, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1724
    :cond_10
    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    move/from16 v24, v5

    .line 1725
    .local v24, needsThis:I
    :goto_9
    if-eqz v40, :cond_17

    const/4 v5, 0x1

    :goto_a
    add-int/2addr v5, v7

    move-object/from16 v0, v28

    array-length v0, v0

    move v9, v0

    if-ge v5, v9, :cond_18

    const/4 v5, 0x1

    move v15, v5

    .line 1727
    .local v15, explicitFrameArg:I
    :goto_b
    add-int v5, v24, v15

    if-lez v5, :cond_11

    .line 1729
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v9, v0

    if-ne v5, v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v9, v0

    if-eq v5, v9, :cond_11

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object v5, v0

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1734
    :cond_11
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v39

    .line 1735
    .local v39, var:Lgnu/expr/Declaration;
    if-eqz v39, :cond_12

    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1736
    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v39

    .line 1737
    :cond_12
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_c
    move/from16 v0, v18

    move v1, v7

    if-ge v0, v1, :cond_1a

    .line 1739
    if-eqz v8, :cond_13

    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_13

    .line 1741
    invoke-virtual {v13, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1742
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1743
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v5, v18, v5

    aget-object v5, v30, v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1744
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1745
    add-int/lit8 v27, v27, 0x1

    .line 1746
    const/4 v5, -0x1

    invoke-virtual {v13, v8, v5}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1749
    :cond_13
    const/16 v33, 0x0

    .line 1750
    .local v33, pvar:Lgnu/bytecode/Variable;
    const/4 v5, 0x4

    move/from16 v0, v16

    move v1, v5

    if-gt v0, v1, :cond_19

    .line 1752
    add-int/lit8 v5, v18, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v33

    .line 1753
    move-object v0, v13

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1762
    :goto_d
    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v32

    .line 1763
    .local v32, ptype:Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v32

    move-object v1, v5

    if-eq v0, v1, :cond_14

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v35

    .line 1766
    .local v35, saveLoc2:Lgnu/text/SourceLocator;
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1770
    .end local v35           #saveLoc2:Lgnu/text/SourceLocator;
    :cond_14
    invoke-virtual/range {v39 .. v39}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v39

    .line 1737
    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1686
    .end local v7           #singleArgs:I
    .end local v8           #counter:Lgnu/bytecode/Variable;
    .end local v15           #explicitFrameArg:I
    .end local v18           #k:I
    .end local v19           #line:I
    .end local v24           #needsThis:I
    .end local v27           #pendingIfEnds:I
    .end local v28           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v29           #primMethod:Lgnu/bytecode/Method;
    .end local v32           #ptype:Lgnu/bytecode/Type;
    .end local v33           #pvar:Lgnu/bytecode/Variable;
    .end local v34           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v39           #var:Lgnu/expr/Declaration;
    :cond_15
    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto/16 :goto_8

    .line 1724
    .restart local v7       #singleArgs:I
    .restart local v8       #counter:Lgnu/bytecode/Variable;
    .restart local v19       #line:I
    .restart local v27       #pendingIfEnds:I
    .restart local v28       #primArgTypes:[Lgnu/bytecode/Type;
    .restart local v29       #primMethod:Lgnu/bytecode/Method;
    .restart local v34       #saveLoc1:Lgnu/text/SourceLocator;
    :cond_16
    const/4 v5, 0x1

    move/from16 v24, v5

    goto/16 :goto_9

    .line 1725
    .restart local v24       #needsThis:I
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_18
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_b

    .line 1758
    .restart local v15       #explicitFrameArg:I
    .restart local v18       #k:I
    .restart local v33       #pvar:Lgnu/bytecode/Variable;
    .restart local v39       #var:Lgnu/expr/Declaration;
    :cond_19
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1759
    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1760
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_d

    .line 1773
    .end local v33           #pvar:Lgnu/bytecode/Variable;
    :cond_1a
    if-eqz v40, :cond_1b

    .line 1775
    add-int v5, v15, v7

    aget-object v9, v28, v5

    .line 1776
    .local v9, lastArgType:Lgnu/bytecode/Type;
    instance-of v5, v9, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_1c

    .line 1777
    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1790
    .end local v8           #counter:Lgnu/bytecode/Variable;
    .end local v9           #lastArgType:Lgnu/bytecode/Type;
    :cond_1b
    :goto_e
    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1791
    :goto_f
    add-int/lit8 v27, v27, -0x1

    if-ltz v27, :cond_1f

    .line 1792
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_f

    .line 1778
    .restart local v8       #counter:Lgnu/bytecode/Variable;
    .restart local v9       #lastArgType:Lgnu/bytecode/Type;
    :cond_1c
    const-string v5, "gnu.lists.LList"

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v8

    .end local v8           #counter:Lgnu/bytecode/Variable;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1781
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1782
    invoke-virtual {v13, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1783
    sget-object v5, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_e

    .line 1785
    :cond_1d
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v9, v5, :cond_1e

    .line 1786
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_e

    .line 1788
    :cond_1e
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #source:Lgnu/expr/LambdaExp;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported #!rest type:"

    .end local v7           #singleArgs:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1793
    .end local v9           #lastArgType:Lgnu/bytecode/Type;
    .restart local v6       #source:Lgnu/expr/LambdaExp;
    .restart local v7       #singleArgs:I
    :cond_1f
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v7, 0x2

    if-ge v5, v7, :cond_20

    .line 1794
    .end local v7           #singleArgs:I
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    .end local v6           #source:Lgnu/expr/LambdaExp;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1796
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1797
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_6

    .line 1799
    .end local v15           #explicitFrameArg:I
    .end local v18           #k:I
    .end local v19           #line:I
    .end local v20           #methodIndex:I
    .end local v24           #needsThis:I
    .end local v26           #numMethods:I
    .end local v27           #pendingIfEnds:I
    .end local v28           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v29           #primMethod:Lgnu/bytecode/Method;
    .end local v30           #primMethods:[Lgnu/bytecode/Method;
    .end local v34           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v38           #skipThisProc:Z
    .end local v39           #var:Lgnu/expr/Declaration;
    .end local v40           #varArgs:Z
    :cond_21
    if-eqz v23, :cond_22

    .line 1801
    invoke-virtual {v12, v13}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1802
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_23

    .line 1804
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v6, "applyError"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 1806
    .local v14, errMethod:Lgnu/bytecode/Method;
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1816
    .end local v14           #errMethod:Lgnu/bytecode/Method;
    :goto_10
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1817
    invoke-virtual {v12, v13}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1631
    :cond_22
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1810
    :cond_23
    const/4 v5, 0x4

    move/from16 v0, v16

    move v1, v5

    if-le v0, v1, :cond_24

    const/4 v5, 0x2

    move/from16 v22, v5

    .line 1811
    .local v22, nargs:I
    :goto_11
    add-int/lit8 v22, v22, 0x1

    .line 1812
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_12
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    .line 1813
    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1812
    add-int/lit8 v18, v18, 0x1

    goto :goto_12

    .line 1810
    .end local v18           #k:I
    .end local v22           #nargs:I
    :cond_24
    add-int/lit8 v5, v16, 0x1

    move/from16 v22, v5

    goto :goto_11

    .line 1814
    .restart local v18       #k:I
    .restart local v22       #nargs:I
    :cond_25
    sget-object v5, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_10

    .line 1820
    .end local v11           #applyArgs:[Lgnu/bytecode/Type;
    .end local v12           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v17           #j:I
    .end local v18           #k:I
    .end local v21           #mname:Ljava/lang/String;
    .end local v22           #nargs:I
    .end local v23           #needThisApply:Z
    :cond_26
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1821
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method generateBytecode()V
    .locals 53

    .prologue
    .line 2018
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v31

    .line 2019
    .local v31, module:Lgnu/expr/ModuleExp;
    sget-boolean v48, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v48, :cond_0

    .line 2021
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v15

    .line 2022
    .local v15, dout:Lgnu/mapping/OutPort;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "[Compiling final "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " to "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ":"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object v0, v15

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 2024
    move-object/from16 v0, v31

    move-object v1, v15

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 2025
    const/16 v48, 0x5d

    move-object v0, v15

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 2026
    invoke-virtual {v15}, Lgnu/mapping/OutPort;->flush()V

    .line 2029
    .end local v15           #dout:Lgnu/mapping/OutPort;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v34

    .line 2030
    .local v34, neededSuper:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v48

    if-eqz v48, :cond_7

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2040
    :goto_0
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v38, v0

    .line 2043
    .local v38, saveLambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2045
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v48

    if-eqz v48, :cond_8

    .line 2047
    const/4 v7, 0x1

    .line 2048
    .local v7, arg_count:I
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v8, v0

    .line 2049
    .local v8, arg_types:[Lgnu/bytecode/Type;
    const/16 v48, 0x0

    sget-object v49, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v49, v8, v48

    .line 2066
    :cond_1
    :goto_1
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v19, v0

    .line 2067
    .local v19, heapFrame:Lgnu/bytecode/Variable;
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v43

    .line 2070
    .local v43, staticModule:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "run"

    sget-object v50, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v51, 0x11

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object v2, v8

    move-object/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v6

    .line 2072
    .local v6, apply_method:Lgnu/bytecode/Method;
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->initCode()V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2081
    .local v11, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v48

    if-eqz v48, :cond_b

    const/16 v48, 0x0

    :goto_2
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    .line 2082
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 2083
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v48

    if-eqz v48, :cond_c

    const/16 v48, 0x0

    :goto_3
    move-object/from16 v0, v48

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2084
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 2086
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v48

    if-nez v48, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-eqz v48, :cond_3

    .line 2088
    :cond_2
    new-instance v48, Lgnu/bytecode/Variable;

    const-string v49, "$ctx"

    sget-object v50, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct/range {v48 .. v50}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2089
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v50, v0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 2093
    :cond_3
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getLineNumber()I

    move-result v23

    .line 2094
    .local v23, line:I
    if-lez v23, :cond_4

    .line 2095
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 2097
    :cond_4
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 2098
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-eqz v48, :cond_5

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 2102
    sget-object v48, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2103
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2107
    :cond_5
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 2108
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 2110
    const/16 v42, 0x0

    .line 2111
    .local v42, startLiterals:Lgnu/bytecode/Label;
    const/4 v5, 0x0

    .line 2112
    .local v5, afterLiterals:Lgnu/bytecode/Label;
    const/16 v22, 0x0

    .line 2114
    .local v22, initMethod:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_10

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v40, v0

    .line 2117
    .local v40, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v10, v0

    .line 2118
    .local v10, callContextSave:Lgnu/bytecode/Variable;
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2120
    invoke-direct/range {p0 .. p0}, Lgnu/expr/Compilation;->startClassInit()Lgnu/bytecode/Method;

    move-result-object v22

    .line 2121
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2124
    new-instance v42, Lgnu/bytecode/Label;

    .end local v42           #startLiterals:Lgnu/bytecode/Label;
    move-object/from16 v0, v42

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2125
    .restart local v42       #startLiterals:Lgnu/bytecode/Label;
    new-instance v5, Lgnu/bytecode/Label;

    .end local v5           #afterLiterals:Lgnu/bytecode/Label;
    invoke-direct {v5, v11}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2126
    .restart local v5       #afterLiterals:Lgnu/bytecode/Label;
    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2128
    if-eqz v43, :cond_6

    .line 2130
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "$instance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v50, v0

    const/16 v51, 0x19

    invoke-virtual/range {v48 .. v51}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 2141
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    move-object/from16 v21, v0

    .local v21, init:Lgnu/expr/Initializer;
    if-eqz v21, :cond_d

    .line 2143
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 2144
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_4

    .line 2034
    .end local v5           #afterLiterals:Lgnu/bytecode/Label;
    .end local v6           #apply_method:Lgnu/bytecode/Method;
    .end local v7           #arg_count:I
    .end local v8           #arg_types:[Lgnu/bytecode/Type;
    .end local v10           #callContextSave:Lgnu/bytecode/Variable;
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v19           #heapFrame:Lgnu/bytecode/Variable;
    .end local v21           #init:Lgnu/expr/Initializer;
    .end local v22           #initMethod:Lgnu/bytecode/Method;
    .end local v23           #line:I
    .end local v38           #saveLambda:Lgnu/expr/LambdaExp;
    .end local v40           #save_method:Lgnu/bytecode/Method;
    .end local v42           #startLiterals:Lgnu/bytecode/Label;
    .end local v43           #staticModule:Z
    :cond_7
    new-instance v48, Lgnu/bytecode/ClassType;

    const-string v49, "frame"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    goto/16 :goto_0

    .line 2051
    .restart local v38       #saveLambda:Lgnu/expr/LambdaExp;
    :cond_8
    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v48, v0

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->max_args:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v48, v0

    const/16 v49, 0x4

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_a

    .line 2053
    :cond_9
    const/4 v7, 0x1

    .line 2054
    .restart local v7       #arg_count:I
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v8, v0

    .line 2055
    .restart local v8       #arg_types:[Lgnu/bytecode/Type;
    const/16 v48, 0x0

    new-instance v49, Lgnu/bytecode/ArrayType;

    sget-object v50, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-direct/range {v49 .. v50}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v49, v8, v48

    goto/16 :goto_1

    .line 2059
    .end local v7           #arg_count:I
    .end local v8           #arg_types:[Lgnu/bytecode/Type;
    :cond_a
    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move v7, v0

    .line 2060
    .restart local v7       #arg_count:I
    new-array v8, v7, [Lgnu/bytecode/Type;

    .line 2061
    .restart local v8       #arg_types:[Lgnu/bytecode/Type;
    move/from16 v20, v7

    .local v20, i:I
    :goto_5
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1

    .line 2062
    sget-object v48, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v48, v8, v20

    goto :goto_5

    .line 2081
    .end local v20           #i:I
    .restart local v6       #apply_method:Lgnu/bytecode/Method;
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    .restart local v19       #heapFrame:Lgnu/bytecode/Variable;
    .restart local v43       #staticModule:Z
    :cond_b
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v48

    goto/16 :goto_2

    .line 2083
    :cond_c
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    goto/16 :goto_3

    .line 2147
    .restart local v5       #afterLiterals:Lgnu/bytecode/Label;
    .restart local v10       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v21       #init:Lgnu/expr/Initializer;
    .restart local v22       #initMethod:Lgnu/bytecode/Method;
    .restart local v23       #line:I
    .restart local v40       #save_method:Lgnu/bytecode/Method;
    .restart local v42       #startLiterals:Lgnu/bytecode/Label;
    :cond_d
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v48

    if-eqz v48, :cond_e

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2150
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "run"

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 2152
    :cond_e
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_f

    if-nez v43, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v48, v0

    if-nez v48, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v48, v0

    if-nez v48, :cond_f

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "run"

    const/16 v50, 0x1

    sget-object v51, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v52, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v48 .. v52}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2161
    sget-object v48, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v13

    .line 2162
    .local v13, ctxVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v39

    .line 2163
    .local v39, saveVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v18

    .line 2165
    .local v18, exceptionVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2166
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2167
    sget-object v48, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v49, "consumer"

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v12

    .line 2169
    .local v12, consumerFld:Lgnu/bytecode/Field;
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2170
    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2171
    move-object v0, v11

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2173
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2174
    const-string v48, "gnu.lists.VoidConsumer"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "instance"

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2176
    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 2178
    const/16 v48, 0x0

    sget-object v49, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v11

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2180
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2181
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2182
    move-object v0, v11

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2184
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2185
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2187
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2188
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2189
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2190
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2192
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2193
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2194
    move-object v0, v11

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2195
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "runCleanup"

    const/16 v50, 0x3

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2197
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2200
    .end local v12           #consumerFld:Lgnu/bytecode/Field;
    .end local v13           #ctxVar:Lgnu/bytecode/Variable;
    .end local v18           #exceptionVar:Lgnu/bytecode/Variable;
    .end local v39           #saveVar:Lgnu/bytecode/Variable;
    :cond_f
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2201
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2204
    .end local v10           #callContextSave:Lgnu/bytecode/Variable;
    .end local v21           #init:Lgnu/expr/Initializer;
    .end local v40           #save_method:Lgnu/bytecode/Method;
    :cond_10
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 2206
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2208
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-eqz v48, :cond_11

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2215
    :cond_11
    if-nez v42, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_14

    .line 2217
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2220
    new-instance v16, Lgnu/bytecode/Label;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2221
    .local v16, endLiterals:Lgnu/bytecode/Label;
    move-object v0, v11

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_13

    .line 2225
    sget-object v48, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2231
    :cond_13
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1a

    .line 2233
    invoke-static/range {p0 .. p0}, Lgnu/expr/Compilation;->registerForImmediateLiterals(Lgnu/expr/Compilation;)I

    move-result v48

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2234
    const-string v48, "gnu.expr.Compilation"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "setupLiterals"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    :goto_6
    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2247
    .end local v16           #endLiterals:Lgnu/bytecode/Label;
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v48, v0

    if-eqz v48, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_16

    .line 2249
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v9, v0

    const/16 v48, 0x0

    new-instance v49, Lgnu/bytecode/ArrayType;

    sget-object v50, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    invoke-direct/range {v49 .. v50}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v49, v9, v48

    .line 2250
    .local v9, args:[Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "main"

    const/16 v50, 0x9

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move/from16 v2, v50

    move-object v3, v9

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2255
    sget-object v48, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    if-eqz v48, :cond_15

    .line 2257
    sget-object v48, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2258
    const-string v48, "kawa.Shell"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "setDefaultFormat"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2261
    :cond_15
    const/16 v48, 0x0

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2262
    const-string v48, "gnu.expr.ApplicationMainSupport"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "processArgs"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1b

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2272
    :goto_7
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "runAsMain"

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2273
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2277
    .end local v9           #args:[Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v47

    .local v47, uri:Ljava/lang/String;
    if-eqz v47, :cond_1e

    .line 2281
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v26

    .line 2282
    .local v26, manager:Lgnu/expr/ModuleManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2283
    .local v25, mainPrefix:Ljava/lang/String;
    const/16 v48, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2284
    .local v14, dot:I
    if-gez v14, :cond_1c

    .line 2286
    const-string v25, ""

    .line 2305
    :goto_8
    new-instance v27, Lgnu/bytecode/ClassType;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "$ModulesMap$"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v27, mapClass:Lgnu/bytecode/ClassType;
    const-string v48, "gnu.expr.ModuleSet"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v46

    .line 2307
    .local v46, typeModuleSet:Lgnu/bytecode/ClassType;
    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2308
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 2310
    const-string v48, "<init>"

    const/16 v49, 0x1

    sget-object v50, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    move/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2312
    const-string v48, "<init>"

    const/16 v49, 0x1

    sget-object v50, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    move/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v44

    .line 2315
    .local v44, superConstructor:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2316
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2317
    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2318
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2320
    const-string v48, "gnu.expr.ModuleManager"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v45

    .line 2321
    .local v45, typeModuleManager:Lgnu/bytecode/ClassType;
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    const/16 v48, 0x0

    aput-object v45, v28, v48

    .line 2322
    .local v28, margs:[Lgnu/bytecode/Type;
    const-string v48, "register"

    sget-object v49, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v50, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    move-object/from16 v2, v28

    move-object/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2325
    const-string v48, "register"

    const/16 v49, 0x3

    move-object/from16 v0, v45

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v37

    .line 2327
    .local v37, reg:Lgnu/bytecode/Method;
    move-object/from16 v0, v26

    iget v0, v0, Lgnu/expr/ModuleManager;->numModules:I

    move/from16 v20, v0

    .restart local v20       #i:I
    :cond_17
    :goto_9
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1d

    .line 2329
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    aget-object v29, v48, v20

    .line 2330
    .local v29, mi:Lgnu/expr/ModuleInfo;
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v30

    .line 2331
    .local v30, miClassName:Ljava/lang/String;
    if-eqz v30, :cond_17

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 2334
    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 2335
    .local v32, moduleSource:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v33

    .line 2336
    .local v33, moduleUri:Ljava/lang/String;
    const/16 v48, 0x1

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2337
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2338
    invoke-static/range {v32 .. v32}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lgnu/text/Path;->isAbsolute()Z

    move-result v48

    if-nez v48, :cond_19

    .line 2344
    :try_start_1
    sget-char v41, Ljava/io/File;->separatorChar:C

    .line 2345
    .local v41, sep:C
    invoke-virtual/range {v26 .. v26}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v35

    .line 2346
    .local v35, path:Ljava/lang/String;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const/16 v49, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2347
    invoke-static/range {v35 .. v35}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2348
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v36

    .line 2349
    .local v36, plen:I
    if-lez v36, :cond_18

    const/16 v48, 0x1

    sub-int v48, v36, v48

    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    move/from16 v0, v48

    move/from16 v1, v41

    if-eq v0, v1, :cond_18

    .line 2350
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2351
    :cond_18
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v32

    .line 2360
    .end local v35           #path:Ljava/lang/String;
    .end local v36           #plen:I
    .end local v41           #sep:C
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2361
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2362
    move-object v0, v11

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_9

    .line 2238
    .end local v14           #dot:I
    .end local v20           #i:I
    .end local v25           #mainPrefix:Ljava/lang/String;
    .end local v26           #manager:Lgnu/expr/ModuleManager;
    .end local v27           #mapClass:Lgnu/bytecode/ClassType;
    .end local v28           #margs:[Lgnu/bytecode/Type;
    .end local v29           #mi:Lgnu/expr/ModuleInfo;
    .end local v30           #miClassName:Ljava/lang/String;
    .end local v32           #moduleSource:Ljava/lang/String;
    .end local v33           #moduleUri:Ljava/lang/String;
    .end local v37           #reg:Lgnu/bytecode/Method;
    .end local v44           #superConstructor:Lgnu/bytecode/Method;
    .end local v45           #typeModuleManager:Lgnu/bytecode/ClassType;
    .end local v46           #typeModuleSet:Lgnu/bytecode/ClassType;
    .end local v47           #uri:Ljava/lang/String;
    .restart local v16       #endLiterals:Lgnu/bytecode/Label;
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/expr/LitTable;->emit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 2240
    :catch_0
    move-exception v48

    move-object/from16 v17, v48

    .line 2242
    .local v17, ex:Ljava/lang/Throwable;
    const/16 v48, 0x65

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Literals: Internal error:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_6

    .line 2268
    .end local v16           #endLiterals:Lgnu/bytecode/Label;
    .end local v17           #ex:Ljava/lang/Throwable;
    .restart local v9       #args:[Lgnu/bytecode/Type;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_7

    .line 2290
    .end local v9           #args:[Lgnu/bytecode/Type;
    .restart local v14       #dot:I
    .restart local v25       #mainPrefix:Ljava/lang/String;
    .restart local v26       #manager:Lgnu/expr/ModuleManager;
    .restart local v47       #uri:Ljava/lang/String;
    :cond_1c
    const/16 v48, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v48

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 2293
    .local v24, mainPackage:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2303
    :goto_a
    const/16 v48, 0x0

    add-int/lit8 v49, v14, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_8

    .line 2299
    :catch_1
    move-exception v17

    .line 2301
    .restart local v17       #ex:Ljava/lang/Throwable;
    const/16 v48, 0x65

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "error loading map for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_a

    .line 2354
    .end local v17           #ex:Ljava/lang/Throwable;
    .end local v24           #mainPackage:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v27       #mapClass:Lgnu/bytecode/ClassType;
    .restart local v28       #margs:[Lgnu/bytecode/Type;
    .restart local v29       #mi:Lgnu/expr/ModuleInfo;
    .restart local v30       #miClassName:Ljava/lang/String;
    .restart local v32       #moduleSource:Ljava/lang/String;
    .restart local v33       #moduleUri:Ljava/lang/String;
    .restart local v37       #reg:Lgnu/bytecode/Method;
    .restart local v44       #superConstructor:Lgnu/bytecode/Method;
    .restart local v45       #typeModuleManager:Lgnu/bytecode/ClassType;
    .restart local v46       #typeModuleSet:Lgnu/bytecode/ClassType;
    :catch_2
    move-exception v48

    move-object/from16 v17, v48

    .line 2356
    .restart local v17       #ex:Ljava/lang/Throwable;
    new-instance v48, Lgnu/mapping/WrappedException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "exception while fixing up \'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v50, 0x27

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v48

    .line 2364
    .end local v17           #ex:Ljava/lang/Throwable;
    .end local v29           #mi:Lgnu/expr/ModuleInfo;
    .end local v30           #miClassName:Ljava/lang/String;
    .end local v32           #moduleSource:Ljava/lang/String;
    .end local v33           #moduleUri:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2366
    .end local v14           #dot:I
    .end local v20           #i:I
    .end local v25           #mainPrefix:Ljava/lang/String;
    .end local v26           #manager:Lgnu/expr/ModuleManager;
    .end local v27           #mapClass:Lgnu/bytecode/ClassType;
    .end local v28           #margs:[Lgnu/bytecode/Type;
    .end local v37           #reg:Lgnu/bytecode/Method;
    .end local v44           #superConstructor:Lgnu/bytecode/Method;
    .end local v45           #typeModuleManager:Lgnu/bytecode/ClassType;
    .end local v46           #typeModuleSet:Lgnu/bytecode/ClassType;
    .end local v47           #uri:Ljava/lang/String;
    :cond_1e
    return-void

    .line 2295
    .restart local v14       #dot:I
    .restart local v24       #mainPackage:Ljava/lang/String;
    .restart local v25       #mainPrefix:Ljava/lang/String;
    .restart local v26       #manager:Lgnu/expr/ModuleManager;
    .restart local v47       #uri:Ljava/lang/String;
    :catch_3
    move-exception v48

    goto :goto_a
.end method

.method public generateClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hint"

    .prologue
    .line 959
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, p1

    .line 970
    :goto_1
    return-object v2

    .line 962
    :cond_1
    iget-object v2, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 966
    :cond_2
    const/4 v0, 0x0

    .line 968
    .local v0, i:I
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, new_hint:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 970
    goto :goto_1

    .line 966
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V
    .locals 16
    .parameter "clas"
    .parameter "lexp"

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x1

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v10, v0

    .line 1176
    .local v10, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v3, v0

    .line 1177
    .local v3, callContextSave:Lgnu/bytecode/Variable;
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v9, v0

    .line 1179
    .local v9, save_class:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1180
    invoke-static/range {p1 .. p2}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v6

    .line 1181
    .local v6, constructor_method:Lgnu/bytecode/Method;
    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    .line 1182
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1183
    invoke-virtual {v6}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 1185
    .local v5, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v12, v0

    if-eqz v12, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object v12, v0

    if-eqz v12, :cond_0

    .line 1187
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1188
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v12

    invoke-virtual {v12, v14}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1189
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object v12, v0

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1191
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v11

    .line 1192
    .local v11, superClass:Lgnu/bytecode/ClassType;
    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v13, v0

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object v12, v0

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1199
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1200
    const-string v12, "gnu.expr.ModuleInfo"

    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    const-string v13, "register"

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1204
    :cond_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object v12, v0

    if-eqz v12, :cond_3

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v8, v0

    .line 1209
    .local v8, save:Lgnu/expr/LambdaExp;
    new-instance v12, Lgnu/expr/LambdaExp;

    invoke-direct {v12}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v0

    iput-object v8, v12, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 1213
    :goto_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object v7, v0

    .local v7, init:Lgnu/expr/Initializer;
    if-eqz v7, :cond_2

    .line 1215
    move-object v0, v15

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 1216
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_0

    .line 1218
    :cond_2
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1221
    .end local v7           #init:Lgnu/expr/Initializer;
    .end local v8           #save:Lgnu/expr/LambdaExp;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v12, v0

    if-eqz v12, :cond_4

    .line 1223
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v4, v0

    .line 1224
    .local v4, cexp:Lgnu/expr/ClassExp;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v12

    new-instance v13, Ljava/util/Vector;

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1227
    .end local v4           #cexp:Lgnu/expr/ClassExp;
    :cond_4
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1228
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1229
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1230
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1231
    return-void
.end method

.method public final generateConstructor(Lgnu/expr/LambdaExp;)V
    .locals 1
    .parameter "lexp"

    .prologue
    .line 1170
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 1171
    return-void
.end method

.method public generateMatchMethods(Lgnu/expr/LambdaExp;)V
    .locals 34
    .parameter "lexp"

    .prologue
    .line 1294
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    const/16 v31, 0x0

    move/from16 v20, v31

    .line 1296
    .local v20, numApplyMethods:I
    :goto_0
    if-nez v20, :cond_1

    .line 1454
    :goto_1
    return-void

    .line 1294
    .end local v20           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v31

    move/from16 v20, v31

    goto :goto_0

    .line 1298
    .restart local v20       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v26, v0

    .line 1299
    .local v26, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v25, v0

    .line 1300
    .local v25, save_class:Lgnu/bytecode/ClassType;
    sget-object v23, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1301
    .local v23, procType:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v31

    sget-object v32, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1304
    :cond_2
    const/4 v6, 0x0

    .line 1305
    .local v6, code:Lgnu/bytecode/CodeAttr;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-gt v0, v1, :cond_18

    .line 1307
    const/16 v19, 0x0

    .line 1308
    .local v19, needThisMatch:Z
    const/4 v5, 0x0

    .line 1309
    .local v5, aswitch:Lgnu/bytecode/SwitchState;
    const/16 v17, 0x0

    .line 1310
    .local v17, mname:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1311
    .local v15, matchArgs:[Lgnu/bytecode/Type;
    move/from16 v12, v20

    .local v12, j:I
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_14

    .line 1313
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lgnu/expr/LambdaExp;

    .line 1316
    .local v27, source:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v22, v0

    .line 1317
    .local v22, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    .line 1318
    .local v21, numMethods:I
    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v31, v0

    if-ltz v31, :cond_4

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_6

    :cond_4
    const/16 v31, 0x1

    move/from16 v30, v31

    .line 1321
    .local v30, varArgs:Z
    :goto_4
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 1323
    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v31, v0

    sub-int v16, v11, v31

    .line 1324
    .local v16, methodIndex:I
    if-ltz v16, :cond_3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    const/16 v31, 0x1

    sub-int v31, v21, v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    if-nez v30, :cond_3

    .line 1327
    :cond_5
    const/16 v21, 0x1

    .line 1328
    const/16 v30, 0x0

    .line 1337
    :goto_5
    if-nez v19, :cond_a

    .line 1340
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1342
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "match"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1343
    add-int/lit8 v31, v11, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v15, v0

    .line 1344
    move v13, v11

    .local v13, k:I
    :goto_6
    if-ltz v13, :cond_9

    .line 1345
    add-int/lit8 v31, v13, 0x1

    sget-object v32, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    .line 1344
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1318
    .end local v13           #k:I
    .end local v16           #methodIndex:I
    .end local v30           #varArgs:Z
    :cond_6
    const/16 v31, 0x0

    move/from16 v30, v31

    goto :goto_4

    .line 1332
    .restart local v30       #varArgs:Z
    :cond_7
    const/16 v31, 0x5

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    sub-int v16, v31, v32

    .line 1333
    .restart local v16       #methodIndex:I
    if-lez v16, :cond_8

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    if-eqz v30, :cond_3

    .line 1335
    :cond_8
    const/16 v31, 0x1

    sub-int v16, v21, v31

    goto :goto_5

    .line 1346
    .restart local v13       #k:I
    :cond_9
    add-int/lit8 v31, v11, 0x1

    sget-object v32, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    .line 1355
    .end local v13           #k:I
    :goto_7
    const/16 v31, 0x0

    aput-object v23, v15, v31

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    sget-object v32, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move-object v2, v15

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 1360
    const/16 v31, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1361
    const-string v31, "selector"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1362
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v5

    .line 1364
    const/16 v19, 0x1

    .line 1367
    :cond_a
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v31

    move-object v0, v5

    move/from16 v1, v31

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1369
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v14

    .line 1370
    .local v14, line:I
    if-lez v14, :cond_b

    .line 1371
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1373
    :cond_b
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    const/16 v31, 0x3

    :goto_8
    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 1375
    .local v8, ctxVar:Lgnu/bytecode/Variable;
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 1377
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v29

    .line 1378
    .local v29, var:Lgnu/expr/Declaration;
    const/4 v13, 0x1

    .restart local v13       #k:I
    :goto_9
    if-gt v13, v11, :cond_11

    .line 1380
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1381
    add-int/lit8 v31, v13, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1382
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    .line 1383
    .local v24, ptype:Lgnu/bytecode/Type;
    sget-object v31, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 1385
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 1387
    new-instance v28, Lgnu/bytecode/Label;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1388
    .local v28, trueLabel:Lgnu/bytecode/Label;
    new-instance v10, Lgnu/bytecode/Label;

    invoke-direct {v10, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1389
    .local v10, falseLabel:Lgnu/bytecode/Label;
    new-instance v7, Lgnu/expr/ConditionalTarget;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v28

    move-object v2, v10

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 1392
    .local v7, ctarget:Lgnu/expr/ConditionalTarget;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1393
    check-cast v24, Lgnu/expr/TypeValue;

    .end local v24           #ptype:Lgnu/bytecode/Type;
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1395
    invoke-virtual {v10, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1396
    const/high16 v31, -0xc

    or-int v31, v31, v13

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1397
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1398
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1412
    .end local v7           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v10           #falseLabel:Lgnu/bytecode/Label;
    .end local v28           #trueLabel:Lgnu/bytecode/Label;
    :cond_c
    :goto_a
    sget-object v31, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "value"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1413
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v29

    .line 1378
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 1350
    .end local v8           #ctxVar:Lgnu/bytecode/Variable;
    .end local v13           #k:I
    .end local v14           #line:I
    .end local v29           #var:Lgnu/expr/Declaration;
    :cond_d
    const-string v17, "matchN"

    .line 1351
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v15, v0

    .line 1352
    const/16 v31, 0x1

    sget-object v32, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v32, v15, v31

    .line 1353
    const/16 v31, 0x2

    sget-object v32, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    goto/16 :goto_7

    .line 1373
    .restart local v14       #line:I
    :cond_e
    add-int/lit8 v31, v11, 0x2

    goto/16 :goto_8

    .line 1400
    .restart local v8       #ctxVar:Lgnu/bytecode/Variable;
    .restart local v13       #k:I
    .restart local v24       #ptype:Lgnu/bytecode/Type;
    .restart local v29       #var:Lgnu/expr/Declaration;
    :cond_f
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v31, v0

    if-eqz v31, :cond_c

    sget-object v31, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    sget-object v31, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 1404
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1405
    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 1406
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 1407
    const/high16 v31, -0xc

    or-int v31, v31, v13

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1408
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1409
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_a

    .line 1419
    .end local v13           #k:I
    .end local v24           #ptype:Lgnu/bytecode/Type;
    .end local v29           #var:Lgnu/expr/Declaration;
    :cond_10
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    const/16 v31, 0x2

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1421
    sget-object v31, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v32, "values"

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1423
    :cond_11
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1424
    sget v31, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 1425
    const/16 v31, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1428
    :goto_b
    sget-object v31, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1429
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1430
    sget v31, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    .line 1431
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v31

    add-int v31, v31, v16

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1434
    :goto_c
    sget-object v31, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1435
    const/16 v31, 0x0

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1436
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_3

    .line 1427
    :cond_12
    const/16 v31, 0x0

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_b

    .line 1433
    :cond_13
    invoke-virtual {v6, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_c

    .line 1438
    .end local v8           #ctxVar:Lgnu/bytecode/Variable;
    .end local v14           #line:I
    .end local v16           #methodIndex:I
    .end local v21           #numMethods:I
    .end local v22           #primMethods:[Lgnu/bytecode/Method;
    .end local v27           #source:Lgnu/expr/LambdaExp;
    .end local v30           #varArgs:Z
    :cond_14
    if-eqz v19, :cond_17

    .line 1440
    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1441
    const/16 v31, 0x4

    move v0, v11

    move/from16 v1, v31

    if-le v0, v1, :cond_15

    const/16 v31, 0x2

    move/from16 v18, v31

    .line 1442
    .local v18, nargs:I
    :goto_d
    add-int/lit8 v18, v18, 0x1

    .line 1443
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_e
    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_16

    .line 1444
    invoke-virtual {v6, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1443
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1441
    .end local v13           #k:I
    .end local v18           #nargs:I
    :cond_15
    add-int/lit8 v31, v11, 0x1

    move/from16 v18, v31

    goto :goto_d

    .line 1445
    .restart local v13       #k:I
    .restart local v18       #nargs:I
    :cond_16
    sget-object v31, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object v0, v15

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    .line 1447
    .local v9, defMethod:Lgnu/bytecode/Method;
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1448
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1449
    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1305
    .end local v9           #defMethod:Lgnu/bytecode/Method;
    .end local v13           #k:I
    .end local v18           #nargs:I
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1452
    .end local v5           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v12           #j:I
    .end local v15           #matchArgs:[Lgnu/bytecode/Type;
    .end local v17           #mname:Ljava/lang/String;
    .end local v19           #needThisMatch:Z
    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1453
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method public generatingApplet()Z
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generatingServlet()Z
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 157
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 151
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1, p2}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public final getConstructor(Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "lexp"

    .prologue
    .line 1149
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForNameHelper()Lgnu/bytecode/Method;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2845
    iget-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    if-nez v2, :cond_0

    .line 2848
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2849
    .local v1, save_method:Lgnu/bytecode/Method;
    iget-object v2, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string v3, "class$"

    const/16 v4, 0x9

    sget-object v5, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2851
    iget-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iput-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    .line 2852
    iget-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2853
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2854
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2855
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2856
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "forName"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2857
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "getClassLoader"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2858
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "forName"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2859
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2860
    iput-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2865
    .end local v0           #code:Lgnu/bytecode/CodeAttr;
    .end local v1           #save_method:Lgnu/bytecode/Method;
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    return-object v2
.end method

.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public final getModule()Lgnu/expr/ModuleExp;
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-object v0
.end method

.method public final getModuleType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 431
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2634
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lgnu/expr/Compilation;->state:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2635
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inlineOk(Lgnu/expr/Expression;)Z
    .locals 5
    .parameter "proc"

    .prologue
    .line 463
    instance-of v3, p1, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_3

    .line 465
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v1, v0

    .line 466
    .local v1, lproc:Lgnu/expr/LambdaExp;
    iget-object v2, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 469
    .local v2, nameDecl:Lgnu/expr/Declaration;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v3, v3, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_1

    .line 471
    :cond_0
    const/4 v3, 0x1

    .line 478
    .end local v1           #lproc:Lgnu/expr/LambdaExp;
    .end local v2           #nameDecl:Lgnu/expr/Declaration;
    :goto_0
    return v3

    .line 472
    .restart local v1       #lproc:Lgnu/expr/LambdaExp;
    .restart local v2       #nameDecl:Lgnu/expr/Declaration;
    :cond_1
    iget-boolean v3, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v3

    iget-object v4, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 476
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 478
    .end local v1           #lproc:Lgnu/expr/LambdaExp;
    .end local v2           #nameDecl:Lgnu/expr/Declaration;
    :cond_3
    sget-boolean v3, Lgnu/expr/Compilation;->inlineOk:Z

    goto :goto_0
.end method

.method public inlineOk(Lgnu/mapping/Procedure;)Z
    .locals 1
    .parameter "proc"

    .prologue
    .line 483
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/expr/ModuleMethod;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/expr/ModuleMethod;

    .end local p1
    iget-object v0, p1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 486
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lgnu/expr/Compilation;->inlineOk:Z

    goto :goto_0
.end method

.method public isPedantic()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lgnu/expr/Compilation;->pedantic:Z

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 2636
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 2433
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    return v0
.end method

.method public letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    .locals 1
    .parameter "body"

    .prologue
    .line 2688
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2689
    .local v0, let:Lgnu/expr/LetExp;
    iput-object p1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 2690
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2691
    return-object v0
.end method

.method public letEnter()V
    .locals 7

    .prologue
    .line 2674
    iget-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v4, Lgnu/expr/LetExp;

    .line 2675
    .local v4, let:Lgnu/expr/LetExp;
    invoke-virtual {v4}, Lgnu/expr/LetExp;->countDecls()I

    move-result v5

    .line 2676
    .local v5, ndecls:I
    new-array v3, v5, [Lgnu/expr/Expression;

    .line 2677
    .local v3, inits:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 2678
    .local v1, i:I
    invoke-virtual {v4}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    move v2, v1

    .line 2679
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 2681
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v3, v2

    .line 2680
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 2682
    :cond_0
    iput-object v3, v4, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 2683
    iget-object v6, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v6, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2684
    return-void
.end method

.method public letStart()V
    .locals 2

    .prologue
    .line 2661
    new-instance v0, Lgnu/expr/LetExp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2662
    return-void
.end method

.method public letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "init"

    .prologue
    .line 2666
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LetExp;

    .line 2667
    .local v1, let:Lgnu/expr/LetExp;
    invoke-virtual {v1, p1, p2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2668
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2669
    return-object v0
.end method

.method public final loadCallContext()V
    .locals 4

    .prologue
    .line 2384
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2385
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2386
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2411
    :goto_0
    return-void

    .line 2393
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iget-object v2, p0, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    if-ne v1, v2, :cond_1

    .line 2396
    new-instance v1, Lgnu/bytecode/Variable;

    const-string v2, "$ctx"

    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v2, v3}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2399
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    .line 2400
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2401
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 2405
    :cond_1
    sget-object v1, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2406
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 2407
    new-instance v1, Lgnu/bytecode/Variable;

    const-string v2, "$ctx"

    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v2, v3}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2408
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 2409
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method public loadClassRef(Lgnu/bytecode/ObjectType;)V
    .locals 5
    .parameter "clas"

    .prologue
    .line 2813
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2815
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v2, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v2

    const/high16 v3, 0x31

    if-lt v2, v3, :cond_0

    .line 2816
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushClass(Lgnu/bytecode/ObjectType;)V

    .line 2831
    :goto_0
    return-void

    .line 2817
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_1

    .line 2821
    iget-object v2, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2822
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v3, "getClass"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 2826
    :cond_1
    instance-of v2, p1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2828
    .local v1, name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getForNameHelper()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 2826
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 2550
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public loopBody(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 2751
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2752
    .local v0, loopLambda:Lgnu/expr/LambdaExp;
    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2753
    return-void
.end method

.method public loopCond(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 2746
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2747
    iget-object v0, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    return-void
.end method

.method public loopEnter()V
    .locals 8

    .prologue
    .line 2732
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2733
    iget-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v4, Lgnu/expr/LambdaExp;

    .line 2734
    .local v4, loopLambda:Lgnu/expr/LambdaExp;
    iget v5, v4, Lgnu/expr/LambdaExp;->min_args:I

    .line 2735
    .local v5, ninits:I
    iput v5, v4, Lgnu/expr/LambdaExp;->max_args:I

    .line 2736
    new-array v2, v5, [Lgnu/expr/Expression;

    .line 2737
    .local v2, inits:[Lgnu/expr/Expression;
    move v1, v5

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 2738
    iget-object v6, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    aput-object v6, v2, v1

    goto :goto_0

    .line 2739
    :cond_0
    iget-object v3, v4, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LetExp;

    .line 2740
    .local v3, let:Lgnu/expr/LetExp;
    invoke-virtual {v3}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 2741
    .local v0, fdecl:Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v6, v7, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v3, v6}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 2742
    iget-object v6, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v6, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2743
    return-void
.end method

.method public loopRepeat()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 2771
    sget-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public loopRepeat(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 2776
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2777
    .local v0, args:[Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exps"

    .prologue
    .line 2756
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LambdaExp;

    .line 2757
    .local v3, loopLambda:Lgnu/expr/LambdaExp;
    iget-object v2, v3, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2758
    .local v2, let:Lgnu/expr/ScopeExp;
    invoke-virtual {v2}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 2759
    .local v1, fdecl:Lgnu/expr/Declaration;
    iget-object v5, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 2760
    .local v0, cond:Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v4, v5, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2761
    .local v4, recurse:Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    new-instance v6, Lgnu/expr/BeginExp;

    iget-object v7, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v6, v7, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v7, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v5, v0, v6, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v5, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2764
    iget-object v5, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v5, v3}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2765
    iget-object v5, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2766
    return-object v2
.end method

.method public loopStart()V
    .locals 6

    .prologue
    .line 2704
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4}, Lgnu/expr/LambdaExp;-><init>()V

    .line 2705
    .local v4, loopLambda:Lgnu/expr/LambdaExp;
    const/4 v5, 0x1

    new-array v2, v5, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2706
    .local v2, inits:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/LetExp;

    invoke-direct {v3, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 2707
    .local v3, let:Lgnu/expr/LetExp;
    const-string v1, "%do%loop"

    .line 2708
    .local v1, fname:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2709
    .local v0, fdecl:Lgnu/expr/Declaration;
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2710
    invoke-virtual {v4, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 2711
    iget-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v5, v3, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 2712
    iput-object v3, v4, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2713
    iput-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2714
    return-void
.end method

.method public loopVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "type"
    .parameter "init"

    .prologue
    .line 2718
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2719
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 2720
    .local v1, loopLambda:Lgnu/expr/LambdaExp;
    invoke-virtual {v1, p1, p2}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2721
    .local v0, decl:Lgnu/expr/Declaration;
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v2, :cond_0

    .line 2722
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 2723
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2724
    iget v2, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 2725
    return-object v0
.end method

.method public makeRunnable()Z
    .locals 1

    .prologue
    .line 1117
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mustCompileHere()V
    .locals 2

    .prologue
    .line 2444
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-nez v0, :cond_0

    .line 2445
    const/16 v0, 0x77

    const-string v1, "this expression claimed that it must be compiled, but compiler is unavailable"

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2449
    :goto_0
    return-void

    .line 2447
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    goto :goto_0
.end method

.method public outputClass(Ljava/lang/String;)V
    .locals 8
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 1003
    .local v1, dirSep:C
    const/4 v2, 0x0

    .local v2, iClass:I
    :goto_0
    iget v5, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v5, :cond_1

    .line 1005
    iget-object v5, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v5, v2

    .line 1006
    .local v0, clas:Lgnu/bytecode/ClassType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, out_name:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, parent:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1011
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1012
    :cond_0
    invoke-virtual {v0, v3}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1003
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    .end local v3           #out_name:Ljava/lang/String;
    .end local v4           #parent:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1015
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 2
    .parameter "input"

    .prologue
    .line 2422
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unimeplemented parse"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pop()V
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2541
    return-void
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2534
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2535
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2536
    return-void
.end method

.method public process(I)V
    .locals 13
    .parameter "wantedState"

    .prologue
    const/16 v12, 0xa

    const/16 v11, 0x8

    const/4 v7, 0x6

    const/16 v10, 0xe

    const/16 v9, 0x64

    .line 1929
    invoke-static {p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v4

    .line 1932
    .local v4, saveCompilation:Lgnu/expr/Compilation;
    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 1933
    .local v2, mexp:Lgnu/expr/ModuleExp;
    const/4 v5, 0x4

    if-lt p1, v5, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 1935
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1936
    iget-object v5, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    .line 1937
    iget-object v5, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    invoke-virtual {v5}, Lgnu/text/Lexer;->close()V

    .line 1938
    const/4 v5, 0x0

    iput-object v5, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 1939
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    :goto_0
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1940
    iget-object v5, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_1

    .line 2009
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2011
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    :goto_1
    return-void

    .line 1939
    .restart local v2       #mexp:Lgnu/expr/ModuleExp;
    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    .line 1943
    :cond_1
    if-lt p1, v7, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v7, :cond_2

    .line 1950
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 1951
    iget-object v5, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    invoke-virtual {v5, p0}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 1952
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v9

    :goto_2
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1956
    :cond_2
    iget-boolean v5, p0, Lgnu/expr/Compilation;->explicit:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1959
    iget-object v5, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1960
    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1963
    :cond_3
    if-lt p1, v11, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v11, :cond_4

    .line 1965
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 1966
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v9

    :goto_3
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1968
    :cond_4
    if-lt p1, v12, :cond_5

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v12, :cond_5

    .line 1970
    new-instance v5, Lgnu/expr/LitTable;

    invoke-direct {v5, p0}, Lgnu/expr/LitTable;-><init>(Lgnu/expr/Compilation;)V

    iput-object v5, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1971
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setCanRead(Z)V

    .line 1972
    invoke-static {v2, p0}, Lgnu/expr/FindCapturedVars;->findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1973
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocFields(Lgnu/expr/Compilation;)V

    .line 1974
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1975
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v9

    :goto_4
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1977
    :cond_5
    const/16 v5, 0xc

    if-lt p1, v5, :cond_7

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-ge v5, v6, :cond_7

    .line 1979
    iget-boolean v5, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_6

    .line 1981
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1982
    .local v3, parentLoader:Ljava/lang/ClassLoader;
    new-instance v5, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v5, v3}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 1984
    .end local v3           #parentLoader:Ljava/lang/ClassLoader;
    :cond_6
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generateBytecode()V

    .line 1985
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v9

    :goto_5
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1987
    :cond_7
    if-lt p1, v10, :cond_8

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v10, :cond_8

    .line 1989
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v1

    .line 1990
    .local v1, manager:Lgnu/expr/ModuleManager;
    invoke-virtual {v1}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->outputClass(Ljava/lang/String;)V

    .line 1991
    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2009
    .end local v1           #manager:Lgnu/expr/ModuleManager;
    :cond_8
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1

    :cond_9
    move v5, v7

    .line 1952
    goto/16 :goto_2

    :cond_a
    move v5, v11

    .line 1966
    goto :goto_3

    :cond_b
    move v5, v12

    .line 1975
    goto :goto_4

    .line 1985
    :cond_c
    const/16 v5, 0xc

    goto :goto_5

    .line 1994
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1996
    .local v0, ex:Lgnu/text/SyntaxException;
    const/16 v5, 0x64

    :try_start_2
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1997
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    if-eq v5, v6, :cond_d

    .line 1998
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "confussing syntax error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    .end local v0           #ex:Lgnu/text/SyntaxException;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw v5

    .restart local v0       #ex:Lgnu/text/SyntaxException;
    :cond_d
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1

    .line 2001
    .end local v0           #ex:Lgnu/text/SyntaxException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 2003
    .local v0, ex:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2004
    const/16 v5, 0x66

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2005
    const/16 v5, 0x64

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2009
    invoke-static {v4}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "decl"

    .prologue
    .line 2545
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 2546
    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2514
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2515
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2516
    return-void
.end method

.method pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"
    .parameter "limit"

    .prologue
    .line 2481
    if-eq p1, p2, :cond_0

    .line 2483
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2484
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2485
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2487
    :cond_0
    return-void
.end method

.method public pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;
    .locals 1
    .parameter "lexer"

    .prologue
    .line 2491
    iput-object p1, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 2492
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;
    .locals 2
    .parameter "filename"

    .prologue
    .line 2497
    new-instance v0, Lgnu/expr/ModuleExp;

    invoke-direct {v0}, Lgnu/expr/ModuleExp;-><init>()V

    .line 2498
    .local v0, module:Lgnu/expr/ModuleExp;
    if-eqz p1, :cond_0

    .line 2499
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2501
    :cond_1
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2502
    :cond_2
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_3

    .line 2504
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2505
    new-instance v1, Lgnu/expr/ModuleInfo;

    invoke-direct {v1}, Lgnu/expr/ModuleInfo;-><init>()V

    invoke-virtual {v1, p0}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 2507
    :cond_3
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 2508
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2509
    return-object v0
.end method

.method public pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V
    .locals 3
    .parameter "info"
    .parameter "defs"
    .parameter "formSize"

    .prologue
    .line 96
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    .line 98
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 101
    .local v0, posExp:Lgnu/expr/Expression;
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 102
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public final pushScope(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2520
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 2528
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2529
    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2530
    return-void
.end method

.method public resolve(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .parameter "name"
    .parameter "function"

    .prologue
    const/4 v4, 0x0

    .line 2870
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 2872
    .local v1, env:Lgnu/mapping/Environment;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2873
    invoke-virtual {v1}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v3, p1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 2876
    .local v2, symbol:Lgnu/mapping/Symbol;
    :goto_0
    if-nez v2, :cond_1

    move-object v3, v4

    .line 2880
    :goto_1
    return-object v3

    .line 2875
    .end local v2           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .restart local v2       #symbol:Lgnu/mapping/Symbol;
    goto :goto_0

    .line 2878
    .end local p1
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2879
    invoke-virtual {v1, v2, v4}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 2880
    :cond_2
    invoke-virtual {v1, v2, v4}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method public setColumn(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 2640
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setCurrentScope(Lgnu/expr/ScopeExp;)V
    .locals 4
    .parameter "scope"

    .prologue
    .line 2458
    invoke-static {p1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v2

    .line 2459
    .local v2, scope_nesting:I
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-static {v3}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2460
    .local v0, current_nesting:I
    :goto_0
    if-le v0, v2, :cond_0

    .line 2462
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2463
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2465
    :cond_0
    move-object v1, p1

    .line 2466
    .local v1, sc:Lgnu/expr/ScopeExp;
    :goto_1
    if-le v2, v0, :cond_1

    .line 2468
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2469
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2471
    :cond_1
    :goto_2
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v3, :cond_2

    .line 2473
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2474
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    .line 2476
    :cond_2
    invoke-virtual {p0, p1, v1}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2477
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 2638
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 2639
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2642
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setLine(Ljava/lang/Object;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 2645
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    .line 2647
    :cond_0
    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 2653
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 2654
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2649
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "messages"

    .prologue
    .line 2569
    iput-object p1, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setModule(Lgnu/expr/ModuleExp;)V
    .locals 0
    .parameter "mexp"

    .prologue
    .line 2431
    iput-object p1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public setSharedModuleDefs(Z)V
    .locals 1
    .parameter "shared"

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/expr/Compilation;->langOptions:I

    .line 427
    :goto_0
    return-void

    .line 426
    :cond_0
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/expr/Compilation;->langOptions:I

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 51
    iput p1, p0, Lgnu/expr/Compilation;->state:I

    return-void
.end method

.method public sharedModuleDefs()Z
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .parameter "message"

    .prologue
    .line 2627
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2628
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<compilation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usedClass(Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2561
    :goto_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    .line 2562
    check-cast p1, Lgnu/bytecode/ArrayType;

    .end local p1
    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    .restart local p1
    goto :goto_0

    .line 2563
    :cond_0
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    check-cast p1, Lgnu/bytecode/ClassType;

    .end local p1
    invoke-virtual {v0, p1}, Lgnu/bytecode/ArrayClassLoader;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2565
    :cond_1
    return-void
.end method

.method public usingCPStyle()Z
    .locals 2

    .prologue
    .line 190
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usingTailCalls()Z
    .locals 2

    .prologue
    .line 192
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public walkModule(Lgnu/expr/ModuleExp;)V
    .locals 3
    .parameter "mexp"

    .prologue
    .line 985
    sget-boolean v1, Lgnu/expr/Compilation;->debugPrintExpr:Z

    if-eqz v1, :cond_0

    .line 987
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 988
    .local v0, dout:Lgnu/mapping/OutPort;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 990
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 991
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 994
    .end local v0           #dout:Lgnu/mapping/OutPort;
    :cond_0
    invoke-static {p1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    .line 995
    invoke-static {p1}, Lgnu/expr/PushApply;->pushApply(Lgnu/expr/Expression;)V

    .line 996
    invoke-static {p1, p0}, Lgnu/expr/ChainLambdas;->chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 997
    invoke-static {p1, p0}, Lgnu/expr/FindTailCalls;->findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 998
    return-void
.end method

.method public warnAsError()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnInvokeUnknownMethod()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUndefinedVariable()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUnknownMember()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method
