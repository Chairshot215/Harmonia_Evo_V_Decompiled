.class Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposeObject"
.end annotation


# instance fields
.field public Uri:Landroid/net/Uri;

.field public contactId:J

.field public dests:[Ljava/lang/String;

.field public htcthreadId:J

.field public isMms:Z

.field public msgId:J

.field public success:Z

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field public threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 15603
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15604
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->contactId:J

    .line 15605
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->threadId:J

    .line 15606
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->htcthreadId:J

    .line 15607
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->dests:[Ljava/lang/String;

    .line 15608
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->success:Z

    .line 15609
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->Uri:Landroid/net/Uri;

    .line 15610
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->msgId:J

    .line 15611
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->isMms:Z

    return-void
.end method
