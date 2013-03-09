.class public Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
.super Ljava/lang/Object;
.source "TimeZoneParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/util/TimeZoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTime"
.end annotation


# instance fields
.field public day:I

.field public dayOfWeek:I

.field public hour:I

.field public month:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "day"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(IIII)V

    .line 17
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "day"
    .parameter "hour"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->month:I

    .line 20
    iput p2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->dayOfWeek:I

    .line 21
    iput p3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->day:I

    .line 22
    iput p4, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->hour:I

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->dayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
