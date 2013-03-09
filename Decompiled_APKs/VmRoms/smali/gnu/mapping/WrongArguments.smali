.class public Lgnu/mapping/WrongArguments;
.super Ljava/lang/IllegalArgumentException;
.source "WrongArguments.java"


# instance fields
.field public number:I

.field proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 0
    .parameter "proc"
    .parameter "argCount"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    .line 85
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "n"
    .parameter "u"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 89
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->procname:Ljava/lang/String;

    .line 90
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    .line 91
    iput-object p3, p0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;
    .locals 5
    .parameter "proc"
    .parameter "argCount"

    .prologue
    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v2

    .line 22
    .local v2, num:I
    and-int/lit16 v1, v2, 0xfff

    .line 23
    .local v1, min:I
    shr-int/lit8 v0, v2, 0xc

    .line 24
    .local v0, max:I
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, pname:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_0
    invoke-static {v3, v1, v0, p1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static checkArgCount(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .parameter "pname"
    .parameter "min"
    .parameter "max"
    .parameter "argCount"

    .prologue
    const/16 v3, 0x27

    .line 33
    if-ge p3, p1, :cond_1

    .line 34
    const/4 v1, 0x0

    .line 39
    .local v1, tooMany:Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 40
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "call to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    if-nez p0, :cond_3

    .line 42
    const-string v2, "unnamed procedure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :goto_1
    if-eqz v1, :cond_4

    const-string v2, " has too many"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, " arguments ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    if-ne p1, p2, :cond_5

    .line 54
    const-string v2, "; must be "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    :goto_3
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #tooMany:Z
    :goto_4
    return-object v2

    .line 35
    :cond_1
    if-ltz p2, :cond_2

    if-le p3, p2, :cond_2

    .line 36
    const/4 v1, 0x1

    .restart local v1       #tooMany:Z
    goto :goto_0

    .line 38
    .end local v1           #tooMany:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    .line 45
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #tooMany:Z
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 49
    :cond_4
    const-string v2, " has too few"

    goto :goto_2

    .line 59
    :cond_5
    const-string v2, "; min="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    if-ltz p2, :cond_0

    .line 63
    const-string v2, ", max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    iget v2, p0, Lgnu/mapping/WrongArguments;->number:I

    invoke-static {v1, v2}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 79
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
