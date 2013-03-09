.class Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreemptableRequestRunnable"
.end annotation


# instance fields
.field private final immediate:Z

.field private final queueName:Ljava/lang/String;

.field private final request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->queueName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->immediate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$100(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$100(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->queueName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->wrappedEqualsRunnable(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->preEmptQueue:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->access$100(Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;)Ljava/util/Hashtable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->queueName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->this$0:Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->request:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;

    iget-boolean v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux$PreemptableRequestRunnable;->immediate:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    goto :goto_0
.end method
