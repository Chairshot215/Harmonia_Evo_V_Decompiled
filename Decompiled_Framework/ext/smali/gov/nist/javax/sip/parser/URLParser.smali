.class public Lgov/nist/javax/sip/parser/URLParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "URLParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    iput-object p1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    iget-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "sip_urlLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "sip_urlLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    return-void
.end method

.method private base_phone_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "base_phone_number"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    const/16 v3, 0x29

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_5

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v3

    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_6

    const-string v4, "base_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    throw v3
.end method

.method private final global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "global_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    const/4 v1, 0x0

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "global_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "global_phone_number"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    throw v4
.end method

.method protected static isMark(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isReserved(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isReservedNoSlash(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected static isUnreserved(C)Z
    .locals 1

    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUserUnreserved(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private local_number()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "local_number"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x23

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x29

    if-eq v0, v3, :cond_1

    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "local_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    return-object v3

    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexepcted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_6

    const-string v4, "local_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    throw v3
.end method

.method private local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "local_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v2}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/address/TelephoneNumber;->setGlobal(Z)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->local_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/address/TelephoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "local_phone_number"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v2

    :pswitch_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->tel_parameters()Lgov/nist/core/NameValueList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setParameters(Lgov/nist/core/NameValueList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "local_phone_number"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sip:alice@example.com"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "sips:alice@examples.com"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "sip:3Zqkv5dajqaaas0tCjCxT0xH2ZEuEMsFl0xoasip%3A%2B3519116786244%40siplab.domain.com@213.0.115.163:7070"

    aput-object v5, v2, v4

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    new-instance v1, Lgov/nist/javax/sip/parser/URLParser;

    aget-object v4, v2, v0

    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/URLParser;->parse()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri type returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is SipUri? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->isSipURI()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

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

.method private phone_context()Lgov/nist/core/NameValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->base_phone_number()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lgov/nist/core/NameValue;

    const-string v4, "phone-context"

    invoke-direct {v3, v4, v2, v5}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v3

    :cond_0
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phone-context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private tel_parameters()Lgov/nist/core/NameValueList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Lgov/nist/core/NameValueList;

    invoke-direct {v1}, Lgov/nist/core/NameValueList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "phone-context"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->phone_context()Lgov/nist/core/NameValue;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, v2, v3, v6}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v4, ""

    invoke-direct {v0, v2, v4, v7}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private uriParam()Lgov/nist/core/NameValue;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "uriParam"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v3, ""

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/4 v0, 0x1

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->paramNameOrValue()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    const/4 v4, 0x0

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "uriParam"

    :goto_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    return-object v4

    :cond_4
    :try_start_1
    new-instance v4, Lgov/nist/core/NameValue;

    invoke-direct {v4, v2, v3, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "uriParam"

    goto :goto_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_5

    const-string v5, "uriParam"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    throw v4
.end method


# virtual methods
.method protected escaped()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "escaped"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0x25

    if-ne v0, v4, :cond_2

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_1

    const-string v5, "escaped"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v4

    :cond_2
    :try_start_1
    const-string v4, "escaped"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    sget-boolean v5, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "escaped"

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    throw v4
.end method

.method protected hvalue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->isAlphaDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x25

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->escaped()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5f -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method protected isEscaped()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method protected mark()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v1, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "mark"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isMark(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    const-string v1, "mark"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_3

    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    throw v1
.end method

.method protected paramNameOrValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public parse()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v0

    return-object v0
.end method

.method public final parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "telephone_subscriber"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->global_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_1

    const-string v2, "telephone_subscriber"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    invoke-static {v0}, Lgov/nist/javax/sip/parser/Lexer;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x23

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x28

    if-eq v0, v2, :cond_3

    const/16 v2, 0x29

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->local_phone_number(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_5

    const-string v3, "telephone_subscriber"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    throw v2
.end method

.method protected password()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public peekScheme()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected qheader()Lgov/nist/core/NameValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->getNextToken(C)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->hvalue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgov/nist/core/NameValue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method protected reserved()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "reserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v12, 0x3a

    sget-boolean v10, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v10, :cond_0

    const-string v10, "sipURL"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Lgov/nist/javax/sip/address/SipUri;

    invoke-direct {v5}, Lgov/nist/javax/sip/address/SipUri;-><init>()V

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v2

    const/16 v7, 0x803

    const-string v6, "sip"

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v10

    const/16 v11, 0x858

    if-ne v10, v11, :cond_1

    const/16 v7, 0x858

    const-string v6, "sips"

    :cond_1
    :try_start_0
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/address/SipUri;->setScheme(Ljava/lang/String;)V

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v8

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->user()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v10

    if-ne v10, v12, :cond_2

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->password()Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->lookAhead()C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v5, v9}, Lgov/nist/javax/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/address/SipUri;->setUserPassword(Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance v0, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v10

    invoke-direct {v0, v10}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/address/SipUri;->setHostPort(Lgov/nist/core/HostPort;)V

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v11, "charLexer"

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_5

    if-nez p1, :cond_a

    :cond_5
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    :goto_2
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->qheader()Lgov/nist/core/NameValue;

    move-result-object v3

    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/address/SipUri;->setQHeader(Lgov/nist/core/NameValue;)V

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    const/16 v11, 0x26

    if-eq v10, v11, :cond_b

    :cond_6
    sget-boolean v10, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v10, :cond_7

    const-string v10, "sipURL"

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    return-object v5

    :cond_8
    :try_start_1
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v8}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    sget-boolean v11, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v11, :cond_9

    const-string v11, "sipURL"

    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_9
    throw v10

    :cond_a
    :try_start_2
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-direct {p0}, Lgov/nist/javax/sip/parser/URLParser;->uriParam()Lgov/nist/core/NameValue;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v5, v3}, Lgov/nist/javax/sip/address/SipUri;->setUriParameter(Lgov/nist/core/NameValue;)V

    goto :goto_1

    :cond_b
    iget-object v10, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x839

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->parseTelephoneNumber(Z)Lgov/nist/javax/sip/address/TelephoneNumber;

    move-result-object v1

    new-instance v0, Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelURLImpl;-><init>()V

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/address/TelURLImpl;->setTelephoneNumber(Lgov/nist/javax/sip/address/TelephoneNumber;)V

    return-object v0
.end method

.method protected unreserved()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "unreserved"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method

.method public uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v8, 0x3a

    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_0

    const-string v6, "uriReference"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v6, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v2, v4, v6

    const/4 v6, 0x1

    aget-object v3, v4, v6

    :try_start_0
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x803

    if-eq v6, v7, :cond_1

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x858

    if-ne v6, v7, :cond_5

    :cond_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    if-ne v6, v8, :cond_3

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    sget-boolean v6, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v6, :cond_2

    const-string v6, "uriReference"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    return-object v1

    :cond_3
    :try_start_1
    const-string v6, "Expecting \':\'"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    sget-boolean v7, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v7, :cond_4

    const-string v7, "uriReference"

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_4
    throw v6

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x839

    if-ne v6, v7, :cond_7

    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v6, "Expecting \':\'"

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uricString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    new-instance v1, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v1, v5}, Lgov/nist/javax/sip/address/GenericURI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/URLParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected uric()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "uric"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uric"

    :goto_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    :try_start_1
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReserved(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uric"

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uric"

    goto :goto_0

    :cond_4
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_5

    const-string v4, "uric"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_6

    const-string v4, "uric"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_7

    const-string v4, "uric"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    throw v3
.end method

.method protected uricNoSlash()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_0

    const-string v4, "uricNoSlash"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->charAsString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uricNoSlash"

    :goto_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    :try_start_1
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uricNoSlash"

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {v1}, Lgov/nist/javax/sip/parser/URLParser;->isReservedNoSlash(C)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-static {v1}, Lgov/nist/javax/sip/parser/Lexer;->charAsString(C)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "uricNoSlash"

    goto :goto_0

    :cond_4
    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_5

    const-string v4, "uricNoSlash"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_6

    const-string v4, "uricNoSlash"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    move-object v2, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    sget-boolean v4, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v4, :cond_7

    const-string v4, "uricNoSlash"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_7
    throw v3
.end method

.method protected uricString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->uric()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v5, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_1

    new-instance v0, Lgov/nist/core/HostNameParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v5

    invoke-direct {v0, v5}, Lgov/nist/core/HostNameParser;-><init>(Lgov/nist/core/LexerCore;)V

    invoke-virtual {v0, v6}, Lgov/nist/core/HostNameParser;->hostPort(Z)Lgov/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected urlString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const-string v3, "charLexer"

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected user()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v2, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "user"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/URLParser;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUnreserved(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lgov/nist/javax/sip/parser/URLParser;->isUserUnreserved(C)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_2

    const-string v3, "user"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_2
    throw v2

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/URLParser;->isEscaped()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/URLParser;->debug:Z

    if-eqz v3, :cond_5

    const-string v3, "user"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/URLParser;->dbg_leave(Ljava/lang/String;)V

    :cond_5
    return-object v2
.end method
