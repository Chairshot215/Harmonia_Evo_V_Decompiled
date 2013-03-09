.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic val$account:Lcom/google/android/gsf/gtalkservice/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountMissing()V
    .locals 2

    .prologue
    .line 1635
    const-string v0, "GTalkService"

    const-string v1, "blockingCreateGTalkConnection: account missing"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 5
    .parameter "username"

    .prologue
    .line 1622
    const-string v2, "blockingCreateGTalkConnection: authFailed!"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 1623
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v2, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 1625
    .local v0, connWrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    if-eqz v0, :cond_0

    .line 1626
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 1627
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionStateAndError(IIZ)V

    .line 1632
    .end local v1           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_0
    return-void
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 1610
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    const-string v1, "blockingCreateGTalkConnection: fetchAuthTokenLater"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 1614
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->val$account:Lcom/google/android/gsf/gtalkservice/Account;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1615
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v1, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1616
    .local v0, connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v0, :cond_1

    .line 1617
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .end local v0           #connection:Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 1619
    :cond_1
    return-void
.end method
