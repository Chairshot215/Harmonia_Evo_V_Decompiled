.class Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;
.super Ljava/lang/Object;
.source "ApplicationEndpointPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationEndpointListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 289
    .line 291
    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    const-class v2, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 292
    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 293
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 304
    :goto_0
    if-nez v1, :cond_2

    .line 305
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received unknown packet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Ljava/lang/String;)V

    .line 326
    :goto_1
    return-void

    .line 295
    :cond_0
    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    const-class v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 296
    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 297
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->toXML()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 299
    goto :goto_0

    :cond_1
    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    const-class v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 300
    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 301
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v2

    .line 310
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 311
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account id mismatch. should not happen. received: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v4, "message"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "attr:from"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v0, "username"

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.XMPP_ENDPOINT_RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager$ApplicationEndpointListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->mEnd:Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;)Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ApplicationEndpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method
