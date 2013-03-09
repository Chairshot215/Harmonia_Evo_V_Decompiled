.class public Lcom/google/android/gm/FormattedDateBuilder;
.super Ljava/lang/Object;
.source "FormattedDateBuilder.java"


# instance fields
.field private dateFormatter:Ljava/util/Formatter;

.field private mContext:Landroid/content/Context;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/gm/FormattedDateBuilder;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    .line 24
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/gm/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    .line 25
    return-void
.end method


# virtual methods
.method public formatLongDateTime(J)Ljava/lang/CharSequence;
    .locals 7
    .parameter "millis"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    const v6, 0x80016

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 36
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 39
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatShortDate(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "millis"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gm/FormattedDateBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
