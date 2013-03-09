.class public abstract Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.super Landroid/widget/RelativeLayout;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;,
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;
    }
.end annotation


# instance fields
.field protected mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

.field private mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

.field protected mExitClickListener:Landroid/view/View$OnClickListener;

.field protected mFirstRunOverlay:Landroid/view/View;

.field private mGlobalDebugInfoObserver:Landroid/database/DataSetObserver;

.field private mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mInitialized:Z

.field private mMenuButton:Landroid/widget/ImageView;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPromotersRegistered:Z

.field private mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

.field protected mQueryTextHint:Landroid/widget/ImageView;

.field protected mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

.field protected mQueryWasEmpty:Z

.field private mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

.field protected mSearchCloseButton:Landroid/widget/ImageButton;

.field protected mSearchGoButton:Landroid/widget/ImageButton;

.field protected mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

.field protected mShowVoiceSearchButton:Z

.field private mShowingTextFieldSpinner:Z

.field protected mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field protected mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

.field protected mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

.field private mSuggestionsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

.field protected mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

.field protected mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

.field private mSummonsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

.field private mUpdateSuggestions:Z

.field private mUserHasTypedSomething:Z

.field protected mVoiceSearchButton:Landroid/widget/ImageButton;

.field protected mVsGoButtonsBg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryWasEmpty:Z

    .line 153
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showPopupMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUserHasTypedSomething:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUserHasTypedSomething:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showTextFieldSpinner(Z)V

    return-void
.end method

.method private createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 1

    .prologue
    .line 495
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$8;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    move-result-object v0

    return-object v0
.end method

.method private hidePopupMenu()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 295
    :cond_0
    return-void
.end method

