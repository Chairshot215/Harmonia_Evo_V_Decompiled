.class public Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DelayedStartQueryMyContactAndIndicator"
.end annotation


# instance fields
.field ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseContactsAllActivity2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 3312
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;->ref:Ljava/lang/ref/WeakReference;

    .line 3314
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3317
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .line 3318
    .local v0, activity:Lcom/android/htccontacts/BrowseContactsAllActivity2;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3319
    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3320
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getFirstAdapter()Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    if-eqz v1, :cond_0

    .line 3321
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getFirstAdapter()Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->refreshMyContactCard()V

    .line 3324
    :cond_0
    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mMyProfileAndContactsAdapter:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->updateIndicator()V

    .line 3325
    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsResumeRequery:Z
    invoke-static {v0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7902(Lcom/android/htccontacts/BrowseContactsAllActivity2;Z)Z

    .line 3328
    :cond_1
    return v2
.end method
