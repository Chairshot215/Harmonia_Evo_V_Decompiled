.class public Lcom/android/htcdialer/widget/ButtonGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ButtonGroup"


# instance fields
.field mConfig:Landroid/content/res/Configuration;

.field protected mDirty:Z

.field protected mIgnoreConfigurationChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    .line 26
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    .line 26
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    .line 46
    return-void
.end method

.method private setChildTag(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "child"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(Landroid/view/View;Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private setChildTag(Landroid/view/View;Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;)Landroid/view/View;
    .locals 6
    .parameter "child"
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/ButtonGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    .local v1, res:Landroid/content/res/Resources;
    iget v0, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 56
    .local v0, drawable:I
    if-eqz v0, :cond_0

    .line 57
    iget v3, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, type:Ljava/lang/String;
    iget v3, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    iget v3, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-static {v3, v4, v5}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 63
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 64
    iget v3, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->text:I

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 65
    check-cast v3, Landroid/widget/TextView;

    iget v4, p2, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->text:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 67
    :cond_1
    if-eqz v0, :cond_2

    move-object v3, p1

    .line 68
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 75
    :cond_2
    :goto_0
    return-object p1

    .line 70
    :cond_3
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 71
    if-eqz v0, :cond_2

    move-object v3, p1

    .line 72
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v3, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 115
    .local v0, diff:I
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/ButtonGroup;->onLocaleChanged()V

    .line 119
    :cond_0
    iget-boolean v3, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mIgnoreConfigurationChanged:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/ButtonGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {p0, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 121
    .local v2, layout:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 122
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(Landroid/view/View;)Landroid/view/View;

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iput-boolean v4, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    .line 127
    .end local v1           #index:I
    .end local v2           #layout:Landroid/view/ViewGroup;
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method protected onLocaleChanged()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    or-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mDirty:Z

    .line 134
    return-void
.end method

.method public setChildTag(IIII)Landroid/view/View;
    .locals 2
    .parameter "childId"
    .parameter "id"
    .parameter "drawable"
    .parameter "text"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    .line 82
    .local v1, tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    iput p2, v1, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->id:I

    .line 83
    iput p3, v1, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->drawable:I

    .line 84
    iput p4, v1, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;->text:I

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/widget/ButtonGroup;->setChildTag(Landroid/view/View;Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;)Landroid/view/View;

    .line 87
    .end local v1           #tag:Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;
    :cond_0
    return-object v0
.end method

.method public setLayoutResources(I)V
    .locals 4
    .parameter "resId"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/ButtonGroup;->removeAllViews()V

    .line 92
    iget-object v2, p0, Lcom/android/htcdialer/widget/ButtonGroup;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p0}, Lcom/android/htcdialer/widget/ButtonGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 94
    .local v1, layout:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 95
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;

    invoke-direct {v3}, Lcom/android/htcdialer/widget/ButtonGroup$ButtonTag;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/ButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 102
    .local v1, layout:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method
