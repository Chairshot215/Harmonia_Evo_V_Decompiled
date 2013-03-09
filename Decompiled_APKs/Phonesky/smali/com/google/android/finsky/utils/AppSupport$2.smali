.class final Lcom/google/android/finsky/utils/AppSupport$2;
.super Ljava/lang/Object;
.source "AppSupport.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/utils/AppSupport$2;->val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

    iput-object p2, p0, Lcom/google/android/finsky/utils/AppSupport$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "volleyError"

    .prologue
    .line 64
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_0

    .line 65
    sget-object v0, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    .line 70
    .local v0, result:Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/AppSupport$2;->val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

    iget-object v2, p0, Lcom/google/android/finsky/utils/AppSupport$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/finsky/utils/AppSupport$RefundListener;->onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V

    .line 71
    return-void

    .line 68
    .end local v0           #result:Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    .restart local v0       #result:Lcom/google/android/finsky/utils/AppSupport$RefundResult;
    goto :goto_0
.end method
