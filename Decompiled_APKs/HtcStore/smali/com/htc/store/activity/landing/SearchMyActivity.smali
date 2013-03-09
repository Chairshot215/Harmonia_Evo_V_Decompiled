.class public Lcom/htc/store/activity/landing/SearchMyActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "SearchMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_EMPTY:I = 0x2

.field private static final VIEW_LIST:I = 0x1

.field private static final VIEW_NO_ACCOUNT:I = 0x3


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

.field private mEditTextView:Landroid/widget/AutoCompleteTextView;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field private mFilter:Landroid/widget/Filter;

.field private mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

.field private mHeaderBarMiddle:Lcom/htc/widget/HeaderBar;

.field private mImageCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/htc/widget/HtcListView;

.field private mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

.field private mNoAccountButton:Landroid/widget/Button;

.field mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mNoAccountView:Landroid/widget/RelativeLayout;

.field private mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/htc/store/activity/landing/SearchMyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/SearchMyActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 162
    new-instance v0, Lcom/htc/store/activity/landing/SearchMyActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/SearchMyActivity$2;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v0, Lcom/htc/store/activity/landing/SearchMyActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/SearchMyActivity$3;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    .line 196
    new-instance v0, Lcom/htc/store/activity/landing/SearchMyActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/SearchMyActivity$4;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/widget/HeaderBarInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/landing/SearchMyActivity;)Landroid/widget/Filter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/store/activity/landing/SearchMyActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/store/activity/landing/SearchMyActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/landing/SearchMyActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/store/activity/landing/SearchMyActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/store/activity/landing/SearchMyActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/store/activity/landing/SearchMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    return-object v0
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 95
    const v3, 0x7f0c0018

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBar;

    .line 96
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    .line 99
    new-instance v3, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    .line 100
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 101
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 102
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 103
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBar;

    iget-object v4, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->addLeftView(Landroid/view/View;)V

    .line 106
    new-instance v3, Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    .line 107
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 108
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    .line 109
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/htc/store/activity/landing/SearchMyActivity$1;

    invoke-direct {v4, p0}, Lcom/htc/store/activity/landing/SearchMyActivity$1;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBar;

    iget-object v4, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mHeaderBarInput:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBar;->addCenterView(Landroid/view/View;)V

    .line 126
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 129
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    .line 130
    const v3, 0x7f0c002a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyText:Landroid/widget/TextView;

    .line 131
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyText:Landroid/widget/TextView;

    const v4, 0x7f0a002e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const v3, 0x7f0c003a

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    .line 135
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f03

    invoke-virtual {v0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 137
    .local v2, noAccountView:Landroid/widget/LinearLayout;
    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountButton:Landroid/widget/Button;

    .line 138
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "common_button"

    const v6, 0x2080195

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 141
    iget-object v3, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v3, 0x7f0c003b

    invoke-virtual {p0, v3}, Lcom/htc/store/activity/landing/SearchMyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    .line 143
    .local v1, noAccountList:Lcom/htc/widget/HtcListView;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItems()Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/store/module/adapter/MyActivityAdapter;

    const v2, 0x7f030016

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    .line 150
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    iget-object v2, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mOnDataChangedListener:Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setDataChangedListener(Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;)V

    .line 151
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    iget-object v2, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mMyActivityFilter:Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;

    invoke-virtual {v1, v2}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setMyActivitysFilter(Lcom/htc/store/module/adapter/MyActivityAdapter$MyActivityFilter;)V

    .line 152
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mFilter:Landroid/widget/Filter;

    .line 153
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v1, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 160
    return-void

    .line 156
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/SearchMyActivity;->updateViewVisibility(I)V

    goto :goto_0
.end method

.method private updateViewVisibility(I)V
    .locals 3
    .parameter "whichView"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 174
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mNoAccountView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/SearchMyActivity;->setContentView(I)V

    .line 61
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 63
    invoke-direct {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->initView()V

    .line 64
    invoke-direct {p0}, Lcom/htc/store/activity/landing/SearchMyActivity;->setAdapter()V

    .line 66
    new-instance v0, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;-><init>(Lcom/htc/store/activity/landing/SearchMyActivity;Lcom/htc/store/activity/landing/SearchMyActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/SearchMyActivity$GetImageCacheMappingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setDataChangedListener(Lcom/htc/store/module/adapter/MyActivityAdapter$DataChangedListener;)V

    .line 79
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/adapter/MyActivityAdapter;->setImageCacheMapping(Ljava/util/HashMap;)V

    .line 80
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/htc/store/activity/landing/SearchMyActivity;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 72
    return-void
.end method
