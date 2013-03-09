.class public final Lcom/htc/launcher/AddWidgetLayout;
.super Landroid/widget/ViewSwitcher;
.source "AddWidgetLayout.java"

# interfaces
.implements Lcom/htc/launcher/AllAppsView$Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;,
        Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/launcher/AddListAdapter;

.field mContainer:Lcom/htc/launcher/AllAppsView;

.field private mListLayout:Landroid/view/View;

.field private mOnAddWidgetListener:Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;

.field private mOnPersonalizeItemClickListener:Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

.field private mProgramList:Lcom/htc/widget/HtcListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/AddWidgetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/AddListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/AddWidgetLayout;)Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;

    return-object v0
.end method


# virtual methods
.method public clearTextFilter()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public doCheckTitle()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mContainer:Lcom/htc/launcher/AllAppsView;

    iget-object v1, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v1}, Lcom/htc/launcher/AddListAdapter;->getTitleString()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AllAppsView;->setTitleText(I)V

    .line 193
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v1}, Lcom/htc/launcher/AddListAdapter;->getKeepPosition()I

    move-result v1

    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 237
    return-void
.end method

.method public setAdapter(Lcom/htc/launcher/AddListAdapter;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    .line 56
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    :cond_0
    return-void
.end method

.method public setAddWidgetListener(Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout;->mOnAddWidgetListener:Lcom/htc/launcher/AddWidgetLayout$OnAddWidgetListener;

    .line 171
    return-void
.end method

.method public setContainer(Lcom/htc/launcher/AllAppsView;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout;->mContainer:Lcom/htc/launcher/AllAppsView;

    .line 247
    return-void
.end method

.method public setFadingEdgeLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 225
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 217
    return-void
.end method

.method public setPersonalizeOnItemClickListener(Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/launcher/AddWidgetLayout;->mOnPersonalizeItemClickListener:Lcom/htc/launcher/Launcher$PersonalizeOnItemClickListener;

    .line 175
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 221
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 229
    return-void
.end method

.method public updateContentView(Z)V
    .locals 7
    .parameter "doTransition"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/htc/launcher/AddWidgetLayout;->removeAllViews()V

    .line 65
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mListLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 67
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001c

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mListLayout:Landroid/view/View;

    .line 69
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mListLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/launcher/AddWidgetLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    if-nez v2, :cond_2

    .line 74
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mContainer:Lcom/htc/launcher/AllAppsView;

    const v3, 0x7f0b0030

    invoke-virtual {v2, v3}, Lcom/htc/launcher/AllAppsView;->setTitleText(I)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mListLayout:Landroid/view/View;

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    .line 86
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    if-nez v2, :cond_3

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/AddWidgetLayout;->doCheckTitle()V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    if-eqz v2, :cond_4

    .line 91
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/launcher/AddWidgetLayout;->mAdapter:Lcom/htc/launcher/AddListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/htc/launcher/AddWidgetLayout$AddOnClickListener;-><init>(Lcom/htc/launcher/AddWidgetLayout;Lcom/htc/launcher/AddWidgetLayout$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 95
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 96
    .local v0, color:Landroid/graphics/drawable/ColorDrawable;
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/launcher/AddWidgetLayout;->mContext:Landroid/content/Context;

    const-string v4, "rosie_list_selector"

    const v5, 0x7f020084

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 100
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 102
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/htc/launcher/AddWidgetLayout$1;

    invoke-direct {v3, p0}, Lcom/htc/launcher/AddWidgetLayout$1;-><init>(Lcom/htc/launcher/AddWidgetLayout;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 118
    iget-object v2, p0, Lcom/htc/launcher/AddWidgetLayout;->mProgramList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    goto :goto_1
.end method
