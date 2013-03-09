.class public Ljava/text/DateFormat$Field;
.super Ljava/text/Format$Field;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final AM_PM:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_WEEK:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final DAY_OF_YEAR:Ljava/text/DateFormat$Field; = null

.field public static final ERA:Ljava/text/DateFormat$Field; = null

.field public static final HOUR0:Ljava/text/DateFormat$Field; = null

.field public static final HOUR1:Ljava/text/DateFormat$Field; = null

.field public static final HOUR_OF_DAY0:Ljava/text/DateFormat$Field; = null

.field public static final HOUR_OF_DAY1:Ljava/text/DateFormat$Field; = null

.field public static final MILLISECOND:Ljava/text/DateFormat$Field; = null

.field public static final MINUTE:Ljava/text/DateFormat$Field; = null

.field public static final MONTH:Ljava/text/DateFormat$Field; = null

.field public static final SECOND:Ljava/text/DateFormat$Field; = null

.field public static final TIME_ZONE:Ljava/text/DateFormat$Field; = null

.field public static final WEEK_OF_MONTH:Ljava/text/DateFormat$Field; = null

.field public static final WEEK_OF_YEAR:Ljava/text/DateFormat$Field; = null

.field public static final YEAR:Ljava/text/DateFormat$Field; = null

.field private static final serialVersionUID:J = 0x6744fc81f123e710L

.field private static table:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/DateFormat$Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calendarField:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "era"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour of day 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "second"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "millisecond"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of month"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of year"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "day of week in month"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of year"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "week of month"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "am pm"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "hour 1"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    new-instance v0, Ljava/text/DateFormat$Field;

    const-string v1, "time zone"

    invoke-direct {v0, v1, v3}, Ljava/text/DateFormat$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    iput v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    iput p2, p0, Ljava/text/DateFormat$Field;->calendarField:I

    if-eq p2, v0, :cond_0

    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static ofCalendarField(I)Ljava/text/DateFormat$Field;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x11

    if-lt p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljava/text/DateFormat$Field;->table:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat$Field;

    return-object v0
.end method


# virtual methods
.method public getCalendarField()I
    .locals 1

    iget v0, p0, Ljava/text/DateFormat$Field;->calendarField:I

    return v0
.end method
