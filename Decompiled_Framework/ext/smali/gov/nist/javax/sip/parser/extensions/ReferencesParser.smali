.class public Lgov/nist/javax/sip/parser/extensions/ReferencesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReferencesParser.java"


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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "ReasonParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x862

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->headerName(I)V

    new-instance v1, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "ReferencesParser.parse"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v3, :cond_2

    const-string v3, "ReferencesParser.parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v2
.end method
