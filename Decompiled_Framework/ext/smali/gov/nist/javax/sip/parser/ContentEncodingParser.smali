.class public Lgov/nist/javax/sip/parser/ContentEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentEncodingParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v6, 0x2c

    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "ContentEncodingParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentEncodingList;-><init>()V

    const/16 v4, 0x823

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->headerName(I)V

    :cond_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    const-string v4, "Content-Encoding"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setHeaderName(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :goto_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "ContentEncodingParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4

    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "ContentEncodingParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method
