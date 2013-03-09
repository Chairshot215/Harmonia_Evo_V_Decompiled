.class Lcom/android/mms/ui/ConversationListBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$1;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 525
    if-nez p2, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 530
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    :cond_2
    const-string v2, "ConversationListBaseActivity"

    const-string v3, "onReceive Broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$1;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v1

    .line 535
    .local v1, adapter:Landroid/widget/CursorAdapter;
    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
