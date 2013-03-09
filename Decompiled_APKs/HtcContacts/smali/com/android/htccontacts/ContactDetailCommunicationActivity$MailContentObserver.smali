.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;
.super Landroid/database/ContentObserver;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailContentObserver"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ContactDetailCommunicationActivity;",
            ">;"
        }
    .end annotation
.end field

.field selfHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 542
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 543
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 544
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    .line 545
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 548
    .local v0, activity:Lcom/android/htccontacts/ContactDetailCommunicationActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$600(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    invoke-static {}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MailObserver - People.ContactDetailMailActivity detects onChange and triggers refresh immediately"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mrRefreshMail:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 555
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mrRefreshMail:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$800(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$900()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 557
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MailObserver - People.ContactDetailMailActivity detects onChange and queue the refresh till the next content display"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsMailDirty:Z

    goto :goto_0
.end method
