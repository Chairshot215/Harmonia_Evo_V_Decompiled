.class public Lkawa/standard/require;
.super Lkawa/lang/Syntax;
.source "require.java"


# static fields
.field private static final SLIB_PREFIX:Ljava/lang/String; = "gnu.kawa.slib."

.field static featureMap:Ljava/util/Hashtable;

.field public static final require:Lkawa/standard/require;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lkawa/standard/require;

    invoke-direct {v0}, Lkawa/standard/require;-><init>()V

    sput-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    .line 19
    sget-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    const-string v1, "require"

    invoke-virtual {v0, v1}, Lkawa/standard/require;->setName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    .line 70
    const-string v0, "generic-write"

    const-string v1, "gnu.kawa.slib.genwrite"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "pretty-print"

    const-string v1, "gnu.kawa.slib.pp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "pprint-file"

    const-string v1, "gnu.kawa.slib.ppfile"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "printf"

    const-string v1, "gnu.kawa.slib.printf"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "xml"

    const-string v1, "gnu.kawa.slib.XML"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "readtable"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "srfi-10"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "http"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "servlets"

    const-string v1, "gnu.kawa.servlet.servlets"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "srfi-1"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "list-lib"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "srfi-2"

    const-string v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "and-let*"

    const-string v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "srfi-13"

    const-string v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "string-lib"

    const-string v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "srfi-34"

    const-string v1, "gnu.kawa.slib.srfi34"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "srfi-35"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "condition"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "conditions"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "srfi-37"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "args-fold"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "srfi-64"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "testing"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "srfi-69"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "hash-table"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "basic-hash-tables"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "srfi-95"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "sorting-and-merging"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "regex"

    const-string v1, "kawa.lib.kawa.regex"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "pregexp"

    const-string v1, "gnu.kawa.slib.pregexp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "gui"

    const-string v1, "gnu.kawa.slib.gui"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "swing-gui"

    const-string v1, "gnu.kawa.slib.swing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "android-defs"

    const-string v1, "gnu.kawa.android.defs"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "syntax-utils"

    const-string v1, "gnu.kawa.slib.syntaxutils"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "typeName"

    .prologue
    .line 113
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z
    .locals 21
    .parameter "className"
    .parameter "info"
    .parameter "renamer"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 229
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v5

    .line 231
    .local v5, manager:Lgnu/expr/ModuleManager;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, now:J
    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v5

    .end local v5           #manager:Lgnu/expr/ModuleManager;
    if-nez v5, :cond_1

    .line 235
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v7

    .line 236
    .end local v6           #now:J
    .local v7, messages:Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 240
    .local v6, language:Lgnu/expr/Language;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v5

    invoke-static {v5}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v5

    .line 241
    .local v5, fstream:Lgnu/mapping/InPort;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->clearClass()V

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 243
    const/16 p0, 0x8

    .line 244
    .local p0, options:I
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move v8, v0

    if-eqz v8, :cond_0

    .line 245
    or-int/lit8 p0, p0, 0x1

    .line 246
    :cond_0
    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p0

    .line 265
    .local p0, comp:Lgnu/expr/Compilation;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    .end local v5           #fstream:Lgnu/mapping/InPort;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object p0

    .end local p0           #comp:Lgnu/expr/Compilation;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 268
    .end local v6           #language:Lgnu/expr/Language;
    .end local v7           #messages:Lgnu/text/SourceMessages;
    :cond_1
    move-object/from16 v0, p5

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 p0, v0

    if-eqz p0, :cond_3

    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getState()I

    move-result p0

    const/4 v5, 0x4

    move/from16 v0, p0

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 270
    move-object/from16 v0, p5

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 p0, v0

    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ModuleInfo;->addDependency(Lgnu/expr/ModuleInfo;)V

    .line 272
    const/16 p0, 0xc

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result p0

    const/4 v5, 0x6

    move/from16 v0, p0

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 276
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result p0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Compilation;->pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V

    .line 277
    const/16 p0, 0x1

    .line 490
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return p0

    .line 248
    .restart local v6       #language:Lgnu/expr/Language;
    .restart local v7       #messages:Lgnu/text/SourceMessages;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :catch_0
    move-exception p0

    .line 250
    .local p0, ex:Ljava/io/FileNotFoundException;
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1
    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #ex:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 251
    const/16 p0, 0x0

    goto :goto_0

    .line 253
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_1
    move-exception p0

    .line 255
    .local p0, ex:Ljava/io/IOException;
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1
    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "caught "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 256
    const/16 p0, 0x0

    goto :goto_0

    .line 258
    .restart local p1
    .restart local p2
    .restart local p3
    :catch_2
    move-exception p0

    .line 260
    .local p0, ex:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v7

    if-eq v0, v1, :cond_2

    .line 261
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "confussing syntax error: "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Lgnu/text/SyntaxException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    .restart local p0       #ex:Lgnu/text/SyntaxException;
    .restart local p2
    .restart local p3
    :cond_2
    const/16 p0, 0x0

    goto :goto_0

    .line 281
    .end local v6           #language:Lgnu/expr/Language;
    .end local v7           #messages:Lgnu/text/SourceMessages;
    .end local p0           #ex:Lgnu/text/SyntaxException;
    .restart local p1
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v18

    .line 282
    .local v18, type:Lgnu/bytecode/ClassType;
    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v17

    .line 283
    .local v17, tname:Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->sharedModuleDefs()Z

    move-result v16

    .line 284
    .local v16, sharedModule:Z
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result p0

    const/4 v5, 0x6

    move/from16 v0, p0

    move v1, v5

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result p0

    move/from16 v13, p0

    .line 287
    .local v13, isRunnable:Z
    :goto_1
    const/16 p0, 0x0

    .line 288
    .local p0, decl:Lgnu/expr/Declaration;
    const-string v5, "kawa.standard.require"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 289
    .local v6, thisType:Lgnu/bytecode/ClassType;
    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    new-instance v8, Lgnu/expr/QuoteExp;

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v8, v5, v7

    .line 290
    .local v5, args:[Lgnu/expr/Expression;
    const-string v7, "find"

    invoke-static {v6, v7, v5}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v8

    .line 291
    .local v8, dofind:Lgnu/expr/Expression;
    const/4 v9, 0x0

    .line 292
    .local v9, instanceField:Lgnu/bytecode/Field;
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    .line 293
    .local v15, language:Lgnu/expr/Language;
    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v6

    .line 296
    .local v6, formsStart:I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object p1

    .line 298
    .local p1, mod:Lgnu/expr/ModuleExp;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 299
    .local v7, declPairs:Ljava/util/Vector;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p1

    .local p1, fdecl:Lgnu/expr/Declaration;
    move-object v12, v9

    .end local v9           #instanceField:Lgnu/bytecode/Field;
    .local v12, instanceField:Lgnu/bytecode/Field;
    move-object/from16 v9, p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    .local v9, fdecl:Lgnu/expr/Declaration;
    move/from16 p1, v6

    .end local v6           #formsStart:I
    .local p1, formsStart:I
    move-object/from16 v6, p0

    .line 300
    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v6, decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v9, :cond_16

    .line 302
    invoke-virtual {v9}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result p0

    if-eqz p0, :cond_5

    move-object v10, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v10, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v6

    .end local v6           #decl:Lgnu/expr/Declaration;
    .restart local p0       #decl:Lgnu/expr/Declaration;
    move/from16 v6, p1

    .line 300
    .end local p1           #formsStart:I
    .local v6, formsStart:I
    :goto_3
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    .end local v9           #fdecl:Lgnu/expr/Declaration;
    .local p1, fdecl:Lgnu/expr/Declaration;
    move-object/from16 v9, p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    .restart local v9       #fdecl:Lgnu/expr/Declaration;
    move-object v12, v10

    .end local v10           #instanceField:Lgnu/bytecode/Field;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    move/from16 p1, v6

    .end local v6           #formsStart:I
    .local p1, formsStart:I
    move-object/from16 v6, p0

    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v6, decl:Lgnu/expr/Declaration;
    goto :goto_2

    .line 284
    .end local v5           #args:[Lgnu/expr/Expression;
    .end local v6           #decl:Lgnu/expr/Declaration;
    .end local v7           #declPairs:Ljava/util/Vector;
    .end local v8           #dofind:Lgnu/expr/Expression;
    .end local v9           #fdecl:Lgnu/expr/Declaration;
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .end local v13           #isRunnable:Z
    .end local v15           #language:Lgnu/expr/Language;
    .local p1, info:Lgnu/expr/ModuleInfo;
    :cond_4
    sget-object p0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p0

    move/from16 v13, p0

    goto :goto_1

    .line 305
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v6       #decl:Lgnu/expr/Declaration;
    .restart local v7       #declPairs:Ljava/util/Vector;
    .restart local v8       #dofind:Lgnu/expr/Expression;
    .restart local v9       #fdecl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .restart local v13       #isRunnable:Z
    .restart local v15       #language:Lgnu/expr/Language;
    .local p1, formsStart:I
    :cond_5
    invoke-virtual {v9}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/mapping/Symbol;

    .line 306
    .local p0, aname:Lgnu/mapping/Symbol;
    if-eqz p2, :cond_8

    .line 311
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    .line 317
    .end local p0           #aname:Lgnu/mapping/Symbol;
    :goto_4
    if-nez p0, :cond_6

    move-object v10, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .restart local v10       #instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v6

    .end local v6           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move/from16 v6, p1

    .line 318
    .end local p1           #formsStart:I
    .local v6, formsStart:I
    goto :goto_3

    .line 313
    .end local v10           #instanceField:Lgnu/bytecode/Field;
    .local v6, decl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #formsStart:I
    :catch_3
    move-exception p0

    .line 315
    .local p0, ex:Ljava/lang/Throwable;
    move-object/from16 p0, p0

    .local p0, mapped:Ljava/lang/Throwable;
    goto :goto_4

    .line 319
    .end local p0           #mapped:Ljava/lang/Throwable;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v10, v0

    if-nez v10, :cond_7

    .line 321
    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "internal error - import name mapper returned non-symbol: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p5

    move v1, v10

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object v10, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .restart local v10       #instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, v6

    .end local v6           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move/from16 v6, p1

    .line 322
    .end local p1           #formsStart:I
    .local v6, formsStart:I
    goto :goto_3

    .line 324
    .end local v10           #instanceField:Lgnu/bytecode/Field;
    .end local p0           #decl:Lgnu/expr/Declaration;
    .local v6, decl:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .restart local p1       #formsStart:I
    :cond_7
    check-cast p0, Lgnu/mapping/Symbol;

    .line 326
    .local p0, aname:Lgnu/mapping/Symbol;
    :cond_8
    const-wide/16 v10, 0x800

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v14

    .line 327
    .local v14, isStatic:Z
    if-nez v14, :cond_1c

    if-nez v6, :cond_1c

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #formsStart:I
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v10, 0x24

    move-object/from16 v0, v17

    move v1, v6

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .end local v6           #decl:Lgnu/expr/Declaration;
    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "$instance"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, iname:Ljava/lang/String;
    new-instance p1, Lgnu/expr/Declaration;

    invoke-static {v6}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    .end local v6           #iname:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 331
    .local p1, decl:Lgnu/expr/Declaration;
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 332
    const-wide/32 v10, 0x40004000

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 336
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 337
    new-instance v6, Lgnu/expr/SetExp;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 338
    .local v6, sexp:Lgnu/expr/SetExp;
    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setLine(Lgnu/expr/Compilation;)V

    .line 339
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 340
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v6

    .line 342
    .local v6, formsStart:I
    const-wide/32 v10, 0x20000000

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 345
    if-eqz v13, :cond_9

    .line 346
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 348
    :cond_9
    const-wide/16 v10, 0x2000

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    move v10, v6

    .line 351
    .end local v6           #formsStart:I
    .local v10, formsStart:I
    :goto_5
    iget-object v6, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_a

    .line 353
    iget-object v6, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, fname:Ljava/lang/String;
    const-string v11, "$instance"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #fname:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 356
    move-object v0, v9

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 p0, v0

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local p0, instanceField:Lgnu/bytecode/Field;
    move v6, v10

    .end local v10           #formsStart:I
    .local v6, formsStart:I
    move-object/from16 v10, p0

    .end local p0           #instanceField:Lgnu/bytecode/Field;
    .local v10, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, p1

    .line 357
    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    goto/16 :goto_3

    .line 368
    .end local v6           #formsStart:I
    .local v10, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_a
    iget-object v6, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_b

    iget-object v6, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "$instance"

    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    .line 372
    .local v6, isImportedInstance:Z
    :goto_6
    invoke-virtual {v15, v9}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v11

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v11

    .line 373
    .local v11, old:Lgnu/expr/Declaration;
    if-eqz v6, :cond_11

    .line 375
    if-eqz v11, :cond_c

    move v6, v10

    .end local v10           #formsStart:I
    .local v6, formsStart:I
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move-object v10, v12

    .line 376
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v10, instanceField:Lgnu/bytecode/Field;
    goto/16 :goto_3

    .line 368
    .end local v6           #formsStart:I
    .end local v11           #old:Lgnu/expr/Declaration;
    .local v10, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 377
    .local v6, isImportedInstance:Z
    .restart local v11       #old:Lgnu/expr/Declaration;
    :cond_c
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 378
    .local p0, adecl:Lgnu/expr/Declaration;
    const-wide/32 v19, 0x40004000

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 380
    invoke-virtual {v9}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    .end local v11           #old:Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 381
    const-wide/16 v19, 0x2000

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 405
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 406
    new-instance v11, Lgnu/expr/ReferenceExp;

    invoke-direct {v11, v9}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 407
    .local v11, fref:Lgnu/expr/ReferenceExp;
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 408
    if-nez v6, :cond_d

    .line 410
    const/16 v19, 0x1

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 411
    if-nez v16, :cond_d

    .line 412
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 415
    :cond_d
    const-wide/16 v19, 0x4000

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 416
    const-wide/32 v19, 0x8000

    move-object v0, v9

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 417
    const-wide/32 v19, 0x8000

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 418
    :cond_e
    invoke-virtual {v9}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 419
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 420
    :cond_f
    if-eqz v14, :cond_10

    .line 421
    const-wide/16 v19, 0x800

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 423
    :cond_10
    new-instance v14, Lgnu/expr/SetExp;

    .end local v14           #isStatic:Z
    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 424
    .local v14, sexp:Lgnu/expr/SetExp;
    const-wide/32 v19, 0x20000000

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 425
    const/16 v19, 0x1

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 426
    if-eqz v6, :cond_15

    .line 432
    move-object/from16 v0, p3

    move-object v1, v14

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 433
    add-int/lit8 v6, v10, 0x1

    .line 438
    .end local v10           #formsStart:I
    .local v6, formsStart:I
    :goto_8
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v7, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 441
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 442
    const-wide/32 v10, 0x20000

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 443
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    move-object v10, v12

    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v10, instanceField:Lgnu/bytecode/Field;
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    goto/16 :goto_3

    .line 383
    .local v6, isImportedInstance:Z
    .local v10, formsStart:I
    .local v11, old:Lgnu/expr/Declaration;
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local v14, isStatic:Z
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_11
    if-eqz v11, :cond_12

    const-wide/16 v19, 0x200

    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v19

    if-nez v19, :cond_12

    invoke-static {v11}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v19

    invoke-static {v9}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    move v6, v10

    .end local v10           #formsStart:I
    .local v6, formsStart:I
    move-object/from16 p0, p1

    .end local p1           #decl:Lgnu/expr/Declaration;
    .local p0, decl:Lgnu/expr/Declaration;
    move-object v10, v12

    .line 387
    .end local v12           #instanceField:Lgnu/bytecode/Field;
    .local v10, instanceField:Lgnu/bytecode/Field;
    goto/16 :goto_3

    .line 390
    .local v6, isImportedInstance:Z
    .local v10, formsStart:I
    .restart local v12       #instanceField:Lgnu/bytecode/Field;
    .local p0, aname:Lgnu/mapping/Symbol;
    .restart local p1       #decl:Lgnu/expr/Declaration;
    :cond_12
    if-eqz v11, :cond_14

    const-wide/32 v19, 0x10200

    move-object v0, v11

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 393
    const/16 p0, 0x0

    const-wide/32 v19, 0x10200

    move-object v0, v11

    move/from16 v1, p0

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 394
    .end local p0           #aname:Lgnu/mapping/Symbol;
    move-object/from16 p0, v11

    .line 402
    .local p0, adecl:Lgnu/expr/Declaration;
    :cond_13
    :goto_9
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 403
    .end local v11           #old:Lgnu/expr/Declaration;
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    goto/16 :goto_7

    .line 398
    .restart local v11       #old:Lgnu/expr/Declaration;
    .local p0, aname:Lgnu/mapping/Symbol;
    :cond_14
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 399
    .local p0, adecl:Lgnu/expr/Declaration;
    if-eqz v11, :cond_13

    .line 400
    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_9

    .line 436
    .local v11, fref:Lgnu/expr/ReferenceExp;
    .local v14, sexp:Lgnu/expr/SetExp;
    :cond_15
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v6, v10

    .end local v10           #formsStart:I
    .local v6, formsStart:I
    goto/16 :goto_8

    .line 448
    .end local v11           #fref:Lgnu/expr/ReferenceExp;
    .end local v14           #sexp:Lgnu/expr/SetExp;
    .end local p0           #adecl:Lgnu/expr/Declaration;
    .local v6, decl:Lgnu/expr/Declaration;
    .local p1, formsStart:I
    :cond_16
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    .line 449
    .local v10, ndecls:I
    const/16 p0, 0x0

    .local p0, i:I
    move/from16 v9, p0

    .end local p0           #i:I
    .end local p1           #formsStart:I
    .end local p2
    .local v9, i:I
    :goto_a
    if-ge v9, v10, :cond_18

    .line 451
    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Declaration;

    .line 452
    .local p0, adecl:Lgnu/expr/Declaration;
    add-int/lit8 p1, v9, 0x1

    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Declaration;

    .line 453
    .local p1, fdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p2

    .line 454
    .local p2, fval:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result p1

    .end local p1           #fdecl:Lgnu/expr/Declaration;
    if-eqz p1, :cond_17

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 p1, v0

    if-eqz p1, :cond_17

    .line 456
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #adecl:Lgnu/expr/Declaration;
    check-cast p0, Lgnu/expr/ReferenceExp;

    .line 457
    .local p0, aref:Lgnu/expr/ReferenceExp;
    check-cast p2, Lgnu/expr/ReferenceExp;

    .end local p2           #fval:Lgnu/expr/Expression;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    .line 458
    .local p1, xdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 459
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 p1, v0

    .end local p1           #xdecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v11, 0x2e

    const/16 v14, 0x24

    move-object/from16 v0, p1

    move v1, v11

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "$instance"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    .local p1, iname:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object p1

    .end local p1           #iname:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 465
    .local p1, cdecl:Lgnu/expr/Declaration;
    const-wide/16 v14, 0x400

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 466
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 449
    .end local p0           #aref:Lgnu/expr/ReferenceExp;
    .end local p1           #cdecl:Lgnu/expr/Declaration;
    :cond_17
    add-int/lit8 p0, v9, 0x2

    .end local v9           #i:I
    .local p0, i:I
    move/from16 v9, p0

    .end local p0           #i:I
    .restart local v9       #i:I
    goto/16 :goto_a

    .line 471
    :cond_18
    if-eqz v13, :cond_1b

    .line 473
    sget-object p0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string p1, "run"

    const/16 p2, 0x0

    invoke-virtual/range {p0 .. p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p4

    .line 474
    .local p4, run:Lgnu/bytecode/Method;
    if-eqz v6, :cond_19

    .line 475
    new-instance p0, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .end local v8           #dofind:Lgnu/expr/Expression;
    .local p0, dofind:Lgnu/expr/Expression;
    move-object/from16 p1, p0

    .end local p0           #dofind:Lgnu/expr/Expression;
    .local p1, dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v5

    .line 485
    .end local v5           #args:[Lgnu/expr/Expression;
    .local p0, args:[Lgnu/expr/Expression;
    :goto_b
    new-instance p2, Lgnu/expr/ApplyExp;

    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .end local v6           #decl:Lgnu/expr/Declaration;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 486
    .end local p1           #dofind:Lgnu/expr/Expression;
    .local p2, dofind:Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 487
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 p1, p2

    .line 490
    .end local p2           #dofind:Lgnu/expr/Expression;
    .end local p4           #run:Lgnu/bytecode/Method;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    :goto_c
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 478
    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v6       #decl:Lgnu/expr/Declaration;
    .restart local v8       #dofind:Lgnu/expr/Expression;
    .restart local p4       #run:Lgnu/bytecode/Method;
    :cond_19
    if-eqz v12, :cond_1a

    .line 480
    const/16 p0, 0x2

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    new-instance p2, Lgnu/expr/QuoteExp;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p0, p1

    const/16 p1, 0x1

    new-instance p2, Lgnu/expr/QuoteExp;

    const-string v5, "$instance"

    .end local v5           #args:[Lgnu/expr/Expression;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p0, p1

    .line 482
    .restart local p0       #args:[Lgnu/expr/Expression;
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object p2, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .end local v8           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    goto :goto_b

    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v8       #dofind:Lgnu/expr/Expression;
    :cond_1a
    move-object/from16 p1, v8

    .end local v8           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v5

    .end local v5           #args:[Lgnu/expr/Expression;
    .restart local p0       #args:[Lgnu/expr/Expression;
    goto :goto_b

    .end local p0           #args:[Lgnu/expr/Expression;
    .end local p1           #dofind:Lgnu/expr/Expression;
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v8       #dofind:Lgnu/expr/Expression;
    .local p4, defs:Lgnu/expr/ScopeExp;
    :cond_1b
    move-object/from16 p1, v8

    .end local v8           #dofind:Lgnu/expr/Expression;
    .restart local p1       #dofind:Lgnu/expr/Expression;
    move-object/from16 p0, v5

    .end local v5           #args:[Lgnu/expr/Expression;
    .restart local p0       #args:[Lgnu/expr/Expression;
    goto :goto_c

    .end local v10           #ndecls:I
    .restart local v5       #args:[Lgnu/expr/Expression;
    .restart local v8       #dofind:Lgnu/expr/Expression;
    .local v9, fdecl:Lgnu/expr/Declaration;
    .local v14, isStatic:Z
    .local p0, aname:Lgnu/mapping/Symbol;
    .local p1, formsStart:I
    .local p2, renamer:Lgnu/mapping/Procedure;
    :cond_1c
    move/from16 v10, p1

    .end local p1           #formsStart:I
    .local v10, formsStart:I
    move-object/from16 p1, v6

    .end local v6           #decl:Lgnu/expr/Declaration;
    .local p1, decl:Lgnu/expr/Declaration;
    goto/16 :goto_5
.end method

.method public static lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;
    .locals 3
    .parameter "sourceName"
    .parameter "defs"

    .prologue
    .line 214
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v1

    .line 215
    .local v1, manager:Lgnu/expr/ModuleManager;
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, baseName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 217
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 218
    :cond_0
    invoke-virtual {v1, p0}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    return-object v2
.end method

.method static map(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "featureName"
    .parameter "className"

    .prologue
    .line 63
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static mapFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "featureName"

    .prologue
    .line 108
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 120
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 122
    const/4 v3, 0x2

    move-object/from16 v0, p4

    move v1, v3

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setState(I)V

    .line 123
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 126
    const/4 v3, 0x1

    .line 209
    .end local p0
    :goto_0
    return v3

    .line 128
    .restart local p0
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/Pair;

    .line 129
    .local v11, args:Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 130
    .local v13, name:Ljava/lang/Object;
    const/16 v16, 0x0

    .line 132
    .local v16, type:Lgnu/bytecode/Type;
    instance-of v3, v13, Lgnu/lists/Pair;

    if-eqz v3, :cond_5

    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    .local v14, p:Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "quote"

    move-object/from16 v0, p4

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    .line 136
    instance-of v3, v13, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_1

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-nez v3, :cond_2

    .line 140
    :cond_1
    const/16 v3, 0x65

    const-string v4, "invalid quoted symbol for \'require\'"

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 141
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkawa/standard/require;->mapFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, name:Ljava/lang/String;
    if-nez v13, :cond_3

    .line 146
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown feature name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for \'require\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 147
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 149
    :cond_3
    check-cast v13, Ljava/lang/String;

    .end local v13           #name:Ljava/lang/String;
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v16

    .line 192
    .end local v14           #p:Lgnu/lists/Pair;
    .end local p0
    :cond_4
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v3, v0

    if-nez v3, :cond_9

    .line 194
    const/16 v3, 0x65

    const-string v4, "invalid specifier for \'require\'"

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 195
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 151
    .local v13, name:Ljava/lang/Object;
    .restart local p0
    :cond_5
    instance-of v3, v13, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 158
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, sourceName:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 160
    .local v4, info:Lgnu/expr/ModuleInfo;
    if-nez v4, :cond_6

    .line 162
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 163
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 165
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v3

    goto/16 :goto_0

    .line 167
    .end local v4           #info:Lgnu/expr/ModuleInfo;
    .end local v15           #sourceName:Ljava/lang/String;
    :cond_7
    instance-of v3, v13, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_4

    move-object/from16 v0, p4

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 169
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object v1, v13

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v16

    .line 170
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v3, v0

    if-eqz v3, :cond_4

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_4

    .line 172
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual/range {p0 .. p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 173
    instance-of v3, v13, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 180
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 181
    .restart local v15       #sourceName:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 182
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    if-nez v4, :cond_8

    .line 184
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #info:Lgnu/expr/ModuleInfo;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 185
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 187
    .restart local v4       #info:Lgnu/expr/ModuleInfo;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v3

    goto/16 :goto_0

    .line 200
    .end local v4           #info:Lgnu/expr/ModuleInfo;
    .end local v13           #name:Ljava/lang/Object;
    .end local v15           #sourceName:Ljava/lang/String;
    :cond_9
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 207
    .local v6, minfo:Lgnu/expr/ModuleInfo;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 209
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 202
    .end local v6           #minfo:Lgnu/expr/ModuleInfo;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 204
    .local v12, ex:Ljava/lang/Exception;
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 205
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
