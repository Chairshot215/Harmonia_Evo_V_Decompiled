.class public abstract Lgnu/mapping/Procedure2;
.super Lgnu/mapping/Procedure;
.source "Procedure2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lgnu/mapping/WrongArguments;

    invoke-virtual {p0}, Lgnu/mapping/Procedure2;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "(?)"

    invoke-direct {v0, v1, v2, v3}, Lgnu/mapping/WrongArguments;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 37
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure2;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x2002

    return v0
.end method
