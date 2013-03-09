.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;,
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    }
.end annotation


# static fields
.field private static final ignoreMilitaryZoneOffset:Z = true

.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

.field private jj_ntk:I

.field public token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

.field public token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 418
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0()V

    .line 419
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1()V

    .line 420
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 4
    .parameter "tm"

    .prologue
    const/4 v3, 0x7

    const/4 v2, -0x1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 524
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 526
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 471
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 472
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 473
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 474
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 475
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v6, 0x7

    const/4 v5, -0x1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 524
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 526
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 432
    :try_start_0
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 434
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 435
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 436
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 437
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 438
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .parameter "stream"

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 524
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    .line 526
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 453
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    .line 454
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 455
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 456
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 457
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method private static getMilitaryZoneOffset(C)I
    .locals 1
    .parameter "c"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 3
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .local v0, oldToken:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 490
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 491
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 492
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 493
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v1

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0

    .line 495
    :cond_1
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 496
    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 497
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    .line 423
    return-void

    .line 422
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xf0t 0x7t 0x0t 0x0t
        0xf0t 0x7t 0x0t 0x0t
        0x0t 0xf8t 0x7ft 0x0t
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0x0t 0xfet
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    .line 426
    return-void

    .line 425
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 521
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 29
    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;)V

    .line 30
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;
    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseLine()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    .end local v0           #parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;
    :catch_0
    move-exception v1

    .line 32
    .local v1, x:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    return-void
.end method

