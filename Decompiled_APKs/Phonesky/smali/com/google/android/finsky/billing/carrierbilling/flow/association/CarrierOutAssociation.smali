.class public Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;
.super Ljava/lang/Object;
.source "CarrierOutAssociation.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;
.implements Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/AssociationAction;",
        "Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsAddress:Ljava/lang/String;

.field private mSmsPrefix:Ljava/lang/String;

.field private mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

.field private final mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "dfeApi"
    .parameter "storage"
    .parameter "smsAddress"
    .parameter "smsPrefix"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 60
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsAddress:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsPrefix:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "dfeApi"
    .parameter "smsAddress"
    .parameter "smsPrefix"

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    return-void
.end method

.method private dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method private dispatchError()V
    .locals 3

    .prologue
    .line 132
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v0

    .line 134
    .local v0, response:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatch(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)V

    .line 135
    return-void
.end method

.method private formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "googleUserToken"

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, prefix:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initiateAssociation()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->INITIATING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->initiateAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 154
    return-void
.end method

.method private sendGutToCarrier(Ljava/lang/String;)V
    .locals 4
    .parameter "googleUserToken"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mSmsAddress:Ljava/lang/String;

    .line 88
    .local v0, addressToSendSms:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string v2, "Address to send SMS is unavailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->formattedTextToSend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, textToSend:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;)V

    .line 95
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    goto :goto_0
.end method

.method private verifyAssociation()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/finsky/api/DfeApi;->verifyAssociation(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 165
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 76
    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 77
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while receiving Volley response in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->getUserToken()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, googleUserToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->sendGutToCarrier(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    const-string v1, "Invalid Google User Token received."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->onResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)V

    return-void
.end method

.method public onResult(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    if-ne p1, v0, :cond_0

    .line 109
    const-string v0, "Sending Sms Failed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->dispatchError()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->cancel()V

    .line 114
    :cond_0
    return-void
.end method

.method public resumeState(Landroid/os/Bundle;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .parameter "bundle"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;>;"
    const-string v0, "association_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    .line 177
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 178
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->VERIFYING_ASSOCIATION:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    if-ne v0, v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->initiateAssociation()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 169
    const-string v0, "association_state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mState:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->cancel()V

    .line 171
    return-void
.end method

.method public setListener(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 83
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 84
    return-void
.end method

.method public start(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mListener:Lcom/android/volley/Response$Listener;

    .line 67
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->initiateAssociation()V

    .line 70
    return-void
.end method
