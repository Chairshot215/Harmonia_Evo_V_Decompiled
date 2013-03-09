.class public Lcom/android/htccontacts/blacklist/HtcBlackListActivity;
.super Lcom/htc/widget/TabSwitchActivity;
.source "HtcBlackListActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcBlackListActivity"

.field private static final TAB_BLACKLIST_VIEW:I = 0x0

.field private static final TAB_CALL_LOG_VIEW:I = 0x1

.field private static mWM:Landroid/view/IWindowManager;


# instance fields
.field public mResetPosition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->mResetPosition:Z

    return-void
.end method

.method public static checkNeedProtection(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 175
    return-void
.end method

.method private static enterPasswordIfNeed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 149
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "go_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, typeIndex:I
    const-string v3, "type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, intentType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    const v13, 0x7f0a0244

    const v11, 0x7f0a0243

    .line 94
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->requestWindowFeature(I)Z

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, htcContext:Landroid/content/Context;
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    const/4 v7, 0x0

    .line 109
    .local v7, vw:Landroid/view/View;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x20900b2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 117
    .local v5, parent:Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v4

    .line 126
    .local v4, mPanelHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 129
    .local v6, r:Landroid/content/res/Resources;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 130
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {p0, v11}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x208020f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x208020e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x208037b

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 139
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 140
    invoke-virtual {p0, v13}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {p0, v13}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x208020d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x208020c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, 0x208037a

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 146
    return-void

    .line 99
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #mPanelHost:Lcom/htc/widget/TabSwitchHost;
    .end local v5           #parent:Landroid/view/ViewGroup;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #vw:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "HtcBlackListActivity"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/widget/TabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->init()V

    .line 63
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->mWM:Landroid/view/IWindowManager;

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onDestroy()V

    .line 69
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/blacklist/HtcBlackListActivity;->mResetPosition:Z

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onResume()V

    .line 75
    return-void
.end method
