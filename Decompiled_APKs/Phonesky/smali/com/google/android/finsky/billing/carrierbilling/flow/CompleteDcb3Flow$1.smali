.class Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;
.super Ljava/lang/Object;
.source "CompleteDcb3Flow.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performRequestWithToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;

    #setter for: Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->mUpdateInstrumentResponse:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    invoke-static {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->access$002(Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;->performNext()V

    .line 247
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow$1;->onResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)V

    return-void
.end method
