.class Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartIndicatorIdleHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 2007
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2008
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2009
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    .line 2011
    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$StartIndicatorIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2012
    .local v0, target:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_1

    .line 2013
    invoke-static {}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BrowseGroupsActivity"

    const-string v2, "Query Count Thread  IDLE!  begin to start indicator"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    iget-object v1, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupListHandler:Landroid/os/Handler;

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2016
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
