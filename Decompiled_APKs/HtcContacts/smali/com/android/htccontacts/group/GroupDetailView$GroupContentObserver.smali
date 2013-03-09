.class Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;
.super Landroid/database/ContentObserver;
.source "GroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/GroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupContentObserver"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/group/GroupDetailView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/GroupDetailView;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1231
    iget-object v0, p1, Lcom/android/htccontacts/group/GroupDetailView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1233
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 1236
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupDetailView$GroupContentObserver;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupDetailView;

    .line 1237
    .local v0, activity:Lcom/android/htccontacts/group/GroupDetailView;
    if-eqz v0, :cond_0

    .line 1239
    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/group/GroupDetailView;->mIsDirty:Z
    invoke-static {v0, v2}, Lcom/android/htccontacts/group/GroupDetailView;->access$1202(Lcom/android/htccontacts/group/GroupDetailView;Z)Z

    .line 1241
    :cond_0
    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$1400(Lcom/android/htccontacts/group/GroupDetailView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    #calls: Lcom/android/htccontacts/group/GroupDetailView;->getParentCacheTitle()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/htccontacts/group/GroupDetailView;->access$1500(Lcom/android/htccontacts/group/GroupDetailView;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1244
    iput-object v1, v0, Lcom/android/htccontacts/group/GroupDetailView;->mGroupName:Ljava/lang/String;

    .line 1247
    :cond_1
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 1248
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 1249
    iget-object v2, v0, Lcom/android/htccontacts/group/GroupDetailView;->mQueryHandler:Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupDetailView$QueryHandler;->cancelOperation(I)V

    .line 1250
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->startQuery()V

    .line 1251
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->startQueryGroupPhoto()V

    .line 1252
    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupDetailView;->startQueryMember()V

    .line 1254
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    return-void
.end method
