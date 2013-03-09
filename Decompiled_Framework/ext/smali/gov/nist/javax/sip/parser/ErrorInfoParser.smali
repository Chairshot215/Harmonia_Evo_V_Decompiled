.class public Lgov/nist/javax/sip/parser/ErrorInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


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

    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "ErrorInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/ErrorInfoList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    const/16 v4, 0x80a

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->headerName(I)V

    :cond_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    const-string v4, "Error-Info"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ErrorInfo;->setHeaderName(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ErrorInfo;->setErrorInfo(Ljavax/sip/address/URI;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ErrorInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "ErrorInfoParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4

    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "ErrorInfoParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method
