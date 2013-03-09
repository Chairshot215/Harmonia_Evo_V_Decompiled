.class public Lcom/android/browser/NavigationBarPhone;
.super Lcom/android/browser/NavigationBarBase;
.source "NavigationBarPhone.java"

# interfaces
.implements Lcom/android/browser/UrlInputView$StateListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field private mClearButton:Landroid/widget/ImageView;

.field private mComboIcon:Landroid/view/View;

.field private mIncognitoIcon:Landroid/view/View;

.field private mMagnify:Landroid/widget/ImageView;

.field private mMore:Landroid/view/View;

.field private mNeedsMenu:Z

.field private mOverflowMenuShowing:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRefreshDescription:Ljava/lang/String;

.field private mRefreshDrawable:Landroid/graphics/drawable/Drawable;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabSwitcher:Landroid/view/View;

.field private mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTitleContainer:Landroid/view/View;

.field private mVoiceButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method private onMenuHidden()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 207
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 208
    return-void
.end method


# virtual methods
.method public isMenuShowing()Z
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->isInLoad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->stopLoading()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 155
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->stopEditingUrl()V

    .line 157
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 160
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->startVoiceSearch()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mBaseUi:Lcom/android/browser/BaseUi;

    check-cast v1, Lcom/android/browser/PhoneUi;

    invoke-virtual {v1}, Lcom/android/browser/PhoneUi;->toggleNavScreen()V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    if-ne v1, p1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->showMenu(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    if-ne v1, p1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->showPageInfo()V

    goto :goto_0

    .line 171
    :cond_7
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-ne p1, v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/android/browser/NavigationBarPhone;->onMenuHidden()V

    .line 203
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onFinishInflate()V

    .line 71
    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0d0080

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0d0081

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0d007c

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f0d0082

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0d007e

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0d007b

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setFocusState(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    .line 90
    const v1, 0x7f0c0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    .line 91
    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1, p0}, Lcom/android/browser/UrlInputView;->setStateListener(Lcom/android/browser/UrlInputView$StateListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    .line 95
    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lcom/android/browser/NavigationBarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    .line 96
    return-void

    :cond_0
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    if-ne p1, v0, :cond_0

    .line 213
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    .line 220
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;->onFocusChange(Landroid/view/View;Z)V

    .line 221
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, p1}, Lcom/android/browser/UiController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onProgressStarted()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onProgressStarted()V

    .line 109
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onProgressStopped()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onProgressStopped()V

    .line 122
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 128
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarPhone;->mInVoiceMode:Z

    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 232
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/browser/NavigationBarPhone;->mNeedsMenu:Z

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 237
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mComboIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mMagnify:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarPhone;->setSearchMode(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mTabSwitcher:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mMore:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mTitleContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mTextfieldBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 262
    iget-object v1, p0, Lcom/android/browser/NavigationBarPhone;->mIncognitoIcon:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void

    .line 262
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setDisplayTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, p1}, Lcom/android/browser/UrlInputView;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarPhone;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    if-nez p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(I)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0, v2}, Lcom/android/browser/UrlInputView;->setSelection(I)V

    .line 146
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarPhone;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-static {p1}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 3
    .parameter "voiceSearchEnabled"

    .prologue
    const/4 v1, 0x0

    .line 100
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 102
    .local v0, showvoicebutton:Z
    :goto_0
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mVoiceButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void

    .end local v0           #showvoicebutton:Z
    :cond_0
    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    .restart local v0       #showvoicebutton:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method showMenu(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/android/browser/NavigationBarPhone;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 184
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 186
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 192
    .local v1, menu:Landroid/view/Menu;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/NavigationBarPhone;->mOverflowMenuShowing:Z

    .line 194
    iget-object v2, p0, Lcom/android/browser/NavigationBarPhone;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
