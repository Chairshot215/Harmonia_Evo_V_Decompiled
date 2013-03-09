.class public Lcom/google/android/finsky/adapters/CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentBrowseUrl:Ljava/lang/String;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mTextColor:I

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "navigationManager"
    .parameter "backendId"
    .parameter "currentBrowseUrl"
    .parameter "toc"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 43
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/DfeBrowse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 45
    iput p4, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I

    .line 46
    iput-object p5, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCurrentBrowseUrl:Ljava/lang/String;

    .line 47
    invoke-static {p1, p4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mTextColor:I

    .line 48
    iput-object p6, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/CategoryAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/CategoryAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCurrentBrowseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;

    .line 54
    .local v0, category:Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;
    if-nez p2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040028

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    .line 60
    .local v1, holder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 61
    new-instance v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    .end local v1           #holder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/CategoryAdapter$1;)V

    .line 62
    .restart local v1       #holder:Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;
    const v2, 0x7f08007f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :cond_1
    iget-object v2, v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v2, v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v2, Lcom/google/android/finsky/adapters/CategoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/adapters/CategoryAdapter$1;-><init>(Lcom/google/android/finsky/adapters/CategoryAdapter;Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, v1, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    return-object p2
.end method
