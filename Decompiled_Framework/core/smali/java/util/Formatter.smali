.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    new-instance v0, Ljava/util/Formatter$1;

    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/Formatter;->closed:Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-void

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    :goto_0
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-void

    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .locals 6

    const/16 v5, 0x30

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    if-ne v3, v5, :cond_1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v2, p4, v4

    if-gtz v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_3

    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .locals 10

    const/16 v7, 0x3a

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v4, v5

    :goto_0
    return v4

    :pswitch_1
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x79

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    :pswitch_7
    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x6d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto :goto_0

    :pswitch_8
    const/16 v5, 0xb

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_9
    const/16 v5, 0xa

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_a
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x3

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v5, 0xc

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_c
    const/16 v5, 0xe

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    const/16 v7, 0x9

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_e
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    :pswitch_f
    const/16 v5, 0xd

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_10
    const/16 v5, 0x48

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x4

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    iget-object v7, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6, v5, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_13
    const/16 v5, 0x61

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x62

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x54

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x5a

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x59

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    goto/16 :goto_0

    :pswitch_14
    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_15
    const/4 v6, 0x5

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_16
    const/4 v5, 0x6

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    const/4 v7, 0x3

    invoke-direct {p0, p1, v5, v6, v7}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v6, 0xb

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_18
    const/16 v6, 0xa

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Ljava/util/Formatter;->to12Hour(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1b
    const/16 v5, 0x49

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x53

    invoke-direct {p0, p1, v5, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-object v5, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {p0, p1, v6, v7, v5}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_1e
    const/16 v5, 0xf

    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v0, v5

    const/16 v2, 0x2b

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    const/16 v2, 0x2d

    neg-long v0, v0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x36ee80

    div-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    const-wide/32 v5, 0x36ee80

    rem-long v5, v0, v5

    const-wide/32 v7, 0xea60

    div-long/2addr v5, v7

    invoke-direct {p0, p1, v5, v6, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .locals 3

    new-instance v0, Ljava/util/IllegalFormatConversionException;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private checkNotClosed()V
    .locals 1

    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    new-instance v7, Ljava/util/Formatter$FormatSpecifierParser;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v13, 0x0

    move-object v8, v14

    move v12, v11

    :goto_0
    if-ge v13, v15, :cond_4

    move/from16 v18, v13

    const/16 v4, 0x25

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_2

    move/from16 v17, v15

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    :cond_0
    move/from16 v13, v17

    if-ge v13, v15, :cond_6

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    move-result-object v20

    const/4 v10, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    add-int/lit8 v11, v12, 0x1

    move v6, v12

    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v9}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_1

    const/4 v4, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    :cond_1
    #getter for: Ljava/util/Formatter$FormatSpecifierParser;->i:I
    invoke-static {v7}, Ljava/util/Formatter$FormatSpecifierParser;->access$000(Ljava/util/Formatter$FormatSpecifierParser;)I

    move-result v13

    :goto_4
    move-object v8, v14

    move v12, v11

    goto :goto_0

    :cond_2
    move/from16 v17, v16

    goto :goto_1

    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    move-result v6

    move v11, v12

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move-object v14, v8

    move v11, v12

    goto :goto_3

    :cond_6
    move-object v14, v8

    move v11, v12

    goto :goto_4
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_2

    const/4 p4, 0x0

    :cond_1
    :goto_0
    return-object p4

    :cond_2
    array-length v0, p1

    if-lt p2, v0, :cond_3

    new-instance v0, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq p2, v1, :cond_1

    aget-object p4, p1, p2

    goto :goto_0
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 2

    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    const/16 v6, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    rem-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_1

    const/4 v1, 0x3

    :cond_1
    add-int v4, v2, v1

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    add-int v5, v0, v3

    int-to-char v0, v5

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 10

    move v6, p2

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz v4, :cond_0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    instance-of v8, p1, Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    move-object v8, p1

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    :goto_0
    if-lez v7, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    if-lt v0, v7, :cond_3

    :goto_1
    return-object p1

    :cond_2
    const/4 v8, 0x0

    invoke-interface {p1, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 v1, 0x20

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v8

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v1, v8, Llibcore/icu/LocaleData;->zeroDigit:C

    :goto_2
    sub-int v8, v7, v0

    new-array v2, v8, [C

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v3, v8, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_3
    move-object p1, v5

    goto :goto_1

    :cond_4
    const/16 v1, 0x30

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private to12Hour(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xc

    :cond_0
    return p1
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/StringBuilder;

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v2

    throw v2

    :sswitch_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_2

    const-string v1, "null"

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_7

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    :cond_7
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_4
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_6
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_a
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_8
        0x41 -> :sswitch_7
        0x42 -> :sswitch_2
        0x43 -> :sswitch_5
        0x45 -> :sswitch_7
        0x47 -> :sswitch_7
        0x48 -> :sswitch_3
        0x53 -> :sswitch_4
        0x54 -> :sswitch_a
        0x58 -> :sswitch_6
        0x61 -> :sswitch_7
        0x62 -> :sswitch_2
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x68 -> :sswitch_3
        0x6e -> :sswitch_9
        0x6f -> :sswitch_6
        0x73 -> :sswitch_4
        0x74 -> :sswitch_a
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method private transformA(Ljava/lang/StringBuilder;)V
    .locals 7

    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Float;

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Double;

    if-eqz v5, :cond_2

    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v5

    throw v5

    :cond_3
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    const-string v5, "p"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    sub-int v0, v2, v1

    if-eq v0, v3, :cond_0

    if-ge v0, v3, :cond_5

    sub-int v5, v3, v0

    new-array v4, v5, [C

    const/16 v5, 0x30

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    add-int v5, v1, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformE(Ljava/lang/StringBuilder;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    const-string v4, "0E+00"

    if-lez v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "0."

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v7, v5, [C

    const/16 v8, 0x30

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v8, "E+00"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v3

    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v8, v8, Ljava/math/BigDecimal;

    if-eqz v8, :cond_2

    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/math/BigDecimal;

    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_3

    aget-char v8, v0, v1

    const/16 v9, 0x45

    if-ne v8, v9, :cond_1

    const/16 v8, 0x65

    aput-char v8, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    const-string v8, "e"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private transformF(Ljava/lang/StringBuilder;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x30

    const-string v3, "0.000000"

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-nez v7, :cond_0

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v7, :cond_1

    const/16 v7, 0x2c

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    const/4 v7, 0x2

    new-array v6, v7, [C

    const/16 v7, 0x23

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([CC)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v5, :cond_2

    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-direct {p0, v3}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v2

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v2, v7, v9}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    return-void

    :cond_5
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2, v7, v8, v9}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .locals 10

    const/16 v9, 0x6f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_5

    move v3, v6

    :goto_1
    const/16 v8, 0x64

    if-ne v1, v8, :cond_6

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v8, :cond_2

    if-eqz v3, :cond_8

    move v5, v6

    :goto_3
    if-ne v1, v9, :cond_9

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_2
    :goto_4
    if-nez v3, :cond_4

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x2b

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_4
    if-eqz v3, :cond_b

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_b

    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    :cond_5
    move v3, v7

    goto :goto_1

    :cond_6
    if-ne v1, v9, :cond_7

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    move v5, v7

    goto :goto_3

    :cond_9
    const/16 v6, 0x78

    if-eq v1, v6, :cond_a

    const/16 v6, 0x58

    if-ne v1, v6, :cond_2

    :cond_a
    const-string v6, "0x"

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_c
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-string v0, "false"

    goto :goto_0

    :cond_1
    const-string v0, "true"

    goto :goto_0
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Character;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    :cond_3
    const/high16 v2, 0x1

    if-ge v0, v2, :cond_4

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v2

    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .locals 5

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v3, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v3

    throw v3

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/Date;

    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Date;

    if-eqz v3, :cond_3

    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Date;

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v3

    throw v3

    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .locals 13

    const/16 v12, 0x61

    const/16 v11, 0x41

    const/16 v10, 0x2b

    const/4 v9, 0x0

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v7, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Float;

    if-nez v7, :cond_1

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Double;

    if-eqz v7, :cond_3

    :cond_1
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpl-double v7, v1, v1

    if-nez v7, :cond_2

    const-wide/high16 v7, 0x7ff0

    cmpl-double v7, v1, v7

    if-eqz v7, :cond_2

    const-wide/high16 v7, -0x10

    cmpl-double v7, v1, v7

    if-nez v7, :cond_4

    :cond_2
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    :cond_3
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v7, v7, Ljava/math/BigDecimal;

    if-eqz v7, :cond_6

    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    if-eq v0, v12, :cond_5

    if-eq v0, v11, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sparse-switch v0, :sswitch_data_0

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v7

    throw v7

    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v7

    throw v7

    :sswitch_0
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformA(Ljava/lang/StringBuilder;)V

    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v8, v8, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v7, :cond_9

    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformG(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_7
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v7, :cond_8

    const/16 v7, 0x20

    invoke-virtual {v5, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_8
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v7, :cond_9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    :cond_9
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v7, :cond_b

    if-eq v3, v10, :cond_a

    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v7, v7, Llibcore/icu/LocaleData;->minusSign:C

    if-ne v3, v7, :cond_b

    :cond_a
    const/4 v6, 0x1

    :cond_b
    if-eq v0, v12, :cond_c

    if-ne v0, v11, :cond_d

    :cond_c
    add-int/lit8 v6, v6, 0x2

    :cond_d
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_1
        0x47 -> :sswitch_3
        0x61 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .locals 2

    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v0, "null"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .locals 10

    const/16 v9, 0x6f

    const/4 v8, 0x0

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v0

    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v6, :cond_0

    if-ne v0, v9, :cond_7

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    const/16 v6, 0x64

    if-ne v0, v6, :cond_c

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_2

    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v6, :cond_8

    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    :goto_2
    return-object v6

    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_5

    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_6

    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    move-result-object v6

    throw v6

    :cond_7
    const-string v6, "0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_8
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    :goto_3
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2

    :cond_a
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v6, :cond_b

    const/16 v6, 0x2b

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v6, :cond_9

    const/16 v6, 0x20

    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_e

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    :cond_d
    :goto_4
    if-ne v0, v9, :cond_10

    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_f

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    goto :goto_4

    :cond_f
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_d

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    goto :goto_4

    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    const-string v0, "null"

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "%"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "NaN"

    :goto_0
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iput-boolean v3, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    invoke-direct {p0, v0, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const-wide/high16 v1, 0x7ff0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    if-eqz v1, :cond_1

    const-string v0, "+Infinity"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    if-eqz v1, :cond_2

    const-string v0, " Infinity"

    goto :goto_0

    :cond_2
    const-string v0, "Infinity"

    goto :goto_0

    :cond_3
    const-wide/high16 v1, -0x10

    cmpl-double v1, p1, v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    if-eqz v1, :cond_4

    const-string v0, "(Infinity)"

    goto :goto_0

    :cond_4
    const-string v0, "-Infinity"

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .locals 5

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/Formattable;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v2, Ljava/util/Formattable;

    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v3

    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v4

    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v1, "null"

    goto :goto_1
.end method

.method private transformG(Ljava/lang/StringBuilder;)V
    .locals 13

    const-wide/high16 v9, 0x3ff0

    const-wide/high16 v11, 0x4024

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmpl-double v7, v1, v7

    if-nez v7, :cond_1

    add-int/lit8 v5, v5, -0x1

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/MathContext;

    invoke-direct {v7, v5}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v0, v1, v2, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    cmpl-double v7, v1, v9

    if-ltz v7, :cond_6

    int-to-double v7, v5

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpg-double v7, v1, v7

    if-gez v7, :cond_6

    long-to-double v7, v3

    int-to-double v9, v5

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v5, v7

    if-gez v5, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v7, v5, 0x1

    int-to-double v7, v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    :cond_5
    :goto_1
    if-eqz v6, :cond_8

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    const-wide/high16 v7, -0x3ff0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpl-double v7, v1, v7

    if-ltz v7, :cond_5

    cmpg-double v7, v1, v9

    if-gez v7, :cond_5

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    move-result v8

    if-gt v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    long-to-double v7, v3

    add-int/lit8 v9, v5, -0x4

    int-to-double v9, v9

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_5

    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v7, v5}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v2, 0x29

    const/4 v1, 0x0

    const/16 v0, 0x28

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 2

    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object p0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
