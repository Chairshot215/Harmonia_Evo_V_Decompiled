.class public abstract Lcom/google/android/gm/ConversationView;
.super Lcom/google/android/gm/FragmentView;
.source "ConversationView.java"

# interfaces
.implements Lcom/google/android/gm/ConversationViewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationView$ConversationViewException;
    }
.end annotation


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

.field protected mAutoLoad:I

.field protected mContextMenu:Lcom/google/android/gm/GmailWebViewContextMenu;

.field protected mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

.field protected mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field protected mGmail:Lcom/google/android/gm/provider/Gmail;

.field protected mListContext:Lcom/google/android/gm/ConversationListContext;

.field protected mMenuHandler:Lcom/google/android/gm/MenuHandler;

.field protected mSenders:Ljava/lang/CharSequence;

.field protected mSnippet:Ljava/lang/CharSequence;

.field protected mSubject:Ljava/lang/CharSequence;

.field private mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

.field protected mUndoView:Lcom/google/android/gm/UndoBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gm/FragmentView;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/FragmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/FragmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/android/gm/ConversationViewable;
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "listContext"
    .parameter "info"
    .parameter "autoLoad"
    .parameter "senders"
    .parameter "subject"
    .parameter "snippet"

    .prologue
    .line 62
    invoke-static/range {p0 .. p7}, Lcom/google/android/gm/HybridHtmlConversationView;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/android/gm/ConversationViewable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enableLoadData()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/gm/ConversationView;->mAutoLoad:I

    .line 175
    .local v0, oldAutoLoad:I
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gm/ConversationView;->mAutoLoad:I

    .line 176
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConversationSubjectDisplayer()Lcom/google/android/gm/ConversationSubjectDisplayer;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/UndoBarView;->isEventInUndo(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mUndoView:Lcom/google/android/gm/UndoBarView;

    invoke-virtual {v0}, Lcom/google/android/gm/UndoBarView;->doHide()V

    .line 188
    :cond_0
    return-void
.end method

.method public abstract markConversationAsRead()V
.end method

.method protected notifyConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "info"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected notifyConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected notifyConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loaded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected notifySubjectSet(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "subject"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ConversationSubjectDisplayer;->setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/gm/FragmentView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ActivityController$ControllableActivity;

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    .line 101
    iget-object v1, p0, Lcom/google/android/gm/ConversationView;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/gm/GmailWebViewContextMenu;

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gm/GmailWebViewContextMenu;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mContextMenu:Lcom/google/android/gm/GmailWebViewContextMenu;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 105
    invoke-static {v0}, Lcom/google/android/gm/MenuHandler;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/MenuHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/gm/FragmentView;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mAccount:Ljava/lang/String;

    .line 84
    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 85
    if-eqz p1, :cond_0

    const-string v1, "conversation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "conversation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 89
    :cond_0
    const-string v1, "conversation-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 90
    const-string v1, "senders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mSenders:Ljava/lang/CharSequence;

    .line 91
    const-string v1, "subject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mSubject:Ljava/lang/CharSequence;

    .line 92
    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationView;->mSnippet:Ljava/lang/CharSequence;

    .line 93
    const-string v1, "auto-load"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationView;->mAutoLoad:I

    .line 94
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/google/android/gm/FragmentView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gm/ConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "conversation"

    iget-object v1, p0, Lcom/google/android/gm/ConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setConversationCallbacks(Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/gm/ConversationView;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    .line 118
    return-void
.end method

.method public setConversationSubjectDisplayer(Lcom/google/android/gm/ConversationSubjectDisplayer;)V
    .locals 0
    .parameter "displayer"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/gm/ConversationView;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    .line 153
    return-void
.end method

.method protected abstract startLoadingConversation()V
.end method
