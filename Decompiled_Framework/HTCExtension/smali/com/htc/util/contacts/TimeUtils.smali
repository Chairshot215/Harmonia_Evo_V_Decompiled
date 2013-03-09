.class public Lcom/htc/util/contacts/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFormatTime(Landroid/content/Context;ZJ)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/htc/util/contacts/TimeUtils;->getTimeFormat(Landroid/content/Context;Z)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getTimeFormat(Landroid/content/Context;Z)Ljava/text/DateFormat;
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x104007e

    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const v0, 0x104007d

    goto :goto_0
.end method
