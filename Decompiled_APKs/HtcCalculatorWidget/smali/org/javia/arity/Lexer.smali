.class Lorg/javia/arity/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final ADD:I = 0x1

.field static final CALL:I = 0xb

.field static final COMMA:I = 0xc

.field static final CONST:I = 0xa

.field static final DIV:I = 0x4

.field static final END:I = 0xf

.field private static final END_MARKER:C = '$'

.field static final FACT:I = 0x8

.field static final LPAREN:I = 0xd

.field static final MOD:I = 0x5

.field static final MUL:I = 0x3

.field static final NUMBER:I = 0x9

.field static final PERCENT:I = 0x11

.field static final POWER:I = 0x7

.field static final RPAREN:I = 0xe

.field static final SQRT:I = 0x10

.field static final SUB:I = 0x2

.field static final TOK_ADD:Lorg/javia/arity/Token; = null

.field static final TOK_COMMA:Lorg/javia/arity/Token; = null

.field static final TOK_CONST:Lorg/javia/arity/Token; = null

.field static final TOK_DIV:Lorg/javia/arity/Token; = null

.field static final TOK_END:Lorg/javia/arity/Token; = null

.field static final TOK_FACT:Lorg/javia/arity/Token; = null

.field static final TOK_LPAREN:Lorg/javia/arity/Token; = null

.field static final TOK_MOD:Lorg/javia/arity/Token; = null

.field static final TOK_MUL:Lorg/javia/arity/Token; = null

.field static final TOK_NUMBER:Lorg/javia/arity/Token; = null

.field static final TOK_PERCENT:Lorg/javia/arity/Token; = null

.field static final TOK_POWER:Lorg/javia/arity/Token; = null

.field static final TOK_RPAREN:Lorg/javia/arity/Token; = null

.field static final TOK_SQRT:Lorg/javia/arity/Token; = null

.field static final TOK_SUB:Lorg/javia/arity/Token; = null

.field static final TOK_UMIN:Lorg/javia/arity/Token; = null

.field static final UMIN:I = 0x6

.field private static final UNICODE_DIV:C = '\u00f7'

.field private static final UNICODE_MINUS:C = '\u2212'

.field private static final UNICODE_MUL:C = '\u00d7'

.field private static final UNICODE_SQRT:C = '\u221a'

.field private static final WHITESPACE:Ljava/lang/String; = " \n\r\t"


# instance fields
.field private exception:Lorg/javia/arity/SyntaxException;

.field private input:[C

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 40
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x3

    invoke-direct {v0, v8, v7, v6, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    .line 41
    new-instance v0, Lorg/javia/arity/Token;

    invoke-direct {v0, v6, v7, v6, v7}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    .line 43
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v6, v2}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    .line 44
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x6

    invoke-direct {v0, v7, v2, v6, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    .line 45
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v2, v6, v1}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    .line 47
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v8, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 49
    new-instance v0, Lorg/javia/arity/Token;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    .line 51
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v7, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    .line 52
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x11

    const/16 v2, 0x9

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v7, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_PERCENT:Lorg/javia/arity/Token;

    .line 54
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x10

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v8, v3}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    .line 56
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v8, v8, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    .line 57
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 58
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v6, v5, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    .line 59
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v5, v5, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    .line 61
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0x9

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v5, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    .line 62
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xa

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v5, v5}, Lorg/javia/arity/Token;-><init>(IIII)V

    sput-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 77
    iput-object p1, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    .line 78
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 98
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_0

    .line 99
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    .line 101
    :cond_0
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    const/16 v2, 0x24

    aput-char v2, v1, v0

    .line 103
    iput v3, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 104
    return-void
.end method


