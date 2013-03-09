.class public Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DeepLinkShimFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/UrlBasedPageFragment;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 209
    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 196
    const-string v2, "referrer"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, referrer:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const-string v2, "gclid"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, gclid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/4 v2, 0x0

    .line 205
    .end local v0           #gclid:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 203
    .restart local v0       #gclid:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gclid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #gclid:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 205
    goto :goto_0
.end method

.method private isFirstPartyCaller()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 229
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v4

    .line 234
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 235
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, result:I
    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "url"

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;-><init>()V

    .line 41
    .local v0, fragment:Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method private shouldSkipDetailsPage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "use_direct_purchase"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 221
    .local v1, skipRequested:Z
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->isFirstPartyCaller()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/config/G;->enableThirdPartyDirectPurchases:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v4

    .line 223
    .local v2, trusted:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    return v3

    .end local v2           #trusted:Z
    :cond_1
    move v2, v5

    .line 221
    goto :goto_0

    .restart local v2       #trusted:Z
    :cond_2
    move v3, v5

    .line 223
    goto :goto_1
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->requestData()V

    .line 50
    return-void
.end method

.method public onDataChanged()V
    .locals 34

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->canChangeFragmentManagerState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 108
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    .line 110
    .local v2, logger:Lcom/google/android/finsky/analytics/FinskyEventLog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, detailsUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    .end local v4           #detailsUrl:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, browseUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 120
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto/16 :goto_0

    .line 121
    .end local v7           #browseUrl:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, searchUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://market.android.com/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 128
    .local v33, url:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 130
    .local v32, uri:Landroid/net/Uri;
    const-string v3, "q"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 131
    .local v31, query:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v10, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v10           #searchUrl:Ljava/lang/String;
    .end local v31           #query:Ljava/lang/String;
    .end local v32           #uri:Landroid/net/Uri;
    .end local v33           #url:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v30

    .line 135
    .local v30, directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    .line 137
    .restart local v4       #detailsUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    move-object v13, v4

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->shouldSkipDetailsPage()Z

    move-result v17

    .line 140
    .local v17, skipDetailsPage:Z
    if-nez v17, :cond_5

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object v12, v4

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    .end local v17           #skipDetailsPage:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "requested_doc_id"

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 146
    .restart local v17       #skipDetailsPage:Z
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v12

    .line 147
    .local v12, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object v13, v4

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 157
    .end local v4           #detailsUrl:Ljava/lang/String;
    .end local v12           #account:Landroid/accounts/Account;
    .end local v17           #skipDetailsPage:Z
    .end local v30           #directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v20

    .line 159
    .local v20, homeUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v20           #homeUrl:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v26}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 169
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v26}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logDeepLink(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 171
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v29, browse:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    const/high16 v3, 0x1000

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    const-string v3, "dont_resolve_again"

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 180
    .local v27, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    .line 182
    .local v28, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 184
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    .line 187
    :cond_9
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    .end local v28           #activityInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 86
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onDataChanged()V

    .line 81
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V

    return-void
.end method

.method protected rebindViews()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected requestData()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->switchToLoading()V

    .line 75
    return-void
.end method
