.class Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstResumeIdleHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1082
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1084
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$FirstResumeIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/ContactsListActivity;

    .line 1087
    .local v0, activity:Lcom/android/htccontacts/app/ContactsListActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    .line 1090
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
