.class public abstract Lgnu/mapping/Procedure1or2;
.super Lgnu/mapping/Procedure;
.source "Procedure1or2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
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
    .line 35
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

    .prologue
    .line 40
    new-instance v0, Lgnu/mapping/WrongArguments;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    array-length v0, p1

    if-ne v0, v3, :cond_0

    .line 46
    aget-object v0, p1, v2

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure1or2;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 47
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 48
    aget-object v0, p1, v2

    aget-object v1, p1, v3

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure1or2;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x2001

    return v0
.end method