.method private initGlobalDebugInfo()V
    .locals 7

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 355
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040012

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 357
    .local v0, debugText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    invoke-virtual {v4, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->addView(Landroid/view/View;)V

    .line 358
    new-instance v3, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;

    invoke-direct {v3, p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$5;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Landroid/widget/TextView;)V

    .line 364
    .local v3, updateGlobalDebugInfo:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 365
    .local v2, uiThread:Landroid/os/Handler;
    new-instance v4, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;

    invoke-direct {v4, p0, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$6;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mGlobalDebugInfoObserver:Landroid/database/DataSetObserver;

    .line 372
    return-void
.end method

.method private setFirstRunOverlayPadding()V
    .locals 5

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 315
    :cond_0
    return-void
.end method

.method private shouldForwardToQueryTextView(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 908
    sparse-switch p1, :sswitch_data_0

    .line 918
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 916
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 908
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private showPopupMenu()V
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 285
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 286
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 288
    .end local v0           #menu:Landroid/view/Menu;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 289
    return-void
.end method

.method private showTextFieldSpinner(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowingTextFieldSpinner:Z

    if-eq p1, v0, :cond_0

    .line 518
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowingTextFieldSpinner:Z

    .line 519
    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->doShowTextFieldSpinner()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->doHideTextFieldSpinner()V

    goto :goto_0
.end method

.method private updateMenuButton()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusLeftId(I)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusUpId(I)V

    goto :goto_0
.end method

.method private webSuggestionsToCompletions(Lcom/google/android/googlequicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 10
    .parameter "s"

    .prologue
    .line 764
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebResult()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v5

    .line 765
    .local v5, suggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 783
    :goto_0
    return-object v7

    .line 767
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 771
    .local v0, completions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/CompletionInfo;>;"
    new-instance v1, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getUserQuery()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .local v1, completionsList:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    const/4 v3, 0x0

    .line 774
    .local v3, position:I
    invoke-interface {v5}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 775
    .local v4, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 776
    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v6

    .line 777
    .local v6, text1:Ljava/lang/CharSequence;
    new-instance v7, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v8, v3

    invoke-direct {v7, v8, v9, v3, v6}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-interface {v1, v4}, Lcom/google/android/googlequicksearchbox/MutableSuggestionList;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 782
    .end local v4           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    .end local v6           #text1:Ljava/lang/CharSequence;
    :cond_2
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDisplayedCompletions:Lcom/google/android/googlequicksearchbox/SuggestionList;

    .line 783
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/inputmethod/CompletionInfo;

    goto :goto_0
.end method


# virtual methods
.method protected clearAdapters()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->clear()V

    .line 423
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->clear()V

    .line 424
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 715
    return-void
.end method

.method protected createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;
    .locals 4

    .prologue
    .line 489
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getListEntryViewFactory()Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsListAdapter;-><init>(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    return-object v0
.end method

.method protected createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 2
    .parameter "observer"

    .prologue
    .line 512
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImpl;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    return-object v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 728
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    .line 729
    .local v0, activity:Lcom/google/android/googlequicksearchbox/SearchActivity;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 732
    .local v1, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_1

    .line 733
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 735
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 745
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    return v2

    .line 737
    .restart local v1       #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 740
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onBackPressed()V

    goto :goto_0

    .line 745
    .end local v1           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected doHideTextFieldSpinner()V
    .locals 2

    .prologue
    .line 528
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    return-void
.end method

.method protected doShowTextFieldSpinner()V
    .locals 2

    .prologue
    .line 532
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 533
    return-void
.end method

.method protected forwardKeyToQueryTextView(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 898
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->shouldForwardToQueryTextView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 904
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;
    .locals 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 612
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/android/googlequicksearchbox/SearchActivity;

    if-eqz v1, :cond_0

    .line 613
    check-cast v0, Lcom/google/android/googlequicksearchbox/SearchActivity;

    .line 615
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getPromotedSuggestions()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method protected getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    return-object v0
.end method

.method protected getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, q:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method protected getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearchIconFromVoiceSearch()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    :cond_0
    if-nez v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    :cond_1
    return-object v0
.end method

.method protected getVoiceSearchIconFromVoiceSearch()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 461
    .local v4, voiceSearch:Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 466
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 468
    .local v1, metaData:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 469
    const-string v5, "com.android.launcher.toolbar_icon"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    .local v0, iconResId:I
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v3

    .line 473
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 481
    .end local v0           #iconResId:I
    .end local v1           #metaData:Landroid/os/Bundle;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 476
    :catch_0
    move-exception v5

    .line 481
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public hideFirstRunOverlay()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideInputMethod()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->checkForInconsistentTouchMode()V

    .line 710
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->hideNonFullscreenInputMethod()V

    .line 711
    return-void
.end method

.method protected initSearchPlate()Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;
    .locals 1

    .prologue
    .line 279
    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    return-object v0
.end method

.method protected abstract installAdapters()V
.end method

.method public isQueryEmpty()Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const v2, 0x7f10001d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->initSearchPlate()Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    .line 163
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->setChildToCopyStateFrom(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    .line 166
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    const v2, 0x7f10001f

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    const-string v2, "com.google.android.inputmethod.latin.noMicrophoneKey"

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 177
    :goto_0
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SuggestionsViewKeyListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    .line 179
    const v1, 0x7f100011

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    .line 180
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isGingerbreadOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v1, v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 186
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsAdapter()Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    .line 188
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    const v2, 0x7f10001e

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    .line 189
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    const v2, 0x7f100022

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    .line 190
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchPlate:Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchPlateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    .line 191
    const v1, 0x7f100020

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVsGoButtonsBg:Landroid/view/View;

    .line 192
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 195
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;

    invoke-direct {v1, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$HideShowInputMethodFocusListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 197
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-direct {v1, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    .line 198
    const v1, 0x7f10000b

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    .line 199
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    .local v0, vc:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    .end local v0           #vc:Landroid/view/ViewConfiguration;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getDebugging()Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 219
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showGlobalDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->initGlobalDebugInfo()V

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 224
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 226
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 229
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->createSuggestionsController()Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    .line 230
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getRemoveFromHistoryButtonDisplayDelay()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setShowRemoveFromHistoryButtonsDelay(J)V

    .line 232
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxSuggestionsDisplayDelayMillis()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setMaxDisplayDelayMillis(J)V

    .line 237
    new-instance v1, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSuggestions()I

    move-result v2

    sget-object v3, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->WEB_RESULTS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/CachingPromoter;-><init>(ILcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    .line 239
    new-instance v1, Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getMaxPromotedSummons()I

    move-result v2

    sget-object v3, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->SUMMONS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/googlequicksearchbox/CachingPromoter;-><init>(ILcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    .line 242
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSuggestionsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSummonsView(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)V

    .line 245
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;

    invoke-direct {v2, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchTextWatcher;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->addQueryTextWatcher(Lcom/google/android/googlequicksearchbox/util/TextChangeWatcher;)V

    .line 246
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryTextEditorActionListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 249
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 252
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 253
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 254
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mButtonsKeyListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$ButtonsKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 256
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;

    invoke-direct {v2, p0, v5}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$CloseClickListener;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mHideShowInputMethodFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 260
    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateUi(Z)V

    .line 262
    iput-boolean v6, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 263
    iput-boolean v6, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mInitialized:Z

    .line 265
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 268
    :cond_4
    return-void

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .restart local v0       #vc:Landroid/view/ViewConfiguration;
    :cond_6
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mMenuButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 319
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 320
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setFirstRunOverlayPadding()V

    .line 321
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->overrideEntryAndExitAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getActivity()Lcom/google/android/googlequicksearchbox/SearchActivity;

    move-result-object v0

    const/high16 v1, 0x7f05

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->overridePendingTransition(II)V

    .line 387
    :cond_0
    return-void
.end method

.method public onPostCreate()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPromotersRegistered:Z

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createWebPromoter()Lcom/google/android/googlequicksearchbox/Promoter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->setPromoter(Lcom/google/android/googlequicksearchbox/Promoter;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsPromoter:Lcom/google/android/googlequicksearchbox/CachingPromoter;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->createSummonsPromoter()Lcom/google/android/googlequicksearchbox/Promoter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->setPromoter(Lcom/google/android/googlequicksearchbox/Promoter;)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mPromotersRegistered:Z

    .line 276
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowVoiceSearchButton:Z

    .line 380
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateVoiceSearchButton(Z)V

    .line 381
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSearchClicked(I)Z
    .locals 2
    .parameter "method"

    .prologue
    .line 794
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    invoke-interface {v1, v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;->onSearchClicked(Ljava/lang/String;I)Z

    move-result v1

    .line 798
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->installAdapters()V

    .line 333
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$3;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$4;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$4;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->onStart()V

    .line 346
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->activityStart()V

    .line 347
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showGlobalDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mGlobalDebugInfoObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->clearAdapters()V

    .line 391
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hidePopupMenu()V

    .line 392
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->onStop()V

    .line 393
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->activityStop()V

    .line 394
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->showGlobalDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mGlobalDebugInfoObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 397
    :cond_0
    return-void
.end method

.method protected onSuggestionsChanged()V
    .locals 0

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateInputMethodSuggestions()V

    .line 788
    return-void
.end method

.method protected onSummonsChanged()V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 405
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 406
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$7;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_0
    return-void
.end method

.method protected overrideEntryAndExitAnimations()Z
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    return v0
.end method

.method public setExitClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mExitClickListener:Landroid/view/View$OnClickListener;

    .line 567
    return-void
.end method

.method public setInitialQuery(Ljava/lang/String;Z)V
    .locals 3
    .parameter "query"
    .parameter "selectAll"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 591
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v2, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v2, p2}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUserHasTypedSomething:Z

    .line 594
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 595
    return-void
.end method

.method public setQueryFromUser(Ljava/lang/String;)V
    .locals 4
    .parameter "query"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, oldQuery:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 603
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    .line 605
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 606
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 607
    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mUpdateSuggestions:Z

    .line 608
    return-void

    :cond_0
    move v1, v3

    .line 602
    goto :goto_0
.end method

.method public setQueryListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;

    .line 537
    return-void
.end method

.method public setSearchClickListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchClickListener:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;

    .line 541
    return-void
.end method

.method public setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$9;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->setCommitCompletionListener(Lcom/google/android/googlequicksearchbox/ui/QueryTextView$CommitCompletionListener;)V

    .line 563
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 571
    return-void
.end method

.method public setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    :cond_0
    return-void
.end method

.method public showFirstRunOverlay()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    if-nez v1, :cond_0

    .line 299
    const v1, 0x7f100014

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 300
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    .line 302
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setFirstRunOverlayPadding()V

    .line 303
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mFirstRunOverlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void
.end method

.method public showInputMethodForQuery()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->requestFocus()Z

    .line 719
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/QueryTextView;->showInputMethod()V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateInputMethodSuggestions()V

    .line 721
    return-void
.end method

.method protected updateClearQueryButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Config;->getShowClearQueryButton(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 695
    if-eqz p1, :cond_0

    .line 696
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 703
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateInputMethodSuggestions()V
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQsbContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 755
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSuggestionsController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v1

    .line 757
    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->webSuggestionsToCompletions(Lcom/google/android/googlequicksearchbox/Suggestions;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    .line 760
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextView:Lcom/google/android/googlequicksearchbox/ui/QueryTextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method protected updateQueryTextView(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 655
    if-eqz p1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mQueryTextHint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSearchGoButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Config;->getShowGoButton(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 675
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Config;->getShowVoiceSearchButton(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mSearchGoButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateUi(Z)V
    .locals 0
    .parameter "queryEmpty"

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateQueryTextView(Z)V

    .line 648
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateSearchGoButton(Z)V

    .line 649
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateVoiceSearchButton(Z)V

    .line 650
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateClearQueryButton(Z)V

    .line 651
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->updateMenuButton()V

    .line 652
    return-void
.end method

.method protected updateVoiceSearchButton(Z)V
    .locals 2
    .parameter "queryEmpty"

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mShowVoiceSearchButton:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Config;->getShowVoiceSearchButton(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 690
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Config;->getShowGoButton(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->mVoiceSearchButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
