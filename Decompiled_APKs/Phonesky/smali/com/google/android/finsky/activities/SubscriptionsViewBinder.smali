.class public Lcom/google/android/finsky/activities/SubscriptionsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mOwningAccountLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/Bundle;

.field private mSubscriptionItemLayoutId:I

.field private mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mOwningAccountLookup:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelSubscription(Lcom/google/android/finsky/api/model/Document;)V
    .locals 8
    .parameter "doc"

    .prologue
    .line 215
    iget-object v2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mOwningAccountLookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 216
    .local v1, owningAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 217
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/finsky/library/RevokeListenerWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v5

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    new-instance v7, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$1;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/finsky/library/RevokeListenerWrapper;-><init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V

    new-instance v5, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;-><init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/finsky/api/DfeApi;->revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 236
    return-void
.end method

.method private getLibraryAppSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 7
    .parameter "subscriptionDoc"

    .prologue
    .line 245
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/Collection;

    move-result-object v0

    .line 246
    .local v0, accountLibraries:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/library/AccountLibrary;>;"
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 247
    .local v3, owningAccount:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v4

    .line 249
    .local v4, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-nez v4, :cond_1

    .line 250
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    .line 251
    .local v1, accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/finsky/library/AccountLibrary;->getAppSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 259
    .end local v1           #accountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v4, :cond_2

    .line 260
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mOwningAccountLookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    return-object v4
.end method

.method private getLibraryMagazineSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .locals 4
    .parameter "subscriptionDoc"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 273
    .local v0, owningAccount:Landroid/accounts/Account;
    iget-object v2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getMagazinesSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v1

    .line 275
    .local v1, subscriptionEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mOwningAccountLookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-object v1
.end method

.method private rebindViews()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v6

    .line 125
    .local v6, documentType:I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->clearSubscriptions()V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppSubscriptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 131
    .local v1, subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->getLibraryAppSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v2

    .line 133
    .local v2, subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    iget v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V

    goto :goto_1

    .line 138
    .end local v1           #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->syncSeparatorVisibility()V

    goto :goto_0

    .line 144
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    const/16 v0, 0x10

    if-eq v6, v0, :cond_5

    const/16 v0, 0x11

    if-ne v6, v0, :cond_0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SubscriptionsSection;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->clearSubscriptions()V

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 151
    .restart local v1       #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->getLibraryMagazineSubscriptionEntry(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-result-object v2

    .line 153
    .restart local v2       #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    if-eqz v2, :cond_6

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    iget v3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;)V

    goto :goto_2

    .line 158
    .end local v1           #subscriptionDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v2           #subsEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->syncSeparatorVisibility()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "fragment"
    .parameter "subscriptionsSection"
    .parameter "doc"
    .parameter "subscriptionItemLayoutId"
    .parameter "savedState"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    .line 101
    iput-object p2, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 102
    iput-object p3, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 103
    iput-object p5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSavedState:Landroid/os/Bundle;

    .line 104
    iput p4, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionItemLayoutId:I

    .line 106
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    .line 107
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V
    .locals 1
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "libraries"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 72
    iput-object p4, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 74
    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 9
    .parameter "doc"
    .parameter "libraryEntry"

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 173
    .local v3, now:J
    iget-wide v5, p2, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const v1, 0x7f070145

    .line 176
    .local v1, confirmRes:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0700da

    const v7, 0x7f0700db

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(Ljava/lang/String;II)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 179
    .local v0, alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v2, extraArguments:Landroid/os/Bundle;
    const-string v5, "subscription_doc"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 183
    iget-object v5, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "confirm_cancel_dialog"

    invoke-virtual {v0, v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    return-void

    .line 173
    .end local v0           #alert:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .end local v1           #confirmRes:I
    .end local v2           #extraArguments:Landroid/os/Bundle;
    :cond_0
    const v1, 0x7f070144

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 78
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter "library"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    .line 88
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V

    .line 201
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 191
    const-string v1, "subscription_doc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 192
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->cancelSubscription(Lcom/google/android/finsky/api/model/Document;)V

    .line 193
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mSubscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SubscriptionsSection;->saveInstanceState(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method
