.class public Lgov/nist/javax/sip/header/SIPDate;
.super Ljava/lang/Object;
.source "SIPDate.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final APR:Ljava/lang/String; = "Apr"

.field public static final AUG:Ljava/lang/String; = "Aug"

.field public static final DEC:Ljava/lang/String; = "Dec"

.field public static final FEB:Ljava/lang/String; = "Feb"

.field public static final FRI:Ljava/lang/String; = "Fri"

.field public static final GMT:Ljava/lang/String; = "GMT"

.field public static final JAN:Ljava/lang/String; = "Jan"

.field public static final JUL:Ljava/lang/String; = "Jul"

.field public static final JUN:Ljava/lang/String; = "Jun"

.field public static final MAR:Ljava/lang/String; = "Mar"

.field public static final MAY:Ljava/lang/String; = "May"

.field public static final MON:Ljava/lang/String; = "Mon"

.field public static final NOV:Ljava/lang/String; = "Nov"

.field public static final OCT:Ljava/lang/String; = "Oct"

.field public static final SAT:Ljava/lang/String; = "Sat"

.field public static final SEP:Ljava/lang/String; = "Sep"

.field public static final SUN:Ljava/lang/String; = "Sun"

.field public static final THU:Ljava/lang/String; = "Thu"

.field public static final TUE:Ljava/lang/String; = "Tue"

.field public static final WED:Ljava/lang/String; = "Wed"

.field private static final serialVersionUID:J = 0x7692bf68cdf8211dL


# instance fields
.field protected day:I

.field protected hour:I

.field private javaCal:Ljava/util/Calendar;

.field protected minute:I

.field protected month:I

.field protected second:I

.field protected sipMonth:Ljava/lang/String;

.field protected sipWkDay:Ljava/lang/String;

.field protected wkday:I

.field protected year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "GMT:0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for wkday "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iget v1, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    packed-switch v1, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No date map for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return-void

    :pswitch_0
    const-string v1, "Mon"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "Tue"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v1, "Wed"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v1, "Thu"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v1, "Fri"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string v1, "Sat"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string v1, "Sun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string v1, "Jan"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_8
    const-string v1, "Feb"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    const-string v1, "Mar"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_a
    const-string v1, "Apr"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string v1, "May"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string v1, "Jun"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    const-string v1, "Jul"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_e
    const-string v1, "Aug"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_f
    const-string v1, "Sep"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_10
    const-string v1, "Oct"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto :goto_1

    :pswitch_11
    const-string v1, "Nov"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_12
    const-string v1, "Dec"

    iput-object v1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private setJavaCal()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT:0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x1

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x5

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/4 v1, 0x7

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_3
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xa

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_4
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_5
    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    const/16 v1, 0xd

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_6
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPDate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    iput-object v2, v1, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encode()Ljava/lang/String;
    .locals 8

    const/16 v7, 0xa

    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ge v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ge v5, v7, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ge v5, v7, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget v5, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ge v5, v7, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const-string v1, ""

    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/SIPDate;

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    iget v3, v0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeltaSeconds()I
    .locals 4

    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPDate;->getJavaCal()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    return v2
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    return v0
.end method

.method public getJavaCal()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPDate;->setJavaCal()V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return v0
.end method

.method public getWkday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Day of the month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->day:I

    return-void
.end method

.method public setHour(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal minute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->minute:I

    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Feb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Mar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Apr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "May"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Jul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Aug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Sep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x8

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Oct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Nov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipMonth:Ljava/lang/String;

    const-string v1, "Dec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->month:I

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Month :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecond(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal second : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->second:I

    return-void
.end method

.method public setWkday(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Mon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Tue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Wed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Thu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Fri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->sipWkDay:Ljava/lang/String;

    const-string v1, "Sun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/header/SIPDate;->wkday:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Week day :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYear(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal year : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPDate;->javaCal:Ljava/util/Calendar;

    iput p1, p0, Lgov/nist/javax/sip/header/SIPDate;->year:I

    return-void
.end method
