.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x598a29f2ea10a5aL


# instance fields
.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private rawOffset:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "dstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "endTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "monthLength"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "rawOffset"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDay"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startDayOfWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMode"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startMonth"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startTime"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "startYear"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "useDaylight"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/SimpleTimeZone;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 12

    const v11, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 3

    invoke-direct {p0, p1, p2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    if-gtz p11, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid daylightSavings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p11, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {p0, p3, p4, p5, p6}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    invoke-virtual {p0, p7, p8, p9, p10}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p13

    invoke-direct/range {v1 .. v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    move/from16 v0, p7

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    move/from16 v0, p12

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    return-void
.end method

.method private checkDay(II)V
    .locals 3

    if-lez p2, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkRange(III)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v0, 0x7

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz p3, :cond_4

    const v0, 0x5265c00

    if-lt p3, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x62e

    if-le p1, v2, :cond_2

    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private mod7(I)I
    .locals 1

    rem-int/lit8 v0, p1, 0x7

    if-gez p1, :cond_0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v3, "rawOffset"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    const-string v3, "useDaylight"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_0

    const-string v3, "endMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const-string v3, "startMonth"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const-string v3, "startTime"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const-string v3, "startYear"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    :cond_0
    const-string v3, "serialVersionOnStream"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    iput v6, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v6, p0, Ljava/util/SimpleTimeZone;->startMode:I

    const-string v3, "endDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const-string v3, "endDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const-string v3, "startDay"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const-string v3, "startDayOfWeek"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "dstSavings"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_1

    const-string v3, "endMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    const-string v3, "startMode"

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    aget-byte v3, v2, v4

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    aget-byte v3, v2, v5

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    :cond_3
    aget-byte v3, v2, v6

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_0
.end method

.method private setEndMode()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_2

    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-gez v0, :cond_4

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-gez v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_2

    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStartMode()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_2

    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_5

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0, v2, v0, v3}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-direct {p0, v0, v2}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-gez v0, :cond_4

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-gez v0, :cond_3

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_4
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_2

    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, -0x5

    if-lt v0, v2, :cond_8

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of week in month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v12, 0x4

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v3, v7, 0x1

    iget v4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v5, v7, 0x1

    iget-boolean v7, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v7, :cond_2

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v10, :cond_0

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_2

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v7, v10, :cond_1

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/GregorianCalendar;->set(II)V

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iget v7, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v7, v11, :cond_1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    :cond_1
    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v7, v10, :cond_2

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v10, v7}, Ljava/util/GregorianCalendar;->set(II)V

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v5

    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v7, "dstSavings"

    iget v9, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "endDay"

    invoke-virtual {v1, v7, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "endDayOfWeek"

    invoke-virtual {v1, v7, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "endMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "endMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "endTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "monthLength"

    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "rawOffset"

    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "serialVersionOnStream"

    invoke-virtual {v1, v7, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startDay"

    invoke-virtual {v1, v7, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startDayOfWeek"

    invoke-virtual {v1, v7, v5}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startMode"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startMonth"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startTime"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "startYear"

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v7, "useDaylight"

    iget-boolean v9, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v1, v7, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    invoke-virtual {p1, v12}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    new-array v6, v12, [B

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    iget v7, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v7, v11, :cond_3

    move v7, v8

    :goto_0
    int-to-byte v7, v7

    aput-byte v7, v6, v11

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    const/4 v7, 0x3

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v9, v11, :cond_4

    :goto_1
    int-to-byte v8, v8

    aput-byte v8, v6, v7

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void

    :cond_3
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SimpleTimeZone;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDSTSavings()I
    .locals 1

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 12

    if-eqz p1, :cond_0

    const/4 v9, 0x1

    if-eq p1, v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid era: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, p3, v0, v1}, Ljava/util/SimpleTimeZone;->checkRange(III)V

    const/4 v9, 0x1

    if-ne p3, v9, :cond_1

    const/16 v9, 0x1d

    move/from16 v0, p4

    if-ne v0, v9, :cond_1

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move/from16 v0, p4

    invoke-direct {p0, p3, v0}, Ljava/util/SimpleTimeZone;->checkDay(II)V

    :cond_2
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    iget v9, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ge p2, v9, :cond_4

    :cond_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    :goto_0
    return v9

    :cond_4
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge v9, v10, :cond_5

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ge p3, v9, :cond_7

    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    :cond_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-lt p3, v9, :cond_6

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-le p3, v9, :cond_7

    :cond_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    sub-int v9, p5, p4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v4

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne p3, v9, :cond_c

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMode:I

    packed-switch v9, :pswitch_data_0

    :cond_8
    :goto_1
    move/from16 v0, p4

    if-gt v6, v0, :cond_9

    move/from16 v0, p4

    if-ne v6, v0, :cond_c

    iget v9, p0, Ljava/util/SimpleTimeZone;->startTime:I

    move/from16 v0, p6

    if-ge v0, v9, :cond_c

    :cond_9
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto :goto_0

    :pswitch_0
    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_1

    :pswitch_1
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ltz v9, :cond_a

    iget v9, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_1

    :cond_a
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v3, v9, v10

    iget v9, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_1

    :pswitch_2
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    goto :goto_1

    :pswitch_3
    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    iget v9, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v6, v9, :cond_8

    add-int/lit8 v6, v6, -0x7

    goto :goto_1

    :cond_c
    iget v9, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int v8, v9, v10

    add-int/lit8 v9, p3, 0x1

    rem-int/lit8 v5, v9, 0xc

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-eq p3, v9, :cond_d

    if-gez v8, :cond_15

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v5, v9, :cond_15

    :cond_d
    iget v9, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v9, :pswitch_data_1

    :cond_e
    :goto_2
    iget v7, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-gez v8, :cond_10

    const v9, 0x5265c00

    div-int v9, v8, v9

    rsub-int/lit8 v2, v9, 0x1

    const v9, 0x5265c00

    rem-int v9, v8, v9

    const v10, 0x5265c00

    add-int v8, v9, v10

    sub-int/2addr v6, v2

    if-gtz v6, :cond_10

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_f

    const/16 v7, 0xb

    :cond_f
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v9, v9, v7

    add-int/2addr v6, v9

    const/4 v9, 0x1

    if-ne v7, v9, :cond_10

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_10

    add-int/lit8 v6, v6, 0x1

    :cond_10
    if-ne p3, v7, :cond_14

    move/from16 v0, p4

    if-lt v6, v0, :cond_11

    move/from16 v0, p4

    if-ne v6, v0, :cond_15

    move/from16 v0, p6

    if-lt v0, v8, :cond_15

    :cond_11
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    :pswitch_4
    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_2

    :pswitch_5
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ltz v9, :cond_12

    iget v9, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    sub-int/2addr v9, v4

    invoke-direct {p0, v9}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_2

    :cond_12
    sget-object v9, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    iget v10, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v3, v9, v10

    iget v9, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    invoke-direct {p0, p2}, Ljava/util/SimpleTimeZone;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_13

    add-int/lit8 v3, v3, 0x1

    :cond_13
    add-int/lit8 v9, v3, 0x1

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int v11, v4, v3

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDay:I

    mul-int/lit8 v10, v10, 0x7

    add-int v6, v9, v10

    goto :goto_2

    :pswitch_6
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    goto/16 :goto_2

    :pswitch_7
    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Ljava/util/SimpleTimeZone;->mod7(I)I

    move-result v10

    add-int v6, v9, v10

    iget v9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v6, v9, :cond_e

    add-int/lit8 v6, v6, -0x7

    goto/16 :goto_2

    :cond_14
    if-eq v5, v7, :cond_15

    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    goto/16 :goto_0

    :cond_15
    iget v9, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v10, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v9, v10

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getOffset(J)I
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Grego;->timeToFields(J[I)[I

    move-result-object v7

    const/4 v0, 0x0

    aget v2, v7, v0

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/SimpleTimeZone;

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-nez v3, :cond_3

    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int v0, v1, v2

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    add-int/2addr v1, v2

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getRawOffset()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSTSavings(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setEndRule(III)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    return-void
.end method

.method public setEndRule(IIII)V
    .locals 0

    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-eqz p5, :cond_0

    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setEndMode()V

    return-void

    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0

    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return-void
.end method

.method public setStartRule(III)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    return-void
.end method

.method public setStartRule(IIII)V
    .locals 0

    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-eqz p5, :cond_0

    :goto_0
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, p3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->setStartMode()V

    return-void

    :cond_0
    neg-int p2, p2

    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 1

    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "[id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dstSavings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",useDaylight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startYear="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endMonth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",endDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-eq v2, v3, :cond_0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
