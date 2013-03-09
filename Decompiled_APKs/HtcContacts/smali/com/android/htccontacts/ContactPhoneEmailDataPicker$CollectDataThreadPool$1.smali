.class Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->getThread(Ljava/lang/Runnable;Z)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$isFinish:Z


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;ZLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3532
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    iput-boolean p2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->val$isFinish:Z

    iput-object p3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->val$after:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3534
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;->access$4200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    .line 3535
    .local v0, activity:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
    if-eqz v0, :cond_0

    .line 3536
    iget-boolean v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->val$isFinish:Z

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->collectData(Z)V

    .line 3537
    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$4300(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3539
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->val$after:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3540
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CollectDataThreadPool$1;->val$after:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3544
    :cond_0
    return-void
.end method
