.class public Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AvailablePromoOfferActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

.field private mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V

    return-void
.end method

.method public static getIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v1, "available_offer"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string v2, "authAccount"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "internal_parameters"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    return-object v1
.end method

.method private logAnalytics(Ljava/lang/String;)V
    .locals 3
    .parameter "analytics"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v1, "externalPackage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private replaceUrlsWithHandlers(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_1

    .line 251
    :cond_0
    return-void

    .line 238
    :cond_1
    check-cast p1, Landroid/text/Spannable;

    .line 239
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 240
    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 241
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 242
    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 243
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 244
    new-instance v7, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, p0, v4}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$3;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    invoke-interface {p1, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    .line 279
    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 264
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 265
    const-string v0, "redeemed_offer_message_html"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "promoOfferRedeemed"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V

    .line 271
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    .line 274
    :cond_0
    return-void

    .line 268
    :cond_1
    const-string v0, "promoOfferNotRedeemed"

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "internal_parameters"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const-string v2, "No internal parameters passed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    .line 79
    :cond_0
    const-string v2, "internal_parameters"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 80
    .local v1, internalParameters:Landroid/os/Bundle;
    const-string v2, "available_offer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    const-string v2, "No available_offer passed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    .line 85
    :cond_1
    const-string v2, "available_offer"

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    iput-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    .line 87
    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 90
    if-nez p1, :cond_2

    .line 91
    const-string v2, "promoOfferShow"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->logAnalytics(Ljava/lang/String;)V

    .line 93
    :cond_2
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 292
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 285
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResultAndFinish()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 102
    const/4 v10, 0x0

    .line 103
    .local v10, title:Ljava/lang/String;
    const/4 v4, 0x0

    .line 104
    .local v4, intro:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 105
    .local v2, description:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 106
    .local v8, terms:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 108
    .local v7, promoImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    iget-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 109
    iget-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mAvailablePromoOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->getAddCreditCardOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    move-result-object v0

    .line 111
    .local v0, addCreditCardOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getHeaderText()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getIntroductoryTextHtml()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 113
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v7

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getTermsAndConditionsHtml()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    .line 118
    invoke-direct {p0, v8}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->replaceUrlsWithHandlers(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getNoActionDescription()Ljava/lang/String;

    move-result-object v6

    .line 127
    .end local v0           #addCreditCardOffer:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .local v6, noActionMessage:Ljava/lang/String;
    :goto_0
    const v12, 0x7f040010

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setContentView(I)V

    .line 128
    const v12, 0x7f080037

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 129
    .local v1, contentFrame:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f040017

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    const v12, 0x7f080033

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 133
    .local v11, titleView:Landroid/widget/TextView;
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v12, 0x7f080047

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 135
    .local v5, introView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-nez v7, :cond_3

    .line 137
    const v12, 0x7f080048

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const v12, 0x7f08004b

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_1
    const v12, 0x7f08004d

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07002d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, p0, v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v12, 0x7f08004e

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    new-instance v13, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;

    invoke-direct {v13, p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$1;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v12, 0x7f08004f

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    new-instance v13, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;

    invoke-direct {v13, p0, v6}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity$2;-><init>(Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "on_initial_setup"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 211
    const/high16 v12, 0x77

    invoke-static {v1, v12}, Lcom/google/android/finsky/utils/Compat;->viewSetSystemUiVisibility(Landroid/view/View;I)V

    .line 219
    :cond_1
    return-void

    .line 121
    .end local v1           #contentFrame:Landroid/view/ViewGroup;
    .end local v5           #introView:Landroid/widget/TextView;
    .end local v6           #noActionMessage:Ljava/lang/String;
    .end local v11           #titleView:Landroid/widget/TextView;
    :cond_2
    const/4 v6, 0x0

    .line 122
    .restart local v6       #noActionMessage:Ljava/lang/String;
    const-string v12, "Unsupported offer."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const/4 v12, -0x1

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->finish()V

    goto/16 :goto_0

    .line 140
    .restart local v1       #contentFrame:Landroid/view/ViewGroup;
    .restart local v5       #introView:Landroid/widget/TextView;
    .restart local v11       #titleView:Landroid/widget/TextView;
    :cond_3
    const v12, 0x7f08004c

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 141
    .local v9, termsView:Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 144
    const v12, 0x7f08004a

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    .local v3, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v12, 0x7f080049

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    .line 148
    if-eqz v7, :cond_4

    .line 149
    iget-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 150
    iget-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 152
    :cond_4
    iget-object v12, p0, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->mPromoImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public showUrlWebView(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 254
    const v2, 0x7f040014

    const v3, 0x7f07019f

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstanceWithLayout(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 256
    .local v1, sad:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, argumentsBundle:Landroid/os/Bundle;
    const-string v2, "url_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setViewConfiguration(Landroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AvailablePromoOfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "policy_terms"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 260
    return-void
.end method
