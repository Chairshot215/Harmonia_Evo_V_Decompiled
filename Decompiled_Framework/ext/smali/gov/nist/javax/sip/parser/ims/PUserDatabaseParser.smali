.class public Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PUserDatabaseParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    :cond_0
    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

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

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "PUserDatabase.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85d

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->parseheader(Lgov/nist/javax/sip/header/ims/PUserDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "PUserDatabase.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "PUserDatabase.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PUserDatabaseParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v1
.end method
