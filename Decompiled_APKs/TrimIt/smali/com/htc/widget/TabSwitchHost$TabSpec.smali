.class public Lcom/htc/widget/TabSwitchHost$TabSpec;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mTag:Ljava/lang/String;

    .line 856
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 847
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TabSwitchHost$TabSpec;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/TabSwitchHost$TabSpec;)Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    return-object v0
.end method


# virtual methods
.method public doDelete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 958
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mTag:Ljava/lang/String;

    .line 960
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    .line 961
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    .line 962
    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInfoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->getInfoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInfoText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 901
    new-instance v0, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/widget/TabSwitchHost$ViewIdContentStrategy;-><init>(Lcom/htc/widget/TabSwitchHost;ILcom/htc/widget/TabSwitchHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    .line 902
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 922
    new-instance v0, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/widget/TabSwitchHost$IntentContentStrategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/widget/TabSwitchHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    .line 923
    return-object p0
.end method

.method public setContent(Lcom/htc/widget/TabSwitchHost$TabContentFactory;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 912
    new-instance v0, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v2, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/widget/TabSwitchHost$FactoryContentStrategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Lcom/htc/widget/TabSwitchHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mContentStrategy:Lcom/htc/widget/TabSwitchHost$ContentStrategy;

    .line 913
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 865
    new-instance v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    .line 866
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 6
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"

    .prologue
    .line 877
    new-instance v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    .line 878
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 7
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "showIcon"

    .prologue
    .line 890
    new-instance v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    .line 891
    return-object p0
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;

    check-cast v0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->setInfoText(Ljava/lang/CharSequence;)V

    .line 944
    return-void
.end method
