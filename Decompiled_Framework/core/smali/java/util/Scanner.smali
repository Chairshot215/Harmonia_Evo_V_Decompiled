.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$DataType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final DEFAULT_TRUNK_SIZE:I = 0x400

.field private static final DIPLOID:I = 0x2

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cacheHasNextValue:Ljava/lang/Object;

.field private cachehasNextIndex:I

.field private closed:Z

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private integerRadix:I

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v1, "\\p{javaWhitespace}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    const-string v1, "true|false"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")|.+("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(?s).*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "charsetName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const/16 v1, 0xa

    iput v1, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->bufferLength:I

    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iput-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    invoke-direct {p0}, Ljava/util/Scanner;->initialization()V

    return-void
.end method

.method private addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, ""

    const-string v1, ""

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, ""

    const-string v1, ""

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private checkClosed()V
    .locals 1

    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkNull(Ljava/util/regex/Pattern;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkRadix(I)V
    .locals 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private expandBuffer()V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    mul-int/lit8 v1, v2, 0x2

    new-array v0, v1, [C

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private findPostDelimiter()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    goto :goto_1
.end method

.method private findPreDelimiter()I
    .locals 4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    goto :goto_1
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v15}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v15

    check-cast v15, Ljava/text/DecimalFormat;

    move-object/from16 v0, p0

    iput-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "([0-9]|(\\p{javaDigit}))"

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "[\\p{javaDigit}&&[^0]]"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\\"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "*+|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "++)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "([eE][+-]?"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "+)?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(([-+]?"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "))"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "([-+]?0[xX][0-9a-fA-F]*"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\\."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v15}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v15

    invoke-virtual {v15}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v15}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v15

    invoke-virtual {v15}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "(NaN|\\Q"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\E|Infinity|\\Q"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\\E)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "((([-+]?("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")))|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")|("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "))"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    return-object v6
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .locals 10

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    iget-object v8, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    check-cast v8, Ljava/text/DecimalFormat;

    iput-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    const/4 v8, 0x0

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v1, v8, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|\\p{javaDigit})"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "((?i)["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Ljava/util/Scanner;->getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(([-+]?("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")))|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")|("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    return-object v4
.end method

.method private getNumeral(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")+)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++)|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private initialization()V
    .locals 2

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method private readMore()V
    .locals 6

    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, -0x1

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    const/4 v3, -0x1

    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_1
.end method

.method private recoverPreviousStatus()V
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0xa

    const/4 v9, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v3

    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v9, v5, :cond_0

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v7, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    if-ne v7, p2, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "NaN"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_4

    move-object v4, v6

    :cond_4
    if-eq v9, v5, :cond_5

    const-string v7, "."

    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v3, :cond_6

    const/4 v7, 0x0

    const/16 v8, 0x2d

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v8

    invoke-virtual {v8}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "Infinity"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v9, v7, :cond_9

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v4, v3, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v4, v1, :cond_2

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v4, v1, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/util/Scanner$DataType;->FLOAT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x0

    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v8, v5, :cond_5

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private resetMatcher()V
    .locals 3

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    :goto_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method private saveCurrentStatus()V
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    if-ne v5, p1, :cond_0

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_0

    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v0, 0x1

    :cond_0
    if-eq v5, p1, :cond_1

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private setTokenRegion()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->findPostDelimiter()I

    move-result v0

    const/4 v3, -0x1

    if-ne v3, v0, :cond_2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_1
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    const/4 v1, 0x0

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v6, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v7, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int v3, v5, v6

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v7, v1, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ne v1, v5, :cond_3

    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    :cond_3
    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v5, :cond_4

    add-int v5, v1, v3

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    :goto_1
    return-object v4

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    if-gez p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "horizon < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_4

    const v1, 0x7fffffff

    :cond_1
    :goto_0
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v6, :cond_5

    move v2, v4

    :goto_1
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v7, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_2

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v6, :cond_7

    :cond_2
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_8

    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    :goto_2
    return-object v3

    :cond_4
    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v6, p2

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    if-nez v2, :cond_3

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_3

    :cond_7
    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    :cond_8
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    goto :goto_0
.end method

.method public hasNextBigDecimal()Z
    .locals 5

    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBoolean()Z
    .locals 1

    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextDouble()Z
    .locals 5

    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 5

    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextLine()Z
    .locals 4

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public hasNextLong()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextShort()Z
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5

    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 1

    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v4, Ljava/math/BigDecimal;

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v4, Ljava/math/BigInteger;

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .locals 1

    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .locals 7

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_0

    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v4, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_4
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public nextLong()J
    .locals 2

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 7

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_0

    iget v6, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    return-wide v3

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .locals 6

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    iget-object v3, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cacheHasNextValue:Ljava/lang/Object;

    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_0

    iget v5, p0, Ljava/util/Scanner;->cachehasNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Scanner$DataType;->INT:Ljava/util/Scanner$DataType;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/util/Scanner$DataType;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .locals 1

    iget v0, p0, Ljava/util/Scanner;->integerRadix:I

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->integerRadix:I

    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/Scanner;->checkClosed()V

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNull(Ljava/util/regex/Pattern;)V

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    return-object p0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",findStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",matchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0

    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    iput p1, p0, Ljava/util/Scanner;->integerRadix:I

    return-object p0
.end method
