.class Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;
.super Ljava/lang/Object;
.source "TaskSyncSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/TaskSyncSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EASTaskTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

.field public tsCompleteDate:J

.field public tsDue:J

.field public tsDueUTC:J

.field public tsRecStart:J

.field public tsRecUntil:J

.field public tsReminderDate:J

.field public tsStart:J

.field public tsStartUTC:J


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/eassvc/core/TaskSyncSource;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 837
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->this$0:Lcom/htc/android/mail/eassvc/core/TaskSyncSource;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDue:J

    .line 839
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStart:J

    .line 840
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsDueUTC:J

    .line 841
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsStartUTC:J

    .line 842
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecStart:J

    .line 843
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsRecUntil:J

    .line 844
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsCompleteDate:J

    .line 845
    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;->tsReminderDate:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/eassvc/core/TaskSyncSource;Lcom/htc/android/mail/eassvc/core/TaskSyncSource$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource$EASTaskTime;-><init>(Lcom/htc/android/mail/eassvc/core/TaskSyncSource;)V

    return-void
.end method
