.class public Lgov/nist/javax/sip/parser/AlertInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v8, 0x3c

    const/16 v7, 0x2c

    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "AlertInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/AlertInfoList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/AlertInfoList;-><init>()V

    const/16 v5, 0x80d

    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->headerName(I)V

    :cond_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    const-string v5, "Alert-Info"

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AlertInfo;->setHeaderName(Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :goto_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/AlertInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v6, :cond_2

    const-string v6, "AlertInfoParser.parse"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v5

    :cond_3
    :try_start_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v5, :cond_5

    const-string v5, "AlertInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method
