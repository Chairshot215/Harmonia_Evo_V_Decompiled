.class public Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;
.super Ljava/lang/Object;
.source "HtcSendContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcSendContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadContactInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2344
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcSendContactActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2345
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-static {v2}, Lcom/android/htccontacts/HtcSendContactActivity;->access$200(Lcom/android/htccontacts/HtcSendContactActivity;)Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfo;->buildAllInfo()V

    .line 2346
    new-instance v0, Landroid/os/AsyncResult;

    const-string v2, "CONTACT_INFO_COMPLETED"

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2347
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    #getter for: Lcom/android/htccontacts/HtcSendContactActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/HtcSendContactActivity;->access$400(Lcom/android/htccontacts/HtcSendContactActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2348
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2350
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