# virtual methods
.method nextToken()Lorg/javia/arity/Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/4 v2, 0x0

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 107
    :goto_0
    const-string v0, " \n\r\t"

    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v3, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 108
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    iget v1, p0, Lorg/javia/arity/Lexer;->pos:I

    aget-char v1, v0, v1

    .line 112
    iget v3, p0, Lorg/javia/arity/Lexer;->pos:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 114
    packed-switch v1, :pswitch_data_0

    .line 128
    :pswitch_0
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 129
    if-gt v6, v1, :cond_1

    if-le v1, v7, :cond_2

    :cond_1
    const/16 v4, 0x2e

    if-ne v1, v4, :cond_11

    .line 130
    :cond_2
    if-ne v1, v6, :cond_9

    .line 131
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 132
    const/16 v5, 0x78

    if-ne v4, v5, :cond_7

    const/16 v2, 0x10

    .line 133
    :cond_3
    :goto_1
    if-lez v2, :cond_9

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 136
    :goto_2
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v4, v0

    .line 138
    const/16 v4, 0x61

    if-gt v4, v0, :cond_4

    const/16 v4, 0x7a

    if-le v0, v4, :cond_20

    :cond_4
    if-gt v8, v0, :cond_5

    if-le v0, v9, :cond_20

    :cond_5
    if-gt v6, v0, :cond_6

    if-le v0, v7, :cond_20

    .line 140
    :cond_6
    iget-object v0, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v1, -0x3

    sub-int/2addr v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 141
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 143
    :try_start_0
    sget-object v4, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_3
    return-object v0

    .line 115
    :pswitch_1
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_FACT:Lorg/javia/arity/Token;

    goto :goto_3

    .line 116
    :pswitch_2
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    goto :goto_3

    .line 117
    :pswitch_3
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_PERCENT:Lorg/javia/arity/Token;

    goto :goto_3

    .line 118
    :pswitch_4
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MOD:Lorg/javia/arity/Token;

    goto :goto_3

    .line 119
    :pswitch_5
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    goto :goto_3

    .line 120
    :pswitch_6
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    goto :goto_3

    .line 121
    :pswitch_7
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    goto :goto_3

    .line 122
    :pswitch_8
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_ADD:Lorg/javia/arity/Token;

    goto :goto_3

    .line 123
    :pswitch_9
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_COMMA:Lorg/javia/arity/Token;

    goto :goto_3

    .line 124
    :pswitch_a
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    goto :goto_3

    .line 125
    :pswitch_b
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    goto :goto_3

    .line 132
    :cond_7
    const/16 v5, 0x62

    if-ne v4, v5, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    :cond_8
    const/16 v5, 0x6f

    if-ne v4, v5, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    invoke-static {v4, v3, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 150
    :cond_9
    :goto_4
    if-gt v6, v1, :cond_a

    if-le v1, v7, :cond_b

    :cond_a
    const/16 v2, 0x2e

    if-eq v1, v2, :cond_b

    const/16 v2, 0x45

    if-eq v1, v2, :cond_b

    const/16 v2, 0x65

    if-ne v1, v2, :cond_f

    .line 152
    :cond_b
    const/16 v2, 0x45

    if-eq v1, v2, :cond_c

    const/16 v2, 0x65

    if-ne v1, v2, :cond_e

    :cond_c
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2212

    if-ne v1, v2, :cond_e

    .line 153
    :cond_d
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    const/16 v2, 0x2d

    aput-char v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_e
    iget-object v2, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v2, v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_4

    .line 158
    :cond_f
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 159
    iget-object v1, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 162
    :try_start_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 163
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_3

    .line 165
    :cond_10
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 166
    sget-object v4, Lorg/javia/arity/Lexer;->TOK_NUMBER:Lorg/javia/arity/Token;

    invoke-virtual {v4, v1, v2}, Lorg/javia/arity/Token;->setValue(D)Lorg/javia/arity/Token;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_3

    .line 168
    :catch_1
    move-exception v1

    .line 169
    iget-object v1, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 171
    :cond_11
    const/16 v4, 0x61

    if-gt v4, v1, :cond_12

    const/16 v4, 0x7a

    if-le v1, v4, :cond_13

    :cond_12
    if-gt v8, v1, :cond_1a

    if-gt v1, v9, :cond_1a

    .line 174
    :cond_13
    :goto_5
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v4, v0

    .line 176
    const/16 v4, 0x61

    if-gt v4, v0, :cond_14

    const/16 v4, 0x7a

    if-le v0, v4, :cond_1f

    :cond_14
    if-gt v8, v0, :cond_15

    if-le v0, v9, :cond_1f

    :cond_15
    if-gt v6, v0, :cond_16

    if-le v0, v7, :cond_1f

    .line 178
    :cond_16
    const/16 v4, 0x27

    if-ne v0, v4, :cond_17

    .line 179
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v4, v1

    move v10, v0

    move v0, v1

    move v1, v10

    .line 181
    :cond_17
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v3

    invoke-static {v4, v3, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_6
    const-string v4, " \n\r\t"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    .line 183
    iget-object v4, p0, Lorg/javia/arity/Lexer;->input:[C

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v4, v1

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_6

    .line 185
    :cond_18
    const/16 v4, 0x28

    if-ne v0, v4, :cond_19

    .line 186
    iput v1, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 187
    new-instance v0, Lorg/javia/arity/Token;

    const/16 v1, 0xb

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v2}, Lorg/javia/arity/Token;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_3

    .line 189
    :cond_19
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 190
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    invoke-virtual {v0, v3}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_3

    .line 192
    :cond_1a
    const/16 v0, 0x391

    if-lt v1, v0, :cond_1b

    const/16 v0, 0x3a9

    if-le v1, v0, :cond_1d

    :cond_1b
    const/16 v0, 0x3b1

    if-lt v1, v0, :cond_1c

    const/16 v0, 0x3c9

    if-le v1, v0, :cond_1d

    :cond_1c
    const/16 v0, 0x221e

    if-ne v1, v0, :cond_1e

    .line 194
    :cond_1d
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_CONST:Lorg/javia/arity/Token;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/javia/arity/Token;->setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;

    move-result-object v0

    goto/16 :goto_3

    .line 196
    :cond_1e
    sparse-switch v1, :sswitch_data_0

    .line 208
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 198
    :sswitch_0
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_POWER:Lorg/javia/arity/Token;

    goto/16 :goto_3

    .line 200
    :sswitch_1
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    goto/16 :goto_3

    .line 202
    :sswitch_2
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_DIV:Lorg/javia/arity/Token;

    goto/16 :goto_3

    .line 204
    :sswitch_3
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SUB:Lorg/javia/arity/Token;

    goto/16 :goto_3

    .line 206
    :sswitch_4
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_SQRT:Lorg/javia/arity/Token;

    goto/16 :goto_3

    :cond_1f
    move v0, v1

    goto/16 :goto_5

    :cond_20
    move v0, v1

    goto/16 :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x5e -> :sswitch_0
        0xd7 -> :sswitch_1
        0xf7 -> :sswitch_2
        0x2212 -> :sswitch_3
        0x221a -> :sswitch_4
    .end sparse-switch
.end method

.method scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x24

    .line 81
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    iput-object p1, v0, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lorg/javia/arity/Lexer;->exception:Lorg/javia/arity/SyntaxException;

    const-string v1, "Invalid character \'$\'"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lorg/javia/arity/Lexer;->init(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lorg/javia/arity/TokenConsumer;->start()V

    .line 89
    :cond_1
    iget v0, p0, Lorg/javia/arity/Lexer;->pos:I

    .line 90
    invoke-virtual {p0}, Lorg/javia/arity/Lexer;->nextToken()Lorg/javia/arity/Token;

    move-result-object v1

    .line 91
    iput v0, v1, Lorg/javia/arity/Token;->position:I

    .line 92
    invoke-virtual {p2, v1}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 93
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_END:Lorg/javia/arity/Token;

    if-ne v1, v0, :cond_1

    .line 94
    return-void
.end method
