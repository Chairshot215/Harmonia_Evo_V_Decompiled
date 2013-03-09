.class public Lcom/google/android/vending/remoting/api/VendingRetryPolicy;
.super Lcom/android/volley/DefaultRetryPolicy;
.source "VendingRetryPolicy.java"


# static fields
.field private static final VENDING_TIMEOUT_MS:I


# instance fields
.field private mHadAuthException:Z

.field private mUseSecureToken:Z

.field private final mVendingApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingRequestTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->VENDING_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/vending/remoting/api/VendingApiContext;Z)V
    .locals 3
    .parameter "context"
    .parameter "useSecureToken"

    .prologue
    .line 36
    sget v0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->VENDING_TIMEOUT_MS:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 37
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mVendingApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 38
    iput-boolean p2, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mUseSecureToken:Z

    .line 39
    return-void
.end method


# virtual methods
.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 43
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mHadAuthException:Z

    if-eqz v0, :cond_0

    .line 45
    throw p1

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mHadAuthException:Z

    .line 48
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mVendingApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;->mUseSecureToken:Z

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/android/volley/DefaultRetryPolicy;->retry(Lcom/android/volley/VolleyError;)V

    .line 51
    return-void
.end method
