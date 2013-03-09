.class Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7
    .parameter "packet"

    .prologue
    .line 77
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->access$000(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSessionImpl()Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;

    move-result-object v3

    .line 79
    .local v3, session:Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ImSession;->isLoggedIn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPacket: not logged in! drop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;Ljava/lang/String;)V

    .line 92
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local p1
    :cond_1
    instance-of v4, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    check-cast p1, Lorg/jivesoftware/smack/packet/Presence;

    .end local p1
    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v4, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 86
    .restart local p1
    :cond_2
    instance-of v4, p1, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    .line 88
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Presence;

    .line 89
    .local v2, presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->processPresencePacket(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v4, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1
.end method
