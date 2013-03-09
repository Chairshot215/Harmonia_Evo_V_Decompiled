.class public Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PVisitedNetworkIDParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v5, 0x2c

    new-instance v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x84b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V

    :goto_1
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v3

    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_4

    const-string v3, "VisitedNetworkIDParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v2

    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected char = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected parseQuotedString(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v4, 0x22

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "parseQuotedString"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_2

    const-string v2, "unexpected char"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "parseQuotedString.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "parseQuotedString.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    :try_start_2
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "unexpected EOL"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected parseToken(Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xfff

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;->setVisitedNetworkID(Lgov/nist/core/Token;)V

    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    return-void
.end method
