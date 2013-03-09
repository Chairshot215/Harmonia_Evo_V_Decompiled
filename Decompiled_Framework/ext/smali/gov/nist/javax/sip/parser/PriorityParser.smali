.class public Lgov/nist/javax/sip/parser/PriorityParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PriorityParser.java"


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

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Priority: 8;a\n"

    aput-object v5, v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    new-instance v2, Lgov/nist/javax/sip/parser/PriorityParser;

    aget-object v4, v1, v0

    invoke-direct {v2, v4}, Lgov/nist/javax/sip/parser/PriorityParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/PriorityParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Priority;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Priority;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "PriorityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    const/16 v1, 0x821

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->headerName(I)V

    const-string v1, "Priority"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setHeaderName(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "PriorityParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/PriorityParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "PriorityParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/PriorityParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v1
.end method
