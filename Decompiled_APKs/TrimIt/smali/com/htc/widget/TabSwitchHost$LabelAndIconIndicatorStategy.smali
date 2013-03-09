.class Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mSelectedIcon:Landroid/graphics/drawable/Drawable;

.field private final mShowIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 1010
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1012
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1013
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1014
    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1015
    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1020
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1021
    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1023
    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "showIcon"

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1028
    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1029
    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    .line 1030
    iput-object p5, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 1003
    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 1003
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1003
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    .line 1049
    return-void
.end method
