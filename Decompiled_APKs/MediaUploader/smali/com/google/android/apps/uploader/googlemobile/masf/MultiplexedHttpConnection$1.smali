.class final Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;->submitRequestAndWaitForCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;

.field final synthetic val$mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection$1;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MultiplexedHttpConnection$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
