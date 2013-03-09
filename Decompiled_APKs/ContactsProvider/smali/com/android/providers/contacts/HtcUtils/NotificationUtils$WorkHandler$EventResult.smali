.class Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventResult"
.end annotation


# instance fields
.field public contactId:[J

.field public count:I

.field public endTime:J

.field public eventId:[J

.field public lookupKey:[Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public rawContactId:[J

.field public startTime:J

.field public time:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    .line 417
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    .line 418
    iput-wide v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->time:J

    .line 419
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->contactId:[J

    .line 420
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->rawContactId:[J

    .line 421
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    .line 422
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->lookupKey:[Ljava/lang/String;

    .line 423
    iput-wide v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->startTime:J

    .line 424
    iput-wide v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->endTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    .line 428
    iput-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    .line 429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->time:J

    .line 430
    iput-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->contactId:[J

    .line 431
    iput-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->rawContactId:[J

    .line 432
    iput-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    .line 433
    iput-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->lookupKey:[Ljava/lang/String;

    .line 434
    return-void
.end method
