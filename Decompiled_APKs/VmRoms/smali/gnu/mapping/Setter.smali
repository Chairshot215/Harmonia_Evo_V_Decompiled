.class public Lgnu/mapping/Setter;
.super Lgnu/mapping/ProcedureN;
.source "Setter.java"


# instance fields
.field protected getter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 3
    .parameter "getter"

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    .line 12
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(setter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/mapping/Setter;->setName(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 19
    iget-object v1, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 20
    .local v0, get_args:I
    if-gez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 21
    :goto_0
    return v1

    :cond_0
    add-int/lit16 v1, v0, 0x1001

    goto :goto_0
.end method
