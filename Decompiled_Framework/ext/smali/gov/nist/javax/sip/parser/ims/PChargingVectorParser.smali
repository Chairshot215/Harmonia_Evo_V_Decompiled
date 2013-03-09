.class public Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "PChargingVectorParser.java"

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

    const/16 v5, 0xa

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0x84d

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->headerName(I)V

    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eq v2, v5, :cond_1

    if-nez v2, :cond_3

    :cond_1
    :try_start_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    const-string v3, "icid-value"

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Missing a required Parameter : icid-value"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "parse"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v3

    :cond_3
    :try_start_3
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v3, :cond_5

    const-string v3, "parse"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/PChargingVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x3d

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "parseParameter"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->debug:Z

    if-eqz v2, :cond_2

    const-string v2, "parseParameter"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v1
.end method
