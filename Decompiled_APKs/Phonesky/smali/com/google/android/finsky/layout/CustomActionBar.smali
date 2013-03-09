.class public interface abstract Lcom/google/android/finsky/layout/CustomActionBar;
.super Ljava/lang/Object;
.source "CustomActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/CustomActionBar$TabListener;
    }
.end annotation


# virtual methods
.method public abstract addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
.end method

.method public abstract clearTabs()V
.end method

.method public abstract configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
.end method

.method public abstract getBreadcrumbText()Ljava/lang/String;
.end method

.method public abstract getCurrentBackendId()I
.end method

.method public abstract hide()V
.end method

.method public abstract initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
.end method

.method public abstract searchButtonClicked(Landroid/app/Activity;)Z
.end method

.method public abstract setSelectedTab(I)V
.end method

.method public abstract shareButtonClicked(Landroid/app/Activity;)V
.end method

.method public abstract updateBreadcrumb(Ljava/lang/String;)V
.end method

.method public abstract updateCurrentBackendId(I)V
.end method

.method public abstract updateSearchQuery(Ljava/lang/String;)V
.end method

.method public abstract wishlistButtonClicked(Landroid/app/Activity;)V
.end method
