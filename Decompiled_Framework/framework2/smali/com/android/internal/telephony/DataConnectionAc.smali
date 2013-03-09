.class public Lcom/android/internal/telephony/DataConnectionAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "DataConnectionAc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionAc$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final DBG:Z = false

.field public static final REQ_ADD_APNCONTEXT:I = 0x41012

.field public static final REQ_GET_APNCONTEXT_LIST:I = 0x41016

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_CAPABILITIES:I = 0x4100a

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_RECONNECT_INTENT:I = 0x4101a

.field public static final REQ_GET_REFCOUNT:I = 0x41010

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_REMOVE_APNCONTEXT:I = 0x41014

.field public static final REQ_RESET:I = 0x4100e

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final REQ_SET_RECONNECT_INTENT:I = 0x41018

.field public static final REQ_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100c

.field public static final RSP_ADD_APNCONTEXT:I = 0x41013

.field public static final RSP_GET_APNCONTEXT_LIST:I = 0x41017

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_CAPABILITIES:I = 0x4100b

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_RECONNECT_INTENT:I = 0x4101b

.field public static final RSP_GET_REFCOUNT:I = 0x41011

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_REMOVE_APNCONTEXT:I = 0x41015

.field public static final RSP_RESET:I = 0x4100f

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field public static final RSP_SET_RECONNECT_INTENT:I = 0x41019

.field public static final RSP_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100d


# instance fields
.field public dataConnection:Lcom/android/internal/telephony/DataConnection;

.field private mLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3

    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41013

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApnListSync()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41017

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnList(Landroid/os/Message;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnList error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;
    .locals 3

    const v1, 0x41004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41005

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnSetting error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCidSync()I
    .locals 3

    const v1, 0x41002

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41003

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspCid(Landroid/os/Message;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspCid error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;
    .locals 3

    const v1, 0x4100a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkCapabilities error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 3

    const v1, 0x41006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41007

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReconnectIntentSync()Landroid/app/PendingIntent;
    .locals 3

    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4101b

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefCountSync()I
    .locals 3

    const v1, 0x41010

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41011

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspRefCount(Landroid/os/Message;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspRefCount error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 3

    const v1, 0x41000

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41001

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rspIsInactive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3

    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41015

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reqAddApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2

    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-void
.end method

.method public reqApnSetting()V
    .locals 1

    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqCid()V
    .locals 1

    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqGetApnList(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2

    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    return-void
.end method

.method public reqGetReconnectIntent()V
    .locals 2

    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqLinkCapabilities()V
    .locals 1

    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqRefCount()V
    .locals 1

    const v0, 0x41010

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqRemomveApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2

    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-void
.end method

.method public reqReset()V
    .locals 1

    const v0, 0x4100e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1

    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public reqSetReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 2

    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-void
.end method

.method public reqUpdateLinkPropertiesDataCallState(Lcom/android/internal/telephony/DataCallState;)V
    .locals 1

    const v0, 0x4100c

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public resetSync()V
    .locals 3

    const v1, 0x4100e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100f

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rspApnList(Landroid/os/Message;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/ApnSetting;
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    return v0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    return-object v0
.end method

.method public rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public rspRefCount(Landroid/os/Message;)I
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    return v0
.end method

.method public rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    .locals 3

    const v1, 0x41008

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReconnectIntentSync(Landroid/app/PendingIntent;)V
    .locals 3

    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41019

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3

    const v1, 0x4100c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100d

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method
