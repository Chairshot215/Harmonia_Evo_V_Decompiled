.class Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;
.super Ljava/lang/Object;
.source "CreateCreditCardFlow.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EscrowErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 103
    const-string v0, "Error received: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ESCROW."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->logError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->access$100(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->showError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->access$200(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Ljava/lang/String;)V

    .line 106
    return-void
.end method
