.class public Lgov/nist/javax/sip/parser/ContactParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ContactParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v9, 0x2c

    const/16 v8, 0x2a

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x827

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->headerName(I)V

    new-instance v3, Lgov/nist/javax/sip/header/ContactList;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/ContactList;-><init>()V

    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_0

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    if-ne v2, v7, :cond_1

    :cond_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    :goto_1
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/ContactList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    if-ne v1, v9, :cond_3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_0

    :cond_1
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    goto :goto_1

    :cond_3
    if-eq v1, v7, :cond_4

    if-nez v1, :cond_5

    :cond_4
    return-object v3

    :cond_5
    const-string v4, "unexpected char"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContactParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
.end method
