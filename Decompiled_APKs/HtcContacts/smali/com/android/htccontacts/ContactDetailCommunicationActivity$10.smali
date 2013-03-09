.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2930
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$10;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2933
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2934
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2935
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$10;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->updateTimeString()V
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$4000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    .line 2937
    :cond_0
    return-void
.end method
