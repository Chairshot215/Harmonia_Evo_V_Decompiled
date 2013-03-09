.class public Lgnu/ecmascript/Lexer;
.super Lgnu/text/Lexer;
.source "Lexer.java"


# static fields
.field public static final colonToken:Lgnu/text/Char;

.field public static final commaToken:Lgnu/text/Char;

.field public static final condToken:Lgnu/text/Char;

.field public static final dotToken:Lgnu/text/Char;

.field public static final elseToken:Lgnu/ecmascript/Reserved;

.field public static final eofToken:Ljava/lang/Object;

.field public static final eolToken:Ljava/lang/Object;

.field public static final equalToken:Lgnu/text/Char;

.field public static final lbraceToken:Lgnu/text/Char;

.field public static final lbracketToken:Lgnu/text/Char;

.field public static final lparenToken:Lgnu/text/Char;

.field public static final newToken:Lgnu/ecmascript/Reserved;

.field public static final notToken:Lgnu/text/Char;

.field public static final rbraceToken:Lgnu/text/Char;

.field public static final rbracketToken:Lgnu/text/Char;

.field static reserved:Ljava/util/Hashtable;

.field public static final rparenToken:Lgnu/text/Char;

.field public static final semicolonToken:Lgnu/text/Char;

.field public static final tildeToken:Lgnu/text/Char;


# instance fields
.field private prevWasCR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0x28

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    .line 21
    const/16 v0, 0x29

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    .line 22
    const/16 v0, 0x7b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    .line 23
    const/16 v0, 0x7d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    .line 24
    const/16 v0, 0x5b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    .line 25
    const/16 v0, 0x5d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    .line 26
    const/16 v0, 0x2e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    .line 27
    const/16 v0, 0x3f

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    .line 28
    const/16 v0, 0x2c

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    .line 29
    const/16 v0, 0x3a

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    .line 30
    const/16 v0, 0x3d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    .line 31
    const/16 v0, 0x7e

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    .line 32
    const/16 v0, 0x21

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    .line 33
    const/16 v0, 0x3b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    .line 34
    const/16 v0, 0xa

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    sput-object v0, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 36
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "else"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    .line 38
    new-instance v0, Lgnu/ecmascript/Reserved;

    const-string v1, "new"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 1
    .parameter "port"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 18
    return-void
.end method

