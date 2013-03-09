.class public Lgov/nist/javax/sip/parser/DateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "DateParser.java"


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

    sget-boolean v3, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "DateParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x820

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->headerName(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/DateParser;->wkday()I

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/DateParser;->date()Ljava/util/Calendar;

    move-result-object v0

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/DateParser;->time(Ljava/util/Calendar;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad Time Zone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    if-eqz v4, :cond_1

    const-string v4, "DateParser.parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    throw v3

    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    new-instance v1, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    if-eqz v3, :cond_3

    const-string v3, "DateParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method
