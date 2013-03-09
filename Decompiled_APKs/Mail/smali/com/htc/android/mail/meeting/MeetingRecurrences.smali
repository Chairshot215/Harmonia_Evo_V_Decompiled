.class public Lcom/htc/android/mail/meeting/MeetingRecurrences;
.super Ljava/lang/Object;
.source "MeetingRecurrences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/meeting/MeetingRecurrences$DayOfWeek;,
        Lcom/htc/android/mail/meeting/MeetingRecurrences$Type;
    }
.end annotation


# instance fields
.field public dayOfMonth:I

.field public dayOfWeek:I

.field public interval:I

.field public monthOfYear:I

.field public occurrences:I

.field public type:I

.field public until:Landroid/text/format/Time;

.field public weekOfMonth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method
