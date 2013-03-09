.class Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateResult"
.end annotation


# instance fields
.field public contactId:[J

.field public count:I

.field public lookupKey:[Ljava/lang/String;

.field public names:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    .line 503
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->names:[Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->contactId:[J

    .line 505
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->lookupKey:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    .line 509
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->names:[Ljava/lang/String;

    .line 510
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->contactId:[J

    .line 511
    iput-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->lookupKey:[Ljava/lang/String;

    .line 512
    return-void
.end method
