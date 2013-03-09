.class public Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;
.super Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;
.source "WidgetSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;,
        Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;-><init>()V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getTagAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getTagAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super/range {p0 .. p1}, Lcom/htc/fusion/htcbookmarkwidget/setting/HtcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v2, 0x7f03

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->setContentView(I)V

    .line 44
    const v2, 0x7f07000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->setTitle(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getCommandBar()Lcom/htc/widget/HtcFooter;

    move-result-object v10

    .line 47
    .local v10, commandBar:Lcom/htc/widget/HtcFooter;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 50
    const v2, 0x7f090007

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcFooterButton;

    .line 51
    .local v26, positiveButton:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x7f07000b

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 52
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f090008

    invoke-virtual {v10, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcFooterButton;

    .line 76
    .local v25, negativeButton:Lcom/htc/widget/HtcFooterButton;
    const v2, 0x7f07000c

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 77
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$2;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f090001

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcListView;

    .line 85
    .local v24, listView:Lcom/htc/widget/HtcListView;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080700

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 88
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    .line 89
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/util/AppUnbundleUtil;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 92
    :cond_0
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$3;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getTagAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v8

    .line 110
    .local v8, adapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    invoke-virtual {v8}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v30

    .line 111
    .local v30, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 115
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v22

    .line 116
    .local v22, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 118
    .local v20, headerViewContainer:Landroid/widget/RelativeLayout;
    const v2, 0x7f090002

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 119
    .local v19, headerView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    invoke-virtual/range {v19 .. v19}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->initLayout()V

    .line 120
    const v2, 0x7f030003

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 121
    .local v15, footerView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    invoke-virtual {v15}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->initLayout()V

    .line 124
    new-instance v16, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1, v15}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnHeaderItemCheckedChangeListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;Lcom/htc/widget/HtcListView;Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;)V

    .line 126
    .local v16, headerListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, headerText:Ljava/lang/String;
    new-instance v17, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v2, "tag_name_of_all_bookmarks"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .line 129
    .local v17, headerTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 130
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;

    const-string v3, "header"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setTag(Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 136
    new-instance v12, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v12, v8, v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;Landroid/widget/Button;)V

    .line 137
    .local v12, footerListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    invoke-virtual {v15, v12}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, footerText:Ljava/lang/String;
    new-instance v13, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v2, "tag_name_of_bookmarks_without_tags"

    invoke-direct {v13, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .line 140
    .local v13, footerTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-virtual {v15, v13}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 141
    invoke-virtual {v15, v14}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;

    const-string v3, "list_item"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v15, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setTag(Ljava/lang/Object;)V

    .line 143
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->addFooterView(Landroid/view/View;)V

    .line 147
    :try_start_0
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v2, v8, v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;Landroid/widget/Button;)V

    invoke-virtual {v8, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->setOnTagListItemCheckedListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 148
    sget-object v3, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAGS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/fusion/htcbookmarkwidget/Constants;->TAG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 149
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {v8, v9}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 150
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v9           #c:Landroid/database/Cursor;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 156
    .local v23, intent:Landroid/content/Intent;
    const-string v2, "selected_tags"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, extra:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 159
    .local v28, tagArray:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v2, v0

    if-lez v2, :cond_3

    .line 160
    invoke-virtual {v8}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v29

    .line 161
    .local v29, tagList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 162
    new-instance v27, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    aget-object v2, v28, v21

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .line 163
    .local v27, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 166
    .end local v27           #tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    :cond_2
    move-object/from16 v0, v29

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    .line 172
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;->getTagAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCount()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 173
    move-object/from16 v0, v29

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    .line 181
    .end local v21           #i:I
    .end local v28           #tagArray:[Ljava/lang/String;
    .end local v29           #tagList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_3
    :goto_3
    return-void

    .line 169
    .restart local v21       #i:I
    .restart local v28       #tagArray:[Ljava/lang/String;
    .restart local v29       #tagList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    goto :goto_2

    .line 177
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    goto :goto_3

    .line 151
    .end local v11           #extra:Ljava/lang/String;
    .end local v21           #i:I
    .end local v23           #intent:Landroid/content/Intent;
    .end local v28           #tagArray:[Ljava/lang/String;
    .end local v29           #tagList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method
