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

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/htc/widget/TabSwitchHost$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/TabSwitchHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mShowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInfoText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setInfoText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$LabelAndIconIndicatorStategy;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method
