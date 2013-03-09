.class public Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "RedeemGiftCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;
    }
.end annotation


# static fields
.field private static final IGNORED_CHARS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private mBalance:Ljava/lang/String;

.field private mBalanceView:Landroid/widget/TextView;

.field private mCodeEntry:Landroid/widget/EditText;

.field private mContentView:Landroid/view/View;

.field private mContinueButton:Landroid/widget/Button;

.field private mFootersContainer:Landroid/view/ViewGroup;

.field private mFootersHtml:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

.field private mLoadingIndicator:Landroid/view/View;

.field private mProgressBar:Landroid/view/View;

.field private mRedeemButton:Landroid/widget/Button;

.field private mShowErrorFinish:Z

.field private mShowErrorMessage:Ljava/lang/String;

.field private mSwitchToContinueForm:Z

.field private mSwitchToLoading:Z

.field private mSwitchToProgress:Z

.field private mSwitchToRedeemForm:Z

.field private mUserMessage:Ljava/lang/String;

.field private mUserMessageView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "[\\s-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->IGNORED_CHARS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method private clearCodeError()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method private internalShowChallenge(Landroid/os/Bundle;)V
    .locals 6
    .parameter "previousChallengeState"

    .prologue
    const/4 v5, 0x1

    .line 266
    new-instance v3, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    .line 269
    .local v0, challenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "address_challenge_params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "address_challenge_params"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 275
    .local v2, params:Landroid/os/Bundle;
    :goto_0
    const-string v3, "AddressChallengeFlow.resultFormat"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v3, "AddressChallengeFlow.finishOnSwitchCountry"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    const-string v3, "AddressChallengeFlow.previousState"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lcom/google/android/finsky/activities/AddressChallengeDialog;->getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 283
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    return-void

    .line 273
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #params:Landroid/os/Bundle;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .restart local v2       #params:Landroid/os/Bundle;
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
    .locals 4
    .parameter "accountName"
    .parameter "addressChallengeParams"

    .prologue
    .line 74
    new-instance v1, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;-><init>()V

    .line 75
    .local v1, fragment:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;
    const-string v2, "AddressChallengeFlow.finishOnSwitchCountry"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "address_challenge_params"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method private normalizeCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 261
    sget-object v0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->IGNORED_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x49

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4f

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyListenerCancel()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;->onCancel()V

    .line 430
    :cond_0
    return-void
.end method

.method private notifyListenerCountrySwitch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "country"
    .parameter "currentState"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;->onCountrySwitch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 417
    :cond_0
    return-void
.end method

