.class public Lgov/nist/javax/sip/parser/MinExpiresParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MinExpiresParser.java"


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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v3, Lgov/nist/javax/sip/parser/MinExpiresParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "MinExpiresParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MinExpiresParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/MinExpires;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/MinExpires;-><init>()V

    const/16 v3, 0x83e

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MinExpiresParser;->headerName(I)V

    const-string v3, "Min-Expires"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/MinExpires;->setHeaderName(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/MinExpires;->setExpires(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/MinExpiresParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "MinExpiresParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MinExpiresParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MinExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/MinExpiresParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "MinExpiresParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MinExpiresParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v3
.end method
