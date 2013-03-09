.class public Lcom/android/mms/util/CommonActivityLayout;
.super Ljava/lang/Object;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/CommonActivityLayout$1;,
        Lcom/android/mms/util/CommonActivityLayout$FooterComposer;,
        Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;,
        Lcom/android/mms/util/CommonActivityLayout$FootButton;,
        Lcom/android/mms/util/CommonActivityLayout$BarButton;,
        Lcom/android/mms/util/CommonActivityLayout$BarDropDown;,
        Lcom/android/mms/util/CommonActivityLayout$BarInputField;,
        Lcom/android/mms/util/CommonActivityLayout$BarImage;,
        Lcom/android/mms/util/CommonActivityLayout$BarText;,
        Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;,
        Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;,
        Lcom/android/mms/util/CommonActivityLayout$BarImageType;,
        Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;,
        Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;,
        Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    }
.end annotation


# static fields
.field private static LP:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mActivityLayout:Landroid/widget/RelativeLayout;

.field private mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout;->LP:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V
    .locals 1
    .parameter "context"
    .parameter "composer"
    .parameter "footer"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    invoke-direct {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/CommonActivityLayout;->initialLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/CommonActivityLayout;->composeHeaderBar(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;)V

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/android/mms/util/CommonActivityLayout;->composeFooter(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;Landroid/widget/RelativeLayout;)V
    .locals 1
    .parameter "context"
    .parameter "composer"
    .parameter "footer"
    .parameter "activityLayout"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    invoke-direct {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p4, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/util/CommonActivityLayout;->initialLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/CommonActivityLayout;->composeHeaderBar(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;)V

    .line 53
    invoke-direct {p0, p1, p3}, Lcom/android/mms/util/CommonActivityLayout;->composeFooter(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 54
    return-void
.end method

.method private composeFooter(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V
    .locals 3
    .parameter "context"
    .parameter "footer"

    .prologue
    .line 132
    if-nez p2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_3

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 138
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_3
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_5

    .line 146
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 147
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 148
    .restart local v1       #view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 149
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addLeftView(Landroid/view/View;)V

    .line 146
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_5
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_7

    .line 154
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 155
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 156
    .restart local v1       #view:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 157
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 154
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 162
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_7
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_0

    .line 163
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 164
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 165
    .restart local v1       #view:Landroid/view/View;
    if-eqz v1, :cond_8

    .line 166
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 163
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private composeHeaderBar(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;)V
    .locals 3
    .parameter "context"
    .parameter "composer"

    .prologue
    .line 101
    if-nez p2, :cond_1

    .line 129
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_3

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 106
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 108
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addLeftView(Landroid/view/View;)V

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_3
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_5

    .line 113
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 114
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 115
    .restart local v1       #view:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 116
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 113
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_5
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_0

    .line 122
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/util/CommonActivityLayout;->createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;

    move-result-object v1

    .line 124
    .restart local v1       #view:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 125
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HeaderBar;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBar;->addRightView(Landroid/view/View;)V

    .line 122
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private createHeaderMemberView(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "member"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, view:Landroid/view/View;
    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    invoke-virtual {p2}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getType()Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 86
    .end local p2
    :goto_0
    return-object v0

    .line 60
    .restart local p2
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 61
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$BarText;

    .end local p2
    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$BarText;->setBarText(Lcom/htc/widget/HeaderBarText;)V

    goto :goto_0

    .line 64
    .restart local p2
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$BarImage;

    .end local p2
    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$BarImage;->setBarImageAttr(Lcom/htc/widget/HeaderBarImage;)V

    goto :goto_0

    .line 68
    .restart local p2
    :pswitch_2
    new-instance v0, Lcom/htc/widget/HeaderBarInput;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$BarInputField;

    .end local p2
    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$BarInputField;->setAttr(Lcom/htc/widget/HeaderBarInput;)V

    goto :goto_0

    .line 72
    .restart local p2
    :pswitch_3
    new-instance v0, Lcom/htc/widget/HeaderBarDropDown;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$BarDropDown;

    .end local p2
    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$BarDropDown;->setAttr(Lcom/htc/widget/HeaderBarDropDown;)V

    goto :goto_0

    .line 76
    .restart local p2
    :pswitch_4
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 77
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    .end local p2
    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$FootButton;->setButtonText(Lcom/htc/widget/HtcFooterButton;)V

    goto :goto_0

    .line 80
    .restart local p2
    :pswitch_5
    new-instance v0, Landroid/widget/Button;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v0       #view:Landroid/view/View;
    check-cast p2, Lcom/android/mms/util/CommonActivityLayout$BarButton;

    .end local p2
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p2, v1}, Lcom/android/mms/util/CommonActivityLayout$BarButton;->setButtonText(Landroid/widget/Button;)V

    move-object v1, v0

    .line 82
    check-cast v1, Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/android/mms/util/CommonActivityLayout;->setButtonAttr(Landroid/content/Context;Landroid/widget/Button;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    .locals 1
    .parameter "context"
    .parameter "height"
    .parameter "lineOne"
    .parameter "lineTwo"

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II[I)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v0

    return-object v0
.end method

.method public static createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II[I)Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    .locals 9
    .parameter "context"
    .parameter "height"
    .parameter "lineOne"
    .parameter "lineTwo"
    .parameter "footerIDs"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 511
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v2}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 512
    .local v2, composer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    const/4 v3, 0x0

    .line 514
    .local v3, footerComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    new-array v0, v8, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$BarText;

    invoke-direct {v5, p2, p3}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v5, v0, v7

    .line 517
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 518
    iput-object p1, v2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 520
    if-eqz p4, :cond_0

    .line 521
    const/4 v5, 0x2

    new-array v1, v5, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    aget v6, p4, v7

    invoke-direct {v5, v6}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v5, v1, v7

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    aget v6, p4, v8

    invoke-direct {v5, v6}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v5, v1, v8

    .line 525
    .local v1, Footer:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    new-instance v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    .end local v3           #footerComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    invoke-direct {v3}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 526
    .restart local v3       #footerComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    iput-object v1, v3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 529
    .end local v1           #Footer:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    :cond_0
    new-instance v4, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 531
    .local v4, mLayoutComposer:Lcom/android/mms/util/CommonActivityLayout;
    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v5

    .line 534
    :goto_0
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initialLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V
    .locals 5
    .parameter "context"
    .parameter "composer"
    .parameter "footer"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_0

    .line 175
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 226
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v3, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    #setter for: Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mContentView:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->access$002(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Landroid/view/View;)Landroid/view/View;

    .line 184
    if-eqz p2, :cond_2

    .line 185
    sget-object v2, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    iget-object v3, p2, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v3}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 199
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e000b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 201
    .local v1, headerContainer:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    .end local v1           #headerContainer:Landroid/widget/LinearLayout;
    :cond_3
    if-eqz p3, :cond_4

    .line 204
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e000e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .local v0, footerContainer:Landroid/widget/LinearLayout;
    iget-object v2, p3, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    if-eqz v2, :cond_5

    .line 206
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HtcFooter;

    invoke-direct {v3, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    .line 220
    :goto_2
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/mms/util/CommonActivityLayout;->LP:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .end local v0           #footerContainer:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v3, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, v3, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mListView:Lcom/htc/widget/HtcListView;

    .line 224
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    #setter for: Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBarComposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    invoke-static {v2, p2}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->access$102(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;)Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    .line 225
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    #setter for: Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooterComposer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    invoke-static {v2, p3}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->access$202(Lcom/android/mms/util/CommonActivityLayout$LayoutController;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    goto :goto_0

    .line 187
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarShort;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    goto :goto_1

    .line 190
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    goto :goto_1

    .line 193
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarTall;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarTall;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mHeaderBar:Landroid/view/ViewGroup;

    goto :goto_1

    .line 208
    .restart local v0       #footerContainer:Landroid/widget/LinearLayout;
    :cond_5
    sget-object v2, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    iget-object v3, p3, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v3}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 210
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarShort;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarShort;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    goto :goto_2

    .line 213
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    goto :goto_2

    .line 216
    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    new-instance v3, Lcom/htc/widget/HeaderBarTall;

    invoke-direct {v3, p1}, Lcom/htc/widget/HeaderBarTall;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    goto :goto_2

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static resizeOkBarButtonTextSize(Landroid/view/View;F)V
    .locals 8
    .parameter "view"
    .parameter "densityDpi"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v3, 0x5

    const/high16 v4, 0x4080

    .line 539
    move-object v0, p0

    check-cast v0, Landroid/widget/Button;

    .line 540
    .local v0, okButton:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    .line 541
    .local v1, textSize:F
    const/high16 v2, 0x4320

    cmpl-float v2, p1, v2

    if-nez v2, :cond_4

    .line 542
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v6, :cond_1

    .line 543
    const/high16 v2, 0x4110

    sub-float/2addr v1, v2

    .line 576
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 577
    return-void

    .line 544
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 545
    const/high16 v2, 0x40e0

    sub-float/2addr v1, v2

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 547
    const/high16 v2, 0x4110

    sub-float/2addr v1, v2

    goto :goto_0

    .line 549
    :cond_3
    sub-float/2addr v1, v4

    goto :goto_0

    .line 551
    :cond_4
    const/high16 v2, 0x4370

    cmpl-float v2, p1, v2

    if-nez v2, :cond_9

    .line 552
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 553
    const/high16 v2, 0x4150

    sub-float/2addr v1, v2

    goto :goto_0

    .line 554
    :cond_5
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 555
    const/high16 v2, 0x4120

    sub-float/2addr v1, v2

    goto :goto_0

    .line 556
    :cond_6
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 557
    const/high16 v2, 0x4150

    sub-float/2addr v1, v2

    goto :goto_0

    .line 558
    :cond_7
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 559
    sub-float/2addr v1, v7

    goto :goto_0

    .line 561
    :cond_8
    sub-float/2addr v1, v4

    goto :goto_0

    .line 563
    :cond_9
    const/high16 v2, 0x43a0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v6, :cond_a

    .line 565
    const/high16 v2, 0x4190

    sub-float/2addr v1, v2

    goto :goto_0

    .line 566
    :cond_a
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_b

    .line 567
    const/high16 v2, 0x4160

    sub-float/2addr v1, v2

    goto/16 :goto_0

    .line 568
    :cond_b
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v3, :cond_c

    .line 569
    const/high16 v2, 0x4180

    sub-float/2addr v1, v2

    goto/16 :goto_0

    .line 570
    :cond_c
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    .line 571
    sub-float/2addr v1, v7

    goto/16 :goto_0

    .line 573
    :cond_d
    sub-float/2addr v1, v4

    goto/16 :goto_0
.end method

.method private setButtonAttr(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 91
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20d0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const v1, 0x2030001

    invoke-virtual {p2, p1, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    const-string v1, "common_titlebar_btn"

    const v2, 0x7f0200e4

    invoke-static {p1, p2, v1, v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public getActivityContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mActivityLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v0, v0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method
