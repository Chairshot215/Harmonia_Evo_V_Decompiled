.class Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;
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
    name = "FirstQueryAllIdleHandler"
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
    .line 2039
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2041
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2043
    iget-object v6, p0, Lcom/android/htccontacts/BrowseGroupsActivity$FirstQueryAllIdleHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 2044
    .local v0, activity:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2045
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->pauseIndicator()V

    .line 2047
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2048
    .local v1, firstQueryList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mValidCacheList:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2050
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 2051
    iget-object v6, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2052
    .local v3, key:Ljava/lang/String;
    iget-object v6, v0, Lcom/android/htccontacts/BrowseGroupsActivity;->mGroupCacheList:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 2053
    .local v2, groupItem:[Ljava/lang/String;
    aget-object v5, v2, v8

    .line 2054
    .local v5, putName:Ljava/lang/String;
    move-object v4, v5

    .line 2055
    .local v4, mapKey:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v8

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    .end local v2           #groupItem:[Ljava/lang/String;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #mapKey:Ljava/lang/String;
    .end local v5           #putName:Ljava/lang/String;
    :cond_0
    #getter for: Lcom/android/htccontacts/BrowseGroupsActivity;->mQueryCountHandler:Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseGroupsActivity;->access$2100(Lcom/android/htccontacts/BrowseGroupsActivity;)Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/htccontacts/BrowseGroupsActivity$QueryCountHandler;->updateTheFirstItemOneByOne(Ljava/util/HashMap;I)V

    .line 2061
    .end local v1           #firstQueryList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_1
    return v8
.end method
