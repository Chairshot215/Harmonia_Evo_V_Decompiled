.class public Lcom/htc/android/mail/widget/MailSearchBar;
.super Lcom/htc/widget/HeaderBarMiddle;
.source "MailSearchBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailSearchBar"


# instance fields
.field public mLeftImage:Lcom/htc/widget/HeaderBarImage;

.field public mSearchBox:Lcom/htc/widget/HeaderBarInput;

.field public mSearchField:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    .line 19
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    .line 21
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    .line 25
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailSearchBar;->initUI()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    .line 19
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    .line 21
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    .line 30
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailSearchBar;->initUI()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    .line 19
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    .line 21
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    .line 35
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailSearchBar;->initUI()V

    .line 36
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/MailSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    const v0, 0x7f090116

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    .line 42
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const v1, 0x7f0b0163

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 48
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 51
    return-void
.end method
