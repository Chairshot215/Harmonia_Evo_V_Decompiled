.class Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;
.super Ljava/lang/Object;
.source "HtcPainting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPainting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SerializeRunnable"
.end annotation


# instance fields
.field private mStop:Z

.field private mWeakReferenceForReturn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/painting/engine/HtcPainting;


# direct methods
.method private constructor <init>(Lcom/htc/painting/engine/HtcPainting;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->mStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/HtcPainting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;-><init>(Lcom/htc/painting/engine/HtcPainting;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 157
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$100(Lcom/htc/painting/engine/HtcPainting;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 159
    .local v2, r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->mStop:Z

    if-eqz v3, :cond_0

    .line 173
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    :goto_1
    return-void

    .line 161
    .restart local v2       #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->getId()I

    move-result v1

    .line 162
    .local v1, groupId:I
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/StrokeGroup;

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeGroup;->isModified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mSerializeDAO:Lcom/htc/painting/engine/AbsSerializeDAO;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$300(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/AbsSerializeDAO;

    move-result-object v4

    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/StrokeGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/htc/painting/engine/StrokeGroup;->serialize(ZZ)[B

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/htc/painting/engine/AbsSerializeDAO;->save(I[B)V

    .line 166
    :cond_1
    invoke-static {}, Lcom/htc/painting/engine/HtcPainting;->access$400()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-object v3, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mCacheGroups:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/painting/engine/HtcPainting;->access$200(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mCacheGroupKey:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/htc/painting/engine/HtcPainting;->access$500(Lcom/htc/painting/engine/HtcPainting;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    .end local v1           #groupId:I
    .end local v2           #r:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcPainting"

    const-string v4, "SerializeRunnable error"

    invoke-static {v3, v4, v0}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->mStop:Z

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v2}, Lcom/htc/painting/engine/HtcPainting;->access$100(Lcom/htc/painting/engine/HtcPainting;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/htc/painting/engine/HtcPainting$SerializeRunnable;->mWeakReferenceForReturn:Ljava/lang/ref/WeakReference;

    .line 179
    return-void
.end method
