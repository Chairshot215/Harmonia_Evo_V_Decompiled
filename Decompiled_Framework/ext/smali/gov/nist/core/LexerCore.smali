.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final ALPHA:I = 0x1003

.field static final ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final ALPHA_VALID_CHARS:C = '\uffff'

.field public static final AND:I = 0x26

.field public static final AT:I = 0x40

.field public static final BACKSLASH:I = 0x5c

.field public static final BACK_QUOTE:I = 0x60

.field public static final BAR:I = 0x7c

.field public static final COLON:I = 0x3a

.field public static final DIGIT:I = 0x1002

.field static final DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final DOLLAR:I = 0x24

.field public static final DOT:I = 0x2e

.field public static final DOUBLEQUOTE:I = 0x22

.field public static final END:I = 0x1000

.field public static final EQUALS:I = 0x3d

.field public static final EXCLAMATION:I = 0x21

.field public static final GREATER_THAN:I = 0x3e

.field public static final HAT:I = 0x5e

.field public static final HT:I = 0x9

.field public static final ID:I = 0xfff

.field public static final LESS_THAN:I = 0x3c

.field public static final LPAREN:I = 0x28

.field public static final L_CURLY:I = 0x7b

.field public static final L_SQUARE_BRACKET:I = 0x5b

.field public static final MINUS:I = 0x2d

.field public static final NULL:I = 0x0

.field public static final PERCENT:I = 0x25

.field public static final PLUS:I = 0x2b

.field public static final POUND:I = 0x23

.field public static final QUESTION:I = 0x3f

.field public static final QUOTE:I = 0x27

.field public static final RPAREN:I = 0x29

.field public static final R_CURLY:I = 0x7d

.field public static final R_SQUARE_BRACKET:I = 0x5d

.field public static final SAFE:I = 0xffe

.field public static final SEMICOLON:I = 0x3b

.field public static final SLASH:I = 0x2f

.field public static final SP:I = 0x20

.field public static final STAR:I = 0x2a

.field public static final START:I = 0x800

.field public static final TILDE:I = 0x7e

.field public static final UNDERSCORE:I = 0x5f

.field public static final WHITESPACE:I = 0x1001

.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    const-string v0, "charLexer"

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isTokenChar(C)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public SPorHT()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    :goto_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    return-void
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2

    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0
.end method

.method public byteStringNoComma()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public charAsString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public comment()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    :goto_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_2
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public consumeValidChars([C)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v4, p1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    aget-char v3, p1, v0

    packed-switch v3, :pswitch_data_0

    if-ne v2, v3, :cond_2

    move v1, v5

    :goto_2
    if-eqz v1, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_1
    return-void

    :pswitch_0
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    goto :goto_2

    :pswitch_1
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    goto :goto_2

    :pswitch_2
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createParseException()Ljava/text/ParseException;
    .locals 3

    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getNextId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextToken()Lgov/nist/core/Token;
    .locals 1

    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0
.end method

.method public getPtr()I
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unexpected EOL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_2
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public lookupToken(I)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x800

    if-le p1, v1, :cond_0

    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public markInputPosition()I
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return v0
.end method

.method public match(I)Lgov/nist/core/Token;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, 0xffe

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v5, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/16 v5, 0x800

    if-le p1, v5, :cond_8

    if-ge p1, v11, :cond_8

    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v10, v5, Lgov/nist/core/Token;->tokenType:I

    :cond_2
    :goto_0
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v5

    :cond_3
    if-ne p1, v9, :cond_5

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nID expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v9, v5, Lgov/nist/core/Token;->tokenType:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_7

    :cond_6
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nUnexpected Token : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_7
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v4, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    goto/16 :goto_0

    :cond_8
    if-le p1, v11, :cond_c

    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x1002

    if-ne p1, v5, :cond_a

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting DIGIT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_9
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x1003

    if-ne p1, v5, :cond_2

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting ALPHA"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_b
    new-instance v5, Lgov/nist/core/Token;

    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    :cond_c
    int-to-char v0, p1

    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v0, :cond_d

    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    goto/16 :goto_0

    :cond_d
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nExpecting  >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<< got >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<<<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5
.end method

.method public number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Unexpected token at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public peekNextId()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iput v2, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-object v1
.end method

.method public peekNextToken()Lgov/nist/core/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekNextToken(I)[Lgov/nist/core/Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    new-array v5, p1, [Lgov/nist/core/Token;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    new-instance v6, Lgov/nist/core/Token;

    invoke-direct {v6}, Lgov/nist/core/Token;-><init>()V

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    :goto_1
    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v8, 0xfff

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x1003

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x1002

    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_3
    iput v3, v6, Lgov/nist/core/Token;->tokenType:I

    goto :goto_1

    :cond_4
    iget v8, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iput v8, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-object v5
.end method

.method public quotedString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v4, 0x22

    const/4 v3, 0x1

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_3
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_1
.end method

.method public rewindInputPosition(I)V
    .locals 0

    iput p1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    return-void
.end method

.method public startsId()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startsSafeToken()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    :sswitch_0
    return v2

    :cond_0
    sparse-switch v1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public ttoken()Ljava/lang/String;
    .locals 5

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    iget-object v3, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v4, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1
.end method

.method public ttokenSafe()Ljava/lang/String;
    .locals 6

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    const/4 v1, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_2
    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v5, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method
