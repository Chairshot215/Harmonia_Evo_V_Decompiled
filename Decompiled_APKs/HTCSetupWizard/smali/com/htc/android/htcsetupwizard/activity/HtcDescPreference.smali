.class public Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcDescPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_HtcDescPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerBottom:Z

.field private mDividerTop:Z

.field private mImage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerTop:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerBottom:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mImage:I

    .line 86
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setLayoutResource(I)V

    .line 87
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 42
    const v6, 0x1010009

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 43
    .local v2, image:Landroid/widget/ImageView;
    const v6, 0x1010008

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, dividertop:Landroid/widget/ImageView;
    const v6, 0x101000a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, dividerbottom:Landroid/widget/ImageView;
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 46
    .local v5, tvTitle:Landroid/widget/TextView;
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 47
    .local v4, tvSummary:Landroid/widget/TextView;
    const v6, 0x1010001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 49
    .local v3, rLlayout:Landroid/widget/RelativeLayout;
    const-string v6, "OOBE_HtcDescPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DescriptionPreference(), title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", summary = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 56
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 62
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :cond_1
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mImage:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 68
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mImage:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :cond_2
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerTop:Z

    if-ne v6, v10, :cond_3

    .line 73
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :cond_3
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerBottom:Z

    if-ne v6, v10, :cond_4

    .line 78
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :cond_4
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method setDivide(ZZ)V
    .locals 0
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerTop:Z

    .line 101
    iput-boolean p2, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mDividerBottom:Z

    .line 102
    return-void
.end method

.method setImage(I)V
    .locals 0
    .parameter "image"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->mImage:I

    .line 107
    return-void
.end method
