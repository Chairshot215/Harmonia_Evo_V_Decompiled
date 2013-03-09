.class public abstract Lcom/google/android/gm/BaseGmailActionBar;
.super Landroid/widget/LinearLayout;
.source "BaseGmailActionBar.java"

# interfaces
.implements Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
.implements Lcom/google/android/gm/ActionBarView;
.implements Lcom/google/android/gm/ConversationSubjectDisplayer;
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;,
        Lcom/google/android/gm/BaseGmailActionBar$Callback;
    }
.end annotation


# static fields
.field private static sMissingLabelRequeryDelay:I


# instance fields
.field private final mAccountInboxMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccountNames:[Ljava/lang/String;

.field protected mActionBar:Landroid/app/ActionBar;

.field protected mActive:Z

.field protected mActivity:Lcom/google/android/gm/RestrictedActivity;

.field protected mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mDataSetChangedCallback:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;

.field private final mHandler:Landroid/os/Handler;

.field protected mLabelView:Landroid/view/View;

.field protected mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

.field protected mSubjectView:Lcom/google/android/gm/SnippetTextView;

.field protected mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/BaseGmailActionBar;->sMissingLabelRequeryDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mActive:Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mHandler:Landroid/os/Handler;

    .line 142
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    .line 144
    sget v0, Lcom/google/android/gm/BaseGmailActionBar;->sMissingLabelRequeryDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/BaseGmailActionBar;->sMissingLabelRequeryDelay:I

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/BaseGmailActionBar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/BaseGmailActionBar;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mDataSetChangedCallback:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/BaseGmailActionBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/google/android/gm/BaseGmailActionBar;->sMissingLabelRequeryDelay:I

    return v0
.end method


# virtual methods
.method public getAccountInboxMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "subject"

    .prologue
    const/high16 v7, 0x4000

    const/4 v8, -0x1

    .line 356
    move-object v4, p1

    .line 358
    .local v4, remainder:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v6, :cond_0

    .line 362
    iget-object v6, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v6}, Lcom/google/android/gm/SnippetTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 363
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 364
    .local v3, parentWSpec:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 365
    .local v2, parentHSpec:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 368
    .local v5, wSpec:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2, v6, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 372
    .local v0, hSpec:I
    iget-object v6, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v6, p1, v5, v0}, Lcom/google/android/gm/SnippetTextView;->getTextRemainder(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 374
    .end local v0           #hSpec:I
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #parentHSpec:I
    .end local v3           #parentWSpec:I
    .end local v5           #wSpec:I
    :cond_0
    return-object v4
.end method

.method public handleRestore(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 228
    if-eqz p1, :cond_1

    .line 229
    const-string v4, "accountLabelMap"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 231
    .local v3, savedLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, labelStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 234
    .local v1, label:Lcom/google/android/gm/provider/Label;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    .end local v2           #labelStr:Ljava/lang/String;
    .end local v3           #savedLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 213
    if-eqz p1, :cond_1

    .line 214
    iget-object v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 215
    .local v2, labels:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/Label;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    .local v3, savedLabelInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 217
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->serialize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    const-string v4, "accountLabelMap"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 221
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #labels:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/Label;>;"
    .end local v3           #savedLabelInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V
    .locals 1
    .parameter "activity"
    .parameter "callback"
    .parameter "viewMode"
    .parameter "actionBar"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mActivity:Lcom/google/android/gm/RestrictedActivity;

    .line 154
    iput-object p2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    .line 155
    iput-object p4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 156
    const v0, 0x7f0f0038

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseGmailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SnippetTextView;

    iput-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    .line 157
    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseGmailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/BaseGmailActionBar;->mLabelView:Landroid/view/View;

    .line 159
    iput-object p3, p0, Lcom/google/android/gm/BaseGmailActionBar;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 161
    invoke-static {p0}, Lcom/google/android/gm/Utils;->addLayoutTransition(Landroid/view/ViewGroup;)V

    .line 162
    return-void
.end method

.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->labelsSynced()Z

    move-result v1

    .line 130
    .local v1, labelsSynced:Z
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, accountName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseGmailActionBar;->setupInboxLabel(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v2, v0}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->startActionBarStatusCursorLoader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mActive:Z

    .line 169
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 170
    .local v1, label:Lcom/google/android/gm/provider/Label;
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->onPause()V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 199
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mActive:Z

    .line 201
    iget-object v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountNames:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountNames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 206
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/BaseGmailActionBar;->setupInboxLabel(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    .end local v0           #accountName:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    invoke-virtual {v4}, Lcom/google/android/gm/AccountRecentLabelSpinner;->onResume()V

    goto :goto_0
.end method

.method public onStatusResult(Ljava/lang/String;I)V
    .locals 3
    .parameter "account"
    .parameter "status"

    .prologue
    .line 316
    const/16 v1, 0x10

    and-int/lit8 v2, p2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 318
    .local v0, labelsSynced:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/gm/BaseGmailActionBar;->setupInboxLabel(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v1, p1}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->stopActionBarStatusCursorLoader(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void

    .line 316
    .end local v0           #labelsSynced:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataSetChangedCallback(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mDataSetChangedCallback:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;

    .line 336
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 4
    .parameter "label"

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    new-instance v0, Lcom/google/android/gm/BaseGmailActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/BaseGmailActionBar$1;-><init>(Lcom/google/android/gm/BaseGmailActionBar;)V

    .line 305
    .local v0, f:Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mCallback:Lcom/google/android/gm/BaseGmailActionBar$Callback;

    invoke-interface {v2}, Lcom/google/android/gm/BaseGmailActionBar$Callback;->getCurrentAccount()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 308
    .end local v0           #f:Lcom/google/android/gm/provider/LabelManager$LabelResultCallback;
    :cond_0
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "subject"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gm/SnippetTextView;->setVisibility(I)V

    .line 343
    move-object v0, p2

    .line 346
    .local v0, s:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0092

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSubjectView:Lcom/google/android/gm/SnippetTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/SnippetTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected setupInboxLabel(Ljava/lang/String;)V
    .locals 5
    .parameter "accountName"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    .line 183
    .local v1, prevInboxLabel:Lcom/google/android/gm/provider/Label;
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, curInboxName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;-><init>(Lcom/google/android/gm/BaseGmailActionBar;Ljava/lang/String;)V

    invoke-static {v2, p1, v0, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->enableSelfUpdate(Landroid/content/Context;)V

    .line 193
    iget-object v2, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/provider/Label;->requery(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateActionBar([Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "accounts"
    .parameter "currentAccount"

    .prologue
    const/4 v11, 0x0

    .line 247
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 250
    :cond_0
    const-string v9, "Gmail"

    const-string v10, "Unexpected empty account list"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 288
    :goto_0
    return-void

    .line 253
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountNames:[Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 256
    .local v6, newAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, currentAccountIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, p1

    if-ge v1, v9, :cond_5

    .line 258
    aget-object v5, p1, v1

    .line 259
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 260
    move v0, v1

    .line 265
    :cond_2
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/Label;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Label;->labelCountsInitialized()Z

    move-result v9

    if-nez v9, :cond_4

    .line 267
    :cond_3
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, inboxLabel:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;

    invoke-direct {v10, p0, v5}, Lcom/google/android/gm/BaseGmailActionBar$LabelResultHandler;-><init>(Lcom/google/android/gm/BaseGmailActionBar;Ljava/lang/String;)V

    invoke-static {v9, v5, v3, v11, v10}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    .line 270
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-static {v9, v5, p0}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    .line 273
    .end local v3           #inboxLabel:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v5           #name:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v7

    .line 278
    .local v7, previousAccounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 279
    .local v8, trackedName:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 280
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountInboxMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/Label;

    .line 281
    .local v4, label:Lcom/google/android/gm/provider/Label;
    if-eqz v4, :cond_6

    .line 282
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Lcom/google/android/gm/provider/Label;->disableSelfUpdate(Landroid/content/Context;)V

    goto :goto_2

    .line 286
    .end local v4           #label:Lcom/google/android/gm/provider/Label;
    .end local v8           #trackedName:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mSpinnerView:Lcom/google/android/gm/AccountRecentLabelSpinner;

    iget-object v10, p0, Lcom/google/android/gm/BaseGmailActionBar;->mAccountNames:[Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gm/AccountRecentLabelSpinner;->setAccounts([Ljava/lang/String;I)V

    .line 287
    iget-object v9, p0, Lcom/google/android/gm/BaseGmailActionBar;->mLabelView:Landroid/view/View;

    const v10, 0x7f0f008c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
