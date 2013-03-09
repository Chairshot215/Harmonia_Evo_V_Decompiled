.class public Lgov/nist/javax/sip/parser/RetryAfterParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RetryAfterParser.java"


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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v11, 0x3b

    sget-boolean v9, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v9, :cond_0

    const-string v9, "RetryAfterParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    const/16 v9, 0x819

    :try_start_0
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->headerName(I)V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    const/16 v10, 0x28

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/header/RetryAfter;->setComment(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-ne v9, v11, :cond_4

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/header/RetryAfter;->setDuration(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    :try_start_4
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    sget-boolean v10, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v10, :cond_2

    const-string v10, "RetryAfterParser.parse"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v9

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v9

    throw v9

    :cond_3
    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v10, 0xfff

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v9, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_4
    sget-boolean v9, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v9, :cond_5

    const-string v9, "RetryAfterParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v4
.end method
