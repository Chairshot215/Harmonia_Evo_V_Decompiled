.class Lcom/htc/syncagent/activity/HTCMainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "HTCMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/activity/HTCMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCMainActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    const-string v0, "FDUI"

    .line 83
    const-string v1, "Disconnect broadcaset receive #MainActivity"

    .line 82
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 85
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$2;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    .line 86
    return-void
.end method
