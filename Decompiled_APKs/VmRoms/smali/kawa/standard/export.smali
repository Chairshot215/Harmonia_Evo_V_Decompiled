.class public Lkawa/standard/export;
.super Lkawa/lang/Syntax;
.source "export.java"


# static fields
.field public static final export:Lkawa/standard/export;

.field public static final module_export:Lkawa/standard/export;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lkawa/standard/export;

    invoke-direct {v0}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    .line 9
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string v1, "module-export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lkawa/standard/export;

    invoke-direct {v0}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->export:Lkawa/standard/export;

    .line 12
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string v1, "export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 14
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v13, 0x1

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 18
    .local v4, list:Ljava/lang/Object;
    move-object/from16 v0, p4

    move-object v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 21
    .local v7, savePos:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move v10, v0

    if-eqz v10, :cond_0

    .line 22
    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object v10, v0

    const/16 v11, 0x4000

    invoke-virtual {v10, v11}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 28
    const/4 v6, 0x0

    .line 29
    .local v6, restSyntax:Lkawa/lang/SyntaxForm;
    :goto_0
    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v10, :cond_8

    .line 31
    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_1
    instance-of v10, v4, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_1

    .line 34
    move-object v0, v4

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v6, v0

    .line 35
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 25
    .end local v6           #restSyntax:Lkawa/lang/SyntaxForm;
    :cond_0
    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' not at module level"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    move v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v10, v13

    :goto_2
    return v10

    .line 37
    .restart local v6       #restSyntax:Lkawa/lang/SyntaxForm;
    :cond_1
    move-object v5, v6

    .line 38
    .local v5, nameSyntax:Lkawa/lang/SyntaxForm;
    :try_start_1
    instance-of v10, v4, Lgnu/lists/Pair;

    if-eqz v10, :cond_7

    .line 40
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    .line 41
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 42
    .local v9, symbol:Ljava/lang/Object;
    :goto_3
    instance-of v10, v9, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_2

    .line 44
    move-object v0, v9

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v5, v0

    .line 45
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 47
    :cond_2
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 49
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 50
    .local v8, str:Ljava/lang/String;
    const-string v10, "namespace:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 52
    const/16 v10, 0x77

    const-string v11, "\'namespace:\' prefix ignored"

    move-object/from16 v0, p4

    move v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 56
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/Object;
    :cond_3
    instance-of v10, v9, Ljava/lang/String;

    if-nez v10, :cond_4

    instance-of v10, v9, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_7

    .line 59
    :cond_4
    if-eqz v5, :cond_5

    .line 64
    :cond_5
    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 65
    .local v3, decl:Lgnu/expr/Declaration;
    const-wide/16 v10, 0x200

    invoke-virtual {v3, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 66
    invoke-static {v3, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 67
    :cond_6
    const-wide/16 v10, 0x400

    invoke-virtual {v3, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 68
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 69
    goto/16 :goto_0

    .line 72
    .end local v3           #decl:Lgnu/expr/Declaration;
    :cond_7
    const/16 v10, 0x65

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid syntax in \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x27

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    move v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v10, 0x0

    .line 79
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v5           #nameSyntax:Lkawa/lang/SyntaxForm;
    :cond_8
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v10, v13

    goto/16 :goto_2

    .end local v6           #restSyntax:Lkawa/lang/SyntaxForm;
    :catchall_0
    move-exception v10

    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v10
.end method
