.class Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;
.super Landroid/os/Handler;
.source "InsertSIMCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 579
    const/16 v0, 0x65

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->changeInsertSIMImage()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;)V

    .line 583
    :cond_0
    return-void
.end method
