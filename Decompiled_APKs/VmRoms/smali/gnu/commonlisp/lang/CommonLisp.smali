.class public Lgnu/commonlisp/lang/CommonLisp;
.super Lgnu/commonlisp/lang/Lisp2;
.source "CommonLisp.java"


# static fields
.field static charIsInt:Z

.field public static final clispEnvironment:Lgnu/mapping/Environment;

.field static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final instance:Lgnu/commonlisp/lang/CommonLisp;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field static final writeFormat:Lgnu/lists/AbstractFormat;


# instance fields
.field booleanType:Lgnu/kawa/lispexpr/LangPrimType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x43

    const/4 v4, 0x0

    .line 17
    sput-boolean v4, Lgnu/commonlisp/lang/CommonLisp;->charIsInt:Z

    .line 58
    const-string v1, "clisp-environment"

    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    .line 69
    new-instance v1, Lgnu/commonlisp/lang/CommonLisp;

    invoke-direct {v1}, Lgnu/commonlisp/lang/CommonLisp;-><init>()V

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    .line 71
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, "t"

    sget-object v3, Lgnu/commonlisp/lang/CommonLisp;->TRUE:Lgnu/mapping/Symbol;

    invoke-virtual {v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, "nil"

    sget-object v3, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    invoke-virtual {v1, v2, v3}, Lgnu/commonlisp/lang/CommonLisp;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, "="

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 75
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, ">"

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 77
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, ">="

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 79
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, "<"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 81
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    const-string v2, "<="

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 83
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    invoke-static {v1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    .line 86
    .local v0, saveEnv:Lgnu/mapping/Environment;
    :try_start_0
    sget-object v1, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    invoke-virtual {v1}, Lgnu/commonlisp/lang/CommonLisp;->initLisp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 167
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 168
    new-instance v1, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v1, v4, v5}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v1, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lgnu/commonlisp/lang/Lisp2;-><init>()V

    .line 96
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->clispEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/commonlisp/lang/CommonLisp;->environ:Lgnu/mapping/Environment;

    .line 97
    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 3
    .parameter "x"

    .prologue
    .line 37
    instance-of v1, p0, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 38
    check-cast p0, Lgnu/text/Char;

    .end local p0
    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result v1

    .line 46
    :goto_0
    return v1

    .line 40
    .restart local p0
    :cond_0
    instance-of v1, p0, Lgnu/math/Numeric;

    if-eqz v1, :cond_2

    .line 41
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    invoke-virtual {p0}, Lgnu/math/Numeric;->intValue()I

    move-result v0

    .line 44
    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    const v1, 0xffff

    if-le v0, v1, :cond_3

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "not a character value"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0           #i:I
    .restart local p0
    :cond_2
    const/4 v0, -0x1

    .restart local v0       #i:I
    goto :goto_1

    .line 46
    .end local p0
    :cond_3
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "arg"

    .prologue
    .line 30
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lgnu/text/Char;

    .end local p0
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getCharacter(I)Ljava/lang/Object;
    .locals 1
    .parameter "c"

    .prologue
    .line 22
    sget-boolean v0, Lgnu/commonlisp/lang/CommonLisp;->charIsInt:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    int-to-char v0, p0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lgnu/commonlisp/lang/CommonLisp;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    return-object v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->instance:Lgnu/commonlisp/lang/CommonLisp;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 1
    .parameter "readable"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "CommonLisp"

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 3
    .parameter "clas"

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, name:Ljava/lang/String;
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-direct {v1, v2, p0}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    iput-object v1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 193
    :cond_0
    iget-object v1, p0, Lgnu/commonlisp/lang/CommonLisp;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 197
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 195
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0

    .line 197
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 179
    const-string v0, "t"

    if-ne p1, v0, :cond_0

    .line 180
    const-string p1, "java.lang.Object"

    .line 181
    :cond_0
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method initLisp()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 101
    invoke-static {}, Lkawa/standard/Scheme;->builtin()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    .line 102
    .local v0, e:Lgnu/mapping/LocationEnumeration;
    :goto_0
    invoke-virtual {v0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {v0}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->importLocation(Lgnu/mapping/Location;)V

    goto :goto_0

    .line 110
    :cond_0
    :try_start_0
    const-string v3, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 111
    const-string v3, "kawa.lib.std_syntax"

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 112
    const-string v3, "kawa.lib.lists"

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 113
    const-string v3, "kawa.lib.strings"

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V

    .line 114
    const-string v3, "gnu.commonlisp.lisp.PrimOps"

    invoke-virtual {p0, v3}, Lgnu/commonlisp/lang/CommonLisp;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    new-instance v1, Lkawa/lang/Lambda;

    invoke-direct {v1}, Lkawa/lang/Lambda;-><init>()V

    .line 122
    .local v1, lambda:Lkawa/lang/Lambda;
    const-string v3, "&optional"

    invoke-static {v3}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "&rest"

    invoke-static {v4}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "&key"

    invoke-static {v5}, Lgnu/commonlisp/lang/CommonLisp;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lkawa/lang/Lambda;->setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    sget-object v3, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    iput-object v3, v1, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    .line 126
    const-string v3, "lambda"

    invoke-virtual {p0, v3, v1}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v3, "defun"

    new-instance v4, Lgnu/commonlisp/lang/defun;

    invoke-direct {v4, v1}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v3, "defvar"

    new-instance v4, Lgnu/commonlisp/lang/defvar;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v3, "defconst"

    new-instance v4, Lgnu/commonlisp/lang/defvar;

    invoke-direct {v4, v6}, Lgnu/commonlisp/lang/defvar;-><init>(Z)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v3, "defsubst"

    new-instance v4, Lgnu/commonlisp/lang/defun;

    invoke-direct {v4, v1}, Lgnu/commonlisp/lang/defun;-><init>(Lkawa/lang/Lambda;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v3, "function"

    new-instance v4, Lgnu/commonlisp/lang/function;

    invoke-direct {v4, v1}, Lgnu/commonlisp/lang/function;-><init>(Lkawa/lang/Syntax;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v3, "setq"

    new-instance v4, Lgnu/commonlisp/lang/setq;

    invoke-direct {v4}, Lgnu/commonlisp/lang/setq;-><init>()V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v3, "prog1"

    new-instance v4, Lgnu/commonlisp/lang/prog1;

    const-string v5, "prog1"

    invoke-direct {v4, v5, v6}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v3, "prog2"

    sget-object v4, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v3, "progn"

    new-instance v4, Lkawa/standard/begin;

    invoke-direct {v4}, Lkawa/standard/begin;-><init>()V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v3, "unwind-protect"

    new-instance v4, Lgnu/commonlisp/lang/UnwindProtect;

    invoke-direct {v4}, Lgnu/commonlisp/lang/UnwindProtect;-><init>()V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    new-instance v2, Lgnu/kawa/functions/Not;

    invoke-direct {v2, p0}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;)V

    .line 139
    .local v2, not:Lgnu/mapping/Procedure;
    const-string v3, "not"

    invoke-virtual {p0, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v3, "null"

    invoke-virtual {p0, v3, v2}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v3, "eq"

    new-instance v4, Lgnu/kawa/functions/IsEq;

    const-string v5, "eq"

    invoke-direct {v4, p0, v5}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v3, "equal"

    new-instance v4, Lgnu/kawa/functions/IsEqual;

    const-string v5, "equal"

    invoke-direct {v4, p0, v5}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v3, "typep"

    new-instance v4, Lgnu/kawa/reflect/InstanceOf;

    invoke-direct {v4, p0}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v3, "princ"

    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->displayFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const-string v3, "prin1"

    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->writeFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v3, "="

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    const-string v5, "numEqu"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v3, "<"

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    const-string v5, "numLss"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v3, ">"

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    const-string v5, "numGrt"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "<="

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    const-string v5, "numLEq"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, ">="

    const-string v4, "gnu.commonlisp.lang.CommonLisp"

    const-string v5, "numGEq"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "functionp"

    const-string v4, "gnu.commonlisp.lisp.PrimOps"

    invoke-virtual {p0, v3, v4}, Lgnu/commonlisp/lang/CommonLisp;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 116
    .end local v1           #lambda:Lkawa/lang/Lambda;
    .end local v2           #not:Lgnu/mapping/Procedure;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
