.class Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;
.super Ljava/lang/Object;
.source "iCalendarCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/iCalendarCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RRule"
.end annotation


# static fields
.field static final RRULE_DATE:I = 0x2

.field static final RRULE_DAY_WEEK:I = 0x1

.field static final RRULE_NONE:I


# instance fields
.field date:I

.field dayOfWeek:I

.field month:I

.field type:I

.field week:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "_month"
    .parameter "_date"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->type:I

    .line 54
    iput p1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->month:I

    .line 55
    iput p2, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->date:I

    .line 56
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .parameter "_month"
    .parameter "_dayOfWeek"
    .parameter "_week"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->type:I

    .line 66
    iput p1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->month:I

    .line 67
    iput p2, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->dayOfWeek:I

    .line 68
    iput p3, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->week:I

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget v0, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->week:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/mail/meeting/iCalendarCreator;->access$000()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->dayOfWeek:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FREQ=YEARLY;BYMONTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/meeting/iCalendarCreator$RRule;->date:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
