.class public Lgnu/expr/ExpVisitor;
.super Ljava/lang/Object;
.source "ExpVisitor.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgnu/text/SourceLocator;"
    }
.end annotation


# instance fields
.field comp:Lgnu/expr/Compilation;

.field protected currentLambda:Lgnu/expr/LambdaExp;

.field protected exitValue:Ljava/lang/Object;

.field protected messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v0, p0, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 154
    iput-object v0, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public error(CLjava/lang/String;)V
    .locals 3
    .parameter "kind"
    .parameter "message"

    .prologue
    .line 187
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/16 p1, 0x65

    .line 189
    :cond_0
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 204
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 16
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public final getCurrentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 158
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public getExitValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 203
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 18
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 209
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public noteError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .parameter "message"

    .prologue
    .line 197
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 199
    :cond_0
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setColumn(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 213
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setContext(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 33
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iput-object p1, p0, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    .line 34
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    .line 35
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 211
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 212
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 217
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 218
    return-void
.end method

.method protected update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TR;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, r:Ljava/lang/Object;,"TR;"
    return-object p1
.end method

.method public visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    .line 45
    .local v0, line:I
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 47
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, saveFile:Ljava/lang/String;
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v4

    .line 49
    .local v4, saveLine:I
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v2

    .line 50
    .local v2, saveColumn:I
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v7

    invoke-virtual {v5, v6, v0, v7}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 51
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, ret:Ljava/lang/Object;,"TR;"
    iget-object v5, p0, Lgnu/expr/ExpVisitor;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5, v3, v4, v2}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    move-object v5, v1

    .line 55
    .end local v1           #ret:Ljava/lang/Object;,"TR;"
    .end local v2           #saveColumn:I
    .end local v3           #saveFile:Ljava/lang/String;
    .end local v4           #saveLine:I
    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ApplyExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BeginExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/BlockExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ClassExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final visitDeclarationType(Lgnu/expr/Declaration;)V
    .locals 3
    .parameter "decl"

    .prologue
    .line 75
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    iget-object v0, p1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 76
    .local v0, texp1:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    .line 79
    .local v1, texp2:Lgnu/expr/Expression;
    if-eq v1, v0, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 82
    .end local v1           #texp2:Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method protected final visitDeclarationTypes(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 86
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lgnu/expr/ExpVisitor;->visitDeclarationType(Lgnu/expr/Declaration;)V

    .line 87
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 183
    return-void
.end method

.method protected visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ExitExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Expression;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;
    .locals 2
    .parameter "exps"
    .parameter "n"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "ITD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p3, d:Ljava/lang/Object;,"TD;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 176
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p3}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    aput-object v1, p1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-object p1
.end method

.method public visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;
    .locals 1
    .parameter "exps"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lgnu/expr/Expression;",
            "TD;)[",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/FluidLetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/IfExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitLangExp(Lgnu/expr/LangExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LangExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ModuleExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ObjectExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/QuoteExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ReferenceExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ScopeExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1}, Lgnu/expr/ExpVisitor;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SetExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 113
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    iget-object v3, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 114
    .local v1, updateNeeded:Z
    :goto_0
    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, Lgnu/expr/ExpVisitor;->visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 122
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    iput-object v2, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 125
    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/LambdaExp;

    iput-object v0, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 128
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 113
    .end local v1           #updateNeeded:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 1
    .parameter "new_value"
    .parameter
    .parameter "decl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;",
            "Lgnu/expr/Declaration;",
            ")",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/SynchronizedExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/ThisExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "exp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/TryExp;",
            "TD;)TR;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
