.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/INdefPushCallback$Stub;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean; = null

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mDefaultEvent:Landroid/nfc/NfcEvent;

.field final mNfcState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2

    invoke-direct {p0}, Landroid/nfc/INdefPushCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    return-void
.end method


# virtual methods
.method public createMessage()Landroid/nfc/NdefMessage;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v3

    :goto_1
    return-object v3

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method declared-synchronized getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;)V

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/nfc/NfcFragment;->attach(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/nfc/NfcFragment;->remove(Landroid/app/Activity;)V

    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNdefPushComplete()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized onPause(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResume(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    if-nez p2, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez p2, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p2, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-nez p2, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    :try_start_1
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-boolean v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    :goto_1
    iget-boolean v5, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    move-object v2, p0

    :cond_1
    invoke-interface {v4, v3, v2}, Landroid/nfc/INfcAdapter;->setForegroundNdefPush(Landroid/nfc/NdefMessage;Landroid/nfc/INdefPushCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
