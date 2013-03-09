.class Landroid/widget/RemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter;->access$200(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #getter for: Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    invoke-static {v6}, Landroid/widget/RemoteViewsAdapter;->access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()[I

    move-result-object v2

    const/4 v6, 0x0

    aget v1, v2, v6

    const/4 v6, 0x1

    aget v6, v2, v6

    if-lez v6, :cond_1

    move v0, v3

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #calls: Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V
    invoke-static {v3, v1, v0}, Landroid/widget/RemoteViewsAdapter;->access$1300(Landroid/widget/RemoteViewsAdapter;IZ)V

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #calls: Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->access$1400(Landroid/widget/RemoteViewsAdapter;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    #calls: Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V
    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->access$700(Landroid/widget/RemoteViewsAdapter;)V

    goto :goto_1
.end method
