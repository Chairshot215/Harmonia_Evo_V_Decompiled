.class public Lcom/google/android/gm/MailboxSelectionActivity;
.super Lcom/google/android/gm/GmailBaseListActivity;
.source "MailboxSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/AccountHelper$AddAccountCallback;


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;


# instance fields
.field private final VIEW_IDS:[I

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAppWidgetId:I

.field private mConfigureWidget:Z

.field private mCreateShortcut:Z

.field private mResumed:Z

.field mWaitingForAddAccountResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseListActivity;-><init>()V

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0f00a7

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->VIEW_IDS:[I

    .line 46
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 47
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 49
    iput v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 54
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 57
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/MailboxSelectionActivity;[Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->completeSetupWithAccounts([Landroid/accounts/Account;)V

    return-void
.end method

.method private completeSetupWithAccounts([Landroid/accounts/Account;)V
    .locals 5
    .parameter "accounts"

    .prologue
    .line 205
    const/4 v4, 0x0

    invoke-static {p0, v4, p1}, Lcom/google/android/gm/Utils;->cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V

    .line 208
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 209
    .local v2, listData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 210
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 211
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v4, p1, v1

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 212
    .local v0, account:Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0           #account:Ljava/lang/String;
    .end local v3           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->updateAccountList(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 144
    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "createShortcut"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 147
    :cond_0
    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "createWidget"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    .line 150
    :cond_1
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "widgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 153
    :cond_2
    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "waitingForAddAccountResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 156
    :cond_3
    return-void
.end method

.method private selectAccount(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_3

    .line 282
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/gm/LabelSelectionActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const/high16 v0, 0x4200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_2

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "appWidgetId"

    iget v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    :cond_1
    const-string v0, "account-shortcut"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lcom/google/android/gm/MailboxSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    .line 297
    :goto_1
    return-void

    .line 285
    :cond_2
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    goto :goto_0

    .line 294
    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/Utils;->changeAccount(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    goto :goto_1
.end method

.method private setupWithAccounts()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/gm/MailboxSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MailboxSelectionActivity$1;-><init>(Lcom/google/android/gm/MailboxSelectionActivity;)V

    .line 177
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 178
    return-void
.end method

.method private setupWithCachedAccounts()V
    .locals 8

    .prologue
    .line 181
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p0, v7}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, cachedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 187
    .local v5, numAccounts:I
    if-nez v5, :cond_0

    .line 201
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 193
    .local v3, listData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 196
    .local v4, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "name"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    .end local v0           #accountName:Ljava/lang/String;
    .end local v4           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gm/MailboxSelectionActivity;->updateAccountList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateAccountList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, accountData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x1

    .line 220
    const/4 v8, 0x1

    .line 222
    .local v8, displayAccountList:Z
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 226
    invoke-static {p0, p0}, Lcom/google/android/gm/AccountHelper;->showAddAccount(Landroid/app/Activity;Lcom/google/android/gm/AccountHelper$AddAccountCallback;)V

    .line 228
    const/4 v8, 0x0

    .line 232
    iput-boolean v2, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    .line 242
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 245
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0, v2}, Lcom/google/android/gm/MailboxSelectionActivity;->setVisible(Z)V

    .line 249
    :cond_2
    new-instance v0, Lcom/google/android/gm/MailboxSelectionActivity$2;

    const v4, 0x7f040043

    sget-object v5, Lcom/google/android/gm/MailboxSelectionActivity;->COLUMN_NAMES:[Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/MailboxSelectionActivity;->VIEW_IDS:[I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/MailboxSelectionActivity$2;-><init>(Lcom/google/android/gm/MailboxSelectionActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 267
    iget-object v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_3
    return-void

    .line 233
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 236
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->selectAccount(Ljava/lang/String;)V

    .line 238
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 303
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x7f0f00ab
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f040044

    invoke-virtual {p0, v1}, Lcom/google/android/gm/MailboxSelectionActivity;->setContentView(I)V

    .line 64
    if-eqz p1, :cond_3

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->restoreState(Landroid/os/Bundle;)V

    .line 79
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-eqz v1, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/MailboxSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 82
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 83
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 86
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    const v1, 0x7f0f00ab

    invoke-virtual {p0, v1}, Lcom/google/android/gm/MailboxSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/google/android/gm/MailboxSelectionActivity;->setVisible(Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 92
    return-void

    .line 67
    :cond_3
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iput-boolean v4, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    .line 72
    iget v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v1, :cond_0

    .line 73
    iput-boolean v4, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, selectedAccount:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->selectAccount(Ljava/lang/String;)V

    .line 277
    .end local v0           #selectedAccount:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/gm/MailboxSelectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onPause()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    .line 132
    return-void
.end method

.method public onResult(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MailboxSelectionActivity;->setResult(I)V

    .line 315
    invoke-virtual {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->finish()V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithAccounts()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onResume()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mResumed:Z

    .line 123
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithAccounts()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "createShortcut"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mCreateShortcut:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v0, "createWidget"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "widgetId"

    iget v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mAppWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    :cond_0
    const-string v0, "waitingForAddAccountResult"

    iget-boolean v1, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mWaitingForAddAccountResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseListActivity;->onStart()V

    .line 112
    iget-boolean v0, p0, Lcom/google/android/gm/MailboxSelectionActivity;->mConfigureWidget:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/android/gm/MailboxSelectionActivity;->setupWithCachedAccounts()V

    .line 115
    :cond_0
    return-void
.end method
