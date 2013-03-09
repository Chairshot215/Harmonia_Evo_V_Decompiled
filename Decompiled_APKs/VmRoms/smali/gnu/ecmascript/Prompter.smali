.class Lgnu/ecmascript/Prompter;
.super Lgnu/mapping/Procedure1;
.source "Prompter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg"

    .prologue
    .line 13
    check-cast p1, Lgnu/mapping/InPort;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/ecmascript/Prompter;->prompt(Lgnu/mapping/InPort;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method prompt(Lgnu/mapping/InPort;)Ljava/lang/String;
    .locals 2
    .parameter "port"

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(EcmaScript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
