.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactDetailCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$2;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->updateTimeString()V
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$100(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    .line 398
    :cond_0
    return-void
.end method
