.class public Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;
.super Ljava/lang/Object;
.source "MeetingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeetingItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;
    }
.end annotation


# instance fields
.field public allDay:Z

.field public attendee:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public calGUID:Ljava/lang/String;

.field public calGuidType:Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem$calGUID_type;

.field public dtstamp:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public importance:I

.field public localEndTime:Landroid/text/format/Time;

.field public localStartTime:Landroid/text/format/Time;

.field public location:Ljava/lang/String;

.field public messageClass:Ljava/lang/String;

.field public organizer:Ljava/lang/String;

.field public organizerName:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->uid:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localStartTime:Landroid/text/format/Time;

    .line 60
    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingUtil$MeetingItem;->localEndTime:Landroid/text/format/Time;

    return-void
.end method
