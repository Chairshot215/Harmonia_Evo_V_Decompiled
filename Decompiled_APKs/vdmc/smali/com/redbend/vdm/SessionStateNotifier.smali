.class Lcom/redbend/vdm/SessionStateNotifier;
.super Ljava/lang/Object;
.source "SessionStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;
    }
.end annotation


# instance fields
.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbend/vdm/SessionStateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/redbend/vdm/SessionStateNotifier;->initIDs()V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0}, Lcom/redbend/vdm/SessionStateNotifier;->initInstance()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method protected notify(IIILcom/redbend/vdm/SessionInitiator;)V
    .locals 5
    .parameter "type"
    .parameter "state"
    .parameter "lastError"
    .parameter "initiator"

    .prologue
    .line 59
    new-instance v2, Ljava/lang/String;

    const-string v3, "SSC: notify (initiator = "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, s:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_0
    const-string v3, "vDM"

    invoke-static {v3, v2}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/redbend/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/SessionStateObserver;

    .line 67
    .local v1, observer:Lcom/redbend/vdm/SessionStateObserver;
    invoke-static {p1}, Lcom/redbend/vdm/SessionStateObserver$SessionType;->fromInt(I)Lcom/redbend/vdm/SessionStateObserver$SessionType;

    move-result-object v3

    invoke-static {p2}, Lcom/redbend/vdm/SessionStateObserver$SessionState;->fromInt(I)Lcom/redbend/vdm/SessionStateObserver$SessionState;

    move-result-object v4

    invoke-interface {v1, v3, v4, p3, p4}, Lcom/redbend/vdm/SessionStateObserver;->notify(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;ILcom/redbend/vdm/SessionInitiator;)V

    goto :goto_1

    .line 63
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lcom/redbend/vdm/SessionStateObserver;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 72
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected notify(IIILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "state"
    .parameter "lastError"
    .parameter "id"

    .prologue
    .line 75
    new-instance v0, Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(native)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;-><init>(Lcom/redbend/vdm/SessionStateNotifier;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/redbend/vdm/SessionStateNotifier;->notify(IIILcom/redbend/vdm/SessionInitiator;)V

    .line 76
    return-void
.end method

.method public registerObserver(Lcom/redbend/vdm/SessionStateObserver;)Z
    .locals 3
    .parameter "observer"

    .prologue
    .line 34
    const-string v0, "vDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSC: registerObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/redbend/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public native terminate()V
.end method

.method public unregisterObserver(Lcom/redbend/vdm/SessionStateObserver;)Z
    .locals 3
    .parameter "observer"

    .prologue
    .line 46
    const-string v0, "vDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSC: unregisterObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/redbend/vdm/VdmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/redbend/vdm/SessionStateNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
