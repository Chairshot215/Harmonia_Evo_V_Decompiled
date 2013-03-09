.class public Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ServiceRouteParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

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

    const/16 v4, 0x2c

    new-instance v1, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;-><init>()V

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "ServiceRouteParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x848

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "ServiceRouteParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "ServiceRouteParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    :try_start_2
    const-string v2, "unexpected char"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