.method private notifyListenerRedeem(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, checkedCheckboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->normalizeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, normalizedCode:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;->onRedeem(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V

    .line 424
    .end local v0           #normalizedCode:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showCodeError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method

.method private turnOffProgress()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 349
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    return-void
.end method


# virtual methods
.method public clearGiftCardCode()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 288
    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 289
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 290
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 291
    const-string v5, "challenge_response"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 293
    .local v4, result:Landroid/os/Bundle;
    const-string v5, "AddressChallengeFlow.switchCountry"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    const-string v5, "AddressChallengeFlow.switchCountry"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, country:Ljava/lang/String;
    const-string v5, "AddressChallengeFlow.currentState"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 298
    .local v3, currentState:Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->notifyListenerCountrySwitch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 310
    .end local v2           #country:Ljava/lang/String;
    .end local v3           #currentState:Landroid/os/Bundle;
    .end local v4           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v4       #result:Landroid/os/Bundle;
    :cond_1
    const-string v5, "AddressChallengeFlow.address"

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 302
    .local v0, address:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    const-string v5, "AddressChallengeFlow.checkedCheckboxes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 304
    .local v1, checkedCheckboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->notifyListenerRedeem(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 308
    .end local v0           #address:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .end local v1           #checkedCheckboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #result:Landroid/os/Bundle;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801e3

    if-ne v1, v2, :cond_4

    .line 237
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->normalizeCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, normalizedCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/GiftCardVerifier;->verifyGiftCardCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/finsky/billing/giftcard/PromoCodeVerifier;->verifyPromoCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 240
    const v1, 0x7f070081

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showCodeError(Ljava/lang/String;)V

    .line 253
    .end local v0           #normalizedCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 241
    .restart local v0       #normalizedCode:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    if-eqz v1, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->clearCodeError()V

    .line 243
    invoke-direct {p0, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->internalShowChallenge(Landroid/os/Bundle;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    if-eqz v1, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->clearCodeError()V

    .line 246
    invoke-direct {p0, v3, v3}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->notifyListenerRedeem(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 248
    :cond_3
    const-string v1, "No listener registered."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    .end local v0           #normalizedCode:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08004e

    if-ne v1, v2, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->notifyListenerCancel()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 164
    const v4, 0x7f0400f4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, view:Landroid/view/View;
    const v4, 0x7f080113

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    .local v0, accountNameView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "authAccount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v4, 0x7f0801e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    .line 168
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v4, 0x7f08004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContinueButton:Landroid/widget/Button;

    .line 170
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v4, 0x7f0801e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    .line 172
    const v4, 0x7f0801e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mBalanceView:Landroid/widget/TextView;

    .line 173
    const v4, 0x7f0801e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessageView:Landroid/widget/TextView;

    .line 174
    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    .line 175
    const v4, 0x7f080058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mLoadingIndicator:Landroid/view/View;

    .line 176
    const v4, 0x7f0801b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersContainer:Landroid/view/ViewGroup;

    .line 177
    const v4, 0x7f0800d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mProgressBar:Landroid/view/View;

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, balance:Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, userMessage:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 182
    const-string v4, "address_challenge"

    invoke-static {p3, v4}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    iput-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 184
    const-string v4, "balance"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    const-string v4, "user_message"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    const-string v4, "footers_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "footers_html"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setFooters(Ljava/util/List;)V

    .line 190
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setBalance(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setUserMessage(Ljava/lang/String;)V

    .line 193
    iget-boolean v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToProgress:Z

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToProgress()V

    .line 196
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToLoading:Z

    if-eqz v4, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToLoading()V

    .line 199
    :cond_2
    iget-boolean v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToRedeemForm:Z

    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToRedeemForm()V

    .line 202
    :cond_3
    iget-boolean v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToContinueForm:Z

    if-eqz v4, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->switchToContinueForm()V

    .line 205
    :cond_4
    return-object v3
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 446
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 436
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 437
    const-string v0, "finish"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->notifyListenerCancel()V

    .line 441
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorMessage:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorFinish:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->showError(Ljava/lang/String;Z)V

    .line 228
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "address_challenge"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersHtml:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "footers_html"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersHtml:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 218
    :cond_1
    const-string v0, "balance"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mBalance:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "user_message"

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 2
    .parameter "balance"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mBalance:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mBalanceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mBalanceView:Landroid/widget/TextView;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)V
    .locals 0
    .parameter "addressChallenge"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mAddressChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 152
    return-void
.end method

.method public setFooters(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, footersHtml:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 401
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersHtml:Ljava/util/List;

    .line 402
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 403
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    .local v1, footerHtml:Ljava/lang/String;
    const v4, 0x7f0400f5

    iget-object v5, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    .local v0, footer:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 408
    iget-object v4, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mFootersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 411
    .end local v0           #footer:Landroid/widget/TextView;
    .end local v1           #footerHtml:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mListener:Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment$Listener;

    .line 232
    return-void
.end method

.method public setUserMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "userMessage"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessage:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mUserMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V
    .locals 0
    .parameter "addressChallenge"
    .parameter "previousChallengeState"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)V

    .line 156
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->internalShowChallenge(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public showError(Ljava/lang/String;Z)V
    .locals 4
    .parameter "message"
    .parameter "finish"

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iput-object p1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorMessage:Ljava/lang/String;

    .line 387
    iput-boolean p2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorFinish:Z

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mShowErrorMessage:Ljava/lang/String;

    .line 391
    const v2, 0x7f07019f

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 392
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    .local v1, extraArgs:Landroid/os/Bundle;
    const-string v2, "finish"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 395
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "error_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToContinueForm()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToContinueForm:Z

    .line 382
    :goto_0
    return-void

    .line 375
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToContinueForm:Z

    .line 376
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->turnOffProgress()V

    .line 377
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchToLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToLoading:Z

    .line 334
    :goto_0
    return-void

    .line 330
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToLoading:Z

    .line 331
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->turnOffProgress()V

    .line 332
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchToProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToProgress:Z

    .line 346
    :goto_0
    return-void

    .line 341
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToProgress:Z

    .line 342
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public switchToRedeemForm()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToRedeemForm:Z

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mSwitchToRedeemForm:Z

    .line 362
    invoke-direct {p0}, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->turnOffProgress()V

    .line 363
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mRedeemButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mCodeEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/billing/giftcard/RedeemGiftCardFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
