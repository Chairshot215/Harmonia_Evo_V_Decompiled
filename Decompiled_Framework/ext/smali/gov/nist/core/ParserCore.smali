.class public abstract Lgov/nist/core/ParserCore;
.super Ljava/lang/Object;
.source "ParserCore.java"


# static fields
.field public static final debug:Z

.field static nesting_level:I


# instance fields
.field protected lexer:Lgov/nist/core/LexerCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    sput-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dbg_enter(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v0, v2, :cond_0

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nlexer buffer = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method

.method protected dbg_leave(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    if-ge v0, v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nlexer buffer = \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget v2, Lgov/nist/core/ParserCore;->nesting_level:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lgov/nist/core/ParserCore;->nesting_level:I

    return-void
.end method

.method protected nameValue()Lgov/nist/core/NameValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lgov/nist/core/ParserCore;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method protected nameValue(C)Lgov/nist/core/NameValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v8, :cond_0

    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_enter(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-ne v2, p1, :cond_5

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->consume(I)V

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    :cond_1
    :goto_0
    new-instance v4, Lgov/nist/core/NameValue;

    iget-object v8, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-direct {v4, v8, v6, v1}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lgov/nist/core/NameValue;->setQuotedValue()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v8, :cond_3

    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    :try_start_2
    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0xfff

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    iget-object v8, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v7

    iget-object v6, v7, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    new-instance v4, Lgov/nist/core/NameValue;

    iget-object v8, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    const-string v9, ""

    const/4 v10, 0x1

    invoke-direct {v4, v8, v9, v10}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v8, :cond_3

    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v4, Lgov/nist/core/NameValue;

    iget-object v8, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v8, v9, v10}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean v8, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v8, :cond_3

    const-string v8, "nameValue"

    invoke-virtual {p0, v8}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    sget-boolean v9, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v9, :cond_6

    const-string v9, "nameValue"

    invoke-virtual {p0, v9}, Lgov/nist/core/ParserCore;->dbg_leave(Ljava/lang/String;)V

    :cond_6
    throw v8
.end method

.method protected peekLine(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lgov/nist/core/ParserCore;->debug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/ParserCore;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->peekLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
