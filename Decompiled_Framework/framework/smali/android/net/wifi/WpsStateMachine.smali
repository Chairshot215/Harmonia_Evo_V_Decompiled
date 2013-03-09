.class Landroid/net/wifi/WpsStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WpsStateMachine$1;,
        Landroid/net/wifi/WpsStateMachine$InactiveState;,
        Landroid/net/wifi/WpsStateMachine$ActiveState;,
        Landroid/net/wifi/WpsStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WpsStateMachine"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWpsInfo:Landroid/net/wifi/WpsInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "WpsStateMachine"

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/net/wifi/WpsStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WpsStateMachine$DefaultState;-><init>(Landroid/net/wifi/WpsStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/WpsStateMachine$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WpsStateMachine$InactiveState;-><init>(Landroid/net/wifi/WpsStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/wifi/WpsStateMachine$ActiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WpsStateMachine$ActiveState;-><init>(Landroid/net/wifi/WpsStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mActiveState:Lcom/android/internal/util/State;

    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WpsStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WpsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WpsStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WpsStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WpsStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0}, Landroid/net/wifi/WpsStateMachine;->start()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WpsInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WpsStateMachine;Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsInfo;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WpsStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WpsStateMachine;)Landroid/net/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WpsStateMachine;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WpsStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WpsStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method
