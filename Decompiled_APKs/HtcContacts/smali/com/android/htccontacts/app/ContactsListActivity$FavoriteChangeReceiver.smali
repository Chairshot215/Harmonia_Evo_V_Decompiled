.class public Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FavoriteChangeReceiver"
.end annotation


# instance fields
.field private mRefActivity:Ljava/lang/ref/WeakReference;
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
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3740
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3751
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;->mRefActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 3761
    :cond_0
    :goto_0
    return-void

    .line 3754
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/ContactsListActivity;

    .line 3755
    .local v0, activity:Lcom/android/htccontacts/app/ContactsListActivity;
    if-eqz v0, :cond_0

    .line 3758
    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->wipeStatusCache()V

    .line 3759
    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->wipeIndicatorCache()V

    .line 3760
    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->wipePresenceCache()V

    goto :goto_0
.end method

.method public setActivity(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 3745
    if-eqz p1, :cond_0

    .line 3746
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$FavoriteChangeReceiver;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 3748
    :cond_0
    return-void
.end method
