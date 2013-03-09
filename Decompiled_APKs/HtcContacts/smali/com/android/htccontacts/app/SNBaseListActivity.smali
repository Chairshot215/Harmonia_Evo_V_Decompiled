.class public abstract Lcom/android/htccontacts/app/SNBaseListActivity;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "SNBaseListActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;,
        Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;,
        Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;
    }
.end annotation


# static fields
.field private static final MSG_SYNC_CHECK:I = 0x3ea

.field private static final MSG_SYNC_END:I = 0x3e9

.field private static final MSG_SYNC_START:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "People.SNBaseListActivity"


# instance fields
.field private isFacebookPending:Z

.field private isFacebookSyncing:Z

.field private isFlickrPending:Z

.field private isFlickrSyncing:Z

.field private isPlurkPending:Z

.field private isPlurkSyncing:Z

.field private isTwitterPending:Z

.field private isTwitterSyncing:Z

.field protected mConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private mHandler:Landroid/os/Handler;

.field protected mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

.field protected mListGrowAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/LinearExpandableListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mListSNBaseAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/SNBaseListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/htc/widget/HtcListView;

.field private mLoginAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

.field private mSyncHandler:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mLoginAccount:Ljava/util/ArrayList;

    .line 82
    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 83
    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 84
    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 85
    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 91
    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncHandler:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/android/htccontacts/app/SNBaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/SNBaseListActivity$1;-><init>(Lcom/android/htccontacts/app/SNBaseListActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mHandler:Landroid/os/Handler;

    .line 121
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookSyncing:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrSyncing:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterSyncing:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkSyncing:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookPending:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrPending:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterPending:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkPending:Z

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/app/SNBaseListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->checkSyncStatus()V

    return-void
.end method

.method private checkSyncStatus()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookPending:Z

    .line 139
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookSyncing:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookSyncing:Z

    if-eqz v0, :cond_5

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.socialnetwork.flickr.provider.StreamProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrPending:Z

    .line 150
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.socialnetwork.flickr.provider.StreamProvider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrSyncing:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrSyncing:Z

    if-eqz v0, :cond_6

    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.htctwitter"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterPending:Z

    .line 161
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "com.htc.htctwitter"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterSyncing:Z

    .line 162
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterSyncing:Z

    if-eqz v0, :cond_7

    .line 169
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "plurks"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkPending:Z

    .line 172
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    const-string v1, "plurks"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkSyncing:Z

    .line 173
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkSyncing:Z

    if-eqz v0, :cond_8

    .line 188
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookSyncing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookPending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrSyncing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrPending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterSyncing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterPending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkSyncing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkPending:Z

    if-eqz v0, :cond_9

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :goto_4
    return-void

    .line 143
    :cond_5
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFacebookPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_6
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isFlickrPending:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 165
    :cond_7
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isTwitterPending:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 176
    :cond_8
    iget-boolean v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->isPlurkPending:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 195
    :cond_9
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method


# virtual methods
.method public addListAdapter(Landroid/widget/BaseAdapter;I)V
    .locals 1
    .parameter "adapter"
    .parameter "labelResource"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 274
    return-void
.end method

.method public addListAdapter(Lcom/android/htccontacts/widget/ISNBaseListAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "adapter"
    .parameter "labelResource"
    .parameter "serviceType"
    .parameter "separaterType"

    .prologue
    .line 265
    new-instance v0, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1, p3, p4}, Lcom/android/htccontacts/widget/RosieSNBaseListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/ISNBaseListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, baseAdapter:Lcom/android/htccontacts/widget/SNBaseListAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/android/htccontacts/widget/RosieLinearExpandableListAdapter;

    invoke-direct {v1, v0, p4}, Lcom/android/htccontacts/widget/RosieLinearExpandableListAdapter;-><init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;Ljava/lang/String;)V

    .line 268
    .local v1, growAdapter:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v2, v1, p2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;I)Z

    .line 270
    return-void
.end method

