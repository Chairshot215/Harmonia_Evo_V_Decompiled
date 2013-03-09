.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getManualUpdateReferrer(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 2
    .parameter "doc"

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manualUpdate?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasUpdateAvailable(Lcom/google/android/finsky/activities/AppActionAnalyzer;Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2
    .parameter "appActions"
    .parameter "document"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPurchaseOrOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/widget/TextView;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;)V
    .locals 15
    .parameter "document"
    .parameter "priceTextView"
    .parameter "account"
    .parameter "navigationManager"
    .parameter "referrer"

    .prologue
    .line 143
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v13

    .line 144
    .local v13, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v11

    .line 145
    .local v11, currentAccount:Landroid/accounts/Account;
    invoke-static {p0, v13, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    .line 147
    .local v2, owner:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lcom/google/android/finsky/utils/DocUtils;->getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v4

    .line 149
    .local v4, listingOfferType:I
    if-eqz v2, :cond_2

    const/4 v14, 0x1

    .line 150
    .local v14, ownedByUser:Z
    :goto_0
    const/4 v12, 0x1

    .line 151
    .local v12, isInstalled:Z
    const/4 v8, 0x0

    .line 153
    .local v8, appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v9

    .line 155
    .local v9, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    new-instance v8, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    .end local v8           #appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-direct {v8, v1, v3, v13}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 157
    .restart local v8       #appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    iget-boolean v12, v8, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 160
    .end local v9           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_0
    const/4 v10, 0x0

    .line 162
    .local v10, clickListener:Landroid/view/View$OnClickListener;
    if-nez v14, :cond_3

    .line 163
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    .end local v2           #owner:Landroid/accounts/Account;
    move-result-object v10

    .line 188
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :goto_2
    return-void

    .line 149
    .end local v8           #appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    .end local v10           #clickListener:Landroid/view/View$OnClickListener;
    .end local v12           #isInstalled:Z
    .end local v14           #ownedByUser:Z
    .restart local v2       #owner:Landroid/accounts/Account;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 165
    .restart local v8       #appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    .restart local v10       #clickListener:Landroid/view/View$OnClickListener;
    .restart local v12       #isInstalled:Z
    .restart local v14       #ownedByUser:Z
    :cond_3
    if-nez v12, :cond_4

    .line 167
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v10

    goto :goto_1

    .line 171
    :cond_4
    if-eqz v8, :cond_6

    .line 172
    iget-boolean v1, v8, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v1, :cond_5

    .line 174
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 176
    :cond_5
    invoke-static {v8, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->hasUpdateAvailable(Lcom/google/android/finsky/activities/AppActionAnalyzer;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    invoke-static {p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getManualUpdateReferrer(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v10

    .line 183
    :cond_6
    if-nez v10, :cond_1

    .line 184
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v10

    goto :goto_1
.end method

.method private static styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V
    .locals 8
    .parameter "priceTextView"
    .parameter "offer"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    .line 127
    .local v2, offerType:I
    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    const/4 v5, 0x7

    if-ne v2, v5, :cond_1

    :cond_0
    move v1, v4

    .line 129
    .local v1, isOfferHd:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 130
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    const v6, 0x7f070122

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v5, v6, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, hdString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0           #hdString:Ljava/lang/String;
    .end local v1           #isOfferHd:Z
    .end local v2           #offerType:I
    :goto_1
    return-void

    .restart local v2       #offerType:I
    :cond_1
    move v1, v3

    .line 127
    goto :goto_0

    .line 134
    .restart local v1       #isOfferHd:Z
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    .end local v1           #isOfferHd:Z
    .end local v2           #offerType:I
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V
    .locals 15
    .parameter "document"
    .parameter "setForegroundColor"
    .parameter "priceTextView"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v12

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 44
    .local v3, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v5

    .line 45
    .local v5, installer:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v7

    .line 46
    .local v7, library:Lcom/google/android/finsky/library/Library;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    .line 47
    .local v4, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {p0, v4, v7}, Lcom/google/android/finsky/utils/DocUtils;->getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v8

    .line 48
    .local v8, listingOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v6

    .line 49
    .local v6, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v11

    invoke-static {p0, v6, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v10

    .line 51
    .local v10, owner:Landroid/accounts/Account;
    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 52
    .local v9, ownedByUser:Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 118
    :pswitch_0
    const-string v11, "Unsupported backend: %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    .line 120
    :goto_1
    return-void

    .line 51
    .end local v9           #ownedByUser:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 54
    .restart local v9       #ownedByUser:Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 55
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    .line 56
    .local v2, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    new-instance v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v12

    invoke-direct {v1, v11, v12, v6}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 58
    .local v1, appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    iget-boolean v11, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v11, :cond_4

    .line 59
    iget-boolean v11, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v11, :cond_2

    .line 61
    const v11, 0x7f0700f0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->hasUpdateAvailable(Lcom/google/android/finsky/activities/AppActionAnalyzer;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 64
    const v11, 0x7f0700f3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 67
    :cond_3
    const v11, 0x7f0700ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v11

    sget-object v12, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v11, v12, :cond_5

    .line 72
    const v11, 0x7f07019d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 76
    .end local v1           #appActions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    .end local v2           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_5
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_6

    .line 78
    const v11, 0x7f0700f1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 81
    :cond_6
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto :goto_1

    .line 85
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v12

    invoke-static {v11, v6, v12}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 90
    const v11, 0x7f0700f4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 93
    :cond_7
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto/16 :goto_1

    .line 97
    :pswitch_3
    if-eqz v9, :cond_8

    .line 98
    const v11, 0x7f0700f1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 101
    :cond_8
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto/16 :goto_1

    .line 105
    :pswitch_4
    if-eqz v9, :cond_b

    .line 106
    const/4 v11, 0x7

    invoke-static {p0, v7, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v11, 0x1

    invoke-static {p0, v7, v11}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 108
    :cond_9
    const v11, 0x7f0700f1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 110
    :cond_a
    const v11, 0x7f0700f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 114
    :cond_b
    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->styleFromOffer(Landroid/widget/TextView;Lcom/google/android/finsky/remoting/protos/Common$Offer;)V

    goto/16 :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
