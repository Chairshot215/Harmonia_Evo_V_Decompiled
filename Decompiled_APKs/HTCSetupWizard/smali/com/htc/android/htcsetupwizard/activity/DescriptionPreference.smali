.class public Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;
.super Lcom/htc/preference/HtcPreference;
.source "DescriptionPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_DescriptionPreference"


# instance fields
.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private m_DividButtom:Z

.field private m_DivideTop:Z

.field private m_Image:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingLeft:I

    .line 35
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingTop:I

    .line 36
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingRight:I

    .line 37
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingBottom:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_Image:I

    .line 40
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DivideTop:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DividButtom:Z

    .line 95
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->setLayoutResource(I)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 45
    const v6, 0x1010009

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .local v2, image:Landroid/widget/ImageView;
    const v6, 0x1010008

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, dividetop:Landroid/widget/ImageView;
    const v6, 0x101000a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, dividebuttom:Landroid/widget/ImageView;
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    .local v5, tvTitle:Landroid/widget/TextView;
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 50
    .local v4, tvSummary:Landroid/widget/TextView;
    const v6, 0x1010001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 52
    .local v3, rLlayout:Landroid/widget/RelativeLayout;
    const-string v6, "OOBE_DescriptionPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DescriptionPreference(), title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", summary = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 66
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_1
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_Image:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 71
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_Image:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    :cond_2
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DivideTop:Z

    if-ne v6, v10, :cond_3

    .line 76
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :cond_3
    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DividButtom:Z

    if-ne v6, v10, :cond_4

    .line 81
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_4
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingLeft:I

    if-nez v6, :cond_5

    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingTop:I

    if-nez v6, :cond_5

    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingRight:I

    if-nez v6, :cond_5

    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingBottom:I

    if-eqz v6, :cond_6

    .line 87
    :cond_5
    iget v6, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingLeft:I

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingTop:I

    iget v8, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingRight:I

    iget v9, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingBottom:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 90
    :cond_6
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method setDescPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingLeft:I

    .line 110
    iput p2, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingTop:I

    .line 111
    iput p3, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingRight:I

    .line 112
    iput p4, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->mPaddingBottom:I

    .line 113
    return-void
.end method

.method setDivide(ZZ)V
    .locals 0
    .parameter "top"
    .parameter "buttom"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DivideTop:Z

    .line 121
    iput-boolean p2, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_DividButtom:Z

    .line 122
    return-void
.end method

.method setImage(I)V
    .locals 0
    .parameter "image"

    .prologue
    .line 116
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/DescriptionPreference;->m_Image:I

    .line 117
    return-void
.end method
