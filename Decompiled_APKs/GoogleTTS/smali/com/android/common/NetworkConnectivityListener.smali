.class public Lcom/android/common/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/NetworkConnectivityListener$1;,
        Lcom/android/common/NetworkConnectivityListener$State;,
        Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/android/common/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lcom/android/common/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/common/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    .line 129
    new-instance v0, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mReceiver:Lcom/android/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/common/NetworkConnectivityListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/common/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/common/NetworkConnectivityListener;Lcom/android/common/NetworkConnectivityListener$State;)Lcom/android/common/NetworkConnectivityListener$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mState:Lcom/android/common/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/common/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/common/NetworkConnectivityListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/common/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/common/NetworkConnectivityListener;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method
