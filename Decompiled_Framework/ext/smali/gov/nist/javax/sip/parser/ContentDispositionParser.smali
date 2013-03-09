.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x834

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->headerName(I)V

    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    const-string v3, "Content-Disposition"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "ContentDispositionParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "ContentDispositionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
