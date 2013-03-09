.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchPresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 356
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    .line 361
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v1

    .line 362
    .local v1, updates:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->onGotBatchPresence()V

    .line 363
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$600(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->presenceChanged(Ljava/util/Collection;)V

    .line 364
    return-void
.end method
