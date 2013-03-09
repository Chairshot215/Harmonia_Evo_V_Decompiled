.class public Lcom/android/phone/widget/ButtonGroup;
.super Lcom/htc/widget/HtcFooter;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ButtonGroup"


# instance fields
.field mConfig:Landroid/content/res/Configuration;

.field protected mDirty:Z

.field protected mIgnoreConfigurationChanged:Z

.field private mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/phone/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    .line 29
    iput-boolean v1, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/phone/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/phone/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    .line 29
    iput-boolean v1, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/phone/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    .line 49
    return-void
.end method

.method private setChildTag(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "child"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(Landroid/view/View;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setChildTag(Landroid/view/View;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Landroid/view/View;
    .locals 6
    .parameter "child"
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, res:Landroid/content/res/Resources;
    iget v0, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 59
    .local v0, drawable:I
    if-eqz v0, :cond_0

    .line 60
    iget v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, type:Ljava/lang/String;
    iget v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    iget v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {v3, v4, v5}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 66
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 67
    iget v3, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 68
    check-cast v3, Landroid/widget/TextView;

    iget v4, p2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    move-object v3, p1

    .line 71
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 78
    :cond_2
    :goto_0
    return-object p1

    .line 73
    :cond_3
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 74
    if-eqz v0, :cond_2

    move-object v3, p1

    .line 75
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/phone/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 116
    .local v0, diff:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->onLocaleChanged()V

    .line 120
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/phone/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(Landroid/view/View;)Landroid/view/View;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    .line 127
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/android/phone/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 129
    invoke-super {p0, p1}, Lcom/htc/widget/HtcFooter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method protected onLocaleChanged()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    or-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/widget/ButtonGroup;->mDirty:Z

    .line 134
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/widget/ButtonGroup;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/phone/widget/ButtonGroup;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/view/OnVisibilityChangedListener;->onVisibilityChanged(Landroid/view/View;I)V

    .line 144
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcFooter;->onVisibilityChanged(Landroid/view/View;I)V

    .line 145
    return-void
.end method

.method public setChildTag(IIII)Landroid/view/View;
    .locals 2
    .parameter "childId"
    .parameter "id"
    .parameter "drawable"
    .parameter "text"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/phone/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    .line 85
    .local v1, tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    iput p2, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->id:I

    .line 86
    iput p3, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 87
    iput p4, v1, Lcom/android/phone/widget/ButtonGroup$ButtonTag;->text:I

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/android/phone/widget/ButtonGroup;->setChildTag(Landroid/view/View;Lcom/android/phone/widget/ButtonGroup$ButtonTag;)Landroid/view/View;

    .line 90
    .end local v1           #tag:Lcom/android/phone/widget/ButtonGroup$ButtonTag;
    :cond_0
    return-object v0
.end method

.method public setLayoutResources(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->removeAllViews()V

    .line 95
    iget-object v1, p0, Lcom/android/phone/widget/ButtonGroup;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p0}, Lcom/android/phone/widget/ButtonGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/phone/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/phone/widget/ButtonGroup$ButtonTag;

    invoke-direct {v2, p0}, Lcom/android/phone/widget/ButtonGroup$ButtonTag;-><init>(Lcom/android/phone/widget/ButtonGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/widget/ButtonGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/phone/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/phone/widget/ButtonGroup;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    .line 150
    return-void
.end method
