.class public abstract Ljavax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I
    .locals 2

    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2
    neg-int v5, v2

    if-ge v1, v5, :cond_3

    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public abstract add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract addTo(Ljava/util/Calendar;)V
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#addTo(Date date) with date == null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public abstract compare(Ljavax/xml/datatype/Duration;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljavax/xml/datatype/Duration;

    if-eqz v2, :cond_2

    check-cast p1, Ljavax/xml/datatype/Duration;

    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public getHours()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract getSign()I
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 5

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-static {p1}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Ljavax/xml/datatype/Duration;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getXMLSchemaType()Ljavax/xml/namespace/QName;
    .locals 9

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v5

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v3

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v0

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v1

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v2

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, Ljavax/xml/datatype/Duration;->isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v4

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION:Ljavax/xml/namespace/QName;

    :goto_0
    return-object v6

    :cond_0
    if-nez v5, :cond_1

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    sget-object v6, Ljavax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " month set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " day set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hour set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minute set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " second set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getYears()I
    .locals 1

    sget-object v0, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Ljavax/xml/datatype/Duration;->getFieldValueAsInt(Ljavax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isLongerThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSet(Ljavax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public isShorterThan(Ljavax/xml/datatype/Duration;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljavax/xml/datatype/Duration;->compare(Ljavax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(I)Ljavax/xml/datatype/Duration;
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract multiply(Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public abstract negate()Ljavax/xml/datatype/Duration;
.end method

.method public abstract normalizeWith(Ljava/util/Calendar;)Ljavax/xml/datatype/Duration;
.end method

.method public subtract(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/datatype/Duration;->negate()Ljavax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/datatype/Duration;->add(Ljavax/xml/datatype/Duration;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/16 v9, 0x4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v7

    if-gez v7, :cond_0

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v7, 0x50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->YEARS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    if-eqz v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x59

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MONTHS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->DAYS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x44

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->HOURS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->MINUTES:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    sget-object v7, Ljavax/xml/datatype/DatatypeConstants;->SECONDS:Ljavax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, Ljavax/xml/datatype/Duration;->getField(Ljavax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v5, :cond_7

    :cond_4
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0, v5}, Ljavax/xml/datatype/Duration;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x53

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
