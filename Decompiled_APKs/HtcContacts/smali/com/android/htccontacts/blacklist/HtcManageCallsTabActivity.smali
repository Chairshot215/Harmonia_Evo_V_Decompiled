.class public Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;
.super Lcom/htc/widget/TabSwitchActivity;
.source "HtcManageCallsTabActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcManageCallsTabActivity"

.field private static final TAB_DEVIRTED_VIEW:I = 0x0

.field private static final TAB_VIP_VIEW:I = 0x1


# instance fields
.field public mResetPosition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->mResetPosition:Z

    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, typeIndex:I
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, intentType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    const v13, 0x7f0a0355

    const v11, 0x7f0a0354

    .line 88
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->requestWindowFeature(I)Z

    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, htcContext:Landroid/content/Context;
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    const/4 v7, 0x0

    .line 103
    .local v7, vw:Landroid/view/View;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 104
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x20900b2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 111
    .local v5, parent:Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->setContentView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v4

    .line 120
    .local v4, mPanelHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 124
    .local v6, r:Landroid/content/res/Resources;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 125
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f02001d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x7f02001c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x7f02001b

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 133
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 134
    invoke-virtual {p0, v13}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {p0, v13}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f020010

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x7f02000f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x7f020017

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 141
    return-void

    .line 93
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mPanelHost:Lcom/htc/widget/TabSwitchHost;
    .end local v5           #parent:Landroid/view/ViewGroup;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #vw:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "HtcManageCallsTabActivity"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/htc/widget/TabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->init()V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onDestroy()V

    .line 63
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsTabActivity;->mResetPosition:Z

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onResume()V

    .line 69
    return-void
.end method
