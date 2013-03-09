.class public final Lcom/htc/home/personalize/AddWidgetLayout;
.super Landroid/widget/ViewSwitcher;
.source "AddWidgetLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;,
        Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/home/personalize/AddListAdapter;

.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field private mHeaderBarShort:Lcom/htc/widget/HeaderBar;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mListLayout:Landroid/view/View;

.field private mOnAddWidgetListener:Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;

.field private mOnPersonalizeItemClickListener:Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

.field private mProgramList:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/home/personalize/AddWidgetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    .line 34
    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 35
    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 36
    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    .line 37
    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/AddListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/AddWidgetLayout;)Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;

    return-object v0
.end method


# virtual methods
.method public clearTextFilter()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public doCheckTitle()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 189
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/AddListAdapter;->getLevel()I

    move-result v2

    if-nez v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 194
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f0b0041

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f090070

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, sceneName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v0

    .line 198
    .local v0, sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/home/personalize/PersonalizeMain;->getSceneName(Lcom/htc/htcSceneManager/scene/Scene;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/AddListAdapter;->getTitleString()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 205
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 223
    .end local v0           #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v1           #sceneName:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/AddListAdapter;->getKeepPosition()I

    move-result v3

    iget-object v4, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 226
    :cond_1
    return-void

    .line 201
    .restart local v0       #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .restart local v1       #sceneName:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f090081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 207
    .end local v0           #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v1           #sceneName:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBar;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f0b0042

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v3}, Lcom/htc/home/personalize/AddListAdapter;->getTitleString()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 250
    return-void
.end method

.method public setAdapter(Lcom/htc/home/personalize/AddListAdapter;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    .line 62
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddWidgetLayout;->doCheckTitle()V

    .line 67
    :cond_1
    return-void
.end method

.method public setAddWidgetListener(Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/home/personalize/AddWidgetLayout$OnAddWidgetListener;

    .line 170
    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 238
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 230
    return-void
.end method

.method public setHeaderBarView(Lcom/htc/widget/HeaderBar;Lcom/htc/widget/HeaderBar;)V
    .locals 2
    .parameter "headerBar"
    .parameter "headerBarShort"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    .line 179
    iput-object p2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    .line 181
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 182
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderBarShort:Lcom/htc/widget/HeaderBar;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderTextShort:Lcom/htc/widget/HeaderBarText;

    .line 184
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddWidgetLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    return-void
.end method

.method public setPersonalizeOnItemClickListener(Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/home/personalize/PersonalizeMain$PersonalizeOnItemClickListener;

    .line 174
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 234
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 242
    return-void
.end method

.method public updateContentView(Z)V
    .locals 5
    .parameter "doTransition"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddWidgetLayout;->removeAllViews()V

    .line 71
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mListLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030017

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mListLayout:Landroid/view/View;

    .line 75
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mListLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/AddWidgetLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-nez v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mListLayout:Landroid/view/View;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    .line 89
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_4

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddWidgetLayout;->doCheckTitle()V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mAdapter:Lcom/htc/home/personalize/AddListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;

    invoke-direct {v2, p0, v3}, Lcom/htc/home/personalize/AddWidgetLayout$AddOnClickListener;-><init>(Lcom/htc/home/personalize/AddWidgetLayout;Lcom/htc/home/personalize/AddWidgetLayout$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 100
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/home/personalize/AddWidgetLayout$1;

    invoke-direct {v2, p0}, Lcom/htc/home/personalize/AddWidgetLayout$1;-><init>(Lcom/htc/home/personalize/AddWidgetLayout;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 116
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/htc/home/personalize/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setBottomRound(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
