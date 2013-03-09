.class public interface abstract Lcom/android/browser/UI;
.super Ljava/lang/Object;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UI$DropdownChangeListener;,
        Lcom/android/browser/UI$ComboViews;
    }
.end annotation


# virtual methods
.method public abstract addTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract attachSubWindow(Landroid/view/View;)V
.end method

.method public abstract attachTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
.end method

.method public abstract createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
.end method

.method public abstract detachTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract dispatchKey(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract editUrl(Z)V
.end method

.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract hideAutoLogin(Lcom/android/browser/Tab;)V
.end method

.method public abstract isCustomViewShowing()Z
.end method

.method public abstract isEditingUrl()Z
.end method

.method public abstract isWebShowing()Z
.end method

.method public abstract needsRestoreAllTabs()Z
.end method

.method public abstract onActionModeFinished(Z)V
.end method

.method public abstract onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract onBackKey()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onContextMenuClosed(Landroid/view/Menu;Z)V
.end method

.method public abstract onContextMenuCreated(Landroid/view/Menu;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onExtendedMenuClosed(Z)V
.end method

.method public abstract onExtendedMenuOpened()V
.end method

.method public abstract onHideCustomView()V
.end method

.method public abstract onMenuKey()Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onOptionsMenuClosed(Z)V
.end method

.method public abstract onOptionsMenuOpened()V
.end method

.method public abstract onPageStopped(Lcom/android/browser/Tab;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onProgressChanged(Lcom/android/browser/Tab;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
.end method

.method public abstract onTabDataChanged(Lcom/android/browser/Tab;)V
.end method

.method public abstract registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
.end method

.method public abstract removeActiveTabsPage()V
.end method

.method public abstract removeSubWindow(Landroid/view/View;)V
.end method

.method public abstract removeTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract revertVoiceTitleBar(Lcom/android/browser/Tab;)V
.end method

.method public abstract setActiveTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract setFullscreen(Z)V
.end method

.method public abstract setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
.end method

.method public abstract setUseQuickControls(Z)V
.end method

.method public abstract shouldCaptureThumbnails()Z
.end method

.method public abstract showActiveTabsPage()V
.end method

.method public abstract showAutoLogin(Lcom/android/browser/Tab;)V
.end method

.method public abstract showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
.end method

.method public abstract showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method

.method public abstract showMaxTabsWarning()V
.end method

.method public abstract showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showWeb(Z)V
.end method

.method public abstract updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
.end method

.method public abstract updateTabs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation
.end method
