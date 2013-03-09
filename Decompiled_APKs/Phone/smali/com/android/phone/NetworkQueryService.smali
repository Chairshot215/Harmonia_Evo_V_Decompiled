.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkQuery"

.field public static final QUERY_EXCEPTION:I = 0x1

.field private static final QUERY_IS_RUNNING:I = -0x2

.field public static final QUERY_OK:I = 0x0

.field private static final QUERY_READY:I = -0x1

.field public static final QUERY_SCAN_NOT_ALLOWED:I = 0x2


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 82
    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 106
    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 193
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 194
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 197
    if-nez p1, :cond_0

    .line 199
    monitor-exit v4

    .line 243
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 209
    const/4 v1, 0x0

    .line 223
    .local v1, exception:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 224
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .local v0, cb:Lcom/android/phone/INetworkQueryServiceCallback;
    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 229
    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 210
    .end local v0           #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1           #exception:I
    .end local v2           #i:I
    :cond_1
    :try_start_2
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->NW_SCAN_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v5, :cond_2

    .line 212
    const/4 v1, 0x2

    .restart local v1       #exception:I
    goto :goto_1

    .line 214
    .end local v1           #exception:I
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #exception:I
    goto :goto_1

    .line 231
    .restart local v0       #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v2       #i:I
    :cond_3
    const/4 v3, 0x0

    :try_start_3
    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 236
    :catch_0
    move-exception v3

    goto :goto_3

    .line 241
    .end local v0           #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 242
    monitor-exit v4

    goto :goto_0

    .end local v1           #exception:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 246
    const-string v0, "NetworkQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 166
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 173
    return-void
.end method
