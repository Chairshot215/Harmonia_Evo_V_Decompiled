.class public Lcom/google/android/finsky/layout/BadgeSection;
.super Landroid/widget/LinearLayout;
.source "BadgeSection.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExpansionState:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mReferrerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BadgeSection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    return-void
.end method

.method private createOverviewRow()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v0

    .line 80
    .local v0, primaryBadgeRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    .line 81
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 82
    return-void
.end method

.method private createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;
    .locals 12

    .prologue
    const/4 v11, 0x6

    .line 103
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    .line 105
    .local v0, result:Lcom/google/android/finsky/layout/BadgeRow;
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v6

    .line 107
    .local v6, primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V

    .line 110
    const/4 v8, 0x0

    .line 112
    .local v8, hasExtraBadges:Z
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 113
    .local v7, creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    if-eq v7, v6, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v7, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 118
    const/4 v8, 0x1

    goto :goto_1

    .line 105
    .end local v6           #primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v7           #creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v8           #hasExtraBadges:Z
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v6

    goto :goto_0

    .line 122
    .restart local v6       #primaryBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .restart local v8       #hasExtraBadges:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 123
    .local v10, itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    if-eq v10, v6, :cond_3

    .line 126
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V

    .line 128
    const/4 v8, 0x1

    goto :goto_2

    .line 131
    .end local v10           #itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_4
    if-eqz v8, :cond_5

    .line 132
    new-instance v1, Lcom/google/android/finsky/layout/BadgeSection$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/BadgeSection$1;-><init>(Lcom/google/android/finsky/layout/BadgeSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BadgeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_5
    return-object v0
.end method

.method private createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;
    .locals 7
    .parameter "badge"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    .line 146
    .local v0, result:Lcom/google/android/finsky/layout/BadgeRow;
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V

    .line 149
    return-object v0
.end method

.method private expand()V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    .line 88
    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 89
    .local v0, creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v1

    .line 90
    .local v1, creatorRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 94
    .end local v0           #creatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v1           #creatorRow:Lcom/google/android/finsky/layout/BadgeRow;
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    .line 95
    .local v3, itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v4

    .line 96
    .local v4, itemRow:Lcom/google/android/finsky/layout/BadgeRow;
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 99
    .end local v3           #itemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .end local v4           #itemRow:Lcom/google/android/finsky/layout/BadgeRow;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 100
    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;)V
    .locals 2
    .parameter "navigationManager"
    .parameter "dfeToc"
    .parameter "referrerUrl"
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "savedState"

    .prologue
    .line 54
    iput-object p4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 55
    iput-object p5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 57
    iput-object p2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 58
    iput-object p3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mReferrerUrl:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 67
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p6, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    .line 69
    iget v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createOverviewRow()V

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 153
    const-string v0, ""

    iget v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 154
    return-void
.end method
