.class Landroid/widget/TabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$LabelIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;
    invoke-static {v5}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v4

    const v5, 0x109009e

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "tab_indicator_holo"

    const v5, 0x108057e

    invoke-static {v0, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_1

    const v4, 0x108057f

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-object v2

    :cond_2
    iget-object v4, p0, Landroid/widget/TabHost$LabelIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    #getter for: Landroid/widget/TabHost;->mTabLayoutId:I
    invoke-static {v4}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v4

    const v5, 0x109009d

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "tab_indicator"

    const v5, 0x108057c

    invoke-static {v0, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
