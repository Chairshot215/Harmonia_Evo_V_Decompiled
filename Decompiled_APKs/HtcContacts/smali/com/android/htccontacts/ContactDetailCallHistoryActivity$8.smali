.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;
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
    .line 453
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "phoneinECMState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mEnterEmergencyMode:Z

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$8;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    iput-boolean v2, v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mEnterEmergencyMode:Z

    goto :goto_0
.end method
