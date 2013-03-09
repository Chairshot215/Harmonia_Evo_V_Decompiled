.class public Lgov/nist/javax/sip/parser/HeaderParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "HeaderParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "command_keywordLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "command_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method


# virtual methods
.method protected date()Ljava/util/Calendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/16 v7, 0x1f

    if-le v0, v7, :cond_1

    :cond_0
    const-string v7, "Bad day "

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v7, "bad date field"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v7

    throw v7

    :cond_1
    const/4 v7, 0x5

    :try_start_1
    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v7, "jan"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    :cond_2
    :goto_0
    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v7, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    return-object v3

    :cond_3
    const-string v7, "feb"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_4
    const-string v7, "mar"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_5
    const-string v7, "apr"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_6
    const-string v7, "may"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_7
    const-string v7, "jun"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_8
    const-string v7, "jul"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_9
    const-string v7, "aug"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_a
    const-string v7, "sep"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "oct"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "nov"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    :cond_d
    const-string v7, "dec"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    const/16 v8, 0xb

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected headerName(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0, p1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    return-void
.end method

.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v2, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    return-object v2
.end method

.method protected time(Ljava/util/Calendar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xc

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v5, "error processing time "

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    throw v5
.end method

.method protected wkday()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v2, "wkday"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_enter(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    const-string v3, "wkday"

    :goto_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_1
    const-string v2, "Tue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const-string v3, "wkday"

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v2, "Wed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const-string v3, "wkday"

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v2, "Thu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    const-string v3, "wkday"

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v2, "Fri"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    const-string v3, "wkday"

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v2, "Sat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    const-string v3, "wkday"

    goto :goto_0

    :cond_5
    :try_start_6
    const-string v2, "Sun"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    const-string v3, "wkday"

    goto :goto_0

    :cond_6
    :try_start_7
    const-string v2, "bad wkday"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/HeaderParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    const-string v3, "wkday"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->dbg_leave(Ljava/lang/String;)V

    throw v2
.end method
