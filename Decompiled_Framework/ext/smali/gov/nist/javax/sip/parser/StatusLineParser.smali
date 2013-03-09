.class public Lgov/nist/javax/sip/parser/StatusLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "StatusLineParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "status_lineLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "status_lineLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/StatusLine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->statusCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->reasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4
.end method

.method protected reasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected statusCode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "statusCode"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "statusCode"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "statusCode"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
