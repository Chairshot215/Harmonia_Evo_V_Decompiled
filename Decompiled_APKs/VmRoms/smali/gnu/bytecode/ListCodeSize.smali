.class public Lgnu/bytecode/ListCodeSize;
.super Ljava/lang/Object;
.source "ListCodeSize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, -0x1

    .line 33
    array-length v7, p0

    if-nez v7, :cond_0

    .line 34
    invoke-static {}, Lgnu/bytecode/ListCodeSize;->usage()V

    .line 35
    :cond_0
    const/4 v7, 0x0

    aget-object v2, p0, v7

    .line 38
    .local v2, filename:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, inp:Ljava/io/InputStream;
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 41
    .local v0, ctype:Lgnu/bytecode/ClassType;
    new-instance v7, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v7, v0, v4}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 43
    array-length v7, p0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 45
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v5

    .local v5, method:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v5, :cond_4

    .line 48
    invoke-static {v5}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 46
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v5

    goto :goto_0

    .line 53
    .end local v5           #method:Lgnu/bytecode/Method;
    :cond_1
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_4

    .line 55
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object v5

    .restart local v5       #method:Lgnu/bytecode/Method;
    :goto_2
    if-eqz v5, :cond_3

    .line 58
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v6, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v5, v6}, Lgnu/bytecode/Method;->listParameters(Ljava/lang/StringBuffer;)V

    .line 61
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    invoke-static {v5}, Lgnu/bytecode/ListCodeSize;->print(Lgnu/bytecode/Method;)V

    .line 56
    :cond_2
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_2

    .line 53
    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    .end local v3           #i:I
    .end local v4           #inp:Ljava/io/InputStream;
    .end local v5           #method:Lgnu/bytecode/Method;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 70
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 79
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    return-void

    .line 73
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 75
    .local v1, e:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_3
.end method

.method static print(Lgnu/bytecode/Method;)V
    .locals 3
    .parameter "method"

    .prologue
    .line 18
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 20
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-nez v0, :cond_0

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ": no code"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 28
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 29
    return-void

    .line 24
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 26
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static usage()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: class methodname ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
