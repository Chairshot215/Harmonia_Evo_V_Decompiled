.class public Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"


# instance fields
.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

.field private mHandler:Landroid/os/Handler;

.field private mLoggedIn:Z

.field private mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

.field private mPresenceLock:Ljava/lang/Object;

.field private mPresenceUpdateScheduled:Z

.field private mRemoteRosterListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRosterFetched:Z

.field private mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

.field private mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    .line 65
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$1;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    .line 72
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    .line 80
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$3;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifySelfPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    return p1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 782
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListenerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 786
    const-string v0, "GTalkService/p"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListenerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method private notifyPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 162
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/google/android/gtalkservice/IRosterListener;->presenceChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPresenceChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 147
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->rosterChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RosterListenerImpl] notifyRosterChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private notifySelfPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 180
    :try_start_0
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notifySelfPresenceChanged"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->selfPresenceChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 185
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySelfPresenceChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeTalkPresence(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 773
    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 776
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTalkPresence for account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private schedulePresenceNotify()V
    .locals 4

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePresenceNotify: in 3000 ms"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$4;-><init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    goto :goto_0
.end method

.method private setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "nickname"
    .parameter "username"

    .prologue
    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    if-nez p1, :cond_0

    .line 220
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosterListenerImpl.setNickname: username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-object p1
.end method

.method private translateCapabilityFlag(I)I
    .locals 2
    .parameter "protobufPresenceCaps"

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, capability:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 463
    or-int/lit8 v0, v0, 0x1

    .line 465
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 466
    or-int/lit8 v0, v0, 0x2

    .line 468
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 469
    or-int/lit8 v0, v0, 0x4

    .line 471
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 472
    or-int/lit8 v0, v0, 0x8

    .line 475
    :cond_3
    return v0
.end method

.method private translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I
    .locals 1
    .parameter "clientType"

    .prologue
    .line 448
    if-eqz p1, :cond_1

    .line 449
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-ne p1, v0, :cond_0

    .line 450
    const/4 v0, 0x2

    .line 456
    :goto_0
    return v0

    .line 451
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-ne p1, v0, :cond_1

    .line 452
    const/4 v0, 0x1

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I
    .locals 4
    .parameter "presence"

    .prologue
    const/4 v2, 0x3

    .line 427
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v0

    .line 428
    .local v0, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    .line 430
    .local v1, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v3, :cond_1

    .line 431
    const/4 v2, 0x0

    .line 444
    :cond_0
    :goto_0
    return v2

    .line 433
    :cond_1
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v0, v3, :cond_2

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v3, :cond_3

    .line 434
    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    .line 435
    :cond_3
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v0, v3, :cond_0

    .line 437
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v3, :cond_4

    .line 438
    const/4 v2, 0x2

    goto :goto_0

    .line 439
    :cond_4
    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v3, :cond_0

    .line 440
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private updatePresenceInDb(JLjava/lang/String;IILjava/lang/String;II)Z
    .locals 3
    .parameter "accountId"
    .parameter "contact"
    .parameter "priority"
    .parameter "mode"
    .parameter "status"
    .parameter "clientType"
    .parameter "capabilities"

    .prologue
    .line 722
    if-nez p6, :cond_0

    .line 723
    const-string p6, ""

    .line 726
    :cond_0
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePresenceInDb for ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 730
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 731
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "mode"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    const-string v1, "priority"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    const-string v1, "status"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "client_type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string v1, "cap"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 110
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IRosterListener;

    .line 114
    .local v2, rl:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 115
    monitor-exit v4

    .line 126
    .end local v2           #rl:Lcom/google/android/gtalkservice/IRosterListener;
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->isRosterFetched()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0

    .line 119
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public clearAllPresenceRecords()V
    .locals 5

    .prologue
    .line 712
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    .line 713
    .local v2, gtalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v0

    .line 716
    .local v0, accountId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeTalkPresence(J)V

    .line 717
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->removeAllContactsPresence(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 718
    return-void
.end method

.method public entriesAdded(JLjava/util/ArrayList;)V
    .locals 28
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 230
    .local v4, count:I
    sget-boolean v23, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "entriesAdded: add roster for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " contacts, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", accountId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 235
    .local v18, ts:J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 240
    .local v7, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/RosterEntry;

    .line 247
    .local v6, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v21

    .line 248
    .local v21, username:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, nickname:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 251
    const/16 v20, 0x3

    .line 260
    .local v20, type:I
    :goto_1
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v14

    .line 261
    .local v14, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v23

    if-ne v14, v0, :cond_4

    .line 262
    const/16 v16, 0x1

    .line 269
    .local v16, subscriptionStatus:I
    :goto_2
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v15

    .line 270
    .local v15, subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_6

    .line 271
    const/16 v17, 0x2

    .line 283
    .local v17, subscriptionType:I
    :goto_3
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isQuickContact()Z

    move-result v23

    if-eqz v23, :cond_a

    const/4 v10, 0x1

    .line 284
    .local v10, isQuickContact:I
    :goto_4
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->googleGetRejected()Z

    move-result v23

    if-eqz v23, :cond_b

    const/4 v13, 0x1

    .line 288
    .local v13, rejected:I
    :goto_5
    sget-object v23, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 289
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v23, "account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 290
    const-string v23, "username"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 291
    const-string v23, "nickname"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 292
    const-string v23, "type"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 293
    const-string v23, "subscriptionStatus"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 294
    const-string v23, "subscriptionType"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 295
    const-string v23, "qc"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 296
    const-string v23, "rejected"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 298
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    rem-int/lit16 v0, v7, 0x12c

    move/from16 v23, v0

    if-nez v23, :cond_c

    const/16 v22, 0x1

    .line 299
    .local v22, yieldAllowed:Z
    :goto_6
    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 301
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 302
    .end local v8           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 252
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #isQuickContact:I
    .end local v13           #rejected:I
    .end local v14           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v15           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v16           #subscriptionStatus:I
    .end local v17           #subscriptionType:I
    .end local v20           #type:I
    .end local v22           #yieldAllowed:Z
    :cond_1
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isHidden()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 253
    const/16 v20, 0x4

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 254
    .end local v20           #type:I
    :cond_2
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isPinned()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 255
    const/16 v20, 0x5

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 257
    .end local v20           #type:I
    :cond_3
    const/16 v20, 0x0

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 263
    .restart local v14       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :cond_4
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v23

    if-ne v14, v0, :cond_5

    .line 264
    const/16 v16, 0x2

    .restart local v16       #subscriptionStatus:I
    goto/16 :goto_2

    .line 266
    .end local v16           #subscriptionStatus:I
    :cond_5
    const/16 v16, 0x0

    .restart local v16       #subscriptionStatus:I
    goto/16 :goto_2

    .line 272
    .restart local v15       #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_6
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_7

    .line 273
    const/16 v17, 0x3

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 274
    .end local v17           #subscriptionType:I
    :cond_7
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_8

    .line 275
    const/16 v17, 0x4

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 276
    .end local v17           #subscriptionType:I
    :cond_8
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_9

    .line 277
    const/16 v17, 0x1

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 279
    .end local v17           #subscriptionType:I
    :cond_9
    const/16 v17, 0x0

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 283
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 284
    .restart local v10       #isQuickContact:I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 298
    .end local v7           #i:I
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v8       #i:I
    .restart local v13       #rejected:I
    :cond_c
    const/16 v22, 0x0

    goto :goto_6

    .line 305
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v8           #i:I
    .end local v10           #isQuickContact:I
    .end local v11           #nickname:Ljava/lang/String;
    .end local v13           #rejected:I
    .end local v14           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v15           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v16           #subscriptionStatus:I
    .end local v17           #subscriptionType:I
    .end local v20           #type:I
    .end local v21           #username:Ljava/lang/String;
    .restart local v7       #i:I
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "com.google.android.providers.talk"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 318
    return-void

    .line 306
    :catch_0
    move-exception v5

    .line 307
    .local v5, e:Landroid/os/RemoteException;
    const-string v23, "GTalkService"

    const-string v24, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 308
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 309
    .local v5, e:Landroid/content/OperationApplicationException;
    const-string v23, "GTalkService"

    const-string v24, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public entriesDeleted(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteContacts(Landroid/content/ContentResolver;JLjava/util/ArrayList;)V

    .line 422
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 423
    return-void
.end method

.method public entriesUpdated(JLjava/util/ArrayList;)V
    .locals 31
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 322
    .local v5, count:I
    sget-boolean v26, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "entriesUpdated: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", accountId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 326
    .local v21, ts:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v3, buf:Ljava/lang/StringBuilder;
    const-string v26, "account"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v26, "=? AND "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v26, "username"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v26, "=?"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 333
    .local v15, selection:Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 334
    .local v16, selectionArgs:[Ljava/lang/String;
    const/16 v26, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v16, v26

    .line 336
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v13, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 341
    .local v8, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/RosterEntry;

    .line 346
    .local v7, entry:Lorg/jivesoftware/smack/RosterEntry;
    const/4 v11, 0x0

    .line 348
    .local v11, isQuickContact:I
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v24

    .line 349
    .local v24, username:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, nickname:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 352
    const/16 v23, 0x3

    .line 361
    .local v23, type:I
    :goto_1
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v17

    .line 362
    .local v17, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 363
    const/16 v19, 0x1

    .line 370
    .local v19, subscriptionStatus:I
    :goto_2
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v18

    .line 371
    .local v18, subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 372
    const/16 v20, 0x2

    .line 384
    .local v20, subscriptionType:I
    :goto_3
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isQuickContact()Z

    move-result v26

    if-eqz v26, :cond_a

    const/4 v11, 0x1

    .line 385
    :goto_4
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->googleGetRejected()Z

    move-result v26

    if-eqz v26, :cond_b

    const/4 v14, 0x1

    .line 387
    .local v14, rejected:I
    :goto_5
    sget-object v26, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 388
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v26, "nickname"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 389
    const-string v26, "type"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 390
    const-string v26, "subscriptionStatus"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 391
    const-string v26, "subscriptionType"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 392
    const-string v26, "qc"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 393
    const-string v26, "rejected"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 395
    const/16 v26, 0x1

    aput-object v24, v16, v26

    .line 396
    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 398
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    rem-int/lit16 v0, v8, 0x12c

    move/from16 v26, v0

    if-nez v26, :cond_c

    const/16 v25, 0x1

    .line 399
    .local v25, yieldAllowed:Z
    :goto_6
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 401
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 402
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 353
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #rejected:I
    .end local v17           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v18           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v19           #subscriptionStatus:I
    .end local v20           #subscriptionType:I
    .end local v23           #type:I
    .end local v25           #yieldAllowed:Z
    :cond_1
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isHidden()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 354
    const/16 v23, 0x4

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 355
    .end local v23           #type:I
    :cond_2
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isPinned()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 356
    const/16 v23, 0x5

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 358
    .end local v23           #type:I
    :cond_3
    const/16 v23, 0x0

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 364
    .restart local v17       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :cond_4
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 365
    const/16 v19, 0x2

    .restart local v19       #subscriptionStatus:I
    goto/16 :goto_2

    .line 367
    .end local v19           #subscriptionStatus:I
    :cond_5
    const/16 v19, 0x0

    .restart local v19       #subscriptionStatus:I
    goto/16 :goto_2

    .line 373
    .restart local v18       #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_6
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 374
    const/16 v20, 0x3

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 375
    .end local v20           #subscriptionType:I
    :cond_7
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 376
    const/16 v20, 0x4

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 377
    .end local v20           #subscriptionType:I
    :cond_8
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 378
    const/16 v20, 0x1

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 380
    .end local v20           #subscriptionType:I
    :cond_9
    const/16 v20, 0x0

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 384
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 385
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 398
    .end local v8           #i:I
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v9       #i:I
    .restart local v14       #rejected:I
    :cond_c
    const/16 v25, 0x0

    goto :goto_6

    .line 405
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v9           #i:I
    .end local v11           #isQuickContact:I
    .end local v12           #nickname:Ljava/lang/String;
    .end local v14           #rejected:I
    .end local v17           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v18           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v19           #subscriptionStatus:I
    .end local v20           #subscriptionType:I
    .end local v23           #type:I
    .end local v24           #username:Ljava/lang/String;
    .restart local v8       #i:I
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "com.google.android.providers.talk"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyRosterChanged()Z

    .line 418
    return-void

    .line 406
    :catch_0
    move-exception v6

    .line 407
    .local v6, e:Landroid/os/RemoteException;
    const-string v26, "GTalkService"

    const-string v27, "%s: %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 408
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 409
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v26, "GTalkService"

    const-string v27, "%s: %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 1
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    .line 94
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    .line 95
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    return v0
.end method

.method public isRosterFetched()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterFetched:Z

    return v0
.end method

.method public notifyPresenceChanged()Z
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public notifyRosterChanged()Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public notifySelfPresenceChanged()Z
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public onLoggedIn()V
    .locals 1

    .prologue
    .line 751
    const-string v0, "onLoggedIn"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    .line 753
    return-void
.end method

.method public onLoggedOut()V
    .locals 5

    .prologue
    .line 756
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 757
    :try_start_0
    const-string v3, "onLoggedOut"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 758
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    .line 760
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v0

    .line 761
    .local v0, accountId:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->removeTalkPresence(J)V

    .line 768
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->removeAllContactsPresence(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 769
    monitor-exit v4

    .line 770
    return-void

    .line 769
    .end local v0           #accountId:J
    .end local v2           #username:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public presenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 23
    .parameter "jid"
    .parameter "presence"

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v20

    .line 480
    .local v20, gtalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, bareJid:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/utils/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    const-string v2, "presenceChanged: received self presence, ignore"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v3

    .line 498
    .local v3, accountId:J
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v2, :cond_2

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "presenceChanged single "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " 1"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 501
    :cond_2
    if-nez p2, :cond_4

    .line 502
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v18, buf:Ljava/lang/StringBuilder;
    const-string v2, "contact_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " in (select "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "_id"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " from contacts where ("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "account"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "=? AND "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "username"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " LIKE ?)"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 512
    .local v21, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v21, v2

    .line 513
    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v21, v2

    .line 515
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    monitor-enter v11

    .line 516
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    if-nez v2, :cond_3

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "presenceChanged: jid="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", not logged in"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 518
    monitor-exit v11

    goto/16 :goto_0

    .line 523
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 521
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v21

    invoke-virtual {v2, v12, v13, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->removeContactPresenceFor(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 523
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    .end local v18           #buf:Ljava/lang/StringBuilder;
    .end local v21           #selectionArgs:[Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->schedulePresenceNotify()V

    goto/16 :goto_0

    .line 525
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I

    move-result v7

    .line 526
    .local v7, mode:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getClientType()Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I

    move-result v9

    .line 527
    .local v9, clientType:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, status:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v6

    .line 529
    .local v6, priority:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getCapabilityFlag()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translateCapabilityFlag(I)I

    move-result v10

    .line 533
    .local v10, capability:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 534
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    if-nez v2, :cond_5

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "presenceChanged: jid="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", not logged in"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 536
    monitor-exit v22

    goto/16 :goto_0

    .line 559
    :catchall_1
    move-exception v2

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_5
    move-object/from16 v2, p0

    .line 539
    :try_start_3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->updatePresenceInDb(JLjava/lang/String;IILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 541
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v2, :cond_6

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "presence update ("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", priority="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", mode="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", clientType="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 546
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v19

    .line 551
    .local v19, deviceCapability:I
    and-int v10, v10, v19

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-wide v12, v3

    move-object v14, v5

    move v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->updateContactPresence(Landroid/content/ContentResolver;JLjava/lang/String;ILjava/lang/String;I)V

    .line 559
    .end local v19           #deviceCapability:I
    :cond_7
    monitor-exit v22

    goto/16 :goto_1

    .line 554
    :cond_8
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v2, :cond_7

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---IGNORE--- presence update ("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", priority="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", mode="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", status="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ")"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 557
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public presenceChanged(Ljava/util/Collection;)V
    .locals 34
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, presenceEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 573
    .local v13, count:I
    if-nez v13, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    move-result-object v17

    .line 578
    .local v17, gtalkConnection:Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v26

    .line 579
    .local v26, username:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getAccountId()J

    move-result-wide v3

    .line 580
    .local v3, accountId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 581
    .local v24, ts:J
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getCapabilities()I

    move-result v14

    .line 582
    .local v14, deviceCapability:I
    new-array v12, v13, [Landroid/content/ContentValues;

    .line 584
    .local v12, contactsPresenceValues:[Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 586
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-boolean v28, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v28, :cond_2

    .line 591
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "presenceChanged batch "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 593
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/jivesoftware/smack/packet/Presence;

    .line 594
    .local v22, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v16

    .line 595
    .local v16, from:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, bareJid:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, status:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I

    move-result v6

    .line 598
    .local v6, mode:I
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Presence;->getClientType()Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I

    move-result v10

    .line 599
    .local v10, clientType:I
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Presence;->getCapabilityFlag()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->translateCapabilityFlag(I)I

    move-result v8

    .line 601
    .local v8, capabilities:I
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 603
    sget-object v28, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 604
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v28, "account"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 605
    const-string v28, "username"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    const-string v28, "mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 607
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 608
    const-string v28, "priority"

    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 609
    const-string v28, "client_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 610
    const-string v28, "cap"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 611
    sget-boolean v28, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v28, :cond_3

    .line 612
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "presence -- "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", cap="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mode="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 615
    :cond_3
    rem-int/lit16 v0, v13, 0x12c

    move/from16 v28, v0

    if-nez v28, :cond_4

    const/16 v27, 0x1

    .line 616
    .local v27, yieldAllowed:Z
    :goto_2
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 618
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v27           #yieldAllowed:Z
    :goto_3
    and-int/2addr v8, v14

    .line 628
    invoke-static/range {v3 .. v8}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->buildContactPresenceValues(JLjava/lang/String;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 630
    .local v11, contactPresenceValue:Landroid/content/ContentValues;
    aput-object v11, v12, v13

    .line 632
    add-int/lit8 v13, v13, 0x1

    .line 633
    goto/16 :goto_1

    .line 615
    .end local v11           #contactPresenceValue:Landroid/content/ContentValues;
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    const/16 v27, 0x0

    goto :goto_2

    .line 620
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    const-string v28, "presenceChanged(batch): received self presence, skipped for Talk presence"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 640
    .end local v5           #bareJid:Ljava/lang/String;
    .end local v6           #mode:I
    .end local v7           #status:Ljava/lang/String;
    .end local v8           #capabilities:I
    .end local v10           #clientType:I
    .end local v16           #from:Ljava/lang/String;
    .end local v22           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_6
    if-eqz v13, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 659
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    .line 660
    const-string v28, "batch update talk presence: not logged in"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 661
    monitor-exit v29

    goto/16 :goto_0

    .line 683
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 666
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    const-string v30, "com.google.android.providers.talk"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v23

    .line 668
    .local v23, result:[Landroid/content/ContentProviderResult;
    const-string v28, "GTalkService"

    const/16 v30, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 669
    const/16 v20, 0x0

    .line 670
    .local v20, numSuccess:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 671
    aget-object v28, v23, v19

    if-eqz v28, :cond_8

    .line 672
    add-int/lit8 v20, v20, 0x1

    .line 670
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 675
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "batch presence update: success_rate="

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "/"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 683
    .end local v19           #j:I
    .end local v20           #numSuccess:I
    .end local v23           #result:[Landroid/content/ContentProviderResult;
    :cond_a
    :goto_5
    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 694
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mLoggedIn:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    .line 695
    const-string v28, "bulk update contacts presence: not logged in"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 696
    monitor-exit v29

    goto/16 :goto_0

    .line 701
    :catchall_1
    move-exception v28

    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v28

    .line 678
    :catch_0
    move-exception v15

    .line 679
    .local v15, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v28, "GTalkService"

    const-string v30, "%s: %s"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-virtual {v15}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 680
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 681
    .local v15, e:Landroid/content/OperationApplicationException;
    const-string v28, "GTalkService"

    const-string v30, "%s: %s"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 700
    .end local v15           #e:Landroid/content/OperationApplicationException;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v12}, Lcom/google/android/gsf/gtalkservice/gtalk/ContactPresence;->bulkUpdateContactPresences(Landroid/content/ContentResolver;[Landroid/content/ContentValues;)V

    .line 701
    monitor-exit v29
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method public removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IRosterListener;

    .line 133
    .local v2, rl:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v4

    .line 139
    .end local v2           #rl:Lcom/google/android/gtalkservice/IRosterListener;
    :goto_0
    return-void

    .line 138
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setRosterFetched(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 105
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRosterFetched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->mRosterFetched:Z

    .line 107
    return-void
.end method
