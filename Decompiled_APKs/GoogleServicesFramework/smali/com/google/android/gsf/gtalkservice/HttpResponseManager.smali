.class public Lcom/google/android/gsf/gtalkservice/HttpResponseManager;
.super Ljava/lang/Object;
.source "HttpResponseManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private pending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gtalkservice/IHttpRequestCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->pending:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 81
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HttpRespMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method


# virtual methods
.method public addPending(Ljava/lang/String;Lcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 1
    .parameter "id"
    .parameter "cb"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->pending:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/HttpResponse;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 55
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 62
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/HttpResponse;

    .line 63
    .local v2, resp:Lorg/jivesoftware/smack/packet/HttpResponse;
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->log(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->getPacketID()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->pending:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/IHttpRequestCallback;

    .line 69
    .local v0, cb:Lcom/google/android/gtalkservice/IHttpRequestCallback;
    if-nez v0, :cond_1

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no callback for tag ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->log(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/HttpResponse;->getData()[B

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gtalkservice/IHttpRequestCallback;->requestComplete([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remote exception for tag ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
