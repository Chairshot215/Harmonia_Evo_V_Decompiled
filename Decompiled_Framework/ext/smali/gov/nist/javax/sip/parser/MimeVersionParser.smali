.class public Lgov/nist/javax/sip/parser/MimeVersionParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "MimeVersionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    const/16 v4, 0x80c

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->headerName(I)V

    const-string v4, "MIME-Version"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "MimeVersionParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "MimeVersionParser.parse"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4
.end method
