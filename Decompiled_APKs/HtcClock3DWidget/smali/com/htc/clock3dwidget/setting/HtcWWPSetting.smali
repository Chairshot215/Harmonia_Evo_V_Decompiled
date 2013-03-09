.class public Lcom/htc/clock3dwidget/setting/HtcWWPSetting;
.super Landroid/app/Activity;
.source "HtcWWPSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;
    }
.end annotation


# instance fields
.field public mBWWPPlay:Z

.field private mButton:Landroid/widget/Button;

.field private mCheckWWPPlayBox:Landroid/widget/CheckBox;

.field mListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mSettingListView:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    .line 53
    new-instance v0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;-><init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mCheckWWPPlayBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wwp_play_"

    iget-boolean v2, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->finish()V

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f090006

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v4, "wwp_play_"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    .line 84
    :goto_0
    const v4, 0x7f030001

    const v5, 0x7f060025

    const/4 v6, -0x1

    invoke-static {p0, v4, v9, v5, v6}, Lcom/htc/clock3dwidget/ResUtils;->setupWWPView(Landroid/app/Activity;IIII)V

    .line 87
    invoke-virtual {p0, v9}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mSettingListView:Lcom/htc/widget/HtcListView;

    .line 91
    const-string v4, "list_selector_background"

    const v5, 0x208005e

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, list_selector:I
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mSettingListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x2090083

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, checkItem:Landroid/view/View;
    const v4, 0x2020010

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, textView:Landroid/widget/TextView;
    const v4, 0x7f060026

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const v4, 0x202001f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mCheckWWPPlayBox:Landroid/widget/CheckBox;

    .line 99
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mCheckWWPPlayBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mCheckWWPPlayBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 103
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mSettingListView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v8, v5}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 104
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mSettingListView:Lcom/htc/widget/HtcListView;

    new-instance v5, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;

    invoke-direct {v5, p0, v8}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting$EmptyAdapter;-><init>(Lcom/htc/clock3dwidget/setting/HtcWWPSetting;Lcom/htc/clock3dwidget/setting/HtcWWPSetting$1;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mSettingListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 106
    const-string v4, "mSettingListView good"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p0}, Lcom/htc/clock3dwidget/ResUtils;->setupButton(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 80
    .end local v0           #checkItem:Landroid/view/View;
    .end local v2           #list_selector:I
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "wwp_play_"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "wwp_play_"

    iget-boolean v1, p0, Lcom/htc/clock3dwidget/setting/HtcWWPSetting;->mBWWPPlay:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 120
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    return-void
.end method
