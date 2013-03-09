.class public Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "AddressChallengeFlow.java"

# interfaces
.implements Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;


# instance fields
.field private mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

.field private mFinishOnSwitchCountry:Z

.field private mResultFormat:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V
    .locals 2
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "addressChallenge"
    .parameter "parameters"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 95
    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    .line 100
    iput-object p3, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 101
    if-eqz p4, :cond_0

    const-string v1, "AddressChallengeFlow.finishOnSwitchCountry"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mFinishOnSwitchCountry:Z

    .line 103
    if-eqz p4, :cond_1

    const-string v0, "AddressChallengeFlow.resultFormat"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "AddressChallengeFlow.resultFormat"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public onAddressChallengeResult(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;[Z)V
    .locals 7
    .parameter "result"
    .parameter "address"
    .parameter "checkboxStates"

    .prologue
    .line 139
    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->cancel()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_8

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, challengeResponse:Landroid/os/Bundle;
    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    if-nez v5, :cond_5

    .line 144
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, encodedAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseAddressParam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v3           #encodedAddress:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v1, checkboxesString:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    .local v2, checkedCheckboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_6

    .line 155
    if-lez v4, :cond_3

    .line 156
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_3
    aget-boolean v5, p3, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    aget-boolean v5, p3, v4

    if-eqz v5, :cond_4

    .line 160
    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getCheckbox(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$FormCheckbox;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    .end local v1           #checkboxesString:Ljava/lang/StringBuilder;
    .end local v2           #checkedCheckboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    :cond_5
    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 149
    const-string v5, "AddressChallengeFlow.address"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 163
    .restart local v1       #checkboxesString:Ljava/lang/StringBuilder;
    .restart local v2       #checkedCheckboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #i:I
    :cond_6
    iget v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mResultFormat:I

    if-nez v5, :cond_7

    .line 164
    iget-object v5, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;->getResponseCheckboxesParam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->finish(Landroid/os/Bundle;)V

    goto :goto_0

    .line 167
    :cond_7
    const-string v5, "AddressChallengeFlow.checkedCheckboxes"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 171
    .end local v0           #challengeResponse:Landroid/os/Bundle;
    .end local v1           #checkboxesString:Ljava/lang/StringBuilder;
    .end local v2           #checkedCheckboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    :cond_8
    sget-object v5, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;->FAILURE:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener$Result;

    if-ne p1, v5, :cond_0

    .line 172
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->fail(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCountryChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "countryCode"
    .parameter "currentState"

    .prologue
    .line 178
    iget-boolean v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mFinishOnSwitchCountry:Z

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "Finishing due to country switch."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "AddressChallengeFlow.switchCountry"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "AddressChallengeFlow.currentState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->finish(Landroid/os/Bundle;)V

    .line 185
    .end local v0           #result:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/BillingFlowContext;->hideProgress()V

    .line 195
    return-void
.end method

.method public onInitializing()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const v1, 0x7f0700f8

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->showProgress(I)V

    .line 190
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 119
    const-string v0, "address_widget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "address_widget"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V

    .line 127
    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "address_widget"

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 135
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mParameters:Landroid/os/Bundle;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mParameters:Landroid/os/Bundle;

    const-string v3, "AddressChallengeFlow.previousState"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setOnResultListener(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$AddressChallengeResultListener;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;->mAddressChallengeFragment:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 115
    return-void
.end method
