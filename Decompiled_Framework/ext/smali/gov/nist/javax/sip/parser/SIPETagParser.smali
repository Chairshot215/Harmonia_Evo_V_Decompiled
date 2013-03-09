.class public Lgov/nist/javax/sip/parser/SIPETagParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SIPETagParser.java"


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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "SIPEtag.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPETag;-><init>()V

    const/16 v2, 0x844

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->headerName(I)V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "SIPEtag.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    if-eqz v3, :cond_2

    const-string v3, "SIPEtag.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v2
.end method
