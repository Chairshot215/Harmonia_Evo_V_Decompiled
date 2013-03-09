.class public Lgov/nist/javax/sip/parser/ReasonParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReasonParser.java"


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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v6, 0x2c

    new-instance v1, Lgov/nist/javax/sip/header/ReasonList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    sget-boolean v4, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "ReasonParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0x83b

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->headerName(I)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ReasonList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    if-eqz v5, :cond_1

    const-string v5, "ReasonParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "ReasonParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method
