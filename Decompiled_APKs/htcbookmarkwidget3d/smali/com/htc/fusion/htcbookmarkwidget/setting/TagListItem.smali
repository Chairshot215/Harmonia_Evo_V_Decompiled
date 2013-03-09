.class public Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;
.super Landroid/widget/LinearLayout;
.source "TagListItem.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckedChangeListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v1, "HtcBookmarkWidget"

    const-string v2, "Null tag"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 106
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
    .locals 3
    .parameter "tag"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v1, "HtcBookmarkWidget"

    const-string v2, "Null tag"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 116
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 121
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    return v1
.end method

.method public getOnTaggableItemCheckedChangeListener()Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckedChangeListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    return-object v0
.end method

.method public getTagsSet()Ljava/util/Set;
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
    .line 140
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mTags:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mTags:Ljava/util/Set;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public initLayout()V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mContext:Landroid/content/Context;

    .line 41
    .local v0, context:Landroid/content/Context;
    const v1, 0x2020010

    invoke-virtual {p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mText:Landroid/widget/TextView;

    .line 42
    const v1, 0x202001f

    invoke-virtual {p0, v1}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 45
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 51
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 53
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$1;

    invoke-direct {v2, p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$1;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;

    invoke-direct {v2, p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$2;-><init>(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public removeTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 131
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    if-nez p1, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 133
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    return-void
.end method

.method public setOnTaggableItemCheckedChangeListener(Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckedChangeListener:Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem$OnTaggableItemCheckedChangeListener;

    .line 75
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public toTagsArray([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .locals 2
    .parameter "array"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 126
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    return-object v1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/setting/TagListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 95
    return-void
.end method
