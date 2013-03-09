.class Lcom/htc/android/mail/ReadScreen$MeetingDetail;
.super Ljava/lang/Object;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeetingDetail"
.end annotation


# instance fields
.field allDay:Z

.field date:Ljava/lang/String;

.field end:Ljava/lang/String;

.field location:Ljava/lang/String;

.field start:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field when:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$MeetingDetail;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen$MeetingDetail;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    return-void
.end method


# virtual methods
.method public timeToString(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method
