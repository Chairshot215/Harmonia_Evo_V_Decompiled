.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;
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
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 313
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Presence;

    .line 314
    .local v1, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, from:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v2, v3, :cond_1

    .line 326
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v2, v3, :cond_0

    .line 330
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->removePresenceForUser(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->access$400(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;)V

    goto :goto_0
.end method
