.class public Lcom/google/android/gm/ComposeArea;
.super Ljava/lang/Object;
.source "ComposeArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

.field mBccList:Landroid/widget/MultiAutoCompleteTextView;

.field private mBodyText:Landroid/widget/EditText;

.field private mCcBccWrapper:Landroid/view/View;

.field mCcList:Landroid/widget/MultiAutoCompleteTextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mPrefs:Lcom/google/android/gm/persistence/Persistence;

.field private mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

.field private final mRootView:Landroid/view/View;

.field private mSignature:Ljava/lang/String;

.field private mSubjectText:Landroid/widget/EditText;

.field mToList:Landroid/widget/MultiAutoCompleteTextView;

.field private mValidator:Lcom/android/common/Rfc822Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v2}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/ComposeArea;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    .line 81
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    .line 83
    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "account"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    .line 88
    invoke-direct {p0}, Lcom/google/android/gm/ComposeArea;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    .line 89
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    .line 90
    iput-object p2, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 91
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcBccWrapper:Landroid/view/View;

    .line 92
    return-void
.end method

.method private animateCcBcc(Z)V
    .locals 13
    .parameter "ccWasAlreadyShown"

    .prologue
    .line 578
    const v8, 0x7f0f002b

    invoke-virtual {p0, v8}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 579
    .local v2, cc:Landroid/view/View;
    const v8, 0x7f0f002e

    invoke-virtual {p0, v8}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, bcc:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 581
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 584
    const-string v8, "ccBccHeight"

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gm/ComposeArea;->mCcBccWrapper:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v11, v12

    aput v11, v9, v10

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 587
    .local v6, heightAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getActivity()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getActivity()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 592
    .local v5, fadeDuration:I
    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 593
    .local v1, bccAnimator:Landroid/animation/ObjectAnimator;
    int-to-long v8, v5

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 595
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 597
    .local v7, transitionSet:Landroid/animation/AnimatorSet;
    if-nez p1, :cond_0

    .line 598
    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 599
    .local v3, ccAnimator:Landroid/animation/ObjectAnimator;
    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 600
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .local v4, fadeAnimation:Landroid/animation/Animator;
    move-object v8, v4

    .line 601
    check-cast v8, Landroid/animation/AnimatorSet;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 605
    .end local v3           #ccAnimator:Landroid/animation/ObjectAnimator;
    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 606
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 607
    return-void

    .line 603
    .end local v4           #fadeAnimation:Landroid/animation/Animator;
    :cond_0
    move-object v4, v1

    .restart local v4       #fadeAnimation:Landroid/animation/Animator;
    goto :goto_0

    .line 592
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 598
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "signature"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getActivity()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, signatureResource:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;
    .locals 4
    .parameter "res"
    .parameter "hintId"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    .line 189
    .local v0, list:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v1, :cond_1

    .line 190
    new-instance v2, Lcom/google/android/gm/RecipientAdapter;

    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gm/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v2, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 191
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/AccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 192
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gm/persistence/Persistence;->chipDragAndDropEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 196
    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->enableDrag()V

    .line 203
    :cond_0
    :goto_0
    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 206
    sget-object v1, Lcom/google/android/gm/ComposeArea;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 207
    return-object v0

    .line 199
    :cond_1
    new-instance v1, Lcom/google/android/gm/EmailAddressAdapter;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/gm/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 200
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/AccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/google/android/gm/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private isEmpty(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setTapTrapListener(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, tapTrap:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/AttachmentsView;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 629
    return-void
.end method

.method public appendSignature(Ljava/lang/String;)V
    .locals 2
    .parameter "signature"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeArea;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method public appendToBody(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 499
    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 500
    .local v0, bodyText:Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 501
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public clearRecipients()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :cond_2
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusBody()V
    .locals 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 235
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 237
    .local v0, length:I
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, signatureStartPos:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-lez v0, :cond_0

    .line 244
    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public focusSubject()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 309
    return-void
.end method

.method public focusToList()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 416
    :cond_0
    return-void
.end method

.method protected getActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAttachmentsView()Lcom/google/android/gm/AttachmentsView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    return-object v0
.end method

.method public getBccList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getBccListLength()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getCcList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getCcListLength()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuotedText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0}, Lcom/google/android/gm/QuotedTextView;->getQuotedTextIfIncluded()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getQuotedTextView()Lcom/google/android/gm/QuotedTextView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    return-object v0
.end method

.method protected getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "signature"
    .parameter "bodyText"

    .prologue
    .line 274
    const/4 v4, -0x1

    .line 276
    .local v4, startPos:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    .line 294
    .end local v4           #startPos:I
    .local v5, startPos:I
    :goto_0
    return v5

    .line 280
    .end local v5           #startPos:I
    .restart local v4       #startPos:I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 281
    .local v0, bodyLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 282
    .local v3, signatureLength:I
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeArea;->convertToPrintableSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, printableVersion:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 285
    .local v1, printableLength:I
    if-lt v0, v1, :cond_3

    sub-int v6, v0, v1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    sub-int v4, v0, v1

    :cond_2
    :goto_1
    move v5, v4

    .line 294
    .end local v4           #startPos:I
    .restart local v5       #startPos:I
    goto :goto_0

    .line 289
    .end local v5           #startPos:I
    .restart local v4       #startPos:I
    :cond_3
    if-lt v0, v3, :cond_2

    sub-int v6, v0, v3

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    sub-int v4, v0, v3

    goto :goto_1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getToList()Landroid/widget/MultiAutoCompleteTextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public getToListLength()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hideOrShowBcc(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 537
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 541
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->animateCcBcc(Z)V

    goto :goto_0
.end method

.method public hideOrShowCcBcc(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    .line 546
    if-nez p1, :cond_0

    .line 550
    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 556
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->isEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->isEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 559
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->animateCcBcc(Z)V

    goto :goto_0
.end method

.method public isBlank()Z
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getSubjectText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getToListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getCcListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBodyEmpty()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0}, Lcom/google/android/gm/QuotedTextView;->isTextIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 216
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    goto :goto_0

    .line 219
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 222
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 225
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x7f0f0024 -> :sswitch_0
        0x7f0f0027 -> :sswitch_1
        0x7f0f002b -> :sswitch_2
        0x7f0f002e -> :sswitch_3
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    .line 169
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->focusBody()V

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "inBundle"

    .prologue
    .line 364
    const-string v7, "toRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const-string v7, "toRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, recipients:[Ljava/lang/String;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 368
    .local v0, address:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #recipients:[Ljava/lang/String;
    :cond_0
    const-string v7, "ccRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const-string v7, "ccRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 374
    .restart local v6       #recipients:[Ljava/lang/String;
    move-object v1, v6

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 375
    .restart local v0       #address:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #recipients:[Ljava/lang/String;
    :cond_1
    const-string v7, "bccRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 379
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const-string v7, "bccRecips"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 381
    .restart local v6       #recipients:[Ljava/lang/String;
    move-object v1, v6

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 382
    .restart local v0       #address:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 385
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #recipients:[Ljava/lang/String;
    :cond_2
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gm/AttachmentsView;->deleteAllAttachments()V

    .line 393
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 395
    .local v3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 397
    .local v2, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    invoke-virtual {p0, v2}, Lcom/google/android/gm/ComposeArea;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V

    goto :goto_3

    .line 401
    .end local v2           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    .end local v3           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "inBundle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    const-string v3, "showCcBcc"

    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    const-string v0, "showBcc"

    const v3, 0x7f0f002e

    invoke-virtual {p0, v3}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v0, "showQuotedText"

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v1}, Lcom/google/android/gm/QuotedTextView;->getShowingQuotedText()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    const-string v0, "attachments"

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getAttachmentsView()Lcom/google/android/gm/AttachmentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/AttachmentsView;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 359
    return-object p1

    :cond_0
    move v0, v2

    .line 348
    goto :goto_0

    :cond_1
    move v1, v2

    .line 350
    goto :goto_1
.end method

.method public removeAllAttachments()V
    .locals 2

    .prologue
    .line 623
    const v1, 0x7f0f0022

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 624
    .local v0, l:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 625
    return-void
.end method

.method public renderView()V
    .locals 4

    .prologue
    .line 144
    const v0, 0x7f0f0033

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    .line 147
    const v0, 0x7f0f0023

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/QuotedTextView;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    .line 149
    const v0, 0x7f0f0022

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AttachmentsView;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mAttachmentsView:Lcom/google/android/gm/AttachmentsView;

    .line 151
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    .line 152
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 154
    new-instance v0, Lcom/android/common/Rfc822Validator;

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 156
    const v0, 0x7f0f0029

    const v1, 0x7f0c0125

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    .line 157
    const v0, 0x7f0f002d

    const v1, 0x7f0c0126

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    .line 158
    const v0, 0x7f0f0030

    const v1, 0x7f0c0123

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeArea;->initMultiAutoCompleteTextView(II)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    .line 161
    const v0, 0x7f0f0024

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 162
    const v0, 0x7f0f0027

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 163
    const v0, 0x7f0f002b

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 164
    const v0, 0x7f0f002e

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->setTapTrapListener(I)V

    .line 165
    return-void
.end method

.method public setBody(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "text"
    .parameter "withSignature"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBodyText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    if-eqz p2, :cond_0

    .line 516
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->appendSignature(Ljava/lang/String;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setCcBccHeight(I)V
    .locals 1
    .parameter "min"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcBccWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 611
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcBccWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 612
    return-void
.end method

.method public setCcBccState(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    .line 564
    if-nez p1, :cond_0

    .line 568
    const v0, 0x7f0f002b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeArea;->animateCcBcc(Z)V

    goto :goto_0
.end method

.method public setQuotedSectionVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/QuotedTextView;->updateQuotedTextVisibility(Z)V

    .line 322
    return-void
.end method

.method public setQuotedText(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "text"
    .parameter "allow"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/QuotedTextView;->setQuotedText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/QuotedTextView;->allowQuotedText(Z)V

    .line 337
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mQuotedTextView:Lcom/google/android/gm/QuotedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/QuotedTextView;->allowRespondInline(Z)V

    .line 338
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "subject"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mSubjectText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public setToList(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    return-void
.end method

.method public updateHideOrShowCcBcc(Ljava/lang/Boolean;)I
    .locals 7
    .parameter "shouldShow"

    .prologue
    const/high16 v6, 0x3f80

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 433
    if-eqz p1, :cond_6

    .line 434
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    .line 440
    .local v2, visibility:I
    :goto_0
    const v5, 0x7f0f002b

    invoke-virtual {p0, v5}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, ccContent:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    if-nez v2, :cond_1

    .line 445
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v5

    if-nez v5, :cond_2

    .line 449
    const/16 v2, 0x8

    .line 451
    :cond_2
    const v5, 0x7f0f002e

    invoke-virtual {p0, v5}, Lcom/google/android/gm/ComposeArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, bccContent:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    :cond_3
    if-nez v2, :cond_4

    .line 456
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 460
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 461
    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mCcBccWrapper:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 467
    :goto_1
    return v2

    .end local v0           #bccContent:Landroid/view/View;
    .end local v1           #ccContent:Landroid/view/View;
    .end local v2           #visibility:I
    :cond_5
    move v2, v4

    .line 434
    goto :goto_0

    .line 436
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getCcListLength()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBccListLength()I

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v2, v3

    .restart local v2       #visibility:I
    :goto_2
    goto :goto_0

    .end local v2           #visibility:I
    :cond_8
    move v2, v4

    goto :goto_2

    .line 463
    .restart local v0       #bccContent:Landroid/view/View;
    .restart local v1       #ccContent:Landroid/view/View;
    .restart local v2       #visibility:I
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/google/android/gm/ComposeArea;->setCcBccHeight(I)V

    goto :goto_1
.end method

.method public updateReplyFromAccount(Ljava/lang/String;)V
    .locals 7
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    iput-object p1, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gm/persistence/Persistence;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, signature:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeArea;->getBodyText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, bodyText:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gm/ComposeArea;->getSignatureStartPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, signatureStartPos:I
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 257
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gm/ComposeArea;->setBody(Ljava/lang/CharSequence;Z)V

    .line 260
    .end local v0           #bodyText:Ljava/lang/String;
    .end local v2           #signatureStartPos:I
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeArea;->appendSignature(Ljava/lang/String;)V

    .line 263
    :cond_1
    iput-object v1, p0, Lcom/google/android/gm/ComposeArea;->mSignature:Ljava/lang/String;

    .line 264
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gm/AccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 265
    new-instance v3, Lcom/android/common/Rfc822Validator;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/ComposeArea;->mAccount:Ljava/lang/String;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 266
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mToList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 267
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mCcList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 268
    iget-object v3, p0, Lcom/google/android/gm/ComposeArea;->mBccList:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p0, Lcom/google/android/gm/ComposeArea;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 270
    .end local v1           #signature:Ljava/lang/String;
    :cond_2
    return-void
.end method
