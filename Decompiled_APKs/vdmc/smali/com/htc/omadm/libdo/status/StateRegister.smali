.class public Lcom/htc/omadm/libdo/status/StateRegister;
.super Ljava/lang/Object;
.source "StateRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;,
        Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;,
        Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;,
        Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;,
        Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;
    }
.end annotation


# static fields
.field private static me:Lcom/htc/omadm/libdo/status/StateRegister;


# instance fields
.field private dataActivityReciever:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private dataConnStateChangeReciever:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private dmChannelStateReciever:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mDMChannelStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

.field mPhoneCallStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

.field mUMTSStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

.field mWiFiStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

.field mWiMAXStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

.field private phoneCallStateChangeReciever:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataActivityReciever:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataConnStateChangeReciever:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->phoneCallStateChangeReciever:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dmChannelStateReciever:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;-><init>(Lcom/htc/omadm/libdo/status/StateRegister;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mDMChannelStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

    .line 68
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;-><init>(Lcom/htc/omadm/libdo/status/StateRegister;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mUMTSStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

    .line 69
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;-><init>(Lcom/htc/omadm/libdo/status/StateRegister;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiFiStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

    .line 70
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;-><init>(Lcom/htc/omadm/libdo/status/StateRegister;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiMAXStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

    .line 71
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;-><init>(Lcom/htc/omadm/libdo/status/StateRegister;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mPhoneCallStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

    .line 73
    return-void
.end method

.method private commonRegist(Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .parameter
    .parameter "observerName"
    .parameter "observerObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/Handler;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private commonUnregist(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "observerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/Handler;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    .line 220
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/status/StateRegister;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/htc/omadm/libdo/status/StateRegister;->me:Lcom/htc/omadm/libdo/status/StateRegister;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/htc/omadm/libdo/status/StateRegister;

    invoke-direct {v0}, Lcom/htc/omadm/libdo/status/StateRegister;-><init>()V

    sput-object v0, Lcom/htc/omadm/libdo/status/StateRegister;->me:Lcom/htc/omadm/libdo/status/StateRegister;

    .line 79
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/status/StateRegister;->me:Lcom/htc/omadm/libdo/status/StateRegister;

    return-object v0
.end method

.method private sendMessage(Ljava/util/Map;II)V
    .locals 5
    .parameter
    .parameter "state"
    .parameter "what"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/Handler;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 225
    .local v0, collection:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 226
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 228
    .local v3, msg:Landroid/os/Message;
    iput p3, v3, Landroid/os/Message;->what:I

    .line 229
    iput p2, v3, Landroid/os/Message;->arg1:I

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 231
    .local v1, hdlr:Landroid/os/Handler;
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 233
    .end local v1           #hdlr:Landroid/os/Handler;
    .end local v3           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDMChannelStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mDMChannelStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;->addObserver(Ljava/util/Observer;)V

    .line 88
    return-void
.end method

.method public addPhoneCallStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mPhoneCallStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;->addObserver(Ljava/util/Observer;)V

    .line 141
    return-void
.end method

.method public addUMTSStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mUMTSStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;->addObserver(Ljava/util/Observer;)V

    .line 101
    return-void
.end method

.method public addWiFiStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiFiStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;->addObserver(Ljava/util/Observer;)V

    .line 115
    return-void
.end method

.method public addWiMAXStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiMAXStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->addObserver(Ljava/util/Observer;)V

    .line 128
    return-void
.end method

.method public deleteDMChannelStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mDMChannelStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;->deleteObserver(Ljava/util/Observer;)V

    .line 91
    return-void
.end method

.method public deletePhoneCallStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mPhoneCallStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;->deleteObserver(Ljava/util/Observer;)V

    .line 144
    return-void
.end method

.method public deleteUMTSStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mUMTSStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;->deleteObserver(Ljava/util/Observer;)V

    .line 104
    return-void
.end method

.method public deleteWiFiStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiFiStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;->deleteObserver(Ljava/util/Observer;)V

    .line 118
    return-void
.end method

.method public deleteWiMAXStateObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiMAXStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->deleteObserver(Ljava/util/Observer;)V

    .line 131
    return-void
.end method

.method public notifyDMChannelStateHandler(I)V
    .locals 2
    .parameter "dataState"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dmChannelStateReciever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dmChannelStateReciever:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->sendMessage(Ljava/util/Map;II)V

    goto :goto_0
.end method

.method public notifyDMChannelStateObservers(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mDMChannelStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$DMChannelConnStateNotifier;->setConnState(I)V

    .line 94
    return-void
.end method

.method public notifyDataActivityObservers(I)V
    .locals 2
    .parameter "dataActivityState"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataActivityReciever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataActivityReciever:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->sendMessage(Ljava/util/Map;II)V

    goto :goto_0
.end method

.method public notifyDataConnStateChangedObservers(I)V
    .locals 2
    .parameter "dataConnState"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataConnStateChangeReciever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataConnStateChangeReciever:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->sendMessage(Ljava/util/Map;II)V

    goto :goto_0
.end method

.method public notifyPhoneCallStateChangedObservers(I)V
    .locals 2
    .parameter "phoneCallState"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->phoneCallStateChangeReciever:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->phoneCallStateChangeReciever:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/omadm/libdo/status/StateRegister;->sendMessage(Ljava/util/Map;II)V

    goto :goto_0
.end method

.method public notifyPhoneStateObservers(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mPhoneCallStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$PhoneCallStateNotifier;->setCallState(I)V

    .line 147
    return-void
.end method

.method public notifyUMTSStateObservers(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mUMTSStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$UMTSConnStateNotifier;->setConnState(I)V

    .line 107
    return-void
.end method

.method public notifyWiFiStateObservers(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiFiStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiFiConnStateNotifier;->setConnState(I)V

    .line 121
    return-void
.end method

.method public notifyWiMAXStateObservers(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->mWiMAXStateNotifier:Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister$WiMAXConnStateNotifier;->setConnState(I)V

    .line 134
    return-void
.end method

.method public registDMChannelStateHandler(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .parameter "observerName"
    .parameter "observerObj"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dmChannelStateReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/omadm/libdo/status/StateRegister;->commonRegist(Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registDataActivityObserver(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .parameter "observerName"
    .parameter "observerObj"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataActivityReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/omadm/libdo/status/StateRegister;->commonRegist(Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registDataConnStateChangedObserver(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .parameter "observerName"
    .parameter "observerObj"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataConnStateChangeReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/omadm/libdo/status/StateRegister;->commonRegist(Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registPhoneCallStateChangedObserver(Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 1
    .parameter "observerName"
    .parameter "observerObj"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->phoneCallStateChangeReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/omadm/libdo/status/StateRegister;->commonRegist(Ljava/util/Map;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public unregistDMChannelStateHandler(Ljava/lang/String;)Z
    .locals 1
    .parameter "observerName"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dmChannelStateReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->commonUnregist(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregistDataActivityObserver(Ljava/lang/String;)Z
    .locals 1
    .parameter "observerName"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataActivityReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->commonUnregist(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregistDataConnStateChangedObserver(Ljava/lang/String;)Z
    .locals 1
    .parameter "observerName"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->dataConnStateChangeReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->commonUnregist(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregistPhoneCallStateChangedObserver(Ljava/lang/String;)Z
    .locals 1
    .parameter "observerName"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/omadm/libdo/status/StateRegister;->phoneCallStateChangeReciever:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/htc/omadm/libdo/status/StateRegister;->commonUnregist(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
