.class public Lcom/htc/android/mail/meeting/MeetingRequest;
.super Ljava/lang/Object;
.source "MeetingRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/meeting/MeetingRequest$Person;,
        Lcom/htc/android/mail/meeting/MeetingRequest$Sensitivity;,
        Lcom/htc/android/mail/meeting/MeetingRequest$BusyStatus;,
        Lcom/htc/android/mail/meeting/MeetingRequest$InstanceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public accountId:J

.field public allDayEvent:Z

.field public attendeeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/meeting/MeetingRequest$Person;",
            ">;"
        }
    .end annotation
.end field

.field public busyStatus:I

.field public category:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field private dtStamp:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field private endTime:Landroid/text/format/Time;

.field public globalObjId:Ljava/lang/String;

.field public id:J

.field public importance:I

.field public instanceType:I

.field public isException:Z

.field public location:Ljava/lang/String;

.field public meetingInfo:Ljava/lang/String;

.field public messageClass:Ljava/lang/String;

.field public organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

.field public originalEndTime:Ljava/lang/String;

.field public originalInstanceTime:J

.field public originalStartTime:Ljava/lang/String;

.field private recurrenceId:Landroid/text/format/Time;

.field public recurrences:Lcom/htc/android/mail/meeting/MeetingRecurrences;

.field public reminder:I

.field public responseRequested:Z

.field public rrule:Ljava/lang/String;

.field public sensitivity:I

.field private startTime:Landroid/text/format/Time;

.field public subject:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timeZone:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->sensitivity:I

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->importance:I

    .line 152
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->startTime:Landroid/text/format/Time;

    .line 153
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->endTime:Landroid/text/format/Time;

    .line 154
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->dtStamp:Landroid/text/format/Time;

    .line 155
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->recurrenceId:Landroid/text/format/Time;

    .line 157
    new-instance v0, Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    invoke-direct {v0}, Lcom/htc/android/mail/meeting/MeetingRequest$Person;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->organizer:Lcom/htc/android/mail/meeting/MeetingRequest$Person;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->attendeeList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Lcom/htc/android/mail/meeting/MeetingRecurrences;

    invoke-direct {v0}, Lcom/htc/android/mail/meeting/MeetingRecurrences;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->recurrences:Lcom/htc/android/mail/meeting/MeetingRecurrences;

    .line 160
    return-void
.end method


# virtual methods
.method public getCloneEndTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->endTime:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 179
    .local v0, time:Landroid/text/format/Time;
    return-object v0
.end method

.method public getCloneStartTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->startTime:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 168
    .local v0, time:Landroid/text/format/Time;
    return-object v0
.end method

.method public getDTStampTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->dtStamp:Landroid/text/format/Time;

    return-object v0
.end method

.method public getEndTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->endTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public getRecurrenceId()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->recurrenceId:Landroid/text/format/Time;

    return-object v0
.end method

.method public getStartTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->startTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public setDTStampTime(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->dtStamp:Landroid/text/format/Time;

    .line 198
    return-void
.end method

.method public setEndTime(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->endTime:Landroid/text/format/Time;

    .line 190
    :cond_0
    return-void
.end method

.method public setRecurrenceId(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->recurrenceId:Landroid/text/format/Time;

    .line 202
    return-void
.end method

.method public setStartTime(Landroid/text/format/Time;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/htc/android/mail/meeting/MeetingRequest;->startTime:Landroid/text/format/Time;

    .line 175
    :cond_0
    return-void
.end method
