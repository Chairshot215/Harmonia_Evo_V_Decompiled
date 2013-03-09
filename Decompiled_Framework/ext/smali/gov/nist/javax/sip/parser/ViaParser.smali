.class public Lgov/nist/javax/sip/parser/ViaParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ViaParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private parseVia(Lgov/nist/javax/sip/header/Via;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v14, 0xfff

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v8, Lgov/nist/javax/sip/header/Protocol;

    invoke-direct {v8}, Lgov/nist/javax/sip/header/Protocol;-><init>()V

    invoke-virtual {v9}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setProtocolName(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setProtocolVersion(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/header/Protocol;->setTransport(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgov/nist/javax/sip/header/Via;->setSentProtocol(Lgov/nist/javax/sip/header/Protocol;)V

    new-instance v4, Lgov/nist/core/HostNameParser;

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v13

    invoke-direct {v4, v13}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x3b

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/parser/ViaParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v13, "branch"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v13, Ljava/text/ParseException;

    const-string v14, "null branch Id"

    move-object/from16 v0, p0

    iget-object v15, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v15}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v15

    invoke-direct {v13, v14, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v13

    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/header/Via;->setParameter(Lgov/nist/core/NameValue;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v13

    const/16 v14, 0x28

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v14, "charLexer"

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v13, 0x29

    if-ne v2, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/header/Via;->setComment(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/16 v13, 0x5c

    if-ne v2, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v13}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1

    :cond_5
    const/16 v13, 0xa

    if-eq v2, v13, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1
.end method


# virtual methods
.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_0

    const-string v7, "nameValue"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v7, 0x3d

    if-ne v1, v7, :cond_5

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->consume(I)V

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    const/4 v5, 0x0

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_2

    const-string v7, "nameValue"

    :goto_1
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v3

    :cond_3
    :try_start_2
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0xfff

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_2

    const-string v7, "nameValue"

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v3, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean v7, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v7, :cond_2

    const-string v7, "nameValue"

    goto :goto_1

    :catchall_0
    move-exception v7

    sget-boolean v8, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v8, :cond_6

    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    throw v7
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v4, 0xa

    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/ViaList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ViaList;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x810

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ViaParser;->parseVia(Lgov/nist/javax/sip/header/Via;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ViaList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    :cond_2
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ViaParser;->debug:Z

    if-eqz v3, :cond_4

    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ViaParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    throw v2
.end method