.method public static checkReserved(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lgnu/ecmascript/Lexer;->initReserved()V

    .line 71
    :cond_0
    sget-object v0, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lgnu/mapping/InPort;)Ljava/lang/Object;
    .locals 1
    .parameter "inp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p0}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized initReserved()V
    .locals 6

    .prologue
    .line 44
    const-class v0, Lgnu/ecmascript/Lexer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    .line 47
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "null"

    new-instance v3, Lgnu/expr/QuoteExp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "true"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "false"

    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "var"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "var"

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "if"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "if"

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "while"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "while"

    const/16 v5, 0x20

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "for"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "for"

    const/16 v5, 0x21

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "continue"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "continue"

    const/16 v5, 0x22

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "break"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "break"

    const/16 v5, 0x23

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "return"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "return"

    const/16 v5, 0x24

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "with"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "with"

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "function"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "function"

    const/16 v5, 0x29

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "this"

    new-instance v3, Lgnu/ecmascript/Reserved;

    const-string v4, "this"

    const/16 v5, 0x28

    invoke-direct {v3, v4, v5}, Lgnu/ecmascript/Reserved;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "else"

    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lgnu/ecmascript/Lexer;->reserved:Ljava/util/Hashtable;

    const-string v2, "new"

    sget-object v3, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"

    .prologue
    .line 464
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v1

    .line 465
    .local v1, inp:Lgnu/mapping/InPort;
    new-instance v3, Lgnu/ecmascript/Lexer;

    invoke-direct {v3, v1}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    .line 470
    .local v3, reader:Lgnu/ecmascript/Lexer;
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, token:Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    .line 472
    .local v2, out:Lgnu/mapping/OutPort;
    const-string v5, "token:"

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 475
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 484
    .end local v2           #out:Lgnu/mapping/OutPort;
    .end local v4           #token:Ljava/lang/Object;
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 480
    .local v0, ex:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caught exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getIdentifier(I)Ljava/lang/String;
    .locals 7
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v1, v5, Lgnu/text/LineBufferedReader;->pos:I

    .line 263
    .local v1, i:I
    const/4 v5, 0x1

    sub-int v4, v1, v5

    .line 264
    .local v4, start:I
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v2, v5, Lgnu/text/LineBufferedReader;->limit:I

    .line 265
    .local v2, limit:I
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v0, v5, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 266
    .local v0, buffer:[C
    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v5, v0, v1

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v1, v5, Lgnu/text/LineBufferedReader;->pos:I

    .line 269
    if-ge v1, v2, :cond_1

    .line 270
    new-instance v5, Ljava/lang/String;

    sub-int v6, v1, v4

    invoke-direct {v5, v0, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 286
    :goto_1
    return-object v5

    .line 271
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v3, sbuf:Ljava/lang/StringBuffer;
    sub-int v5, v1, v4

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 275
    :goto_2
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 276
    if-gez p1, :cond_2

    .line 286
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 278
    :cond_2
    int-to-char v5, p1

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    int-to-char v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 282
    :cond_3
    iget-object v5, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->unread_quick()V

    goto :goto_3
.end method

.method public getNumericLiteral(I)Ljava/lang/Double;
    .locals 20
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v15, 0xa

    .line 78
    .local v15, radix:I
    const/16 v17, 0x30

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 81
    const/16 v17, 0x78

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    const/16 v17, 0x58

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 83
    :cond_0
    const/16 v15, 0x10

    .line 84
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    .line 90
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move v10, v0

    .line 91
    .local v10, i:I
    if-ltz p1, :cond_2

    .line 92
    add-int/lit8 v10, v10, -0x1

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move v0, v10

    move-object/from16 v1, v17

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Lgnu/ecmascript/Lexer;->readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J

    move-result-wide v11

    .line 95
    .local v11, ival:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v10

    if-le v0, v1, :cond_4

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 96
    .local v5, digit_seen:Z
    :goto_1
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v18, v0

    aget-char p1, v17, v18

    .line 99
    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x2e

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 102
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-ltz v17, :cond_5

    .line 103
    long-to-double v6, v11

    .line 107
    .local v6, dval:D
    :goto_2
    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 163
    .end local v6           #dval:D
    :goto_3
    return-object v17

    .line 86
    .end local v5           #digit_seen:Z
    .end local v10           #i:I
    .end local v11           #ival:J
    :cond_3
    const/16 v17, 0x2e

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x65

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x45

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 88
    const/16 v15, 0x8

    goto/16 :goto_0

    .line 95
    .restart local v10       #i:I
    .restart local v11       #ival:J
    :cond_4
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_1

    .line 105
    .restart local v5       #digit_seen:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v18, v0

    sub-int v18, v18, v10

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move v1, v10

    move/from16 v2, v18

    move v3, v15

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v6

    .restart local v6       #dval:D
    goto :goto_2

    .line 110
    .end local v6           #dval:D
    :cond_6
    const/16 v17, 0xa

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 111
    const-string v17, "invalid character in non-decimal number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 112
    :cond_7
    new-instance v16, Ljava/lang/StringBuffer;

    const/16 v17, 0x14

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v16, str:Ljava/lang/StringBuffer;
    if-eqz v5, :cond_8

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v18, v0

    sub-int v18, v18, v10

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v10

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 117
    :cond_8
    const/4 v14, -0x1

    .line 118
    .local v14, point_loc:I
    const/4 v8, 0x0

    .line 119
    .local v8, exp:I
    const/4 v9, 0x0

    .line 122
    .local v9, exp_seen:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 123
    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    if-ltz v17, :cond_9

    .line 125
    const/4 v5, 0x1

    .line 126
    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 129
    :cond_9
    sparse-switch p1, :sswitch_data_0

    .line 155
    :cond_a
    :goto_5
    if-ltz p1, :cond_b

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/text/LineBufferedReader;->unread()V

    .line 158
    :cond_b
    if-eqz v8, :cond_c

    .line 160
    const/16 v17, 0x65

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    :cond_c
    new-instance v17, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 132
    :sswitch_0
    if-ltz v14, :cond_d

    .line 133
    const-string v17, "duplicate \'.\' in number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 136
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 137
    const/16 v17, 0x2e

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 142
    :sswitch_1
    const/16 v17, 0xa

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v13

    .local v13, next:I
    const/16 v17, 0x2b

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    const/16 v17, 0x2d

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    move v0, v13

    int-to-char v0, v0

    move/from16 v17, v0

    const/16 v18, 0xa

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    if-ltz v17, :cond_a

    .line 145
    :cond_e
    if-nez v5, :cond_f

    .line 146
    const-string v17, "mantissa with no digits"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 147
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->readOptionalExponent()I

    move-result v8

    .line 148
    const/4 v9, 0x1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result p1

    goto :goto_5

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method public getStringLiteral(C)Ljava/lang/String;
    .locals 14
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x5c

    const/16 v12, 0xd

    const/16 v11, 0xa

    .line 169
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v4, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 170
    .local v4, i:I
    move v7, v4

    .line 171
    .local v7, start:I
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget v5, v9, Lgnu/text/LineBufferedReader;->limit:I

    .line 172
    .local v5, limit:I
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iget-object v0, v9, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 174
    .local v0, buffer:[C
    :goto_0
    if-ge v4, v5, :cond_1

    .line 176
    aget-char v1, v0, v4

    .line 177
    .local v1, c:C
    if-ne v1, p1, :cond_0

    .line 179
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    add-int/lit8 v10, v4, 0x1

    iput v10, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 180
    new-instance v9, Ljava/lang/String;

    sub-int v10, v4, v7

    invoke-direct {v9, v0, v7, v10}, Ljava/lang/String;-><init>([CII)V

    .line 192
    .end local v1           #c:C
    :goto_1
    return-object v9

    .line 182
    .restart local v1       #c:C
    :cond_0
    if-eq v1, v13, :cond_1

    if-eq v1, v11, :cond_1

    if-ne v1, v12, :cond_2

    .line 185
    .end local v1           #c:C
    :cond_1
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    iput v4, v9, Lgnu/text/LineBufferedReader;->pos:I

    .line 186
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v6, sbuf:Ljava/lang/StringBuffer;
    sub-int v9, v4, v7

    invoke-virtual {v6, v0, v7, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 190
    :goto_2
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 191
    .local v2, ch:I
    if-ne v2, p1, :cond_3

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 174
    .end local v2           #ch:I
    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v1           #c:C
    .restart local v2       #ch:I
    .restart local v6       #sbuf:Ljava/lang/StringBuffer;
    :cond_3
    if-gez v2, :cond_4

    .line 194
    const-string v9, "unterminated string literal"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 195
    :cond_4
    if-eq v2, v11, :cond_5

    if-ne v2, v12, :cond_6

    .line 196
    :cond_5
    const-string v9, "string literal not terminated before end of line"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    .line 197
    :cond_6
    if-ne v2, v13, :cond_7

    .line 199
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 201
    sparse-switch v2, :sswitch_data_0

    .line 234
    const/16 v9, 0x30

    if-lt v2, v9, :cond_7

    const/16 v9, 0x37

    if-le v2, v9, :cond_c

    .line 255
    :cond_7
    :goto_3
    :sswitch_0
    int-to-char v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 204
    :sswitch_1
    const-string v9, "eof following \'\\\' in string"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 206
    :sswitch_2
    const-string v9, "line terminator following \'\\\' in string"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->fatal(Ljava/lang/String;)V

    goto :goto_3

    .line 209
    :sswitch_3
    const/16 v2, 0x8

    goto :goto_3

    .line 210
    :sswitch_4
    const/16 v2, 0x9

    goto :goto_3

    .line 211
    :sswitch_5
    const/16 v2, 0xa

    goto :goto_3

    .line 212
    :sswitch_6
    const/16 v2, 0xc

    goto :goto_3

    .line 213
    :sswitch_7
    const/16 v2, 0xd

    goto :goto_3

    .line 215
    :sswitch_8
    const/4 v8, 0x0

    .line 216
    .local v8, val:I
    const/16 v9, 0x78

    if-ne v2, v9, :cond_a

    const/4 v9, 0x2

    move v4, v9

    :goto_4
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_9

    .line 218
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 219
    .local v3, d:I
    if-gez v3, :cond_8

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eof following \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in string"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 222
    :cond_8
    int-to-char v9, v3

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 223
    if-gez v3, :cond_b

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid char following \'\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in string"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 227
    const/16 v8, 0x3f

    .line 231
    .end local v3           #d:I
    :cond_9
    move v2, v8

    .line 232
    goto :goto_3

    .line 216
    :cond_a
    const/4 v9, 0x4

    move v4, v9

    goto :goto_4

    .line 229
    .restart local v3       #d:I
    :cond_b
    mul-int/lit8 v9, v8, 0x10

    add-int v8, v9, v3

    .line 230
    goto :goto_4

    .line 236
    .end local v3           #d:I
    .end local v8           #val:I
    :cond_c
    const/4 v8, 0x0

    .line 237
    .restart local v8       #val:I
    const/4 v4, 0x3

    :goto_5
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_e

    .line 239
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->read()I

    move-result v3

    .line 240
    .restart local v3       #d:I
    if-gez v3, :cond_d

    .line 241
    const-string v9, "eof in octal escape in string literal"

    invoke-virtual {p0, v9}, Lgnu/ecmascript/Lexer;->eofError(Ljava/lang/String;)V

    .line 242
    :cond_d
    int-to-char v9, v3

    const/16 v10, 0x8

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 243
    if-gez v3, :cond_f

    .line 245
    iget-object v9, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v9}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 250
    .end local v3           #d:I
    :cond_e
    move v2, v8

    goto/16 :goto_3

    .line 248
    .restart local v3       #d:I
    :cond_f
    mul-int/lit8 v9, v8, 0x8

    add-int v8, v9, v3

    .line 249
    goto :goto_5

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_7
        0x74 -> :sswitch_4
        0x75 -> :sswitch_8
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public getToken()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 325
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 328
    .local v0, ch:I
    :goto_0
    if-gez v0, :cond_0

    .line 329
    sget-object v3, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    .line 453
    :goto_1
    return-object v3

    .line 330
    :cond_0
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    sparse-switch v0, :sswitch_data_0

    .line 445
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 447
    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getIdentifier(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, word:Ljava/lang/String;
    invoke-static {v2}, Lgnu/ecmascript/Lexer;->checkReserved(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, token:Ljava/lang/Object;
    if-eqz v1, :cond_c

    move-object v3, v1

    .line 450
    goto :goto_1

    .line 332
    .end local v1           #token:Ljava/lang/Object;
    .end local v2           #word:Ljava/lang/String;
    :cond_1
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 334
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 335
    sget-object v3, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    goto :goto_1

    .line 337
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    iget-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    if-nez v3, :cond_3

    .line 338
    sget-object v3, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgnu/ecmascript/Lexer;->prevWasCR:Z

    .line 340
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    goto :goto_0

    .line 346
    :sswitch_0
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 347
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-gt v0, v3, :cond_4

    .line 348
    new-instance v3, Lgnu/expr/QuoteExp;

    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 349
    :cond_4
    sget-object v3, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    goto :goto_1

    .line 352
    :sswitch_1
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Lexer;->getNumericLiteral(I)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 354
    :sswitch_2
    new-instance v3, Lgnu/expr/QuoteExp;

    int-to-char v4, v0

    invoke-virtual {p0, v4}, Lgnu/ecmascript/Lexer;->getStringLiteral(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 355
    :sswitch_3
    sget-object v3, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    goto :goto_1

    .line 356
    :sswitch_4
    sget-object v3, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    goto :goto_1

    .line 357
    :sswitch_5
    sget-object v3, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    goto :goto_1

    .line 358
    :sswitch_6
    sget-object v3, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    goto :goto_1

    .line 359
    :sswitch_7
    sget-object v3, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    goto :goto_1

    .line 360
    :sswitch_8
    sget-object v3, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 361
    :sswitch_9
    sget-object v3, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 362
    :sswitch_a
    sget-object v3, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 363
    :sswitch_b
    sget-object v3, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 364
    :sswitch_c
    sget-object v3, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 366
    :sswitch_d
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 368
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 369
    sget-object v3, Lgnu/ecmascript/Reserved;->opEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .line 371
    :cond_5
    sget-object v3, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 373
    :sswitch_e
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 375
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 376
    sget-object v3, Lgnu/ecmascript/Reserved;->opNotEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .line 378
    :cond_6
    sget-object v3, Lgnu/ecmascript/Lexer;->notToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 380
    :sswitch_f
    sget-object v3, Lgnu/ecmascript/Lexer;->tildeToken:Lgnu/text/Char;

    goto/16 :goto_1

    .line 381
    :sswitch_10
    sget-object v3, Lgnu/ecmascript/Reserved;->opTimes:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 382
    :sswitch_11
    sget-object v3, Lgnu/ecmascript/Reserved;->opDivide:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 383
    :sswitch_12
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitXor:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 384
    :sswitch_13
    sget-object v3, Lgnu/ecmascript/Reserved;->opRemainder:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 386
    :sswitch_14
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_7

    .line 388
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 389
    sget-object v3, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 391
    :cond_7
    sget-object v3, Lgnu/ecmascript/Reserved;->opPlus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 393
    :sswitch_15
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8

    .line 395
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 396
    sget-object v3, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 398
    :cond_8
    sget-object v3, Lgnu/ecmascript/Reserved;->opMinus:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 400
    :sswitch_16
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_9

    .line 402
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 403
    sget-object v3, Lgnu/ecmascript/Reserved;->opBoolAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 405
    :cond_9
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitAnd:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 407
    :sswitch_17
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_a

    .line 409
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 410
    sget-object v3, Lgnu/ecmascript/Reserved;->opBoolOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 412
    :cond_a
    sget-object v3, Lgnu/ecmascript/Reserved;->opBitOr:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 414
    :sswitch_18
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 415
    packed-switch v0, :pswitch_data_0

    .line 429
    sget-object v3, Lgnu/ecmascript/Reserved;->opGreater:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .line 418
    :pswitch_0
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 419
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_b

    .line 421
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 422
    sget-object v3, Lgnu/ecmascript/Reserved;->opRshiftUnsigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 424
    :cond_b
    sget-object v3, Lgnu/ecmascript/Reserved;->opRshiftSigned:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 426
    :pswitch_1
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 427
    sget-object v3, Lgnu/ecmascript/Reserved;->opGreaterEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .line 432
    :sswitch_19
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_1

    .line 442
    sget-object v3, Lgnu/ecmascript/Reserved;->opLess:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .line 436
    :pswitch_2
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 437
    sget-object v3, Lgnu/ecmascript/Reserved;->opLshift:Lgnu/ecmascript/Reserved;

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Lexer;->maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_1

    .line 439
    :pswitch_3
    iget-object v3, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 440
    sget-object v3, Lgnu/ecmascript/Reserved;->opLessEqual:Lgnu/ecmascript/Reserved;

    goto/16 :goto_1

    .restart local v1       #token:Ljava/lang/Object;
    .restart local v2       #word:Ljava/lang/String;
    :cond_c
    move-object v3, v2

    .line 451
    goto/16 :goto_1

    .line 453
    .end local v1           #token:Ljava/lang/Object;
    .end local v2           #word:Ljava/lang/String;
    :cond_d
    int-to-char v3, v0

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    goto/16 :goto_1

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_e
        0x22 -> :sswitch_2
        0x25 -> :sswitch_13
        0x26 -> :sswitch_16
        0x27 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_4
        0x2a -> :sswitch_10
        0x2b -> :sswitch_14
        0x2c -> :sswitch_c
        0x2d -> :sswitch_15
        0x2e -> :sswitch_0
        0x2f -> :sswitch_11
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_a
        0x3b -> :sswitch_b
        0x3c -> :sswitch_19
        0x3d -> :sswitch_d
        0x3e -> :sswitch_18
        0x3f -> :sswitch_9
        0x5b -> :sswitch_5
        0x5d -> :sswitch_6
        0x5e -> :sswitch_12
        0x7b -> :sswitch_7
        0x7c -> :sswitch_17
        0x7d -> :sswitch_8
        0x7e -> :sswitch_f
    .end sparse-switch

    .line 415
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public maybeAssignment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lgnu/ecmascript/Lexer;->read()I

    move-result v0

    .line 294
    .local v0, ch:I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 296
    const-string v1, "assignment operation not implemented"

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Lexer;->error(Ljava/lang/String;)V

    .line 299
    :cond_0
    if-ltz v0, :cond_1

    .line 300
    iget-object v1, p0, Lgnu/ecmascript/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 301
    :cond_1
    return-object p1
.end method
