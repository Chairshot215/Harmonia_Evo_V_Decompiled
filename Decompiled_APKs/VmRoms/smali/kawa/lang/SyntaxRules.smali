.class public Lkawa/lang/SyntaxRules;
.super Lgnu/mapping/Procedure1;
.source "SyntaxRules.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field literal_identifiers:[Ljava/lang/Object;

.field maxVars:I

.field rules:[Lkawa/lang/SyntaxRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 22
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 26
    .parameter "literal_identifiers"
    .parameter "srules"
    .parameter "tr"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 36
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 37
    invoke-static/range {p2 .. p2}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v15

    .line 38
    .local v15, rules_count:I
    if-gez v15, :cond_0

    .line 40
    const/4 v15, 0x0

    .line 41
    const-string v9, "missing or invalid syntax-rules"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 43
    :cond_0
    new-array v9, v15, [Lkawa/lang/SyntaxRule;

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 46
    const/16 v17, 0x0

    .line 47
    .local v17, rules_syntax:Lkawa/lang/SyntaxForm;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v15, :cond_a

    .line 49
    :goto_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v9, v0

    if-eqz v9, :cond_1

    .line 51
    move-object/from16 v0, p2

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v17, v0

    .line 52
    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 54
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v16, v0

    .line 57
    .local v16, rules_pair:Lgnu/lists/Pair;
    move-object/from16 v14, v17

    .line 58
    .local v14, rule_syntax:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    .line 59
    .local v22, syntax_rule:Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v9, v0

    if-eqz v9, :cond_2

    .line 61
    move-object/from16 v0, v22

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v14, v0

    .line 62
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v22

    goto :goto_2

    .line 64
    :cond_2
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move v9, v0

    if-nez v9, :cond_4

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing pattern in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'th syntax rule"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 153
    .end local v14           #rule_syntax:Lkawa/lang/SyntaxForm;
    .end local v16           #rules_pair:Lgnu/lists/Pair;
    .end local v22           #syntax_rule:Ljava/lang/Object;
    :cond_3
    :goto_3
    return-void

    .line 70
    .restart local v14       #rule_syntax:Lkawa/lang/SyntaxForm;
    .restart local v16       #rules_pair:Lgnu/lists/Pair;
    .restart local v22       #syntax_rule:Ljava/lang/Object;
    :cond_4
    move-object v8, v14

    .line 71
    .local v8, pattern_syntax:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v22

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v23, v0

    .line 72
    .local v23, syntax_rule_pair:Lgnu/lists/Pair;
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 74
    .local v7, pattern:Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v19

    .line 75
    .local v19, save_filename:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v20

    .line 76
    .local v20, save_line:I
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v18

    .line 81
    .local v18, save_column:I
    move-object/from16 v25, v14

    .line 82
    .local v25, template_syntax:Lkawa/lang/SyntaxForm;
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 83
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    .line 84
    :goto_4
    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v9, v0

    if-eqz v9, :cond_5

    .line 86
    move-object/from16 v0, v22

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v25, v0

    .line 87
    invoke-interface/range {v25 .. v25}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v22

    goto :goto_4

    .line 89
    :cond_5
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move v9, v0

    if-nez v9, :cond_6

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing template in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'th syntax rule"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto :goto_3

    .line 94
    :cond_6
    :try_start_1
    move-object/from16 v0, v22

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v23, v0

    .line 95
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_7

    .line 97
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "junk after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'th syntax rule"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 100
    :cond_7
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    .line 102
    .local v24, template:Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v13

    .line 103
    .local v13, patternScope:Lkawa/lang/PatternScope;
    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    :goto_5
    instance-of v9, v7, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_8

    .line 107
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v8, v0

    .line 108
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_5

    .line 111
    :cond_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v6, programbuf:Ljava/lang/StringBuffer;
    instance-of v9, v7, Lgnu/lists/Pair;

    if-eqz v9, :cond_9

    .line 118
    const/4 v10, 0x0

    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, p1, v10

    .line 120
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    .line 121
    .local v12, p:Lgnu/lists/Pair;
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    const/16 v9, 0x18

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 131
    new-instance v5, Lkawa/lang/SyntaxPattern;

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 134
    .local v5, spattern:Lkawa/lang/SyntaxPattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object v9, v0

    new-instance v10, Lkawa/lang/SyntaxRule;

    move-object v0, v10

    move-object v1, v5

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    aput-object v10, v9, v11

    .line 137
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->pop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 47
    add-int/lit8 v11, v11, 0x1

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    .line 128
    .end local v5           #spattern:Lkawa/lang/SyntaxPattern;
    .end local v12           #p:Lgnu/lists/Pair;
    :cond_9
    :try_start_3
    const-string v9, "pattern does not start with name"

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_3

    .end local v6           #programbuf:Ljava/lang/StringBuffer;
    .end local v13           #patternScope:Lkawa/lang/PatternScope;
    .end local v24           #template:Ljava/lang/Object;
    :catchall_0
    move-exception v9

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v9

    .line 147
    .end local v7           #pattern:Ljava/lang/Object;
    .end local v8           #pattern_syntax:Lkawa/lang/SyntaxForm;
    .end local v14           #rule_syntax:Lkawa/lang/SyntaxForm;
    .end local v16           #rules_pair:Lgnu/lists/Pair;
    .end local v18           #save_column:I
    .end local v19           #save_filename:Ljava/lang/String;
    .end local v20           #save_line:I
    .end local v22           #syntax_rule:Ljava/lang/Object;
    .end local v23           #syntax_rule_pair:Lgnu/lists/Pair;
    .end local v25           #template_syntax:Lkawa/lang/SyntaxForm;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object v9, v0

    array-length v11, v9

    :cond_b
    :goto_6
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    move-object v9, v0

    aget-object v9, v9, v11

    iget-object v9, v9, Lkawa/lang/SyntaxRule;->patternNesting:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    .line 150
    .local v21, size:I
    move-object/from16 v0, p0

    iget v0, v0, Lkawa/lang/SyntaxRules;->maxVars:I

    move v9, v0

    move/from16 v0, v21

    move v1, v9

    if-le v0, v1, :cond_b

    .line 151
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    goto :goto_6
.end method

.method public constructor <init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V
    .locals 1
    .parameter "literal_identifiers"
    .parameter "rules"
    .parameter "maxVars"

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 28
    iput-object p1, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 30
    iput p3, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 31
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg"

    .prologue
    .line 165
    instance-of v4, p1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v2, v0

    .line 168
    .local v2, sf:Lkawa/lang/SyntaxForm;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    check-cast v3, Lkawa/lang/Translator;

    .line 169
    .local v3, tr:Lkawa/lang/Translator;
    invoke-virtual {v3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    .line 170
    .local v1, save_scope:Lgnu/expr/ScopeExp;
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 173
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 177
    invoke-virtual {v3, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 181
    .end local v1           #save_scope:Lgnu/expr/ScopeExp;
    .end local v2           #sf:Lkawa/lang/SyntaxForm;
    .end local v3           #tr:Lkawa/lang/Translator;
    :goto_0
    return-object v4

    .line 177
    .restart local v1       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v2       #sf:Lkawa/lang/SyntaxForm;
    .restart local v3       #tr:Lkawa/lang/Translator;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v4

    .line 181
    .end local v1           #save_scope:Lgnu/expr/ScopeExp;
    .end local v2           #sf:Lkawa/lang/SyntaxForm;
    .end local v3           #tr:Lkawa/lang/Translator;
    :cond_0
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v4

    check-cast v4, Lkawa/lang/Translator;

    invoke-virtual {p0, p1, v4}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 10
    .parameter "obj"
    .parameter "tr"

    .prologue
    const/4 v9, 0x0

    .line 206
    iget v7, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    new-array v6, v7, [Ljava/lang/Object;

    .line 207
    .local v6, vars:[Ljava/lang/Object;
    invoke-virtual {p2}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v2

    check-cast v2, Lkawa/lang/Macro;

    .line 212
    .local v2, macro:Lkawa/lang/Macro;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 214
    iget-object v7, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    aget-object v5, v7, v1

    .line 215
    .local v5, rule:Lkawa/lang/SyntaxRule;
    if-nez v5, :cond_0

    .line 216
    new-instance v7, Lgnu/expr/ErrorExp;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error defining "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    .line 272
    .end local v5           #rule:Lkawa/lang/SyntaxRule;
    :goto_1
    return-object v7

    .line 218
    .restart local v5       #rule:Lkawa/lang/SyntaxRule;
    :cond_0
    iget-object v4, v5, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 219
    .local v4, pattern:Lkawa/lang/Pattern;
    invoke-virtual {v4, p1, v6, v9}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    .line 220
    .local v3, matched:Z
    if-eqz v3, :cond_1

    .line 250
    invoke-static {p2}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v7

    invoke-virtual {v5, v6, p2, v7}, Lkawa/lang/SyntaxRule;->execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .local v0, expansion:Ljava/lang/Object;
    move-object v7, v0

    .line 264
    goto :goto_1

    .line 212
    .end local v0           #expansion:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v3           #matched:Z
    .end local v4           #pattern:Lkawa/lang/Pattern;
    .end local v5           #rule:Lkawa/lang/SyntaxRule;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no matching syntax-rule for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 278
    const-string v0, "#<macro "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 280
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 281
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 298
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkawa/lang/SyntaxRule;

    check-cast v0, [Lkawa/lang/SyntaxRule;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 299
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 300
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 291
    iget v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 292
    return-void
.end method
