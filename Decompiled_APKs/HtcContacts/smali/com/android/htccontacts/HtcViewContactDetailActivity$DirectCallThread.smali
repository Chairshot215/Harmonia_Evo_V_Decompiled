.class Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;
.super Ljava/lang/Thread;
.source "HtcViewContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectCallThread"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field dataIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 4889
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4890
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;->activityRef:Ljava/lang/ref/WeakReference;

    .line 4891
    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;->dataIntent:Landroid/content/Intent;

    .line 4892
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4894
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .line 4895
    .local v0, activity:Lcom/android/htccontacts/HtcViewContactDetailActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$2100(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4910
    :cond_0
    :goto_0
    return-void

    .line 4899
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;->dataIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 4900
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$DirectCallThread;->dataIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4906
    :catch_0
    move-exception v1

    .line 4908
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcViewContactDetailActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
