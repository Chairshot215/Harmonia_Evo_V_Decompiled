.class Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;
.super Ljava/lang/Object;
.source "CreateCreditCardFlow.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EscrowResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    #getter for: Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->mInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->access$000(Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCreditCard()Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setEscrowHandle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreateCreditCardFlow;->performNext()V

    .line 97
    return-void
.end method
