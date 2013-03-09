.class public Lkawa/lang/AutoloadSyntax;
.super Lkawa/lang/Syntax;
.source "AutoloadSyntax.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field className:Ljava/lang/String;

.field env:Lgnu/mapping/Environment;

.field loaded:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "className"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 0
    .parameter "name"
    .parameter "className"
    .parameter "env"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkawa/lang/AutoloadSyntax;->env:Lgnu/mapping/Environment;

    .line 43
    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"

    .prologue
    .line 72
    new-instance v0, Lkawa/lang/GenericError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while autoloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method load()V
    .locals 6

    .prologue
    .line 80
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, name:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lkawa/lang/Syntax;

    if-eqz v4, :cond_1

    .line 86
    check-cast v3, Lkawa/lang/Syntax;

    .end local v3           #value:Ljava/lang/Object;
    iput-object v3, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    .line 87
    if-eqz v2, :cond_0

    iget-object v4, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v4}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v4, v2}, Lkawa/lang/Syntax;->setName(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v3       #value:Ljava/lang/Object;
    :cond_1
    const-string v4, "failed to autoload valid syntax object "

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lgnu/mapping/WrongArguments; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 93
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 94
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v4, "failed to find class "

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 96
    .local v1, ex:Ljava/lang/InstantiationException;
    const-string v4, "failed to instantiate class "

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v1           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 98
    .local v1, ex:Ljava/lang/IllegalAccessException;
    const-string v4, "illegal access in class "

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 100
    .local v0, e:Lgnu/mapping/UnboundLocationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing symbol \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0           #e:Lgnu/mapping/UnboundLocationException;
    :catch_4
    move-exception v4

    move-object v1, v4

    .line 102
    .local v1, ex:Lgnu/mapping/WrongArguments;
    const-string v4, "type error"

    invoke-direct {p0, v4}, Lkawa/lang/AutoloadSyntax;->throw_error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 47
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
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
    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkawa/lang/AutoloadSyntax;->setName(Ljava/lang/String;)V

    .line 161
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 3
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 124
    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v2, :cond_0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Lkawa/lang/GenericError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/mapping/WrongType; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    iget-object v1, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 140
    .local v1, saveSyntax:Lkawa/lang/Syntax;
    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    iput-object v2, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 143
    :try_start_1
    iget-object v2, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v2, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 147
    iput-object v1, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .end local v1           #saveSyntax:Lkawa/lang/Syntax;
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Lkawa/lang/GenericError;
    invoke-virtual {v0}, Lkawa/lang/GenericError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v0           #e:Lkawa/lang/GenericError;
    :catch_1
    move-exception v0

    .line 136
    .local v0, e:Lgnu/mapping/WrongType;
    invoke-virtual {v0}, Lgnu/mapping/WrongType;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    .line 147
    .end local v0           #e:Lgnu/mapping/WrongType;
    .restart local v1       #saveSyntax:Lkawa/lang/Syntax;
    :catchall_0
    move-exception v2

    iput-object v1, p2, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw v2
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 2
    .parameter "st"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 107
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-nez v1, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->load()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    invoke-virtual {v1, p1, p2, p3}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 53
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "#<syntax "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    :cond_0
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->loaded:Lkawa/lang/Syntax;

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "autoloaded>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    :cond_1
    const-string v1, "autoload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-object v1, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
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
    .line 153
    invoke-virtual {p0}, Lkawa/lang/AutoloadSyntax;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lkawa/lang/AutoloadSyntax;->className:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 155
    return-void
.end method
