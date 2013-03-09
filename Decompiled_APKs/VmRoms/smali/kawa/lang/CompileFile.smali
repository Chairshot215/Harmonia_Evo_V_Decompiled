.class public Lkawa/lang/CompileFile;
.super Ljava/lang/Object;
.source "CompileFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 2
    .parameter "port"
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v0

    return-object v0
.end method

.method public static final read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;
    .locals 6
    .parameter "name"
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 19
    :try_start_0
    invoke-static {p0}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v1

    .line 20
    .local v1, fstream:Lgnu/mapping/InPort;
    invoke-static {v1, p1}, Lkawa/lang/CompileFile;->read(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v2

    .line 21
    .local v2, result:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    return-object v2

    .line 24
    .end local v1           #fstream:Lgnu/mapping/InPort;
    .end local v2           #result:Lgnu/expr/Compilation;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 26
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compile-file: file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 28
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 30
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lgnu/mapping/WrappedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compile-file: read-error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
