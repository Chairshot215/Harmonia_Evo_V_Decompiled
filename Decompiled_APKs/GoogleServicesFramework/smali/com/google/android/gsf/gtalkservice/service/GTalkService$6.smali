.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;
.super Lcom/google/android/gtalkservice/IGTalkService$Stub;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;-><init>()V

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    const-string v2, "Need GTalk_SERVICE permission"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method private getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 5
    .parameter "accountId"

    .prologue
    .line 1956
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1958
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1959
    .local v2, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 1960
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1961
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1965
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1967
    .end local v0           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v2           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :goto_0
    return-object v3

    .line 1965
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1967
    const/4 v3, 0x0

    goto :goto_0

    .line 1965
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method


# virtual methods
.method public createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .locals 2
    .parameter "username"
    .parameter "listener"

    .prologue
    .line 1875
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1877
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1890
    return-void
.end method

.method public dismissAllNotifications()V
    .locals 1

    .prologue
    .line 1971
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1972
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissAllNotifications()V

    .line 1973
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;J)V
    .locals 2
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1977
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1979
    return-void
.end method

.method public dismissNotificationsForAccount(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1982
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1983
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1985
    return-void
.end method

.method public getActiveConnections()Ljava/util/List;
    .locals 6

    .prologue
    .line 1894
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1896
    const/4 v2, 0x0

    .line 1898
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1900
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1901
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1902
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1905
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1908
    return-object v3

    .line 1905
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2
    .parameter "username"

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1915
    const-string v0, "GTalkService"

    const-string v1, "getConnectionForUser: empty username"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const/4 v0, 0x0

    .line 1919
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2

    .prologue
    .line 1924
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1926
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1928
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1930
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 1928
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1930
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDeviceStorageLow()Z
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z

    move-result v0

    return v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 6
    .parameter "accountId"

    .prologue
    .line 1935
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1937
    const/4 v3, 0x0

    .line 1939
    .local v3, imSession:Lcom/google/android/gtalkservice/IImSession;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1941
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mEndpointWrappers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1942
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1943
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v4, :cond_0

    .line 1945
    check-cast v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .end local v1           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 1949
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1952
    return-object v3

    .line 1949
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public printDiagnostics()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1992
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 1994
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1995
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1996
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-nolog"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1999
    return-object v1
.end method

.method public setTalkForegroundState()V
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setTalkForegroundState()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 2004
    return-void
.end method
