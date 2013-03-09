.class public Lcom/htc/Weather/widget/DemoTitleBar;
.super Landroid/widget/LinearLayout;
.source "DemoTitleBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherMaGroup"


# instance fields
.field private conditionTxt:[I

.field private mConditionDes:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private ws:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->conditionTxt:[I

    .line 42
    iput-object p1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x207000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->ws:[Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/DemoTitleBar;->initLayout(Landroid/content/Context;)V

    .line 46
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->conditionTxt:[I

    .line 35
    iput-object p1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/DemoTitleBar;->initLayout(Landroid/content/Context;)V

    .line 38
    return-void

    .line 31
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mMainLayout:Landroid/widget/LinearLayout;

    .line 52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/Weather/widget/DemoTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mTitle:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mMainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mConditionDes:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0a005d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/DemoTitleBar;->setConditionDescrip(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public adjustDemoTitleLayout(Z)V
    .locals 4
    .parameter "isPortrait"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .end local v0           #p:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setConditionDescrip(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mConditionDes:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/DemoTitleBar;->mConditionDes:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/widget/DemoTitleBar;->ws:[Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/Weather/widget/DemoTitleBar;->conditionTxt:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->demoVideo:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
