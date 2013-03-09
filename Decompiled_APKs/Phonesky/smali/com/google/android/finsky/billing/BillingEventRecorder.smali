.class public Lcom/google/android/finsky/billing/BillingEventRecorder;
.super Ljava/lang/Object;
.source "BillingEventRecorder.java"


# static fields
.field private static final LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

.field private static final NOP_LISTENER:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/finsky/billing/BillingEventRecorder$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/BillingEventRecorder$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    .line 33
    new-instance v0, Lcom/google/android/finsky/billing/BillingEventRecorder$2;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/BillingEventRecorder$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "carrierId"
    .parameter "eventType"
    .parameter "errorCode"

    .prologue
    .line 65
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->LOG_BILLING_EVENTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setClientMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v0

    .line 74
    .local v0, request:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    .line 75
    .local v1, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    sget-object v2, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    sget-object v3, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->recordBillingEvent(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method

.method public static recordSuccess(Ljava/lang/String;IZ)V
    .locals 4
    .parameter "carrierId"
    .parameter "eventType"
    .parameter "resultSuccess"

    .prologue
    .line 47
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->LOG_BILLING_EVENTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v0

    .line 55
    .local v0, request:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    .line 56
    .local v1, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    sget-object v2, Lcom/google/android/finsky/billing/BillingEventRecorder;->NOP_LISTENER:Lcom/android/volley/Response$Listener;

    sget-object v3, Lcom/google/android/finsky/billing/BillingEventRecorder;->LOGGING_ERROR_LISTENER:Lcom/android/volley/Response$ErrorListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->recordBillingEvent(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method
