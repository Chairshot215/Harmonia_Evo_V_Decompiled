.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;->this$0:Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1739
    return-void
.end method
