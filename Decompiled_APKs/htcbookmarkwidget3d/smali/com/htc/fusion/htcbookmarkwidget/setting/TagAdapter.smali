.class public Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;
.super Landroid/widget/CursorAdapter;
.source "TagAdapter.java"


# instance fields
.field private mCheckedListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

.field private mCheckedTagList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLjava/util/Set;)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p4, checkedList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 22
    invoke-direct {p0, p4}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->setCheckedTagList(Ljava/util/Set;)V

    .line 23
    return-void
.end method

.method private getOnTagListItemCheckedChangeListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    return-object v0
.end method

.method private setCheckedTagList(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, list:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedTagList:Ljava/util/Set;

    .line 86
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 53
    instance-of v4, p1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The view is not a TagListItem"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 59
    .local v1, item:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->removeTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z

    .line 61
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, tagName:Ljava/lang/String;
    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    invoke-direct {v2, v3}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V

    .line 65
    invoke-virtual {v1, v3}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v0

    .line 68
    .local v0, checkedTagList:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v1, v5}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setChecked(Z)V

    goto :goto_0
.end method

.method public getCheckedTagList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedTagList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedTagList:Ljava/util/Set;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedTagList:Ljava/util/Set;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 31
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 39
    :cond_0
    :goto_0
    return-object v1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    .local v1, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    new-instance v1, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    .end local v1           #tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    .restart local v1       #tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 43
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;

    .line 45
    .local v1, itemView:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
    invoke-virtual {v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->initLayout()V

    .line 46
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getOnTagListItemCheckedChangeListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    move-result-object v2

    .line 47
    .local v2, listener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    invoke-virtual {v1, v2}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V

    .line 48
    new-instance v3, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;

    const-string v4, "list_item"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItemSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->setTag(Ljava/lang/Object;)V

    .line 49
    return-object v1
.end method

.method public setItemChecked(IZ)V
    .locals 2
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 90
    .local v0, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->getCheckedTagList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setOnTagListItemCheckedListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagAdapter;->mCheckedListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    .line 101
    return-void
.end method
