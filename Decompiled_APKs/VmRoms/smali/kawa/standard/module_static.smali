.class public Lkawa/standard/module_static;
.super Lkawa/lang/Syntax;
.source "module_static.java"


# static fields
.field public static final module_static:Lkawa/standard/module_static;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/module_static;

    invoke-direct {v0}, Lkawa/standard/module_static;-><init>()V

    sput-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    .line 11
    sget-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    const-string v1, "module-static"

    invoke-virtual {v0, v1}, Lkawa/standard/module_static;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 80
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

    const/4 v12, 0x0

    const/high16 v11, 0x1

    const v10, 0x8000

    const/16 v9, 0x65

    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 17
    .local v4, list:Ljava/lang/Object;
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move v7, v0

    if-nez v7, :cond_0

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' not at module level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    move v1, v9

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v7, v13

    .line 75
    :goto_0
    return v7

    .line 22
    :cond_0
    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object v5, v0

    .line 23
    .local v5, mexp:Lgnu/expr/ModuleExp;
    instance-of v7, v4, Lgnu/lists/Pair;

    if-eqz v7, :cond_4

    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    .line 27
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_3

    .line 28
    invoke-virtual {v5, v11}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v5, v11}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v10}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const-string v7, "inconsistent module-static specifiers"

    move-object/from16 v0, p4

    move v1, v9

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    :cond_2
    move v7, v13

    .line 75
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {v5, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_1

    .line 32
    :cond_4
    instance-of v7, v4, Lgnu/lists/Pair;

    if-eqz v7, :cond_6

    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/Pair;

    .restart local p1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "quote"

    move-object/from16 v0, p4

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 37
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/Pair;

    .restart local p1
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v7, :cond_5

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/mapping/SimpleSymbol;

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "init-run"

    if-ne v7, v8, :cond_5

    .line 42
    invoke-virtual {v5, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 43
    const/high16 v7, 0x4

    invoke-virtual {v5, v7}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_1

    .line 47
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid quoted symbol for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    move v1, v9

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v7, v12

    .line 48
    goto/16 :goto_0

    .line 53
    :cond_6
    invoke-virtual {v5, v11}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 56
    :goto_2
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v4, v7, :cond_1

    .line 58
    instance-of v7, v4, Lgnu/lists/Pair;

    if-eqz v7, :cond_7

    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-nez v7, :cond_8

    .line 61
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid syntax in \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    move v1, v9

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v7, v12

    .line 62
    goto/16 :goto_0

    .line 64
    :cond_8
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/Symbol;

    .line 65
    .local v6, symbol:Lgnu/mapping/Symbol;
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 66
    .local v3, decl:Lgnu/expr/Declaration;
    const-wide/16 v7, 0x200

    invoke-virtual {v3, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 67
    invoke-static {v3, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 68
    :cond_9
    const-wide/16 v7, 0x800

    invoke-virtual {v3, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 69
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 70
    goto :goto_2
.end method
