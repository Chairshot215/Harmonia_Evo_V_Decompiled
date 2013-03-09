.class public Lcom/htc/android/mail/meeting/MeetingRecurrences$Type;
.super Ljava/lang/Object;
.source "MeetingRecurrences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingRecurrences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final RECURS_DAILY:I = 0x0

.field public static final RECURS_MONTHLY:I = 0x2

.field public static final RECURS_MONTHLY_ON_nTh_DAY:I = 0x4

.field public static final RECURS_WEEKLY:I = 0x1

.field public static final RECURS_YEARLY:I = 0x5

.field public static final RECURS_YEARLY_ON_nTh_day:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
