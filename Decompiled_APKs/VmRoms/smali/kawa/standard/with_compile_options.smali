.class public Lkawa/standard/with_compile_options;
.super Lkawa/lang/Syntax;
.source "with_compile_options.java"


# static fields
.field public static final with_compile_options:Lkawa/standard/with_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/with_compile_options;

    invoke-direct {v0}, Lkawa/standard/with_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    .line 11
    sget-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    const-string v1, "with-compile-options"

    invoke-virtual {v0, v1}, Lkawa/standard/with_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 12
    .parameter "form"
    .parameter "stack"
    .parameter "command"
    .parameter "tr"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, seenKey:Z
    iget-object v3, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    .line 35
    .local v3, options:Lgnu/text/Options;
    const/4 v2, 0x0

    .local v2, syntax:Lkawa/lang/SyntaxForm;
    move-object v7, v2

    .end local v2           #syntax:Lkawa/lang/SyntaxForm;
    .local v7, syntax:Lkawa/lang/SyntaxForm;
    move v4, v1

    .line 38
    .end local v1           #seenKey:Z
    .local v4, seenKey:Z
    :goto_0
    instance-of v1, p0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v1, v0

    .line 41
    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .local v1, syntax:Lkawa/lang/SyntaxForm;
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    move-object v7, v1

    .end local v1           #syntax:Lkawa/lang/SyntaxForm;
    .restart local v7       #syntax:Lkawa/lang/SyntaxForm;
    goto :goto_0

    .line 43
    :cond_0
    instance-of v1, p0, Lgnu/lists/Pair;

    if-nez v1, :cond_3

    .line 97
    :cond_1
    if-nez v4, :cond_2

    .line 98
    const/16 p1, 0x65

    new-instance v1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no option keyword in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 99
    :cond_2
    invoke-static {p0, v7}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    move-object p1, v7

    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .local p1, syntax:Lkawa/lang/SyntaxForm;
    move-object p2, p0

    move p0, v4

    .end local v3           #options:Lgnu/text/Options;
    .end local v4           #seenKey:Z
    .local p0, seenKey:Z
    :goto_1
    return-object p2

    .line 45
    .restart local v3       #options:Lgnu/text/Options;
    .restart local v4       #seenKey:Z
    .restart local v7       #syntax:Lkawa/lang/SyntaxForm;
    .local p0, form:Ljava/lang/Object;
    .local p1, stack:Ljava/util/Stack;
    .restart local p2
    :cond_3
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 46
    .local v2, pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, pair_car:Ljava/lang/Object;
    instance-of v5, v1, Lgnu/expr/Keyword;

    if-eqz v5, :cond_1

    .line 49
    check-cast v1, Lgnu/expr/Keyword;

    .end local v1           #pair_car:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x1

    .line 51
    .end local v4           #seenKey:Z
    .local v6, seenKey:Z
    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 54
    .local v5, savePos:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 55
    :goto_2
    instance-of v4, p0, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_4

    .line 57
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .local v4, syntax:Lkawa/lang/SyntaxForm;
    :try_start_1
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object p0

    move-object v7, v4

    .end local v4           #syntax:Lkawa/lang/SyntaxForm;
    .restart local v7       #syntax:Lkawa/lang/SyntaxForm;
    goto :goto_2

    .line 60
    :cond_4
    :try_start_2
    instance-of v4, p0, Lgnu/lists/Pair;

    if-nez v4, :cond_5

    .line 62
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1           #stack:Ljava/util/Stack;
    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword "

    .end local v3           #options:Lgnu/text/Options;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " not followed by value"

    .end local v1           #key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 63
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .end local p0           #form:Ljava/lang/Object;
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object p1, v7

    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .local p1, syntax:Lkawa/lang/SyntaxForm;
    move-object p2, p0

    move p0, v6

    .end local v6           #seenKey:Z
    .local p0, seenKey:Z
    goto :goto_1

    .line 65
    .restart local v1       #key:Ljava/lang/String;
    .restart local v3       #options:Lgnu/text/Options;
    .restart local v6       #seenKey:Z
    .restart local v7       #syntax:Lkawa/lang/SyntaxForm;
    .local p0, form:Ljava/lang/Object;
    .local p1, stack:Ljava/util/Stack;
    .restart local p2
    :cond_5
    :try_start_3
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .end local v2           #pair:Lgnu/lists/Pair;
    .local v4, pair:Lgnu/lists/Pair;
    :try_start_4
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, value:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 68
    invoke-virtual {v3, v1}, Lgnu/text/Options;->getLocal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, oldValue:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v9

    if-nez v9, :cond_6

    .line 71
    const/16 v2, 0x77

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v2           #oldValue:Ljava/lang/Object;
    .end local v8           #value:Ljava/lang/Object;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown compile option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v4, v6

    .end local v6           #seenKey:Z
    .local v4, seenKey:Z
    goto/16 :goto_0

    .line 74
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #oldValue:Ljava/lang/Object;
    .local v4, pair:Lgnu/lists/Pair;
    .restart local v6       #seenKey:Z
    .restart local v8       #value:Ljava/lang/Object;
    :cond_6
    :try_start_5
    instance-of v9, v8, Lgnu/lists/FString;

    if-eqz v9, :cond_9

    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .end local v8           #value:Ljava/lang/Object;
    :cond_7
    :goto_3
    invoke-virtual {p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v9

    invoke-virtual {v3, v1, v8, v9}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 85
    if-eqz p1, :cond_8

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    :cond_8
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move v4, v6

    .line 96
    .end local v6           #seenKey:Z
    .local v4, seenKey:Z
    goto/16 :goto_0

    .line 76
    .local v4, pair:Lgnu/lists/Pair;
    .restart local v6       #seenKey:Z
    .restart local v8       #value:Ljava/lang/Object;
    :cond_9
    :try_start_6
    instance-of v9, v8, Ljava/lang/Boolean;

    if-nez v9, :cond_7

    instance-of v9, v8, Ljava/lang/Number;

    if-nez v9, :cond_7

    .line 81
    const/4 v8, 0x0

    .line 82
    const/16 v9, 0x65

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid literal value for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v9, v10}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 94
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #oldValue:Ljava/lang/Object;
    .end local v8           #value:Ljava/lang/Object;
    :catchall_0
    move-exception p1

    move-object v1, p1

    move-object p2, v7

    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .local p2, syntax:Lkawa/lang/SyntaxForm;
    move-object p1, v4

    .end local v3           #options:Lgnu/text/Options;
    .end local v4           #pair:Lgnu/lists/Pair;
    .local p1, pair:Lgnu/lists/Pair;
    :goto_4
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v1

    .end local p1           #pair:Lgnu/lists/Pair;
    .end local p2           #syntax:Lkawa/lang/SyntaxForm;
    .local v2, pair:Lgnu/lists/Pair;
    .restart local v7       #syntax:Lkawa/lang/SyntaxForm;
    :catchall_1
    move-exception p1

    move-object v1, p1

    move-object p2, v7

    .end local v7           #syntax:Lkawa/lang/SyntaxForm;
    .restart local p2       #syntax:Lkawa/lang/SyntaxForm;
    move-object p1, v2

    .end local v2           #pair:Lgnu/lists/Pair;
    .restart local p1       #pair:Lgnu/lists/Pair;
    goto :goto_4

    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #pair:Lgnu/lists/Pair;
    .restart local v3       #options:Lgnu/text/Options;
    .local v4, syntax:Lkawa/lang/SyntaxForm;
    .local p1, stack:Ljava/util/Stack;
    .local p2, command:Lkawa/lang/Syntax;
    :catchall_2
    move-exception p1

    move-object v1, p1

    move-object p2, v4

    .end local v4           #syntax:Lkawa/lang/SyntaxForm;
    .local p2, syntax:Lkawa/lang/SyntaxForm;
    move-object p1, v2

    .end local v2           #pair:Lgnu/lists/Pair;
    .local p1, pair:Lgnu/lists/Pair;
    goto :goto_4
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 106
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, obj:Ljava/lang/Object;
    instance-of v7, v2, Lgnu/lists/Pair;

    if-eqz v7, :cond_0

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .local v3, p:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Stack;

    if-eqz v7, :cond_0

    .line 111
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Stack;

    .line 112
    .local v6, stack:Ljava/util/Stack;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, rest:Ljava/lang/Object;
    iget-object v7, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v7, v6}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    .line 123
    .end local v3           #p:Lgnu/lists/Pair;
    :goto_0
    :try_start_0
    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    .line 125
    .local v5, result:Lgnu/expr/Expression;
    instance-of v7, v5, Lgnu/expr/BeginExp;

    if-eqz v7, :cond_1

    .line 126
    move-object v0, v5

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v1, v0

    .line 129
    .local v1, bresult:Lgnu/expr/BeginExp;
    :goto_1
    invoke-virtual {v1, v6}, Lgnu/expr/BeginExp;->setCompileOptions(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v7, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v7, v6}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    return-object v1

    .line 117
    .end local v1           #bresult:Lgnu/expr/BeginExp;
    .end local v4           #rest:Ljava/lang/Object;
    .end local v5           #result:Lgnu/expr/Expression;
    .end local v6           #stack:Ljava/util/Stack;
    :cond_0
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 118
    .restart local v6       #stack:Ljava/util/Stack;
    invoke-static {v2, v6, p0, p2}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #rest:Ljava/lang/Object;
    goto :goto_0

    .line 128
    .restart local v5       #result:Lgnu/expr/Expression;
    :cond_1
    :try_start_1
    new-instance v1, Lgnu/expr/BeginExp;

    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/expr/Expression;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-direct {v1, v7}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #bresult:Lgnu/expr/BeginExp;
    goto :goto_1

    .line 134
    .end local v1           #bresult:Lgnu/expr/BeginExp;
    .end local v5           #result:Lgnu/expr/Expression;
    :catchall_0
    move-exception v7

    iget-object v8, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v8, v6}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    throw v7
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 5
    .parameter "form"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 15
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 16
    .local v2, stack:Ljava/util/Stack;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2, p0, p3}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    .local v0, rest:Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v3, :cond_0

    .line 28
    .end local v0           #rest:Ljava/lang/Object;
    :goto_0
    return-void

    .line 19
    .restart local v0       #rest:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 21
    const/4 v3, 0x0

    invoke-virtual {p3, v0, p2, v3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p3, v0, p2, v3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v0

    .line 25
    .local v0, rest:Lgnu/lists/LList;
    new-instance v1, Lgnu/lists/Pair;

    invoke-direct {v1, v2, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .local v1, rest:Lgnu/lists/Pair;
    iget-object v3, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    .end local v0           #rest:Lgnu/lists/LList;
    invoke-virtual {v3, v2}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 27
    iget-object v3, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
