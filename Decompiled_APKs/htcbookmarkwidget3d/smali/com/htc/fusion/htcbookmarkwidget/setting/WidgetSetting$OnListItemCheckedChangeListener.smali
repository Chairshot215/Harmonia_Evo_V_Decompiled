.class Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;
.super Ljava/lang/Object;
.source "WidgetSetting.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnListItemCheckedChangeListener"
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

.field private mHeaderView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;Landroid/widget/Button;)V
    .locals 0
    .parameter "adapter"
    .parameter "headerView"
    .parameter "positiveButton"

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    .line 201
    iput-object p2, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mHeaderView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 202
    iput-object p3, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mPositiveButton:Landroid/widget/Button;

    .line 203
    return-void
.end method

.method private getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mAdapter:Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    return-object v0
.end method

.method private getHeaderView()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mHeaderView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    return-object v0
.end method

.method private getPositiveButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;Z)V
    .locals 9
    .parameter "taggable"
    .parameter "isChecked"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 206
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v0

    .line 208
    .local v0, checkedList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {p1}, Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;->getTagsSet()Ljava/util/Set;

    move-result-object v4

    .line 209
    .local v4, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    if-eqz p2, :cond_3

    .line 210
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    :goto_0
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getHeaderView()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getHeaderView()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    move-result-object v1

    .line 217
    .local v1, header:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    invoke-virtual {v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getOnTaggableItemCheckedChangeListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    move-result-object v2

    .line 218
    .local v2, listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 219
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getAdapter()Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCount()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 220
    new-instance v5, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v6, "tag_name_of_bookmarks_without_tags"

    invoke-direct {v5, v6}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v1, v7}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    .line 226
    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 229
    .end local v1           #header:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    .end local v2           #listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    :cond_1
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/WidgetSetting$OnListItemCheckedChangeListener;->getPositiveButton()Landroid/widget/Button;

    move-result-object v3

    .line 230
    .local v3, positiveButton:Landroid/widget/Button;
    if-eqz v3, :cond_2

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 232
    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 233
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    .end local v0           #checkedList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    .end local v3           #positiveButton:Landroid/widget/Button;
    .end local v4           #tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_2
    :goto_2
    return-void

    .line 212
    .restart local v0       #checkedList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    .restart local v4       #tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 224
    .restart local v1       #header:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    .restart local v2       #listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    :cond_4
    invoke-virtual {v1, v8}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    goto :goto_1

    .line 236
    .end local v1           #header:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    .end local v2           #listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    .restart local v3       #positiveButton:Landroid/widget/Button;
    :cond_5
    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 237
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
