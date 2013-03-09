.class public Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMoviesViewBinder.java"


# instance fields
.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Lcom/google/android/finsky/library/Libraries;)V
    .locals 0
    .parameter "dfeToc"
    .parameter "account"
    .parameter "libraries"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    .line 37
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 38
    return-void
.end method

.method private setupListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;I)V
    .locals 8
    .parameter "account"
    .parameter
    .parameter "button"
    .parameter "resolutionResourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;",
            "Landroid/widget/Button;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 157
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 158
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {p0, p1, v4, p3}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;)V

    .line 189
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {p2, v5}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    .line 165
    .local v3, lowestPricedOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    .local v0, documents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 168
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, p4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-interface {p2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 175
    .local v2, lowestOfferIndex:I
    new-instance v4, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;

    invoke-direct {v4, p0, p2, v0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;Ljava/util/List;Ljava/util/ArrayList;I)V

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;)V
    .locals 8
    .parameter "account"
    .parameter "offer"
    .parameter "button"

    .prologue
    const/4 v4, 0x0

    .line 127
    const/4 v7, -0x1

    .line 128
    .local v7, labelResourceId:I
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    .line 129
    .local v3, offerType:I
    packed-switch v3, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    if-gez v7, :cond_0

    .line 153
    :goto_1
    return-void

    .line 131
    :pswitch_1
    const v7, 0x7f07011e

    .line 132
    goto :goto_0

    .line 134
    :pswitch_2
    const v7, 0x7f07011f

    .line 135
    goto :goto_0

    .line 137
    :pswitch_3
    const v7, 0x7f070124

    .line 138
    goto :goto_0

    .line 140
    :pswitch_4
    const v7, 0x7f070123

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContinueUrl:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected setupActionButtons(Z)V
    .locals 5
    .parameter "isInTransientState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    .line 44
    const v2, 0x7f0800b7

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 45
    .local v0, downloadButton:Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    .line 47
    .local v1, owner:Landroid/accounts/Account;
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.tv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    new-instance v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;Landroid/accounts/Account;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setupBuyButtons(Landroid/accounts/Account;Landroid/widget/Button;Landroid/widget/Button;Z)V
    .locals 9
    .parameter "account"
    .parameter "buyButton"
    .parameter "buyButtonSecondary"
    .parameter "isOwnedByUser"

    .prologue
    const/4 v8, 0x1

    .line 87
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_2

    .line 90
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 91
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {p0, p1, v6, p2}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;)V

    .line 93
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 94
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {p0, p1, v6, p3}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupSingleOfferButton(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/widget/Button;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 99
    .local v5, rentalOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 100
    .local v4, purchaseOffers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 101
    .local v1, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    .line 102
    .local v2, offerType:I
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 109
    :pswitch_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :pswitch_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    .end local v1           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v2           #offerType:I
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 116
    const v6, 0x7f070120

    invoke-direct {p0, p1, v5, p2, v6}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;I)V

    .line 119
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 120
    const v6, 0x7f070125

    invoke-direct {p0, p1, v4, p3, v6}, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;I)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
