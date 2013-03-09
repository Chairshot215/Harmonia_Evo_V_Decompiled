.class Lgnu/q2/lang/Prompter;
.super Lgnu/mapping/Procedure1;
.source "Q2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "arg"

    .prologue
    .line 110
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    move-object v2, v0

    .line 111
    .local v2, port:Lgnu/mapping/InPort;
    invoke-virtual {v2}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 112
    .local v1, line:I
    iget-char v3, v2, Lgnu/mapping/InPort;->readState:C

    .line 113
    .local v3, state:C
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<!--Q2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    :goto_0
    return-object v4

    .line 117
    :cond_0
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 118
    const/16 v3, 0x2d

    .line 119
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#|--Q2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
