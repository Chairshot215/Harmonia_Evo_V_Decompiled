.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol;

.field static indentationStep:I


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    sput v0, Lkawa/standard/TracedProcedure;->indentationStep:I

    .line 15
    const-string v0, "current-indentation"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 1
    .parameter "proc"
    .parameter "enable"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .locals 2
    .parameter "proc"
    .parameter "enable"

    .prologue
    .line 114
    instance-of v1, p0, Lkawa/standard/TracedProcedure;

    if-eqz v1, :cond_0

    .line 116
    move-object v0, p0

    check-cast v0, Lkawa/standard/TracedProcedure;

    move-object v1, v0

    iput-boolean p1, v1, Lkawa/standard/TracedProcedure;->enabled:Z

    move-object v1, p0

    .line 120
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lkawa/standard/TracedProcedure;

    invoke-direct {v1, p0, p1}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    goto :goto_0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "i"
    .parameter "out"

    .prologue
    .line 43
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 44
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "value"
    .parameter "out"

    .prologue
    .line 30
    const/16 v1, 0x32

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "<caught "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 37
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    iget-boolean v12, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v12, :cond_4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 52
    .local v3, env:Lgnu/mapping/Environment;
    sget-object v12, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v12}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v1

    .line 53
    .local v1, curIndentLoc:Lgnu/mapping/Location;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    .local v8, oldIndent:Ljava/lang/Object;
    instance-of v12, v8, Lgnu/math/IntNum;

    if-nez v12, :cond_2

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, curIndent:I
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 62
    .end local v8           #oldIndent:Ljava/lang/Object;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v9

    .line 63
    .local v9, out:Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 65
    const-string v6, "??"

    .line 68
    :cond_0
    invoke-static {v0, v9}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 69
    const-string v12, "call to "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    array-length v5, p1

    .line 72
    .local v5, len:I
    const-string v12, " ("

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 75
    if-lez v4, :cond_1

    .line 76
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_1
    aget-object v12, p1, v4

    invoke-static {v12, v9}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v0           #curIndent:I
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #out:Ljava/io/PrintWriter;
    .restart local v8       #oldIndent:Ljava/lang/Object;
    :cond_2
    check-cast v8, Lgnu/math/IntNum;

    .end local v8           #oldIndent:Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    .restart local v0       #curIndent:I
    goto :goto_0

    .line 79
    .restart local v4       #i:I
    .restart local v5       #len:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v9       #out:Ljava/io/PrintWriter;
    :cond_3
    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    sget v12, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v12, v0

    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    .line 84
    .local v7, newIndentation:Lgnu/math/IntNum;
    invoke-virtual {v1, v7}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 87
    .local v11, save:Ljava/lang/Object;
    :try_start_0
    iget-object v12, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v12, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 97
    .local v10, result:Ljava/lang/Object;
    invoke-virtual {v1, v11}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 101
    invoke-static {v0, v9}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 102
    const-string v12, "return from "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v12, " => "

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {v10, v9}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    move-object v12, v10

    .line 109
    .end local v0           #curIndent:I
    .end local v1           #curIndentLoc:Lgnu/mapping/Location;
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #newIndentation:Lgnu/math/IntNum;
    .end local v9           #out:Ljava/io/PrintWriter;
    .end local v10           #result:Ljava/lang/Object;
    .end local v11           #save:Ljava/lang/Object;
    :goto_2
    return-object v12

    .line 89
    .restart local v0       #curIndent:I
    .restart local v1       #curIndentLoc:Lgnu/mapping/Location;
    .restart local v3       #env:Lgnu/mapping/Environment;
    .restart local v4       #i:I
    .restart local v5       #len:I
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #newIndentation:Lgnu/math/IntNum;
    .restart local v9       #out:Ljava/io/PrintWriter;
    .restart local v11       #save:Ljava/lang/Object;
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 91
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0, v9}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "procedure "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " throws exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v12

    invoke-virtual {v1, v11}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    throw v12

    .line 109
    .end local v0           #curIndent:I
    .end local v1           #curIndentLoc:Lgnu/mapping/Location;
    .end local v3           #env:Lgnu/mapping/Environment;
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #newIndentation:Lgnu/math/IntNum;
    .end local v9           #out:Ljava/io/PrintWriter;
    .end local v11           #save:Ljava/lang/Object;
    :cond_4
    iget-object v12, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v12, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 125
    const-string v1, "#<procedure "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, n:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    const-string v1, "<unnamed>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-boolean v1, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v1, :cond_1

    const-string v1, ", traced>"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    const-string v1, ">"

    goto :goto_1
.end method
