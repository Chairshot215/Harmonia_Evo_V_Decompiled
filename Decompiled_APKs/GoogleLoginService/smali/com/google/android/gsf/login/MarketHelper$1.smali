.class Lcom/google/android/gsf/login/MarketHelper$1;
.super Ljava/lang/Object;
.source "MarketHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/MarketHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/MarketHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v0, v0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IBillingAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 131
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v0, v0, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 132
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    iget-object v0, v0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 133
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper$1;->this$0:Lcom/google/android/gsf/login/MarketHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 136
    return-void
.end method
