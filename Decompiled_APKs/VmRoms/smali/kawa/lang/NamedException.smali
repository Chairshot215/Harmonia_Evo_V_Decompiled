.class public Lkawa/lang/NamedException;
.super Ljava/lang/RuntimeException;
.source "NamedException.java"


# instance fields
.field args:[Ljava/lang/Object;

.field name:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "args"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    iput-object p1, p0, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    .line 18
    iput-object p2, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lkawa/lang/NamedException;->checkMatch(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkMatch(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 23
    iget-object v0, p0, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_0

    .line 24
    throw p0

    .line 25
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "#<ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, i:I
    iget-object v3, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    array-length v2, v3

    .line 40
    .local v2, len:I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "misc-error"

    if-ne v3, v4, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 44
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    iget-object v3, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
