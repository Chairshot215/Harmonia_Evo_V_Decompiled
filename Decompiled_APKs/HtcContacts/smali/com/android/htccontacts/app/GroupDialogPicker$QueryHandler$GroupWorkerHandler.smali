.class public Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "GroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler$GroupWorkerHandler;->this$0:Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;

    #getter for: Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;->access$200(Lcom/android/htccontacts/app/GroupDialogPicker$QueryHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/GroupDialogPicker;

    .line 231
    .local v0, activity:Lcom/android/htccontacts/app/GroupDialogPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/app/GroupDialogPicker;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0xf001

    if-ne v1, v2, :cond_2

    .line 235
    iget-object v1, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/GroupDialogPicker;->buildAllItems(Lcom/htc/app/HtcAlertController$AlertParams;)V

    .line 236
    iget-object v1, v0, Lcom/android/htccontacts/app/GroupDialogPicker;->mUIHandler:Landroid/os/Handler;

    const v2, 0xf002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 238
    :cond_2
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
