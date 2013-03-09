.class Lcom/google/android/maps/MapActivity$1;
.super Landroid/os/Handler;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/MapActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/NetworkConnectivityListener;->getState()Lcom/google/android/maps/NetworkConnectivityListener$State;

    move-result-object v4

    const-string v5, "MapActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling network change notification:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/maps/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    sget-object v5, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/maps/MapActivity$1;->this$0:Lcom/google/android/maps/MapActivity;

    #getter for: Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
    invoke-static {v5}, Lcom/google/android/maps/MapActivity;->access$200(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get connection factory"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t reset connection pool."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->getClient()Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get connection factory client"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v5, "MapActivity"

    const-string v6, "Couldn\'t get client connection manager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
