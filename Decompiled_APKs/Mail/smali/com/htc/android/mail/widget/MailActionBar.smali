.class public Lcom/htc/android/mail/widget/MailActionBar;
.super Lcom/htc/widget/HeaderBarMiddle;
.source "MailActionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailActionBar"


# instance fields
.field public mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

.field public mRightButton:Lcom/htc/widget/HeaderBarImage;

.field public mRightButton2:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    .line 22
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailActionBar;->initUI()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    .line 27
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailActionBar;->initUI()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 17
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    .line 18
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    .line 32
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailActionBar;->initUI()V

    .line 33
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/MailActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/widget/MailActionBar;->enableSecondBackground(Z)V

    .line 41
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarDropDown;

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 42
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    .line 43
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public getDropDownList()Lcom/htc/widget/HeaderBarDropDown;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method public setDropDownUnreadNumBubble(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 54
    if-gtz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleText(Ljava/lang/String;)V

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleCount(I)V

    goto :goto_1
.end method
