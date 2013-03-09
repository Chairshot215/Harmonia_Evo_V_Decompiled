.class public Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;
.super Ljava/lang/Object;
.source "RosterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;,
        Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;,
        Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteContactsSelectionArgs:[Ljava/lang/String;

.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

.field private mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private mRosterRequestPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->fireRosterChangedEvent(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->removePresenceForUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processShortRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    return-void
.end method

.method private createDeleteRosterEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 6
    .parameter "username"

    .prologue
    const/4 v2, 0x0

    .line 467
    new-instance v0, Lorg/jivesoftware/smack/RosterEntry;

    sget-object v3, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/RosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/XMPPConnection;)V

    return-object v0
.end method

.method private createRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)Lorg/jivesoftware/smack/RosterEntry;
    .locals 6
    .parameter "item"

    .prologue
    .line 446
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, user:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    .line 449
    .local v3, itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v4

    .line 451
    .local v4, itemStatus:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    new-instance v0, Lorg/jivesoftware/smack/RosterEntry;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/RosterEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 457
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-static {}, Lorg/jivesoftware/smack/GoogleExtensions;->getSupportExtendedContactAttribute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetStatus()Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->googleSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 459
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionGetRejected()Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->googleSetRejected(Z)V

    .line 460
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->isQuickContact()Z

    move-result v5

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/RosterEntry;->setQuickContact(Z)V

    .line 463
    :cond_0
    return-object v0
.end method

.method private editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 5
    .parameter "username"
    .parameter "nickname"
    .parameter "status"

    .prologue
    .line 281
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 282
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 284
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->gExtensionSetStatus(Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 286
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 289
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 290
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$3;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 306
    return-void
.end method

.method private editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
    .locals 2
    .parameter "account"
    .parameter "username"
    .parameter "status"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, nickname:Ljava/lang/String;
    invoke-direct {p0, p3, v0, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 277
    return-void
.end method

.method private fireRosterChangedEvent(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "accountId"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p3, addedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, updatedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p5, deletedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    const/4 v0, 0x0

    .line 715
    .local v0, notified:Z
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->entriesAdded(JLjava/util/ArrayList;)V

    .line 717
    const/4 v0, 0x1

    .line 719
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->entriesUpdated(JLjava/util/ArrayList;)V

    .line 721
    const/4 v0, 0x1

    .line 723
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v1, p1, p2, p5}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->entriesDeleted(JLjava/util/ArrayList;)V

    .line 726
    const/4 v0, 0x1

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setRosterFetched(Z)V

    .line 731
    if-nez v0, :cond_3

    .line 734
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 736
    :cond_3
    return-void
.end method

.method private fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "user"
    .parameter "presence"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->presenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 341
    return-void
.end method

.method private handleBlockedEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    .locals 3
    .parameter "entry"

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, user:Ljava/lang/String;
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove presence for blocked contact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->removePresenceForUser(Ljava/lang/String;)V

    .line 507
    .end local v0           #user:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 766
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 770
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private processLongRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ZJ)V
    .locals 15
    .parameter "rosterPacket"
    .parameter
    .parameter
    .parameter
    .parameter "removeObsolete"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p2, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemsList()Ljava/util/ArrayList;

    move-result-object v12

    .line 637
    .local v12, rosterItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v13

    .line 638
    .local v13, size:I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 640
    .local v11, itemsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processLongRosterUpdate: removeObsolete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 645
    :cond_0
    monitor-enter v12

    .line 646
    :try_start_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 647
    .local v10, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v10}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 649
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 659
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    const-string v5, "account=?"

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mDeleteContactsSelectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 665
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    .line 667
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 668
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 669
    .local v14, user:Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 671
    .restart local v10       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-nez v10, :cond_4

    .line 673
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 676
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_3

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processLongRosterUpdate: add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to deleteEntries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 681
    :cond_3
    invoke-direct {p0, v14}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->createDeleteRosterEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 695
    .end local v10           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v14           #user:Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 688
    .restart local v10       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .restart local v14       #user:Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 689
    :try_start_4
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 692
    :try_start_5
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v10, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 690
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 695
    .end local v10           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v14           #user:Ljava/lang/String;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 701
    :goto_2
    monitor-enter v12

    .line 702
    :try_start_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 703
    .restart local v10       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v10, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3

    .line 705
    .end local v10           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_3
    move-exception v2

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2

    .line 698
    :cond_6
    const-string v2, "processLongRosterUpdate"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_2

    .line 705
    :cond_7
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 706
    return-void
.end method

.method private processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .parameter "item"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, entries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, deleteEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    .line 513
    .local v1, itemType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->createRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 516
    .local v0, entry:Lorg/jivesoftware/smack/RosterEntry;
    sget-object v2, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRosterEntry: delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 518
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_1

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRosterEntry: add/update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 525
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->handleBlockedEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    goto :goto_0
.end method

