.class public abstract Lkawa/lang/Syntax;
.super Ljava/lang/Object;
.source "Syntax.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Lgnu/mapping/Named;


# instance fields
.field name:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lkawa/lang/Syntax;->setName(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 87
    const-string v1, "#<syntax "

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "<unnamed>"

    :goto_0
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x3e

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 91
    return-void

    :cond_0
    move-object v1, v0

    .line 89
    goto :goto_0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "rewrite method not defined"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 60
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Syntax;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public rewriteForm(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 52
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-list form for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 1
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 81
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 5
    .parameter "st"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 65
    iget-object v1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p0, p1, v1, p2, p3}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    .line 66
    .local v0, ok:Z
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v2, Lgnu/expr/ErrorExp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error expanding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/Object;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 25
    iput-object p1, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 26
    iput-object p1, p0, Lkawa/lang/Syntax;->name:Ljava/lang/Object;

    return-void
.end method
