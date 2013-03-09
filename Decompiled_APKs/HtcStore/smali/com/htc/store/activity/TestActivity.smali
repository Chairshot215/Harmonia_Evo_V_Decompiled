.class public Lcom/htc/store/activity/TestActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAppName:Landroid/widget/TextView;

.field mButtonCategoryCall:Landroid/widget/Button;

.field mButtonDetailCall:Landroid/widget/Button;

.field mButtonFeatureCall:Landroid/widget/Button;

.field mButtonGetMoreCall:Landroid/widget/Button;

.field mButtonGoToDetail:Landroid/widget/Button;

.field mButtonItemListCall:Landroid/widget/Button;

.field mButtonMarkedItemCall:Landroid/widget/Button;

.field mButtonNaviCall:Landroid/widget/Button;

.field mButtonOrderedHistoryCall:Landroid/widget/Button;

.field mButtonPromoCall:Landroid/widget/Button;

.field mButtonPurchaseCall:Landroid/widget/Button;

.field mButtonSetupCall:Landroid/widget/Button;

.field mMarkItem:Landroid/widget/Button;

.field mProductIdEditText:Landroid/widget/EditText;

.field mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field mSkuIdEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/store/activity/TestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/TestActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonSetupCall:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonSetupCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPromoCall:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPromoCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonFeatureCall:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonFeatureCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonNaviCall:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonNaviCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonCategoryCall:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonCategoryCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonItemListCall:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonItemListCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonDetailCall:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonDetailCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonOrderedHistoryCall:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonOrderedHistoryCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonMarkedItemCall:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonMarkedItemCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPurchaseCall:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPurchaseCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGetMoreCall:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGetMoreCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGoToDetail:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGoToDetail:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mProductIdEditText:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mSkuIdEditText:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/store/activity/TestActivity;->mMarkItem:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mMarkItem:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 91
    sget-object v0, Lcom/htc/store/activity/TestActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "onClick"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonSetupCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/TestActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/rest/RestHelper;->setupCall(Landroid/content/Context;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPromoCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 97
    const-string v3, "home"

    .line 98
    .local v3, url:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/promo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/module/rest/RestHelper;->getPromoContents(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 103
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #app:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonFeatureCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 104
    const-string v3, "home"

    .line 105
    .restart local v3       #url:Ljava/lang/String;
    const-string v11, "app"

    .line 106
    .local v11, url1:Ljava/lang/String;
    const-string v12, "personalization"

    .line 107
    .local v12, url2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/featured/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/module/rest/RestHelper;->getFeaturedContents(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 112
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #app:Ljava/lang/String;
    .end local v11           #url1:Ljava/lang/String;
    .end local v12           #url2:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonNaviCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 113
    const-string v3, ""

    .line 114
    .restart local v3       #url:Ljava/lang/String;
    const-string v11, "app"

    .line 115
    .restart local v11       #url1:Ljava/lang/String;
    const-string v12, "personalization"

    .line 116
    .restart local v12       #url2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/navlist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/module/rest/RestHelper;->getNavList(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 121
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #app:Ljava/lang/String;
    .end local v11           #url1:Ljava/lang/String;
    .end local v12           #url2:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonCategoryCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 122
    const-string v3, "app"

    .line 123
    .restart local v3       #url:Ljava/lang/String;
    const-string v11, "personalization"

    .line 124
    .restart local v11       #url1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/subcategorylist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/store/module/rest/RestHelper;->getSubcategoryList(JLjava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 129
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #app:Ljava/lang/String;
    .end local v11           #url1:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonItemListCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 130
    const-string v3, "app/new"

    .line 131
    .restart local v3       #url:Ljava/lang/String;
    const-string v11, "app/recommended"

    .line 132
    .restart local v11       #url1:Ljava/lang/String;
    const-string v12, "app/popular"

    .line 133
    .restart local v12       #url2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/itemlist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-wide/16 v1, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual/range {v0 .. v5}, Lcom/htc/store/module/rest/RestHelper;->getItemList(JLjava/lang/String;II)Lcom/htc/store/module/rest/RestResult;

    .line 138
    .end local v3           #url:Ljava/lang/String;
    .end local v6           #app:Ljava/lang/String;
    .end local v11           #url1:Ljava/lang/String;
    .end local v12           #url2:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonDetailCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 139
    const-string v9, "prod10032"

    .line 140
    .local v9, prodid:Ljava/lang/String;
    const-string v10, "prod10065"

    .line 141
    .local v10, prodid1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/detail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0, v9}, Lcom/htc/store/module/rest/RestHelper;->getDetailItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 147
    .end local v6           #app:Ljava/lang/String;
    .end local v9           #prodid:Ljava/lang/String;
    .end local v10           #prodid1:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonOrderedHistoryCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonMarkedItemCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 152
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->getMarkedItemsList()Lcom/htc/store/module/rest/RestResult;

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonPurchaseCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const-string v1, "prod50126"

    const-string v2, "sku62993"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/store/module/rest/RestHelper;->purchaseItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/store/module/rest/RestResult;

    .line 160
    :cond_9
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGetMoreCall:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 162
    const-string v7, "Soundset"

    .line 163
    .local v7, content:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/100/getmore/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    .restart local v6       #app:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "com.htc.store.action.DISPATCH"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v0, "navigate_to"

    const-string v1, "get_more"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v0, "get_more_key"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v8}, Lcom/htc/store/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v6           #app:Ljava/lang/String;
    .end local v7           #content:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mButtonGoToDetail:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    .line 175
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/store/activity/TestActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v0, "store_inside"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    const-string v0, "online_item_id"

    invoke-static {}, Lcom/htc/store/util/MockUtils;->getBatteryOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "online_item_content_type"

    invoke-static {}, Lcom/htc/store/util/MockUtils;->getBatteryContentType()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v8}, Lcom/htc/store/activity/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    .end local v8           #intent:Landroid/content/Intent;
    :cond_b
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mMarkItem:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-object v1, p0, Lcom/htc/store/activity/TestActivity;->mProductIdEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/TestActivity;->mSkuIdEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/module/rest/RestHelper;->markAnItem(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    .line 186
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/htc/store/activity/TestActivity;->setContentView(I)V

    .line 47
    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/TestActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 49
    invoke-virtual {p0}, Lcom/htc/store/activity/TestActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/store/util/DateTimeUtils;->getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, fullTime:Ljava/lang/String;
    sget-object v1, Lcom/htc/store/activity/TestActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "full time ="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/htc/store/activity/TestActivity;->initView()V

    .line 53
    return-void
.end method
