.class public final Lcom/coremobility/j/p;
.super Ljava/lang/Object;


# static fields
.field static j:[J

.field public static final k:[Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Z

.field public static n:I


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0xc

    const/4 v3, 0x1

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremobility/j/p;->j:[J

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const-string v1, "Feb"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/j/p;->k:[Ljava/lang/String;

    const-string v0, " "

    sput-object v0, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    sput-boolean v3, Lcom/coremobility/j/p;->m:Z

    sput v3, Lcom/coremobility/j/p;->n:I

    return-void

    :array_0
    .array-data 0x8
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/coremobility/j/p;->c(J)V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v7, 0x3c

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-long v5, v0, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/coremobility/j/p;->a(JIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JII)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2f

    const/4 v7, 0x1

    const/4 v6, 0x2

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/coremobility/j/p;->m:Z

    if-eqz v4, :cond_0

    sget-object v1, Lcom/coremobility/j/p;->k:[Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    :cond_0
    if-nez p3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "year String is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    if-ne p2, v7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p2, v6, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/coremobility/j/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/coremobility/j/p;

    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    invoke-direct {v0, v1, v2}, Lcom/coremobility/j/p;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/coremobility/j/p;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/coremobility/j/p;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/coremobility/j/p;->f:J

    const-wide/16 v4, 0x76c

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(JIZZ)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xb

    const/16 v1, 0xc

    const/16 v4, 0xa

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, ""

    if-nez p2, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_8

    :goto_1
    if-ge v1, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_3

    const-string v0, " "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "am"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_5
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, "pm"

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v4, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v0, v2

    goto/16 :goto_5

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method public static b(J)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v3, v2}, Lcom/coremobility/j/p;->a(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(JI)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v0, "Today"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v0, "Yesterday"

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    const-string v0, "Yesterday"

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, v4}, Lcom/coremobility/j/p;->a(JII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(J)V
    .locals 13

    const-wide/32 v0, 0x15180

    const-wide/16 v4, 0x0

    const/4 v12, 0x1

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x3c

    rem-long v2, p1, v0

    div-long v0, p1, v0

    rem-long v6, v2, v8

    iput-wide v6, p0, Lcom/coremobility/j/p;->a:J

    div-long/2addr v2, v8

    rem-long v6, v2, v8

    iput-wide v6, p0, Lcom/coremobility/j/p;->b:J

    div-long/2addr v2, v8

    iput-wide v2, p0, Lcom/coremobility/j/p;->c:J

    const-wide/32 v2, 0x700004

    add-long/2addr v2, v0

    const-wide/16 v6, 0x7

    rem-long/2addr v2, v6

    iput-wide v2, p0, Lcom/coremobility/j/p;->g:J

    const-wide/16 v2, 0x46

    :goto_0
    invoke-static {v2, v3}, Lcom/coremobility/j/p;->d(J)J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    invoke-static {v2, v3}, Lcom/coremobility/j/p;->d(J)J

    move-result-wide v6

    sub-long/2addr v0, v6

    add-long/2addr v2, v10

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/coremobility/j/p;->f:J

    iput-wide v0, p0, Lcom/coremobility/j/p;->h:J

    invoke-static {v2, v3}, Lcom/coremobility/j/p;->d(J)J

    move-result-wide v2

    const-wide/16 v6, 0x16e

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    sget-object v2, Lcom/coremobility/j/p;->j:[J

    const-wide/16 v6, 0x1d

    aput-wide v6, v2, v12

    :cond_1
    move-wide v2, v0

    move-wide v0, v4

    :goto_1
    sget-object v6, Lcom/coremobility/j/p;->j:[J

    long-to-int v7, v0

    aget-wide v6, v6, v7

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    sget-object v6, Lcom/coremobility/j/p;->j:[J

    long-to-int v7, v0

    aget-wide v6, v6, v7

    sub-long/2addr v2, v6

    add-long/2addr v0, v10

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/coremobility/j/p;->j:[J

    const-wide/16 v7, 0x1c

    aput-wide v7, v6, v12

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/coremobility/j/p;->d:J

    iput-wide v0, p0, Lcom/coremobility/j/p;->e:J

    iput-wide v4, p0, Lcom/coremobility/j/p;->i:J

    return-void
.end method

.method private static d(J)J
    .locals 4

    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x16d

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x16e

    goto :goto_0
.end method
