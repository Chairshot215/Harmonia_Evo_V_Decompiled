.class Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;
.super Landroid/database/ContentObserver;
.source "ContactDetailMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;
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
            "Lcom/android/htccontacts/ContactDetailMailActivity;",
            ">;"
        }
    .end annotation
.end field

.field selfHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 1590
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1591
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1592
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    .line 1593
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 1595
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailMailActivity;

    .line 1596
    .local v0, activity:Lcom/android/htccontacts/ContactDetailMailActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1500(Lcom/android/htccontacts/ContactDetailMailActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1600
    const-string v1, "ContactDetailMailActivity"

    const-string v2, "MailObserver - People.ContactDetailMailActivity detects onChange and triggers refresh immediately"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mrRefreshMail:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1600(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1602
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$MailContentObserver;->selfHandler:Landroid/os/Handler;

    #getter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mrRefreshMail:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1600(Lcom/android/htccontacts/ContactDetailMailActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$1700()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1604
    :cond_2
    const-string v1, "ContactDetailMailActivity"

    const-string v2, "MailObserver - People.ContactDetailMailActivity detects onChange and queue the refresh till the next content display"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/ContactDetailMailActivity;->mIsMailDirty:Z

    goto :goto_0
.end method
