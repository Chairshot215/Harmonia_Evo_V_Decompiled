.class final Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupIndicatorUpdateRunner"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private cacheRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lcom/android/htccontacts/indicator/IndicatorResult;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;",
            ">;",
            "Lcom/android/htccontacts/indicator/IndicatorResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1279
    .local p1, activityWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity;>;"
    .local p2, cacheWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput-object p2, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->cacheRef:Ljava/lang/ref/WeakReference;

    .line 1281
    iput-object p1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1283
    iput-object p3, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    .line 1284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1287
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->cacheRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;

    .line 1288
    .local v1, cache:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/BrowseGroupsActivity;

    .line 1289
    .local v3, target:Lcom/android/htccontacts/BrowseGroupsActivity;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseGroupsActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1296
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-virtual {v5}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1297
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1300
    const-string v5, "groupName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1302
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1305
    iget-object v5, v1, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1308
    iget-object v5, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-virtual {v5}, Lcom/android/htccontacts/indicator/IndicatorResult;->getTotalCount()I

    move-result v4

    .line 1309
    .local v4, totalCount:I
    const-string v5, "BrowseGroupsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/BrowseGroupsActivity$GroupIndicatorUpdateRunner;->result:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-virtual {v7}, Lcom/android/htccontacts/indicator/IndicatorResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-virtual {v1, v4}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;->setIndicatorCount(I)V

    .line 1312
    iget-object v5, v3, Lcom/android/htccontacts/BrowseGroupsActivity;->mCursorAdapter:Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemAdapter;->putIndicatorMap(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
