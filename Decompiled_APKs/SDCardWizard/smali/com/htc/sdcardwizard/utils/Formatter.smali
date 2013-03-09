.class public final Lcom/htc/sdcardwizard/utils/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# static fields
.field private static final COUNT_TEMPLATE:Ljava/lang/String; = "%1$s %2$s"

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final NUMBER_FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sdcardwizard/utils/Formatter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/htc/sdcardwizard/utils/Formatter;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static count(J)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 16
    sget-object v0, Lcom/htc/sdcardwizard/utils/Formatter;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static count(JLcom/htc/sdcardwizard/utils/PluralSingular;)Ljava/lang/String;
    .locals 4
    .parameter "value"
    .parameter "ps"

    .prologue
    .line 20
    const-string v0, "%1$s %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/htc/sdcardwizard/utils/Formatter;->count(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/htc/sdcardwizard/utils/PluralSingular;->getCaption(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static date(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 24
    sget-object v0, Lcom/htc/sdcardwizard/utils/Formatter;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filesize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".00"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static size_date(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "size"
    .parameter "time"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2}, Lcom/htc/sdcardwizard/utils/Formatter;->filesize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Lcom/htc/sdcardwizard/utils/Formatter;->date(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