.method private static parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 479
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 480
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 481
    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 482
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 446
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 447
    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 448
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 449
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 450
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 462
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 463
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    .line 464
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 465
    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 466
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 467
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method public final date()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day()I

    move-result v0

    .line 205
    .local v0, d:I
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->month()I

    move-result v1

    .line 206
    .local v1, m:I
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->year()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, y:Ljava/lang/String;
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    invoke-direct {v3, v2, v1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;-><init>(Ljava/lang/String;II)V

    return-object v3
.end method

.method public final date_time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 153
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    .line 156
    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    move-result-object v8

    .line 157
    .local v8, d:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    move-result-object v9

    .line 158
    .local v9, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;

    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getMonth()I

    move-result v2

    invoke-virtual {v8}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getDay()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getHour()I

    move-result v4

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getMinute()I

    move-result v5

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getSecond()I

    move-result v6

    invoke-virtual {v9}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getZone()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;-><init>(Ljava/lang/String;IIIIII)V

    return-object v0

    .line 141
    .end local v8           #d:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
    .end local v9           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day_of_week()Ljava/lang/String;

    .line 150
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final day()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 214
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final day_of_week()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 171
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 194
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    .line 195
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 196
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 171
    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 173
    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    return-object v0

    .line 176
    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 179
    :pswitch_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 182
    :pswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 185
    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 188
    :pswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 191
    :pswitch_6
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x31

    const/4 v6, 0x1

    .line 529
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 530
    new-array v3, v7, [Z

    .line 531
    .local v3, la1tokens:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 532
    aput-boolean v8, v3, v1

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 535
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 536
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 538
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v1, v4, :cond_5

    .line 539
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    .line 540
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 541
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 542
    aput-boolean v6, v3, v2

    .line 544
    :cond_2
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 545
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 540
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 538
    .end local v2           #j:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_7

    .line 551
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 552
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    .line 553
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 554
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 550
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 557
    :cond_7
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 558
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 559
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 561
    :cond_8
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 503
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 504
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 505
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 509
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 510
    .local v1, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .local v2, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 511
    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 510
    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_0

    .line 512
    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .end local v2           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    goto :goto_1

    .line 514
    .end local v1           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v2       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :cond_1
    return-object v2
.end method

.method public final hour()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 304
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 305
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final minute()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 311
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 312
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final month()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    const/4 v0, 0x3

    const/4 v4, -0x1

    .line 219
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 269
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v1, v0

    .line 270
    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 271
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 219
    :cond_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 222
    const/4 v0, 0x1

    .line 266
    :goto_1
    return v0

    .line 225
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 226
    const/4 v0, 0x2

    goto :goto_1

    .line 229
    :pswitch_2
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 233
    :pswitch_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 234
    const/4 v0, 0x4

    goto :goto_1

    .line 237
    :pswitch_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 238
    const/4 v0, 0x5

    goto :goto_1

    .line 241
    :pswitch_5
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 242
    const/4 v0, 0x6

    goto :goto_1

    .line 245
    :pswitch_6
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 246
    const/4 v0, 0x7

    goto :goto_1

    .line 249
    :pswitch_7
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 250
    const/16 v0, 0x8

    goto :goto_1

    .line 253
    :pswitch_8
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 254
    const/16 v0, 0x9

    goto :goto_1

    .line 257
    :pswitch_9
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 258
    const/16 v0, 0xa

    goto :goto_1

    .line 261
    :pswitch_a
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v1

    .line 262
    goto :goto_1

    .line 265
    :pswitch_b
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v2

    .line 266
    goto :goto_1

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final obs_zone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 355
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 401
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v2, v3

    .line 402
    invoke-direct {p0, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 403
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v2

    .line 355
    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 357
    :pswitch_0
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 358
    const/4 v1, 0x0

    .line 405
    .local v1, z:I
    :goto_1
    mul-int/lit8 v2, v1, 0x64

    return v2

    .line 361
    .end local v1           #z:I
    :pswitch_1
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 362
    const/4 v1, 0x0

    .line 363
    .restart local v1       #z:I
    goto :goto_1

    .line 365
    .end local v1           #z:I
    :pswitch_2
    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 366
    const/4 v1, -0x5

    .line 367
    .restart local v1       #z:I
    goto :goto_1

    .line 369
    .end local v1           #z:I
    :pswitch_3
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 370
    const/4 v1, -0x4

    .line 371
    .restart local v1       #z:I
    goto :goto_1

    .line 373
    .end local v1           #z:I
    :pswitch_4
    const/16 v2, 0x1d

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 374
    const/4 v1, -0x6

    .line 375
    .restart local v1       #z:I
    goto :goto_1

    .line 377
    .end local v1           #z:I
    :pswitch_5
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 378
    const/4 v1, -0x5

    .line 379
    .restart local v1       #z:I
    goto :goto_1

    .line 381
    .end local v1           #z:I
    :pswitch_6
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 382
    const/4 v1, -0x7

    .line 383
    .restart local v1       #z:I
    goto :goto_1

    .line 385
    .end local v1           #z:I
    :pswitch_7
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 386
    const/4 v1, -0x6

    .line 387
    .restart local v1       #z:I
    goto :goto_1

    .line 389
    .end local v1           #z:I
    :pswitch_8
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 390
    const/4 v1, -0x8

    .line 391
    .restart local v1       #z:I
    goto :goto_1

    .line 393
    .end local v1           #z:I
    :pswitch_9
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 394
    const/4 v1, -0x7

    .line 395
    .restart local v1       #z:I
    goto :goto_1

    .line 397
    .end local v1           #z:I
    :pswitch_a
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 398
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->getMilitaryZoneOffset(C)I

    move-result v1

    .line 399
    .restart local v1       #z:I
    goto :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final parseAll()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    .line 134
    .local v0, dt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 135
    return-object v0
.end method

.method public final parseLine()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    .line 118
    .local v0, dt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 123
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v3, v1, v2

    .line 126
    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 127
    return-object v0

    .line 118
    :cond_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 120
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final second()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 318
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 319
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v1

    return v1
.end method

.method public final time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x17

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, s:I
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->hour()I

    move-result v0

    .line 286
    .local v0, h:I
    invoke-direct {p0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 287
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->minute()I

    move-result v1

    .line 288
    .local v1, m:I
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 294
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x4

    iget v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    .line 297
    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->zone()I

    move-result v3

    .line 298
    .local v3, z:I
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;-><init>(IIII)V

    return-object v4

    .line 288
    .end local v3           #z:I
    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 290
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 291
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->second()I

    move-result v2

    .line 292
    goto :goto_1

    .line 288
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final year()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 278
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 279
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method public final zone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 325
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 345
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x5

    iget v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    .line 346
    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    .line 347
    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v3

    .line 325
    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    .line 327
    :pswitch_0
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 328
    .local v0, t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 329
    .local v1, u:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v4

    iget-object v5, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    mul-int v2, v4, v3

    .line 349
    .end local v0           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .end local v1           #u:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .local v2, z:I
    :goto_2
    return v2

    .line 329
    .end local v2           #z:I
    .restart local v0       #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .restart local v1       #u:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 342
    .end local v0           #t:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .end local v1           #u:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->obs_zone()I

    move-result v2

    .line 343
    .restart local v2       #z:I
    goto :goto_2

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
