.class Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;
.super Landroid/os/Handler;
.source "HtcDeleteCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 382
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->finish()V

    .line 388
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 389
    return-void

    .line 385
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$6;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->showDialog(I)V

    goto :goto_0
.end method
