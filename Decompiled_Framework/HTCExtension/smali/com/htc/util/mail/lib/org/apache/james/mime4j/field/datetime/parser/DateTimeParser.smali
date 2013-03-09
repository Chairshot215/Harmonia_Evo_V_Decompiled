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

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0()V

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1()V

    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    :try_start_0
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getMilitaryZoneOffset(C)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v1, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    return-void

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

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    return-void

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

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget v0, v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseLine()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-direct {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->month()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->year()Ljava/lang/String;

    move-result-object v2

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

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    move-result-object v9

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

    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day_of_week()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

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

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

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

    const/4 v3, -0x1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    :goto_1
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    return-object v0

    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

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

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x31

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    aput-boolean v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    aput-boolean v6, v3, v4

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    aput-boolean v6, v3, v2

    :cond_2
    sget-object v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_7

    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    aput v1, v4, v8

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v6, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v0, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v0

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

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x0

    move-object v2, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v3, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    invoke-virtual {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->next:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

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

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

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

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

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

    const/16 v2, 0xc

    const/16 v1, 0xb

    const/4 v0, 0x3

    const/4 v4, -0x1

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v2, v1, v0

    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v0, 0x8

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v0, 0x9

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/16 v0, 0xa

    goto :goto_1

    :pswitch_a
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v1

    goto :goto_1

    :pswitch_b
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v2

    goto :goto_1

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

    const/4 v5, -0x1

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v4, v2, v3

    invoke-direct {p0, v5}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x0

    :goto_1
    mul-int/lit8 v2, v1, 0x64

    return v2

    :pswitch_1
    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x5

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x4

    goto :goto_1

    :pswitch_4
    const/16 v2, 0x1d

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x6

    goto :goto_1

    :pswitch_5
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x5

    goto :goto_1

    :pswitch_6
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x7

    goto :goto_1

    :pswitch_7
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x6

    goto :goto_1

    :pswitch_8
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x8

    goto :goto_1

    :pswitch_9
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    const/4 v1, -0x7

    goto :goto_1

    :pswitch_a
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    iget-object v2, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->getMilitaryZoneOffset(C)I

    move-result v1

    goto :goto_1

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

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v0
.end method

.method public final parseLine()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v3, v1, v2

    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    return-object v0

    :cond_0
    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

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

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

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

    const/16 v6, 0x17

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->hour()I

    move-result v0

    invoke-direct {p0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->minute()I

    move-result v1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x4

    iget v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    :goto_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->zone()I

    move-result v3

    new-instance v4, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;-><init>(IIII)V

    return-object v4

    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->second()I

    move-result v2

    goto :goto_1

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

    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

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

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    if-ne v4, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    move-result v4

    :goto_0
    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    const/4 v5, 0x5

    iget v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    aput v6, v4, v5

    invoke-direct {p0, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    new-instance v3, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v3

    :cond_0
    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    goto :goto_0

    :pswitch_0
    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    const/16 v4, 0x2e

    invoke-direct {p0, v4}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v4

    iget-object v5, v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    mul-int v2, v4, v3

    :goto_2
    return v2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->obs_zone()I

    move-result v2

    goto :goto_2

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
