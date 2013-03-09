.class public Lcom/android/browser/NavigationBarBase;
.super Landroid/widget/LinearLayout;
.source "NavigationBarBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/UrlInputView$UrlInputListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;


# instance fields
.field protected mBaseUi:Lcom/android/browser/BaseUi;

.field private mFavicon:Landroid/widget/ImageView;

.field protected mInVoiceMode:Z

.field private mLockIcon:Landroid/widget/ImageView;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field protected mUiController:Lcom/android/browser/UiController;

.field protected mUrlInput:Lcom/android/browser/UrlInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 62
    return-void
.end method


# virtual methods
.method clearCompletions()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSuggestedText(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "evt"

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "extra"
    .parameter "source"

    .prologue
    .line 180
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->requestFocus()Z

    .line 181
    const-string v5, "browser-type"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v5}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 186
    .local v3, t:Lcom/android/browser/Tab;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v3, v4}, Lcom/android/browser/UiController;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 212
    .end local v3           #t:Lcom/android/browser/Tab;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v2, i:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 194
    .local v0, action:Ljava/lang/String;
    const-string v5, "voice-search"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    .line 196
    const/4 p3, 0x0

    .line 200
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v5, "query"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    if-eqz p2, :cond_1

    .line 203
    const-string v5, "intent_extra_data_key"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :cond_1
    if-eqz p3, :cond_2

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v1, appData:Landroid/os/Bundle;
    const-string v5, "source"

    invoke-virtual {v1, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "app_data"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    .end local v1           #appData:Landroid/os/Bundle;
    :cond_2
    iget-object v5, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v5, v2}, Lcom/android/browser/UiController;->handleNewIntent(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, "android.intent.action.SEARCH"

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 100
    return-void
.end method

.method public onCopySuggestion(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 217
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 218
    new-instance v1, Lcom/android/browser/NavigationBarBase$1;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/NavigationBarBase$1;-><init>(Lcom/android/browser/NavigationBarBase;Lcom/android/browser/Tab;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0d0004

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/UrlInputView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    .line 70
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p0}, Lcom/android/browser/UrlInputView;->addQueryTextWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 74
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 105
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/NavigationBarBase;->setFocusState(Z)V

    .line 108
    :cond_1
    if-eqz p2, :cond_3

    .line 109
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 110
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceIme()V

    .line 111
    iget-boolean v1, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->forceFilter()V

    .line 125
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->clearNeedsUpdate()V

    .line 126
    return-void

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->needsUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 116
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->hideIME()V

    .line 117
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 119
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 123
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    :cond_4
    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    goto :goto_0
.end method

.method public onProgressStarted()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onProgressStopped()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 288
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newText"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 155
    :cond_0
    return-void
.end method

.method registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 255
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 0
    .parameter "isBookmark"

    .prologue
    .line 241
    return-void
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarBase;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mFavicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFocusState(Z)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 129
    return-void
.end method

.method public setInVoiceMode(ZLjava/util/List;)V
    .locals 1
    .parameter "voicemode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-boolean p1, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    .line 161
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p2}, Lcom/android/browser/UrlInputView;->setVoiceResults(Ljava/util/List;)V

    .line 162
    return-void
.end method

.method setIncognitoMode(Z)V
    .locals 1
    .parameter "incognito"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setIncognitoMode(Z)V

    .line 166
    return-void
.end method

.method public setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mLockIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .parameter "voiceSearchEnabled"

    .prologue
    .line 131
    return-void
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .locals 2
    .parameter "titleBar"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 78
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    .line 79
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUiController()Lcom/android/browser/UiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    .line 80
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarBase;->mUiController:Lcom/android/browser/UiController;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setController(Lcom/android/browser/UiController;)V

    .line 81
    return-void
.end method

.method startEditingUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarBase;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->useQuickControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getProgressView()Lcom/android/browser/PageProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/PageProgressView;->setVisibility(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->requestFocus()Z

    .line 270
    :cond_1
    if-eqz p1, :cond_3

    .line 271
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_2
    :goto_0
    return-void

    .line 272
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarBase;->mInVoiceMode:Z

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->showDropDown()V

    goto :goto_0
.end method

.method stopEditingUrl()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/browser/NavigationBarBase;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 139
    return-void
.end method
