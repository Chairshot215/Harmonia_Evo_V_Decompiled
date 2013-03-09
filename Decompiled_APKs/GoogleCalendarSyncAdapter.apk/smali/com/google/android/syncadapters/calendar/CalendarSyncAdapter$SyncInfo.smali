.class Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter$SyncInfo;
.super Ljava/lang/Object;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncInfo"
.end annotation


# instance fields
.field public calendarId:J

.field public calendarTimezone:Ljava/lang/String;

.field public slidingWindowEnd:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
