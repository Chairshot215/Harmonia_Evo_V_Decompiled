.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private final date:Ljava/util/Date;

.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final timeZone:I

.field private final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->convertToYear(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->year:I

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->year:I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->convertToDate(IIIIIII)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    iput p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->month:I

    iput p3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->day:I

    iput p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->hour:I

    iput p5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->minute:I

    iput p6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->second:I

    iput p7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    return-void
.end method

.method public static convertToDate(IIIIIII)Ljava/util/Date;
    .locals 8

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/high16 v1, -0x8000

    if-eq p6, v1, :cond_0

    div-int/lit8 v1, p6, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p6, 0x64

    add-int v7, v1, v2

    const/16 v1, 0xc

    mul-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private convertToYear(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    if-ltz v0, :cond_0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    :pswitch_1
    add-int/lit16 v0, v0, 0x76c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;
    :try_end_0
    .catch Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->day:I

    return v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->second:I

    return v0
.end method

.method public getTimeZone()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->year:I

    return v0
.end method

.method public print()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getDay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getSecond()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/datetime/DateTime;->getTimeZone()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
