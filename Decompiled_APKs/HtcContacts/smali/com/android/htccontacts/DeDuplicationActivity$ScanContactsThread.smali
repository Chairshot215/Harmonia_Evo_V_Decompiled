.class Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;
.super Ljava/lang/Thread;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanContactsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    .line 361
    const-string v0, "ScanContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #calls: Lcom/android/htccontacts/DeDuplicationActivity;->startWithMajorAccount()V
    invoke-static {v0}, Lcom/android/htccontacts/DeDuplicationActivity;->access$1100(Lcom/android/htccontacts/DeDuplicationActivity;)V

    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$ScanContactsThread;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    iget-object v0, v0, Lcom/android/htccontacts/DeDuplicationActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return-void
.end method
