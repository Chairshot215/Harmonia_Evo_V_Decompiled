.class public Lcom/google/android/gm/LabelSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    }
.end annotation


# static fields
.field private static DEFAULT_LABEL_BACKGROUND_COLOR:I


# instance fields
.field private final mColorBlockCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/PaintDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLabelRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getDefaultLabelBackgroundColor()I

    move-result v0

    sput v0, Lcom/google/android/gm/LabelSelectorAdapter;->DEFAULT_LABEL_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Set;)V
    .locals 1
    .parameter "context"
    .parameter "labelList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gm/provider/LabelList;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mLabelRows:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/LabelSelectorAdapter;->processLists(Lcom/google/android/gm/provider/LabelList;Ljava/util/Set;)V

    .line 80
    return-void
.end method

.method private processLists(Lcom/google/android/gm/provider/LabelList;Ljava/util/Set;)V
    .locals 6
    .parameter "labelList"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/LabelList;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/android/gm/provider/LabelList;->size()I

    move-result v2

    .line 85
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/LabelList;->get(I)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 89
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "^i"

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v3, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;-><init>(Lcom/google/android/gm/provider/Label;Z)V

    .line 95
    .local v3, row:Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    iget-object v4, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mLabelRows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v3           #row:Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mLabelRows:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mLabelRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mLabelRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0f00a6

    const v9, 0x7f0f00a1

    .line 117
    move-object v6, p2

    .line 121
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_0

    .line 122
    iget-object v7, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040040

    invoke-virtual {v7, v8, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 123
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 126
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 127
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, colorBlock:Landroid/view/View;
    invoke-virtual {v6, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 129
    invoke-virtual {v6, v10, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    move-result-object v5

    .line 136
    .local v5, row:Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    invoke-virtual {v5}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->getLabel()Lcom/google/android/gm/provider/Label;

    move-result-object v3

    .line 137
    .local v3, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getBackgroundColor()I

    move-result v0

    .line 139
    .local v0, backgroundColor:I
    invoke-virtual {v3}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v5}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->isPresent()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    sget v7, Lcom/google/android/gm/LabelSelectorAdapter;->DEFAULT_LABEL_BACKGROUND_COLOR:I

    if-ne v0, v7, :cond_1

    .line 143
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :goto_1
    return-object v6

    .line 131
    .end local v0           #backgroundColor:I
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #colorBlock:Landroid/view/View;
    .end local v3           #label:Lcom/google/android/gm/provider/Label;
    .end local v5           #row:Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    :cond_0
    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 132
    .restart local v1       #checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .restart local v2       #colorBlock:Landroid/view/View;
    goto :goto_0

    .line 144
    .restart local v0       #backgroundColor:I
    .restart local v3       #label:Lcom/google/android/gm/provider/Label;
    .restart local v5       #row:Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;
    :cond_1
    iget-object v7, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    iget-object v7, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 147
    :cond_2
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 148
    .local v4, pd:Landroid/graphics/drawable/PaintDrawable;
    iget-object v7, p0, Lcom/google/android/gm/LabelSelectorAdapter;->mColorBlockCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
