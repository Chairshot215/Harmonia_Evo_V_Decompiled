.class public Lcom/google/android/talk/BuddyListCombo;
.super Lcom/google/android/talk/GtalkServiceActivity;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;
.implements Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ChatScreenHost;
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BuddyListCombo$11;,
        Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;,
        Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;,
        Lcom/google/android/talk/BuddyListCombo$Focus;
    }
.end annotation


# static fields
.field private static sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

.field mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

.field mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

.field mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field private mClientTypeImageView:Landroid/widget/ImageView;

.field private mCurtainsOpen:Z

.field private mCustomTitleContainer:Landroid/view/View;

.field private mExpando:Lcom/google/android/talk/DrawerLayout;

.field private mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/talk/BuddyListCombo$Focus;",
            ">;"
        }
    .end annotation
.end field

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mLeftPanelContainer:Landroid/view/View;

.field private mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

.field private mOnResumeRunnable:Ljava/lang/Runnable;

.field private mPresenceImageView:Landroid/widget/ImageView;

.field private mRightPanelContainer:Landroid/view/View;

.field private mRosterLoaded:Z

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

.field private mStatus:Landroid/widget/TextView;

.field private mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletMode:Z

.field private mTitle:Landroid/widget/TextView;

.field private mVideoChatButtonView:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    .line 590
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$4;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    .line 604
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$5;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    .line 684
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 1280
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$8;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$8;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/talk/BuddyListCombo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/BuddyListCombo$Focus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/BuddyListCombo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->addToContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/BuddyListCombo;->setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/BuddyListCombo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByAccountId(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private addToContacts(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1437
    if-eqz p1, :cond_0

    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1444
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const-string v1, "im_protocol"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1448
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1450
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1452
    :cond_0
    return-void
.end method

.method private cleanupAfterCurtainsAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1515
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    iput-boolean v1, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1518
    return-void
.end method

.method public static displaySettings(Landroid/app/Activity;Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1429
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/GTalkPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1430
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1431
    const-string v1, "username"

    iget-object v2, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1434
    return-void
.end method

.method private ensureSwitchAccountAdapter()V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 1226
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    .line 1228
    :cond_0
    return-void
.end method

.method private expandoShouldBeOpen()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 466
    .local v0, landscape:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isXLargeTabletWidth(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0           #landscape:Z
    :cond_0
    move v0, v2

    .line 464
    goto :goto_0

    .restart local v0       #landscape:Z
    :cond_1
    move v1, v2

    .line 466
    goto :goto_1
.end method

.method private gotoDefaultExpandoState()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 113
    :cond_0
    return-void
.end method

.method private handleBack()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "f"
    .parameter "t"

    .prologue
    .line 687
    if-nez p1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private hideLoadingView()V
    .locals 3

    .prologue
    .line 563
    const v2, 0x7f100020

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 564
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 569
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_2

    .line 570
    const v2, 0x7f10002d

    invoke-virtual {p0, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 574
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 576
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 866
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 868
    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 869
    const-string v0, "accountId"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 872
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 874
    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 875
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 878
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->loadAccountInfo(JLjava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_4

    .line 887
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 888
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_3

    .line 896
    :cond_2
    :goto_0
    return-void

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 893
    :cond_4
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAccount mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initAccountSwitcher()V
    .locals 3

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/google/android/talk/BuddyListCombo$7;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyListCombo$7;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1184
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByUsername(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isUsingListNavigationMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1711
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return v1

    .line 1714
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 1717
    goto :goto_0
.end method

.method private loadAccountInfo(JLjava/lang/String;)V
    .locals 2
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 899
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 900
    :cond_0
    new-instance v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 901
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-wide p1, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 902
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object p3, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 904
    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 106
    const/4 v0, 0x3

    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyListCombo] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->LOG(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private onCancelSearch()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1501
    :cond_2
    return-void
.end method

.method private onDisplaySettings()V
    .locals 1

    .prologue
    .line 1424
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V

    .line 1425
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-static {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->displaySettings(Landroid/app/Activity;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1426
    return-void
.end method

.method private onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1457
    const-class v1, Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1458
    const-string v1, "userId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1459
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1461
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1462
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 351
    return-void
.end method

.method private removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "f"
    .parameter "t"

    .prologue
    .line 696
    if-nez p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private removeItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "menuId"

    .prologue
    .line 373
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 374
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 375
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    :cond_0
    return-void
.end method

.method private resetToBaseIntent()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1274
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    .line 1276
    return-void
.end method

.method private selectAccountInSpinnerByAccountId(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 1203
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 1204
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    .line 1205
    .local v2, max:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1206
    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1207
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1209
    .local v0, a:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1215
    .end local v0           #a:Landroid/app/ActionBar;
    .end local v1           #i:I
    .end local v2           #max:I
    :cond_0
    return-void

    .line 1205
    .restart local v1       #i:I
    .restart local v2       #max:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private selectAccountInSpinnerByUsername(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 1188
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1192
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    .line 1193
    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 1193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "title"
    .parameter "subtitle"
    .parameter "presence"
    .parameter "clientType"

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 665
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mClientTypeImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_2
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 673
    const/4 v1, -0x1

    if-ne p3, v1, :cond_4

    .line 674
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    :cond_3
    :goto_0
    return-void

    .line 676
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1, p3, v2}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v0

    .line 678
    .local v0, icon:I
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 738
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    .line 739
    return-void
.end method

.method private setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 742
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne p1, v0, :cond_0

    .line 743
    sget-object p1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, p1, :cond_1

    .line 863
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 751
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v1, :cond_2

    .line 752
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_2
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    .line 757
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 758
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, v1, :cond_4

    .line 762
    :cond_3
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V

    .line 765
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-eqz v0, :cond_7

    .line 766
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showBuddyListFragment(Landroid/app/FragmentTransaction;)V

    .line 768
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$11;->$SwitchMap$com$google$android$talk$BuddyListCombo$Focus:[I

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 791
    :goto_1
    const/high16 v0, 0x10b

    const v1, 0x10b0001

    invoke-virtual {v7, v0, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 858
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 862
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 770
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showSetStatusFragment(Landroid/app/FragmentTransaction;)V

    .line 777
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_6

    .line 778
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->stop()V

    .line 780
    :cond_6
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 784
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showChatScreenFragment(Landroid/app/FragmentTransaction;)V

    .line 785
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->hideFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 789
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_7
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$11;->$SwitchMap$com$google$android$talk$BuddyListCombo$Focus:[I

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 843
    :goto_3
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->isUsingListNavigationMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 844
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    .line 851
    :goto_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 852
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v0, v1, :cond_5

    .line 853
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 796
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 797
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 799
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 800
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->removeOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 801
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 802
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 804
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showSetStatusFragment(Landroid/app/FragmentTransaction;)V

    .line 806
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/google/android/talk/BuddyListCombo;->setActionBarCustomViews(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 810
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_3

    .line 813
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 814
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 816
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 817
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->removeOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 818
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 819
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 821
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showChatScreenFragment(Landroid/app/FragmentTransaction;)V

    .line 823
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    const-string v1, ""

    const-string v2, ""

    move v5, v4

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 825
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto/16 :goto_3

    .line 829
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 830
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 832
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0, v0, v7}, Lcom/google/android/talk/BuddyListCombo;->removeFragment(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)V

    .line 833
    iput-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 835
    invoke-direct {p0, v7}, Lcom/google/android/talk/BuddyListCombo;->showBuddyListFragment(Landroid/app/FragmentTransaction;)V

    .line 837
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 839
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    goto/16 :goto_3

    .line 846
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    goto/16 :goto_4

    .line 768
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 794
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setupActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 438
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 440
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 442
    .local v1, v:Landroid/view/ViewGroup;
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 447
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 448
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 452
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 454
    const v2, 0x7f10002e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    .line 455
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f100030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mTitle:Landroid/widget/TextView;

    .line 456
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mStatus:Landroid/widget/TextView;

    .line 457
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mPresenceImageView:Landroid/widget/ImageView;

    .line 459
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mCustomTitleContainer:Landroid/view/View;

    const v3, 0x7f10002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mVideoChatButtonView:Landroid/widget/ImageButton;

    .line 461
    return-void
.end method

.method private setupExpando()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 474
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->expandoShouldBeOpen()Z

    move-result v2

    .line 476
    .local v2, expandoOpen:Z
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->isIconified()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v5, 0x1

    .line 477
    .local v5, searchOpen:Z
    :goto_0
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v9, v2}, Lcom/google/android/talk/DrawerLayout;->setDefaultToExpanded(Z)V

    .line 478
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    or-int v10, v2, v5

    invoke-virtual {v9, v10, v7}, Lcom/google/android/talk/DrawerLayout;->setExpandedState(ZZ)V

    .line 479
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v9}, Lcom/google/android/talk/DrawerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 480
    .local v6, vg:Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    const v10, 0x7f100025

    invoke-virtual {v9, v10}, Lcom/google/android/talk/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 481
    .local v3, expandoOpenClose:Landroid/view/ViewGroup;
    const v9, 0x7f100028

    invoke-virtual {p0, v9}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;

    .line 483
    .local v4, lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    if-eqz v2, :cond_4

    .line 484
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 485
    const/high16 v9, 0x4120

    iput v9, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 489
    :goto_1
    const v9, 0x7f10002c

    invoke-virtual {p0, v9}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, expandedRightView:Landroid/view/View;
    const v9, 0x7f100026

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 491
    .local v1, expandoButton:Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 492
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    new-instance v8, Lcom/google/android/talk/BuddyListCombo$2;

    invoke-direct {v8, p0, v1, v0, v2}, Lcom/google/android/talk/BuddyListCombo$2;-><init>(Lcom/google/android/talk/BuddyListCombo;Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual {v7, v8}, Lcom/google/android/talk/DrawerLayout;->setOnExpandStateChangedListener(Lcom/google/android/talk/DrawerLayout$ExpandStateChangedListener;)V

    .line 530
    if-eqz v0, :cond_1

    .line 531
    new-instance v7, Lcom/google/android/talk/BuddyListCombo$3;

    invoke-direct {v7, p0}, Lcom/google/android/talk/BuddyListCombo$3;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    :cond_1
    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v7}, Lcom/google/android/talk/DrawerLayout;->requestLayout()V

    .line 539
    return-void

    .end local v0           #expandedRightView:Landroid/view/View;
    .end local v1           #expandoButton:Landroid/widget/ImageView;
    .end local v3           #expandoOpenClose:Landroid/view/ViewGroup;
    .end local v4           #lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .end local v5           #searchOpen:Z
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_2
    move v5, v7

    .line 476
    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_0

    .line 487
    .restart local v3       #expandoOpenClose:Landroid/view/ViewGroup;
    .restart local v4       #lp:Lcom/google/android/talk/DrawerLayout$LayoutParams;
    .restart local v5       #searchOpen:Z
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_4
    const/high16 v9, 0x40a0

    iput v9, v4, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    goto :goto_1
.end method

.method private setupSearchUI()V
    .locals 3

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 1524
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyListCombo$9;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1557
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$10;

    invoke-direct {v1, p0}, Lcom/google/android/talk/BuddyListCombo$10;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1570
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1571
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1572
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0c00a1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/BuddyListCombo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1573
    return-void
.end method

.method private showBuddyListFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_3

    .line 725
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 726
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->expandoShouldBeOpen()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->setNarrowMode(Z)V

    .line 729
    :cond_0
    const v0, 0x7f100027

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 731
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 735
    :cond_1
    :goto_1
    return-void

    .line 727
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private showChatScreenFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-nez v0, :cond_1

    .line 716
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 717
    const v0, 0x7f10002a

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private showFragmentBasedOnIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 583
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    goto :goto_0
.end method

.method private showLoadingView(Z)V
    .locals 7
    .parameter "onlyShowSpinner"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 542
    const v6, 0x7f100020

    invoke-virtual {p0, v6}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 543
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 547
    :cond_0
    const v6, 0x7f100021

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    .local v2, statusMsgTitle:Landroid/widget/TextView;
    const v6, 0x7f100022

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    .local v1, statusMsg:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 551
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_1

    .line 552
    const v6, 0x7f10002d

    invoke-virtual {p0, v6}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 554
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 555
    if-eqz p1, :cond_2

    move v4, v5

    .line 556
    .local v4, visible:I
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSetStatusFragment(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-nez v0, :cond_1

    .line 707
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 708
    const v0, 0x7f10002b

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public static startChatScreenActivity(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1665
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {p1, p2, v0}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1668
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1669
    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v0, "accountId"

    invoke-virtual {v2, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1671
    const/high16 v0, 0x1400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1673
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1674
    return-void
.end method

.method private startCurtainsAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1505
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    const v1, 0x7f050008

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1508
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    const v1, 0x7f050007

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    .line 1512
    return-void
.end method

.method public static startVoiceChat(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    invoke-static {p3}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    invoke-static {p1, p2, v0}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1680
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1682
    const-string v1, "vc"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1683
    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    const-string v0, "accountId"

    invoke-virtual {v2, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1685
    const/high16 v0, 0x1400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1687
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1688
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 355
    return-void
.end method


# virtual methods
.method public connectionCreated(Ljava/lang/String;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1033
    iput-object p2, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    invoke-interface {p2, v0}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    return-void

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    const-string v1, "talk"

    const-string v2, "addConnectionStateListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishedLoading()V
    .locals 1

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    .line 1643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRosterLoaded:Z

    .line 1644
    return-void
.end method

.method protected getAccountId()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method public getBuddyListController()Lcom/google/android/talk/fragments/BuddyListFragment$Controller;
    .locals 1

    .prologue
    .line 1577
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    if-eqz v0, :cond_0

    .line 1578
    sget-object v0, Lcom/google/android/talk/BuddyListCombo;->sInjectedController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    .line 1581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    goto :goto_0
.end method

.method public getChatScreenController()Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenController:Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;

    return-object v0
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 1660
    const-string v0, "BuddyListCombo"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/talk/BuddyListCombo;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1706
    :cond_0
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 5
    .parameter "accountInfo"

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    if-nez v1, :cond_0

    .line 1009
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;-><init>(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$1;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    .line 1014
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1016
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 1017
    .local v0, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v0, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/talk/ConnectionStateOnlineReceiver;->markAccountNotified(Landroid/content/Context;Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->signIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)Z

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1029
    return-void
.end method

.method public onAccountListChanged()V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 364
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 367
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 369
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 967
    sparse-switch p1, :sswitch_data_0

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 970
    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "approval"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 973
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 978
    :sswitch_1
    if-ne p2, v0, :cond_0

    const-string v0, "logout"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 986
    :sswitch_2
    if-eq p2, v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->finish()V

    goto :goto_0

    .line 991
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 992
    const-string v0, "was_removed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    goto :goto_0

    .line 1000
    :sswitch_4
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1001
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/talk/fragments/SetStatusFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1002
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->hideLoadingView()V

    goto :goto_0

    .line 967
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x64 -> :sswitch_2
        0x12c -> :sswitch_1
        0x44c -> :sswitch_4
        0x44d -> :sswitch_4
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 340
    instance-of v0, p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_1

    .line 341
    check-cast p1, Lcom/google/android/talk/fragments/BuddyListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v0, :cond_2

    .line 343
    check-cast p1, Lcom/google/android/talk/fragments/SetStatusFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    goto :goto_0

    .line 344
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 345
    check-cast p1, Lcom/google/android/talk/fragments/ChatScreenFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->handleBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onBackPressed()V

    .line 138
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 245
    .local v2, transaction:Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->isHidden()Z

    move-result v0

    .line 246
    .local v0, hidden:Z
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 247
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 248
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>()V

    .line 249
    .local v1, newStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;
    const v4, 0x7f10002b

    invoke-virtual {v2, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 256
    :cond_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 260
    .end local v0           #hidden:Z
    .end local v1           #newStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_1
    const v4, 0x7f100011

    invoke-virtual {p0, v4}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 261
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 267
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v4, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    .line 273
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v0, "FocusStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 169
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    const-class v5, Lcom/google/android/talk/BuddyListCombo$Focus;

    aget-object v6, v2, v0

    invoke-static {v5, v6}, Lcom/google/android/talk/BuddyListCombo$Focus;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 184
    if-eqz p1, :cond_1

    .line 188
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v2, "accountId"

    invoke-virtual {p1, v2, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 190
    if-eqz v0, :cond_1

    cmp-long v2, v4, v7

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "from"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    .line 197
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    .line 198
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 201
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_2

    .line 204
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 237
    :goto_2
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v3

    .line 211
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_5

    .line 212
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    .line 216
    :goto_4
    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DrawerLayout;

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    .line 218
    if-nez v2, :cond_6

    :goto_5
    invoke-direct {p0, v3}, Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V

    .line 219
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupActionBar()V

    .line 220
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->ensureSwitchAccountAdapter()V

    .line 222
    const v0, 0x7f100028

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mRightPanelContainer:Landroid/view/View;

    .line 223
    const v0, 0x7f100024

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mLeftPanelContainer:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    if-eqz v0, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupExpando()V

    .line 229
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->requestFocus()Z

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 236
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    goto :goto_2

    :cond_4
    move v2, v1

    .line 209
    goto :goto_3

    .line 214
    :cond_5
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->setContentView(I)V

    goto :goto_4

    :cond_6
    move v3, v1

    .line 218
    goto :goto_5

    .line 172
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 158
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 910
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 912
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 922
    :goto_1
    const-string v5, "username"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 923
    const-string v6, "accountId"

    invoke-virtual {p1, v6, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 925
    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 927
    :cond_1
    iput-object v4, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 928
    invoke-direct {p0, v4, p1}, Lcom/google/android/talk/BuddyListCombo;->initAccount(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 929
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 931
    :cond_2
    :goto_2
    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 933
    :goto_3
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent mAccountInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 937
    :cond_3
    new-instance v1, Lcom/google/android/talk/BuddyListCombo$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/talk/BuddyListCombo$6;-><init>(Lcom/google/android/talk/BuddyListCombo;ZLandroid/content/Intent;)V

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 961
    invoke-virtual {p0, p1}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    move-wide v0, v2

    .line 919
    goto :goto_1

    .line 931
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    move-object v1, v4

    .line 934
    goto :goto_4

    :cond_7
    move-wide v2, v0

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1268
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1239
    :sswitch_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1243
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->handleBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v2, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-eq v0, v2, :cond_1

    .line 1247
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;Z)V

    :cond_0
    :goto_1
    move v0, v1

    .line 1252
    goto :goto_0

    .line 1249
    :cond_1
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 1256
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onDisplaySettings()V

    move v0, v1

    .line 1257
    goto :goto_0

    .line 1261
    :sswitch_2
    const-string v0, "talk_buddylist"

    invoke-static {p0, v0}, Lcom/google/android/talk/HelpUtils;->showHelp(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 1262
    goto :goto_0

    .line 1265
    :sswitch_3
    invoke-static {p0}, Lcom/google/android/talk/HelpUtils;->showFeedbackForm(Landroid/content/Context;)V

    move v0, v1

    .line 1266
    goto :goto_0

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1000b4 -> :sswitch_1
        0x7f1000b5 -> :sswitch_2
        0x7f1000ca -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const v2, 0x7f1000c3

    .line 381
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 387
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 388
    const v1, 0x7f1000c2

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 389
    invoke-direct {p0, p1, v2}, Lcom/google/android/talk/BuddyListCombo;->removeItem(Landroid/view/Menu;I)V

    .line 391
    const v1, 0x7f1000bc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    .line 392
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 394
    .local v0, sv:Landroid/widget/SearchView;
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    new-instance v2, Lcom/google/android/talk/BuddyListCombo$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/BuddyListCombo$1;-><init>(Lcom/google/android/talk/BuddyListCombo;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 423
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    if-eq v1, v0, :cond_0

    .line 424
    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    .line 425
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 427
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10000003

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 430
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V

    .line 434
    .end local v0           #sv:Landroid/widget/SearchView;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onRestart()V

    .line 297
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->registerForAccountListChanged()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onResume()V

    .line 279
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo;->mCurtainsOpen:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->cleanupAfterCurtainsAnimation()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->showDialogIfNoDataAccess(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z

    .line 288
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 292
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->currentChatUser()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, currentChat:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->currentChatAccount()J

    move-result-wide v1

    .line 306
    .local v1, currentChatAccount:J
    if-eqz v0, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 307
    const-string v5, "from"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v5, "accountId"

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    .end local v0           #currentChat:Ljava/lang/String;
    .end local v1           #currentChatAccount:J
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v5}, Lcom/google/android/talk/BuddyListCombo$Focus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const-string v5, "FocusStack"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v3           #i:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStart()V

    .line 143
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V

    .line 145
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mOnResumeRunnable:Ljava/lang/Runnable;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyListCombo$Focus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStop()V

    .line 326
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->unregisterForAccountListChanged()V

    .line 328
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mListener:Lcom/google/android/talk/BuddyListCombo$MyConnectionListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "removeConnectionStateListener caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshAccountInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1595
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 1596
    const-string v0, "refreshAccountInfo: mAccountInfo to start with is null!!!"

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: old mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1603
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v0, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1605
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    .line 1606
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/TalkApp;->getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1610
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v1, :cond_5

    .line 1615
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getActiveAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget-wide v2, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-wide v4, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 1619
    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1629
    :cond_5
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshAccountInfo: new mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1607
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1608
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->getAccountInfo(Ljava/lang/String;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    goto :goto_1

    .line 1621
    :cond_7
    const-string v1, "refreshAccountInfo: mAccountInfo still null, starting AccountSelectionActivity"

    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1624
    iput-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1625
    invoke-static {p0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method protected sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 1
    .parameter "service"
    .parameter "session"

    .prologue
    .line 1648
    invoke-super {p0, p1, p2}, Lcom/google/android/talk/GtalkServiceActivity;->sessionAvailable(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    .line 1652
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p0}, Lcom/google/android/talk/AccountLoginUtils;->showDialogIfLowStorage(Lcom/google/android/talk/TalkApp;Landroid/app/Activity;)Z

    .line 1653
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 1478
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->setIntent(Landroid/content/Intent;)V

    .line 1479
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFocus(Landroid/content/Intent;)V

    .line 1482
    :cond_0
    invoke-static {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->isChatScreenIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    const-string v0, "accountId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1484
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1485
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to set intent to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with account value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1489
    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1467
    if-eqz p4, :cond_1

    .line 1468
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/talk/GtalkServiceActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public startVideoChatAnimation()Z
    .locals 1

    .prologue
    .line 1692
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1693
    invoke-direct {p0}, Lcom/google/android/talk/BuddyListCombo;->startCurtainsAnimation()V

    .line 1694
    const/4 v0, 0x1

    .line 1696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchAccounts()V
    .locals 3

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAccounts mAccountInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyListCombo;->refreshAccountInfo()V

    .line 1102
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->softUiReset()V

    .line 1111
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1113
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    if-eqz v0, :cond_4

    .line 1114
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mSetStatusFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1116
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->switchAccounts()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    const-string v1, "talk"

    const-string v2, "NPE switching accounts: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    throw v0

    .line 1097
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp$AccountInfo;->dump()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
