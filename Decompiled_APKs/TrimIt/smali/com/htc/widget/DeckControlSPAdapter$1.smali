.class Lcom/htc/widget/DeckControlSPAdapter$1;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$DCAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "SPresentationAdapter"

    const-string v2, "SPresentationAdapter:notifyDataSetChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->setDropTime()V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    .line 90
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    .line 92
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyDataSetChanged()V

    .line 96
    :cond_3
    const-string v1, "SPresentationAdapter"

    const-string v2, "SPresentationAdapter:notifyDataSetChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDataSetChanged(I)V
    .locals 3
    .parameter "stratindex"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v1, "SPresentationAdapter"

    const-string v2, "SPresentationAdapter:notifyDataSetChanged(int)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->setDropTime()V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    .line 112
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear(I)V

    .line 114
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;
    invoke-static {v1}, Lcom/htc/widget/DeckControlSPAdapter;->access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/widget/DeckControl$DCAdapterListener;->notifyDataSetChanged()V

    .line 118
    :cond_3
    const-string v1, "SPresentationAdapter"

    const-string v2, "SPresentationAdapter:notifyDataSetChanged(int)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyUpdateItem(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "SPresentationAdapter"

    const-string v1, "SPresentationAdapter:notifyUpdateItem(int)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->remove(Ljava/lang/Integer;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->addFirst(Ljava/lang/Integer;IZ)V

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$1;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    invoke-static {v0}, Lcom/htc/widget/DeckControlSPAdapter;->access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_5
    const-string v0, "SPresentationAdapter"

    const-string v1, "SPresentationAdapter:notifyUpdateItem(int)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
