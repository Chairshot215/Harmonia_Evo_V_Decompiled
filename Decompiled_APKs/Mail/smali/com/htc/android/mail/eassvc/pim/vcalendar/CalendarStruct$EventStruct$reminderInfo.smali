.class public Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "reminderInfo"
.end annotation


# instance fields
.field public final method:I

.field public final minutes:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    .line 47
    iput p3, p0, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 51
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, " :re:minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, ", :re:method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
