.class public Lcom/htc/android/mail/eassvc/common/EASEMail;
.super Ljava/lang/Object;
.source "EASEMail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    }
.end annotation


# instance fields
.field public AllDayEvent:Ljava/lang/String;

.field public Att0Id:Ljava/lang/String;

.field public AttMethod:Ljava/lang/String;

.field public AttName:Ljava/lang/String;

.field public AttRemoved:Ljava/lang/String;

.field public AttSize:Ljava/lang/String;

.field public Attachment:Ljava/lang/String;

.field public AttachmentDisplayName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Attachments:Ljava/lang/String;

.field public Body:Ljava/lang/String;

.field public BodySize:Ljava/lang/String;

.field public BodyTruncated:Ljava/lang/String;

.field public CC:Ljava/lang/String;

.field public Category:Ljava/lang/String;

.field public ClientId:Ljava/lang/String;

.field public ClientName:Ljava/lang/String;

.field public CompleteTime:Ljava/lang/String;

.field public ContentClass:Ljava/lang/String;

.field public DTStamp:Ljava/lang/String;

.field public Data:Ljava/lang/String;

.field public DateReceived:Ljava/lang/String;

.field public DisplayTo:Ljava/lang/String;

.field public EndTime:Ljava/lang/String;

.field public EstimatedDataSize:Ljava/lang/String;

.field public Flag:Ljava/lang/String;

.field public FlagStatus:Ljava/lang/String;

.field public FlagType:Ljava/lang/String;

.field public From:Ljava/lang/String;

.field public GlobalObjId:Ljava/lang/String;

.field public Importance:Ljava/lang/String;

.field public InstanceType:Ljava/lang/String;

.field public IntDBusyStatus:Ljava/lang/String;

.field public InternetCPID:Ljava/lang/String;

.field public Location:Ljava/lang/String;

.field public MIMEData:Ljava/lang/String;

.field public MIMESize:Ljava/lang/String;

.field public MIMETruncated:Ljava/lang/String;

.field public MessageClass:Ljava/lang/String;

.field public NaviteBodyType:Ljava/lang/String;

.field public Organizer:Ljava/lang/String;

.field public Read:Ljava/lang/String;

.field public RecurrenceId:Ljava/lang/String;

.field public Recurrence_DayOfMonth:Ljava/lang/String;

.field public Recurrence_DayOfWeek:Ljava/lang/String;

.field public Recurrence_Interval:Ljava/lang/String;

.field public Recurrence_MonthOfYear:Ljava/lang/String;

.field public Recurrence_Occurrences:Ljava/lang/String;

.field public Recurrence_Type:Ljava/lang/String;

.field public Recurrence_Until:Ljava/lang/String;

.field public Recurrence_WeekOfMonth:Ljava/lang/String;

.field public Reminder:Ljava/lang/String;

.field public ReplyTo:Ljava/lang/String;

.field public ResponseRequested:Ljava/lang/String;

.field public Sensitivity:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public StartTime:Ljava/lang/String;

.field public Subject:Ljava/lang/String;

.field public ThreadTopic:Ljava/lang/String;

.field public TimeZone:Ljava/lang/String;

.field public To:Ljava/lang/String;

.field public Truncated:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public isMimeData:Z

.field public mailAttachment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->AttachmentDisplayName:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    .line 116
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->AllDayEvent:Ljava/lang/String;

    .line 117
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ResponseRequested:Ljava/lang/String;

    .line 118
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Sensitivity:Ljava/lang/String;

    .line 119
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Type:Ljava/lang/String;

    .line 120
    return-void
.end method
