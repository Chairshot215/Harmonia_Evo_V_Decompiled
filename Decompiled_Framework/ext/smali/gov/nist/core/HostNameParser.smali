.class public Lgov/nist/core/HostNameParser;
.super Lgov/nist/core/ParserCore;
.source "HostNameParser.java"


# static fields
.field private static Lexer:Lgov/nist/core/LexerCore;

.field private static final VALID_DOMAIN_LABEL_CHAR:[C


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0xfdt 0xfft
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data
.end method

.method public constructor <init>(Lgov/nist/core/LexerCore;)V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v0, "charLexer"

    invoke-virtual {p1, v0}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    new-instance v0, Lgov/nist/core/LexerCore;

    const-string v1, "charLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    return-void
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x3a

    const/4 v5, 0x0

    const/4 v7, -0x1

    sget-object v6, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sget-object v6, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v2, v7, :cond_0

    if-eq v4, v7, :cond_1

    if-le v2, v4, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    if-ne v2, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    :cond_3
    :goto_0
    return v5

    :cond_4
    sget-object v6, Lgov/nist/core/HostNameParser;->Lexer:Lgov/nist/core/LexerCore;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "foo.bar.com:1234"

    aput-object v6, v2, v5

    const-string v5, "proxima.chaplin.bt.co.uk"

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "129.6.55.181:2345"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, ":1234"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "foo.bar.com:         1234"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "foo.bar.com     :      1234   "

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "MIK_S:1234"

    aput-object v6, v2, v5

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    :try_start_0
    new-instance v1, Lgov/nist/core/HostNameParser;

    aget-object v5, v2, v4

    invoke-direct {v1, v5}, Lgov/nist/core/HostNameParser;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lgov/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception text = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method protected consumeDomainLabel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "domainLabel"

    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    sget-object v1, Lgov/nist/core/HostNameParser;->VALID_DOMAIN_LABEL_CHAR:[C

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v0, :cond_1

    const-string v0, "domainLabel"

    invoke-virtual {p0, v0}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v1, :cond_2

    const-string v1, "domainLabel"

    invoke-virtual {p0, v1}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v0
.end method

.method public host()Lgov/nist/core/Host;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v2, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "host"

    invoke-virtual {p0, v2}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->ipv6Reference()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Missing host name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "host"

    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lgov/nist/core/HostNameParser;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x2

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consumeValidChars([C)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->consumeDomainLabel()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lgov/nist/core/Host;

    invoke-direct {v2, v0}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v3, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v3, :cond_5

    const-string v3, "host"

    invoke-virtual {p0, v3}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v2

    nop

    :array_0
    .array-data 0x2
        0xfdt 0xfft
        0x3at 0x0t
    .end array-data
.end method

.method public hostPort(Z)Lgov/nist/core/HostPort;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "hostPort"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/HostNameParser;->host()Lgov/nist/core/Host;

    move-result-object v0

    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    :cond_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    if-nez p1, :cond_5

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Illegal character in hostname:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    sget-boolean v6, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v6, :cond_3

    const-string v6, "hostPort"

    invoke-virtual {p0, v6}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    throw v5

    :sswitch_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    if-eqz p1, :cond_4

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_0
    :sswitch_1
    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_6

    const-string v5, "hostPort"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v1

    :catch_0
    move-exception v3

    :try_start_3
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :Error parsing port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :sswitch_2
    iget-boolean v5, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2c -> :sswitch_1
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3e -> :sswitch_1
        0x3f -> :sswitch_1
    .end sparse-switch
.end method

.method protected ipv6Reference()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v8, 0x3a

    const/16 v7, 0x2e

    const/16 v6, 0x5d

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v4, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "ipv6Reference"

    invoke-virtual {p0, v4}, Lgov/nist/core/HostNameParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lgov/nist/core/HostNameParser;->stripAddressScopeZones:Z

    if-eqz v4, :cond_8

    :goto_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_1

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_3

    :cond_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_2

    const-string v5, "ipv6Reference"

    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v4

    :cond_3
    if-ne v0, v6, :cond_5

    :try_start_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_4

    const-string v5, "ipv6Reference"

    :goto_1
    invoke-virtual {p0, v5}, Lgov/nist/core/HostNameParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v4

    :cond_5
    const/16 v4, 0x25

    if-ne v0, v4, :cond_6

    :try_start_2
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Illegal Host name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_7
    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_4

    const-string v5, "ipv6Reference"

    goto :goto_1

    :cond_8
    :goto_2
    :try_start_3
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/core/LexerCore;->isHexDigit(C)Z

    move-result v4

    if-nez v4, :cond_9

    if-eq v0, v7, :cond_9

    if-eq v0, v8, :cond_9

    const/16 v4, 0x5b

    if-ne v0, v4, :cond_a

    :cond_9
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    if-ne v0, v6, :cond_6

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    sget-boolean v5, Lgov/nist/core/HostNameParser;->debug:Z

    if-eqz v5, :cond_4

    const-string v5, "ipv6Reference"

    goto/16 :goto_1
.end method
