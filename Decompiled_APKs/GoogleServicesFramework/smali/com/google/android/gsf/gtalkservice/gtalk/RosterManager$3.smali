.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$3;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 7
    .parameter "packet"

    .prologue
    .line 293
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_0

    move-object v3, p1

    .line 294
    check-cast v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 295
    .local v3, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Iterator;

    move-result-object v2

    .line 296
    .local v2, itor:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 298
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, contact:Ljava/lang/String;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set roster for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v0           #contact:Ljava/lang/String;
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v2           #itor:Ljava/util/Iterator;
    .end local v3           #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_0
    return-void
.end method
