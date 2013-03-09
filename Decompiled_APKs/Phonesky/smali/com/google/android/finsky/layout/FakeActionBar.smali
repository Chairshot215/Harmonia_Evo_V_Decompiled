.class public Lcom/google/android/finsky/layout/FakeActionBar;
.super Ljava/lang/Object;
.source "FakeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mBackendId:I

.field private mBreadcrumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 0
    .parameter "text"
    .parameter "tabListener"

    .prologue
    .line 76
    return-void
.end method

.method public clearTabs()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 0
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 23
    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBackendId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .locals 0
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 41
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedTab(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 80
    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 45
    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBreadcrumb:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backendId"

    .prologue
    .line 58
    iput p1, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    .line 60
    iget v0, p0, Lcom/google/android/finsky/layout/FakeActionBar;->mBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 61
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 66
    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 49
    return-void
.end method
