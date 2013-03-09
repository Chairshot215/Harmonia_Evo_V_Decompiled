.class public Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "BrowseOnlineDirectoriesActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/TabObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$1;,
        Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;,
        Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;,
        Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineInsertNewListAdapter;,
        Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseOnlineDirectoriesActivity"


# instance fields
.field private isDirty:Z

.field protected mDefaultCompanyDrawable:Landroid/graphics/drawable/Drawable;

.field private mExchangeAccountName:Ljava/lang/String;

.field protected mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field private mIsExchange:Z

.field protected mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

.field private mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mExchangeAccountName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->isDirty:Z

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mIsExchange:Z

    return p1
.end method


# virtual methods
.method public checkExchangeReady()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.htc.android.mail.eas"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 276
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    if-lt v3, v1, :cond_1

    .line 277
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mExchangeAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    aget-object v2, v0, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mExchangeAccountName:Ljava/lang/String;

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mExchangeAccountName:Ljava/lang/String;

    const v4, 0x7f0a021f

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 283
    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->isDirty:Z

    :cond_2
    move v1, v2

    .line 285
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->setContentView(I)V

    .line 67
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->setGenericTitleBar(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mDefaultCompanyDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 104
    if-nez p3, :cond_0

    .line 106
    iget-boolean v4, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mIsExchange:Z

    if-eqz v4, :cond_3

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.htccontacts"

    const-string v5, "com.android.htccontacts.HtcCompanyDirectoryPicker"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 119
    check-cast v1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    .line 120
    .local v1, item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    iget-object v4, v1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v1           #item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    :cond_1
    if-eqz v2, :cond_2

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 123
    check-cast v3, Landroid/view/View;

    .line 124
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 128
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 111
    .end local v2           #obj:Ljava/lang/Object;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.htc.android.mail"

    const-string v5, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    invoke-virtual {v1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->cancel(Z)Z

    .line 81
    :cond_0
    new-instance v0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;-><init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    .line 82
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryLoadingTask:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method

.method public onTabControlPressed(ILjava/lang/String;)V
    .locals 1
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 86
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :cond_0
    return-void
.end method

.method public onTabControlReleased(ILjava/lang/String;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "tabTag"

    .prologue
    .line 92
    return-void
.end method

.method public onTabSwitched(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fromTab"
    .parameter "toTab"
    .parameter "fromTabTag"
    .parameter "toTabTag"

    .prologue
    .line 95
    if-ne p1, p2, :cond_0

    .line 96
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :cond_0
    return-void
.end method
