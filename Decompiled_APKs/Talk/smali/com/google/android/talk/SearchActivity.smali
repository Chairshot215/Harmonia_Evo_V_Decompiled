.class public Lcom/google/android/talk/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    }
.end annotation


# static fields
.field private static CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

.field private static RESULTS_FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mConversationId:J

.field mSearchItem:Landroid/view/MenuItem;

.field mSearchView:Landroid/widget/SearchView;

.field private mSinglePane:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "results_fragment"

    sput-object v0, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    .line 65
    const-string v0, "chat_result_fragment"

    sput-object v0, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->clearChatResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/SearchActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/SearchActivity;->setConversationId(J)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearChatResult()V
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 208
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    sget-object v2, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .line 210
    .local v1, resultFrag:Lcom/google/android/talk/fragments/SearchChatResultFragment;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->clear()V

    .line 213
    :cond_0
    return-void
.end method

.method private setConversationId(J)V
    .locals 0
    .parameter "conversationId"

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/google/android/talk/SearchActivity;->mConversationId:J

    .line 204
    return-void
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 151
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 155
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    return-void
.end method

.method private setupSearchUI(Landroid/app/ActionBar;)V
    .locals 6
    .parameter "actionBar"

    .prologue
    const/4 v5, 0x0

    .line 103
    new-instance v1, Lcom/google/android/talk/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/SearchActivity$1;-><init>(Lcom/google/android/talk/SearchActivity;)V

    .line 127
    .local v1, listener:Landroid/widget/SearchView$OnQueryTextListener;
    new-instance v0, Lcom/google/android/talk/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/SearchActivity$2;-><init>(Lcom/google/android/talk/SearchActivity;)V

    .line 134
    .local v0, closeListener:Landroid/widget/SearchView$OnCloseListener;
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 135
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 136
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0c00a1

    invoke-virtual {p0, v3}, Lcom/google/android/talk/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 138
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 139
    iget-object v2, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 140
    return-void
.end method


# virtual methods
.method public getConversationId()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/android/talk/SearchActivity;->mConversationId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/talk/SearchActivity;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f10007c

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/SearchActivity;->mUsername:Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/talk/SearchActivity;->mSinglePane:Z

    .line 78
    iget-boolean v2, p0, Lcom/google/android/talk/SearchActivity;->mSinglePane:Z

    if-eqz v2, :cond_2

    .line 79
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Lcom/google/android/talk/SearchActivity;->setContentView(I)V

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_fragment"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, initialFragment:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/talk/SearchActivity;->mSinglePane:Z

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 90
    .local v1, transaction:Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_3

    .line 91
    new-instance v2, Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;-><init>()V

    sget-object v3, Lcom/google/android/talk/SearchActivity;->CHAT_RESULT_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 96
    :goto_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 99
    .end local v1           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->setupActionBar()V

    .line 100
    return-void

    .line 76
    .end local v0           #initialFragment:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const v2, 0x7f040031

    invoke-virtual {p0, v2}, Lcom/google/android/talk/SearchActivity;->setContentView(I)V

    goto :goto_1

    .line 94
    .restart local v0       #initialFragment:Ljava/lang/String;
    .restart local v1       #transaction:Landroid/app/FragmentTransaction;
    :cond_3
    new-instance v2, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    invoke-direct {v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;-><init>()V

    sget-object v3, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 185
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    const v1, 0x7f1000bc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/SearchActivity;->mSearchItem:Landroid/view/MenuItem;

    .line 188
    iget-object v1, p0, Lcom/google/android/talk/SearchActivity;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/google/android/talk/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/SearchActivity;->setupSearchUI(Landroid/app/ActionBar;)V

    .line 191
    const/4 v1, 0x1

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/talk/SearchActivity;->clearChatResult()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 222
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    sget-object v2, Lcom/google/android/talk/SearchActivity;->RESULTS_FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;

    .line 224
    .local v1, searchFrag:Lcom/google/android/talk/SearchActivity$SearchResultsFragment;
    if-eqz v1, :cond_0

    .line 225
    const-string v2, "onNewIntent"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/talk/SearchActivity$SearchResultsFragment;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 162
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->finish()V

    goto :goto_0

    .line 166
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 168
    const-string v3, "accountId"

    const-string v4, "accountId"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    const-string v2, "username"

    const-string v3, "username"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/talk/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :sswitch_2
    const-string v1, "talk_search"

    invoke-static {p0, v1}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000b4 -> :sswitch_1
        0x7f1000b5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
