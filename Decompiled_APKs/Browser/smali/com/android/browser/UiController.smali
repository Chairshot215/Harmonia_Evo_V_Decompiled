.class public interface abstract Lcom/android/browser/UiController;
.super Ljava/lang/Object;
.source "UiController.java"


# virtual methods
.method public abstract attachSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V
.end method

.method public abstract closeCurrentTab()V
.end method

.method public abstract closeTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
.end method

.method public abstract createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;
.end method

.method public abstract editUrl()V
.end method

.method public abstract endActionMode()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCurrentTab()Lcom/android/browser/Tab;
.end method

.method public abstract getCurrentTopWebView()Landroid/webkit/WebView;
.end method

.method public abstract getCurrentWebView()Landroid/webkit/WebView;
.end method

.method public abstract getTabControl()Lcom/android/browser/TabControl;
.end method

.method public abstract getTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi()Lcom/android/browser/UI;
.end method

.method public abstract handleNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract hideCustomView()V
.end method

.method public abstract isInCustomActionMode()Z
.end method

.method public abstract loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract openIncognitoTab()Lcom/android/browser/Tab;
.end method

.method public abstract openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
.end method

.method public abstract openTabToHomePage()Lcom/android/browser/Tab;
.end method

.method public abstract registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
.end method

.method public abstract removeSubWindow(Lcom/android/browser/Tab;)V
.end method

.method public abstract setActiveTab(Lcom/android/browser/Tab;)V
.end method

.method public abstract setBlockEvents(Z)V
.end method

.method public abstract shareCurrentPage()V
.end method

.method public abstract shouldShowErrorConsole()Z
.end method

.method public abstract showPageInfo()V
.end method

.method public abstract showVoiceSearchResults(Ljava/lang/String;)V
.end method

.method public abstract startVoiceSearch()V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract supportsVoiceSearch()Z
.end method

.method public abstract switchToTab(Lcom/android/browser/Tab;)Z
.end method

.method public abstract updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
.end method
