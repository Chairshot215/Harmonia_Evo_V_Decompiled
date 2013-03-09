.class public Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "WarningParser.java"


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

    const/16 v11, 0x2c

    const/16 v10, 0x3a

    new-instance v7, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    sget-boolean v8, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v8, :cond_0

    const-string v8, "WarningParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x81e

    :try_start_0
    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->headerName(I)V

    :cond_1
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_5

    new-instance v6, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    const-string v8, "Warning"

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setHeaderName(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v10, :cond_3

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    :goto_0
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :goto_1
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v11, :cond_1

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v6, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    :goto_2
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    sget-boolean v9, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v9, :cond_2

    const-string v9, "WarningParser.parse"

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v8

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    :cond_3
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v8

    throw v8

    :cond_4
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_5
    sget-boolean v8, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v8, :cond_6

    const-string v8, "WarningParser.parse"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    return-object v7
.end method
