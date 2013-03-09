.class public Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
.super Lcom/htc/widget/HeaderBarShort;
.source "TextMailHeaderBar1_1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextMailHeaderBar1_1"


# instance fields
.field public mText:Lcom/htc/widget/HeaderBarText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    .line 22
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->initUI()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrset"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    .line 27
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->initUI()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    .line 32
    invoke-direct {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->initUI()V

    .line 33
    return-void
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->enableSecondBackground(Z)V

    .line 39
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    .line 40
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightVisibility(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->mText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightText(Ljava/lang/String;)V

    .line 50
    return-void
.end method
