.class public Lgnu/expr/ErrorExp;
.super Lgnu/expr/Expression;
.source "ErrorExp.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "message"
    .parameter "comp"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 26
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 27
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V
    .locals 1
    .parameter "message"
    .parameter "messages"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 20
    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 21
    iput-object p1, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": internal error: compiling error expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 34
    const-string v0, "(Error"

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 36
    iget-object v0, p0, Lgnu/expr/ErrorExp;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 37
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 38
    return-void
.end method
