.class Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeZoneDate"
.end annotation


# instance fields
.field day:I

.field dayOfWeek:I

.field hour:I

.field minute:I

.field month:I

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

.field time:I

.field year:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/calendar/CalendarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->this$0:Lcom/htc/android/mail/eassvc/calendar/CalendarManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2079
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%2d/%2d %2d:%2d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->year:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->day:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/CalendarManager$TimeZoneDate;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2080
    .local v0, out:Ljava/lang/String;
    return-object v0
.end method