.method public addListHeaderView(Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->addListHeaderView(Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;)V

    .line 278
    return-void
.end method

.method protected confirmDelete(IILjava/lang/String;)V
    .locals 3
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "serviceType"

    .prologue
    .line 422
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;

    invoke-direct {v2, p0, p3}, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;-><init>(Lcom/android/htccontacts/app/SNBaseListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0152

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 429
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mConfirmDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 430
    return-void
.end method

.method protected doSetupConnection()V
    .locals 2

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/SNBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method

.method protected doUpdate()V
    .locals 7

    .prologue
    .line 391
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 392
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v3, b:Landroid/os/Bundle;
    const-string v5, "force"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, a:Landroid/accounts/Account;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 396
    .local v2, ad:Lcom/android/htccontacts/model/AccountWithDataSet;
    if-eqz v2, :cond_2

    new-instance v0, Landroid/accounts/Account;

    .end local v0           #a:Landroid/accounts/Account;
    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .restart local v0       #a:Landroid/accounts/Account;
    :goto_1
    if-nez v0, :cond_3

    .line 419
    .end local v2           #ad:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    return-void

    .line 396
    .restart local v2       #ad:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 398
    :cond_3
    const-string v5, "com.htc.socialnetwork.facebook"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    const-string v5, "com.htc.socialnetwork.facebook"

    invoke-static {v0, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 402
    :cond_4
    const-string v5, "com.facebook.auth.login"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 403
    const-string v5, "com.htc.socialnetwork.facebook"

    invoke-static {v0, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 406
    :cond_5
    const-string v5, "com.htc.socialnetwork.flickr"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 407
    const-string v5, "com.htc.socialnetwork.flickr.provider.StreamProvider"

    invoke-static {v0, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 410
    :cond_6
    const-string v5, "com.htc.htctwitter"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 411
    const-string v5, "com.htc.htctwitter"

    invoke-static {v0, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 414
    :cond_7
    const-string v5, "com.htc.socialnetwork.plurk"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 415
    const-string v5, "plurks"

    invoke-static {v0, v5, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getListAdapterLabelRes(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getLabelRes(I)I

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->checkSyncStatus()V

    .line 383
    return-void
.end method

.method protected onConfirmedUnlinkClick(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceType"

    .prologue
    .line 433
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->setContentView()V

    .line 362
    invoke-virtual {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 363
    invoke-virtual {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 364
    new-instance v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 365
    new-instance v0, Lcom/android/htccontacts/widget/IndexListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/IndexListAdapter;-><init>(Landroid/content/Context;Lcom/android/htccontacts/widget/IIndexableListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 366
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 368
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 370
    new-instance v0, Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/SNBaseListActivity$ContactSyncStatusObserver;-><init>(Lcom/android/htccontacts/app/SNBaseListActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 371
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 377
    invoke-virtual {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->removeAllAdapters()V

    .line 378
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 379
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onPause()V

    .line 258
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncHandler:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 226
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mLoginAccount:Ljava/util/ArrayList;

    .line 228
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 229
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 230
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 231
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mLoginAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 233
    .local v0, a:Lcom/android/htccontacts/model/AccountWithDataSet;
    const-string v2, "com.htc.socialnetwork.facebook"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 236
    :cond_1
    const-string v2, "com.facebook.auth.login"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFacebookAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "com.htc.socialnetwork.flickr"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mFlickrAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 242
    :cond_3
    const-string v2, "com.htc.htctwitter"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mTwitterAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 245
    :cond_4
    const-string v2, "com.htc.socialnetwork.plurk"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iput-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mPlurkAccount:Lcom/android/htccontacts/model/AccountWithDataSet;

    goto :goto_0

    .line 250
    .end local v0           #a:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_5
    const v2, 0x7fffffff

    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mSyncHandler:Ljava/lang/Object;

    .line 253
    return-void
.end method

.method protected onSNSyncEnd()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onSNSyncStart()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public removeAllAdapters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 302
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/SNBaseListAdapter;

    .line 308
    .local v1, snBaseAdapter:Lcom/android/htccontacts/widget/SNBaseListAdapter;
    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->close()V

    .line 304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1           #snBaseAdapter:Lcom/android/htccontacts/widget/SNBaseListAdapter;
    :cond_1
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    .line 317
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 319
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 321
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    .line 323
    .local v2, snGrowListAdapter:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
    if-eqz v2, :cond_3

    .line 325
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->close()V

    .line 319
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    .end local v2           #snGrowListAdapter:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
    :cond_4
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListGrowAdapter:Ljava/util/ArrayList;

    .line 332
    .end local v0           #i:I
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    if-eqz v3, :cond_6

    .line 334
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/IndexListAdapter;->clear()V

    .line 335
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mIndexApdater:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 338
    :cond_6
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    if-eqz v3, :cond_7

    .line 340
    iget-object v3, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v3}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->clear()V

    .line 341
    iput-object v4, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    .line 343
    :cond_7
    return-void
.end method

.method public removeListAdapter(I)Lcom/android/htccontacts/widget/ISNBaseListAdapter;
    .locals 2
    .parameter "index"

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removing a single adapter is not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setContentView()V
.end method

.method public setIndexStatus(II)V
    .locals 1
    .parameter "index"
    .parameter "resId"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setStatus(II)V

    .line 292
    :cond_0
    return-void
.end method

.method public setListHeaderVisibility(IZ)V
    .locals 3
    .parameter "index"
    .parameter "visible"

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->setListHeaderVisibility(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "People.SNBaseListActivity"

    const-string v2, "setListHeaderVisibility catch null pointer exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateMatchFriendList()V
    .locals 3

    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListSNBaseAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;

    .line 352
    .local v0, adapter:Lcom/android/htccontacts/widget/SNBaseListAdapter;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->searchMatchFriend()V

    goto :goto_0

    .line 354
    .end local v0           #adapter:Lcom/android/htccontacts/widget/SNBaseListAdapter;
    :cond_0
    return-void
.end method