.method private processShortRosterUpdate(Lorg/jivesoftware/smack/packet/RosterPacket;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    .locals 19
    .parameter "rosterPacket"
    .parameter
    .parameter
    .parameter
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/RosterPacket;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p2, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p3, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .local p4, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    const/4 v7, 0x0

    .line 549
    .local v7, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemCount()I

    move-result v17

    .line 551
    .local v17, size:I
    if-nez v17, :cond_0

    .line 552
    const-string v3, "processShortRosterUpdate: no roster item!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processShortRosterUpdate: roster size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 559
    :cond_1
    add-int/lit8 v3, v17, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 561
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItemsList()Ljava/util/ArrayList;

    move-result-object v16

    .line 562
    .local v16, rosterItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v15, itemsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    const/4 v12, 0x1

    .line 565
    .local v12, index:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v9, buf:Ljava/lang/StringBuilder;
    const-string v3, "account=? AND ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const/4 v3, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 568
    monitor-enter v16

    .line 569
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    move v13, v12

    .end local v12           #index:I
    .local v13, index:I
    :goto_1
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 570
    .local v14, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v14}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v18

    .line 571
    .local v18, user:Ljava/lang/String;
    aput-object v18, v7, v13

    .line 573
    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 575
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    const/4 v3, 0x1

    if-le v13, v3, :cond_2

    .line 576
    :try_start_2
    const-string v3, " OR "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_2
    const-string v3, "username"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v13, v12

    .line 579
    .end local v12           #index:I
    .restart local v13       #index:I
    goto :goto_1

    .line 580
    .end local v14           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v18           #user:Ljava/lang/String;
    :cond_3
    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 581
    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 589
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 591
    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 592
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 593
    .restart local v18       #user:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 595
    .restart local v14       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    if-eqz v14, :cond_4

    .line 600
    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 601
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 602
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 604
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v14, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 607
    .end local v14           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v18           #user:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 580
    .end local v6           #selection:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #index:I
    .restart local v12       #index:I
    :catchall_1
    move-exception v3

    :goto_3
    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 602
    .end local v12           #index:I
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #index:I
    .restart local v14       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .restart local v18       #user:Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 607
    .end local v14           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v18           #user:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 613
    :goto_4
    monitor-enter v16

    .line 614
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 615
    .restart local v14       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v14, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->processRosterEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_5

    .line 617
    .end local v14           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_3
    move-exception v3

    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 610
    :cond_6
    const-string v3, "processLongRosterUpdate"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_4

    .line 617
    :cond_7
    :try_start_b
    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_0

    .line 580
    .end local v6           #selection:Ljava/lang/String;
    .end local v10           #c:Landroid/database/Cursor;
    :catchall_4
    move-exception v3

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_3
.end method

.method private removePresenceForUser(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->fireRosterPresenceEvent(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 352
    return-void
.end method


# virtual methods
.method public blockContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 257
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 258
    return-void
.end method

.method public clearContactFlags(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 269
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 270
    return-void
.end method

.method public createContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"
    .parameter "subscribe"

    .prologue
    .line 168
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createContact: contact="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nickname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subscribe="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p4, :cond_2

    .line 180
    :cond_1
    new-instance v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 181
    .local v3, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 182
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 187
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v4, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 198
    .end local v0           #iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    .end local v1           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v3           #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_2
    if-eqz p4, :cond_3

    .line 200
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 201
    .local v2, presencePacket:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 204
    .end local v2           #presencePacket:Lorg/jivesoftware/smack/packet/Presence;
    :cond_3
    return-void
.end method

.method public editContactNickname(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "contact"
    .parameter "nickname"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getContactTypeForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)I

    move-result v1

    .line 210
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 221
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->DEFAULT:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 225
    .local v0, status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :goto_0
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 226
    return-void

    .line 212
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_0
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->BLOCKED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 213
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 215
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_1
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 216
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 218
    .end local v0           #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    :pswitch_2
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    .line 219
    .restart local v0       #status:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;
    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRosterEtag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    .line 135
    .local v2, connection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v0

    .line 136
    .local v0, accountId:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v1}, Lcom/google/android/gsf/TalkContract$ContactsEtag;->getRosterEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hideContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 265
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->HIDDEN:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 266
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;)V
    .locals 1
    .parameter "context"
    .parameter "resolver"
    .parameter "connectionCtx"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 95
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mResolver:Landroid/content/ContentResolver;

    .line 96
    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    .line 98
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 101
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "initConnection: set up roster and presence packet filters"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$RosterPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 107
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$PresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 113
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v1, :cond_3

    .line 118
    new-instance v1, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$BatchPresencePacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 119
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/BatchPresence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterPacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mBatchPresencePacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mBatchPresencePacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 131
    return-void
.end method

.method public isRosterRequestPendingForAccount(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 164
    .local v0, flag:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method notifyPresenceChanged()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterListenerImpl:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 348
    return-void
.end method

.method public pinContact(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "contact"

    .prologue
    .line 261
    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;->PINNED:Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->editContactStatus(JLjava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V

    .line 262
    return-void
.end method

.method public removeContact(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "contact"

    .prologue
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContact: contact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", accountId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->rosterHasContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContact: cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in db, bail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 237
    .local v2, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 239
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    const/4 v3, 0x0

    invoke-direct {v1, p3, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v1, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    sget-object v3, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 242
    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 244
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 245
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$2;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    goto :goto_0
.end method

.method public requestRoster()Z
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 141
    .local v0, packet:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->getRosterEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->setEtag(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v1

    return v1
.end method

.method public setRosterRequestPendingForAccount(JZ)V
    .locals 3
    .parameter "accountId"
    .parameter "flag"

    .prologue
    .line 153
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRosterRequestPendingForAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->log(Ljava/lang/String;)V

    .line 155
    :cond_0
    if-eqz p3, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterManager;->mRosterRequestPendingMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
