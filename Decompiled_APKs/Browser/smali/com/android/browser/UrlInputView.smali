.class public Lcom/android/browser/UrlInputView;
.super Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.source "UrlInputView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/browser/SuggestionsAdapter$CompletionListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/UrlInputView$UrlInputListener;,
        Lcom/android/browser/UrlInputView$StateListener;
    }
.end annotation


# static fields
.field static final POST_DELAY:I = 0x64

.field static final SUGGESTED:Ljava/lang/String; = "browser-suggest"

.field static final TYPED:Ljava/lang/String; = "browser-type"

.field static final VOICE:Ljava/lang/String; = "voice-search"


# instance fields
.field private mAdapter:Lcom/android/browser/SuggestionsAdapter;

.field private mContainer:Landroid/view/View;

.field private mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

.field private mIncognitoMode:Z

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLandscape:Z

.field private mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

.field private mNeedsUpdate:Z

.field private mPopupPadding:Landroid/graphics/Rect;

.field private mState:I

.field private mStateListener:Lcom/android/browser/UrlInputView$StateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/UrlInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 99
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/UrlInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    sget-object v2, Lcom/android/internal/R$styleable;->PopupWindow:[I

    const v3, 0x101006b

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, popupbg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/browser/UrlInputView;->mPopupPadding:Landroid/graphics/Rect;

    .line 94
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mPopupPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 95
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/UrlInputView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->dispatchChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/UrlInputView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/browser/UrlInputView;->changeState(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 206
    iput p1, p0, Lcom/android/browser/UrlInputView;->mState:I

    .line 207
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mStateListener:Lcom/android/browser/UrlInputView$StateListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mStateListener:Lcom/android/browser/UrlInputView$StateListener;

    iget v1, p0, Lcom/android/browser/UrlInputView;->mState:I

    invoke-interface {v0, v1}, Lcom/android/browser/UrlInputView$StateListener;->onStateChanged(I)V

    .line 210
    :cond_0
    return-void
.end method

.method private dispatchChange()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v0, popupRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->getPopupDrawableRect(Landroid/graphics/Rect;)V

    .line 372
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI$DropdownChangeListener;->onNewDropdownDimensions(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "extra"
    .parameter "source"

    .prologue
    .line 287
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->dismissDropDown()V

    .line 289
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v2}, Lcom/android/browser/UrlInputView$UrlInputListener;->onDismiss()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/browser/UrlInputView;->isSearch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 298
    .local v1, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/browser/search/SearchEngines;->getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;

    move-result-object v0

    .line 301
    .local v0, engineInfo:Lcom/android/browser/search/SearchEngineInfo;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    .end local v0           #engineInfo:Lcom/android/browser/search/SearchEngineInfo;
    .end local v1           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_2
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/browser/UrlInputView$UrlInputListener;->onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 108
    invoke-virtual {p0, p0}, Lcom/android/browser/UrlInputView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 109
    new-instance v0, Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {v0, p1, p0}, Lcom/android/browser/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/SuggestionsAdapter$CompletionListener;)V

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    .line 110
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->setAdapter(Lcom/android/browser/SuggestionsAdapter;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setSelectAllOnFocus(Z)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setThreshold(I)V

    .line 114
    invoke-virtual {p0, p0}, Lcom/android/browser/UrlInputView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iput-boolean v2, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/browser/UrlInputView;->addQueryTextWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 119
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    new-instance v1, Lcom/android/browser/UrlInputView$1;

    invoke-direct {v1, p0}, Lcom/android/browser/UrlInputView$1;-><init>(Lcom/android/browser/UrlInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    iput v2, p0, Lcom/android/browser/UrlInputView;->mState:I

    .line 134
    return-void
.end method

.method private setupDropDown()V
    .locals 4

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 246
    .local v1, width:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mPopupPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/browser/UrlInputView;->mPopupPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 247
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getDropDownWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/browser/UrlInputView;->setDropDownWidth(I)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getLeft()I

    move-result v0

    .line 251
    .local v0, left:I
    iget-object v2, p0, Lcom/android/browser/UrlInputView;->mPopupPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 252
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getDropDownHorizontalOffset()I

    move-result v2

    neg-int v2, v2

    if-eq v0, v2, :cond_1

    .line 253
    neg-int v2, v0

    invoke-virtual {p0, v2}, Lcom/android/browser/UrlInputView;->setDropDownHorizontalOffset(I)V

    .line 255
    :cond_1
    return-void

    .line 245
    .end local v0           #left:I
    .end local v1           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWidth()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method clearNeedsUpdate()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    .line 183
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 241
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter;->clearCache()V

    .line 242
    return-void
.end method

.method forceFilter()V
    .locals 0

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->performForcedFiltering()V

    .line 274
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->showDropDown()V

    .line 275
    return-void
.end method

.method forceIme()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 280
    return-void
.end method

.method public getAdapter()Lcom/android/browser/SuggestionsAdapter;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    return-object v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/browser/UrlInputView;->mState:I

    return v0
.end method

.method hideIME()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 284
    return-void
.end method

.method isSearch(Ljava/lang/String;)Z
    .locals 3
    .parameter "inUrl"

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 313
    :cond_1
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const/4 v1, 0x1

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/browser/UrlInputView;->mNeedsUpdate:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/UrlInputView;->mLandscape:Z

    .line 225
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    iget-boolean v2, p0, Lcom/android/browser/UrlInputView;->mLandscape:Z

    invoke-virtual {v0, v2}, Lcom/android/browser/SuggestionsAdapter;->setLandscapeMode(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->setupDropDown()V

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/UrlInputView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 230
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstantSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser-type"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "browser-type"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "prevRect"

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 138
    const/4 v1, -0x1

    .line 139
    .local v1, state:I
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 149
    :goto_0
    move v0, v1

    .line 150
    .local v0, s:I
    new-instance v2, Lcom/android/browser/UrlInputView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/UrlInputView$2;-><init>(Lcom/android/browser/UrlInputView;I)V

    invoke-virtual {p0, v2}, Lcom/android/browser/UrlInputView;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void

    .line 143
    .end local v0           #s:I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v0

    .line 337
    .local v0, item:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    invoke-static {v0}, Lcom/android/browser/SuggestionsAdapter;->getSuggestionUrl(Lcom/android/browser/SuggestionsAdapter$SuggestItem;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    iget-object v3, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->extra:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/UrlInputView;->onSelect(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "evt"

    .prologue
    const/4 v1, 0x0

    .line 357
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0, v1, v1, v1}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "search"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    invoke-interface {v0, p1}, Lcom/android/browser/UrlInputView$UrlInputListener;->onCopySuggestion(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onSelect(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "type"
    .parameter "extra"

    .prologue
    .line 329
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const-string v0, "voice-search"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/browser/UrlInputView;->finishInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void

    .line 329
    :cond_0
    const-string v0, "browser-suggest"

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newText"

    .prologue
    .line 392
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/browser/UrlInputView;->mState:I

    if-ne v0, v1, :cond_0

    .line 393
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/browser/UrlInputView;->changeState(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "evt"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/browser/UrlInputView;->hasSelection()Z

    move-result v0

    .line 160
    .local v0, hasSelection:Z
    invoke-super {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 161
    .local v1, res:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 163
    new-instance v2, Lcom/android/browser/UrlInputView$3;

    invoke-direct {v2, p0}, Lcom/android/browser/UrlInputView$3;-><init>(Lcom/android/browser/UrlInputView;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/browser/UrlInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_0
    return v1
.end method

.method registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mDropdownListener:Lcom/android/browser/UI$DropdownChangeListener;

    .line 379
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method setContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mContainer:Landroid/view/View;

    .line 193
    return-void
.end method

.method setController(Lcom/android/browser/UiController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 186
    new-instance v0, Lcom/android/browser/UrlSelectionActionMode;

    invoke-direct {v0, p1}, Lcom/android/browser/UrlSelectionActionMode;-><init>(Lcom/android/browser/UiController;)V

    .line 188
    .local v0, urlSelectionMode:Lcom/android/browser/UrlSelectionActionMode;
    invoke-virtual {p0, v0}, Lcom/android/browser/UrlInputView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 189
    return-void
.end method

.method public setIncognitoMode(Z)V
    .locals 2
    .parameter "incognito"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    .line 352
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    iget-boolean v1, p0, Lcom/android/browser/UrlInputView;->mIncognitoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->setIncognitoMode(Z)V

    .line 353
    return-void
.end method

.method public setStateListener(Lcom/android/browser/UrlInputView$StateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mStateListener:Lcom/android/browser/UrlInputView$StateListener;

    .line 202
    iget v0, p0, Lcom/android/browser/UrlInputView;->mState:I

    invoke-direct {p0, v0}, Lcom/android/browser/UrlInputView;->changeState(I)V

    .line 203
    return-void
.end method

.method public setUrlInputListener(Lcom/android/browser/UrlInputView$UrlInputListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/browser/UrlInputView;->mListener:Lcom/android/browser/UrlInputView$UrlInputListener;

    .line 197
    return-void
.end method

.method setVoiceResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/UrlInputView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/SuggestionsAdapter;->setVoiceResults(Ljava/util/List;)V

    .line 218
    return-void
.end method

.method public showDropDown()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/browser/UrlInputView;->setupDropDown()V

    .line 235
    invoke-super {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->showDropDown()V

    .line 236
    return-void
.end method
