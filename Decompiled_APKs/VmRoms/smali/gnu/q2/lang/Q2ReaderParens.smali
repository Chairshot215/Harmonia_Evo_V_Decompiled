.class Lgnu/q2/lang/Q2ReaderParens;
.super Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.source "Q2Read.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 7
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p1

    check-cast v0, Lgnu/q2/lang/Q2Read;

    move-object v2, v0

    .line 365
    .local v2, reader:Lgnu/q2/lang/Q2Read;
    const/16 v5, 0x28

    invoke-virtual {v2, v5}, Lgnu/q2/lang/Q2Read;->pushNesting(C)C

    move-result v4

    .line 368
    .local v4, saveReadState:C
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Lgnu/q2/lang/Q2Read;->readCommand(Z)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, result:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/q2/lang/Q2Read;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    .line 371
    .local v1, port:Lgnu/text/LineBufferedReader;
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    move-result v5

    const/16 v6, 0x29

    if-eq v5, v6, :cond_0

    .line 372
    const-string v5, "missing \')\'"

    invoke-virtual {v2, v5}, Lgnu/q2/lang/Q2Read;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    invoke-virtual {v2, v4}, Lgnu/q2/lang/Q2Read;->popNesting(C)V

    return-object v3

    .end local v1           #port:Lgnu/text/LineBufferedReader;
    .end local v3           #result:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    invoke-virtual {v2, v4}, Lgnu/q2/lang/Q2Read;->popNesting(C)V

    throw v5
.end method
