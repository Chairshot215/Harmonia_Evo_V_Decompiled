.class public Lcom/m0narx/tweaks/about;
.super Lcom/htc/app/HtcListActivity;
.source "about.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/m0narx/tweaks/about$ExpandableListAdapter;
    }
.end annotation


# instance fields
.field private Title:Lcom/htc/widget/HeaderBarText;

.field private Title_Button:Lcom/htc/widget/HeaderBarImage;

.field private childs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private childs_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groups_comment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

.field private mListView:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    return-void
.end method

.method private CheckButtonState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 183
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 185
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 188
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0

    .line 189
    :cond_2
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 191
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0

    .line 192
    :cond_3
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 194
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method private SetupHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/about;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    iput-object v1, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    .line 154
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    sget-object v2, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 159
    .local v0, TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 160
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/about;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    iput-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    .line 163
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 164
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 165
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 166
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/m0narx/tweaks/about$3;

    invoke-direct {v2, p0}, Lcom/m0narx/tweaks/about$3;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    check-cast v0, Lcom/htc/widget/HeaderBar$LayoutParams;

    .line 176
    .restart local v0       #TBAlign:Lcom/htc/widget/HeaderBar$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 177
    iget-object v1, p0, Lcom/m0narx/tweaks/about;->Title_Button:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HeaderBarImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->CheckButtonState()V

    .line 179
    return-void
.end method


# virtual methods
.method public addChild(III)V
    .locals 2
    .parameter "GroupID"
    .parameter "TitleResID"
    .parameter "CommentResID"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public addGroup(II)V
    .locals 2
    .parameter "TitleResID"
    .parameter "CommentResID"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f050011

    const v5, 0x7f050010

    const v4, 0x7f05000f

    const v3, 0x7f05000e

    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/m0narx/tweaks/about;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->SetupHeader()V

    .line 57
    invoke-virtual {p0}, Lcom/m0narx/tweaks/about;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListView;

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    .line 58
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->setTextFilterEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->setFastScrollEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/about$1;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/about$1;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    new-instance v1, Lcom/m0narx/tweaks/about$2;

    invoke-direct {v1, p0}, Lcom/m0narx/tweaks/about$2;-><init>(Lcom/m0narx/tweaks/about;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    .line 113
    const v0, 0x7f050012

    const v1, 0x7f050013

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/about;->addGroup(II)V

    .line 114
    const v0, 0x7f050014

    const v1, 0x7f050015

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/about;->addGroup(II)V

    .line 115
    const v0, 0x7f050016

    const v1, 0x7f050017

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/about;->addGroup(II)V

    .line 116
    const v0, 0x7f0500a9

    const v1, 0x7f0500aa

    invoke-virtual {p0, v0, v1}, Lcom/m0narx/tweaks/about;->addGroup(II)V

    .line 118
    invoke-virtual {p0, v2, v3, v4}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3, v4}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 121
    invoke-virtual {p0, v2, v5, v6}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v5, v6}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v5, v6}, Lcom/m0narx/tweaks/about;->addChild(III)V

    .line 125
    new-instance v0, Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    iget-object v3, p0, Lcom/m0narx/tweaks/about;->groups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/m0narx/tweaks/about;->groups_comment:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/m0narx/tweaks/about;->childs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/m0narx/tweaks/about;->childs_comment:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/m0narx/tweaks/about$ExpandableListAdapter;-><init>(Lcom/m0narx/tweaks/about;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/m0narx/tweaks/about;->mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    .line 126
    iget-object v0, p0, Lcom/m0narx/tweaks/about;->mListView:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/m0narx/tweaks/about;->mAdapter:Lcom/m0narx/tweaks/about$ExpandableListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/m0narx/tweaks/about;->CheckButtonState()V

    .line 133
    return-void
.end method
