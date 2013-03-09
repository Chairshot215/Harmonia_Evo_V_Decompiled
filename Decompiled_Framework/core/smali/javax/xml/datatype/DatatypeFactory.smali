.class public abstract Ljavax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String; = null

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Ljavax/xml/datatype/DatatypeFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    :try_start_0
    const-string v1, "javax.xml.datatype.DatatypeFactory"

    sget-object v2, Ljavax/xml/datatype/DatatypeFactory;->DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/datatype/DatatypeFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v3, "factoryClassName == null"

    invoke-direct {v2, v3}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/datatype/DatatypeFactory;

    return-object v2

    :cond_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v2, Ljavax/xml/datatype/DatatypeConfigurationException;

    invoke-direct {v2, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public abstract newDuration(J)Ljavax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;
    .locals 8

    const/high16 v0, -0x8000

    if-eq p2, v0, :cond_0

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :goto_0
    const/high16 v0, -0x8000

    if-eq p3, v0, :cond_1

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    :goto_1
    const/high16 v0, -0x8000

    if-eq p4, v0, :cond_2

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_2
    const/high16 v0, -0x8000

    if-eq p5, v0, :cond_3

    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    :goto_3
    const/high16 v0, -0x8000

    if-eq p6, v0, :cond_4

    int-to-long v0, p6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    :goto_4
    const/high16 v0, -0x8000

    if-eq p7, v0, :cond_5

    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    :goto_5
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Ljavax/xml/datatype/Duration;
    .locals 26

    move-wide/from16 v18, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_0

    const/4 v3, 0x1

    const/high16 v4, -0x8000

    const/high16 v5, -0x8000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/16 v23, 0x0

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-gez v2, :cond_3

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000

    cmp-long v2, v18, v4

    if-nez v2, :cond_1

    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    const/16 v23, 0x1

    :cond_1
    const-wide/16 v4, -0x1

    mul-long v18, v18, v4

    :goto_1
    move-wide/from16 v24, v18

    const-wide/32 v4, 0xea60

    rem-long v4, v24, v4

    long-to-int v0, v4

    move/from16 v22, v0

    if-eqz v23, :cond_2

    add-int/lit8 v22, v22, 0x1

    :cond_2
    move/from16 v0, v22

    rem-int/lit16 v2, v0, 0x3e8

    if-nez v2, :cond_5

    move/from16 v0, v22

    div-int/lit16 v9, v0, 0x3e8

    const-wide/32 v4, 0xea60

    div-long v24, v24, v4

    const-wide/16 v4, 0x3c

    rem-long v4, v24, v4

    long-to-int v8, v4

    const-wide/16 v4, 0x3c

    div-long v24, v24, v4

    const-wide/16 v4, 0x18

    rem-long v4, v24, v4

    long-to-int v7, v4

    const-wide/16 v4, 0x18

    div-long v20, v24, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v20, v4

    if-gtz v2, :cond_4

    const/high16 v4, -0x8000

    const/high16 v5, -0x8000

    move-wide/from16 v0, v20

    long-to-int v6, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    int-to-long v4, v8

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v10, p0

    move v11, v3

    invoke-virtual/range {v10 .. v17}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto :goto_0

    :cond_5
    move/from16 v0, v22

    int-to-long v4, v0

    const/4 v2, 0x3

    invoke-static {v4, v5, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v9

    const-wide/32 v4, 0xea60

    div-long v24, v24, v4

    const-wide/16 v4, 0x3c

    rem-long v4, v24, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v4, 0x3c

    div-long v24, v24, v4

    const-wide/16 v4, 0x18

    rem-long v4, v24, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v4, 0x18

    div-long v24, v24, v4

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public newDurationDayTime(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 7

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "The lexical representation cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v4, 0x54

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    move v2, v3

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x59

    if-eq v0, v4, :cond_1

    const/16 v4, 0x4d

    if-ne v0, v4, :cond_3

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid dayTimeDuration value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v4

    return-object v4
.end method

.method public newDurationDayTime(ZIIII)Ljavax/xml/datatype/Duration;
    .locals 8

    const/high16 v2, -0x8000

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .locals 8

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, v2

    goto :goto_0
.end method

.method public newDurationYearMonth(J)Ljavax/xml/datatype/Duration;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(J)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Ljavax/xml/datatype/Duration;
    .locals 6

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The lexical representation cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x44

    if-eq v0, v3, :cond_1

    const/16 v3, 0x54

    if-ne v0, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid yearMonthDuration value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v3

    return-object v3
.end method

.method public newDurationYearMonth(ZII)Ljavax/xml/datatype/Duration;
    .locals 8

    const/high16 v4, -0x8000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZIIIIII)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Ljavax/xml/datatype/Duration;
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract newXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 10

    const/high16 v1, -0x8000

    if-eq p1, v1, :cond_1

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :goto_0
    const/4 v8, 0x0

    const/high16 v1, -0x8000

    move/from16 v0, p7

    if-eq v0, v1, :cond_3

    if-ltz p7, :cond_0

    const/16 v1, 0x3e8

    move/from16 v0, p7

    if-le v0, v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p7

    int-to-long v3, v0

    const/4 v1, 0x3

    invoke-static {v3, v4, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v8

    :cond_3
    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    return-object v1
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v4, -0x8000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v1, -0x8000

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v1

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIIII)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 6

    const/4 v4, 0x0

    const/high16 v0, -0x8000

    if-eq p4, v0, :cond_2

    if-ltz p4, :cond_0

    const/16 v0, 0x3e8

    if-le p4, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-long v0, p4

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v4

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v2, -0x8000

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method
