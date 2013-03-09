.class public Lcom/android/htcdialer/HtcCountryCodePicker;
.super Lcom/htc/app/HtcListActivity;
.source "HtcCountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field private static final DEBUG:Z = false

.field private static final ENABLE_FAKE_DATA:Z = false

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field public static final REQUEST_PICK_COUNTRY_CODE:I = 0x0

.field private static final SUPPORT_FAST_SCORLL:Z = true

.field private static final SUPPORT_SEARCH_BOX:Z = true

.field private static final TAG:Ljava/lang/String; = "HtcCountryCodePicker"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mNetworkOperator:Ljava/lang/String;

.field private static mSimOperator:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFirstBodyPos:I

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNetworkOperatorPos:I

.field private mPositions:Ljava/util/ArrayList;

.field private mPrefix:Ljava/lang/String;

.field private mSections:Ljava/util/ArrayList;

.field private mSimOperatorPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/android/htcdialer/HtcCountryCodePicker$1;

    invoke-direct {v0}, Lcom/android/htcdialer/HtcCountryCodePicker$1;-><init>()V

    sput-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mData:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSections:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mPositions:Ljava/util/ArrayList;

    .line 101
    iput v1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperatorPos:I

    .line 102
    iput v1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperatorPos:I

    .line 103
    iput v1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mFirstBodyPos:I

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htcdialer/HtcCountryCodePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/android/htcdialer/HtcCountryCodePicker;->BACKGROUND_SPAN_COLOR:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/htcdialer/HtcCountryCodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mFirstBodyPos:I

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/android/htcdialer/HtcCountryCodePicker;->FOREGROUND_SPAN_COLOR:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htcdialer/HtcCountryCodePicker;)Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/htcdialer/HtcCountryCodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperatorPos:I

    return p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/htcdialer/HtcCountryCodePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperatorPos:I

    return p1
.end method

.method private static final extractSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "source"

    .prologue
    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 280
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/htcdialer/HanziToPinyin;->getInstance()Lcom/android/htcdialer/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/htcdialer/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 281
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/HanziToPinyin$Token;

    .line 283
    .local v2, token:Lcom/android/htcdialer/HanziToPinyin$Token;
    iget-object v4, v2, Lcom/android/htcdialer/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 285
    .end local v2           #token:Lcom/android/htcdialer/HanziToPinyin$Token;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 288
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/HanziToPinyin$Token;>;"
    .end local p0
    :cond_1
    :goto_1
    return-object p0

    .restart local p0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, ""

    goto :goto_1
.end method

.method private initAdapterData()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/android/htcdialer/assist/CountryTable;

    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htcdialer/assist/CountryTable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/htcdialer/assist/CountryTable;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mData:Ljava/util/List;

    .line 295
    return-void
.end method

.method private initListView()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 321
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mData:Ljava/util/List;

    sget-object v1, Lcom/android/htcdialer/HtcCountryCodePicker;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    new-instance v0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    iget-object v3, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mData:Ljava/util/List;

    const v4, 0x2090089

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const-string v1, "cc"

    aput-object v1, v5, v7

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;-><init>(Lcom/android/htcdialer/HtcCountryCodePicker;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    .line 326
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mListView:Lcom/htc/widget/HtcListView;

    .line 331
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    invoke-virtual {v0}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->updateSections()V

    .line 332
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 334
    return-void

    .line 322
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x2t
        0x13t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private initOperator()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 302
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperator:Ljava/lang/String;

    .line 304
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 305
    const-string v0, "460"

    sput-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperator:Ljava/lang/String;

    .line 308
    :cond_0
    const-string v0, "HtcCountryCodePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeDialingDialog() mSimOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    .line 310
    sget-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 311
    sget-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    .line 312
    const-string v0, "HtcCountryCodePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeDialingDialog() mNetworkOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    return-void
.end method

.method private initSearchBox()V
    .locals 3

    .prologue
    .line 338
    const v1, 0x7f0b006b

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/HtcCountryCodePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    .line 344
    .local v0, sb:Lcom/htc/widget/HeaderBarInput;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 345
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    new-instance v2, Lcom/android/htcdialer/HtcCountryCodePicker$2;

    invoke-direct {v2, p0}, Lcom/android/htcdialer/HtcCountryCodePicker$2;-><init>(Lcom/android/htcdialer/HtcCountryCodePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 368
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 369
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/HtcCountryCodePicker;->setContentView(I)V

    .line 371
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/htcdialer/HtcCountryCodePicker;->BACKGROUND_SPAN_COLOR:I

    .line 372
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/htcdialer/HtcCountryCodePicker;->FOREGROUND_SPAN_COLOR:I

    .line 374
    invoke-direct {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->initAdapterData()V

    .line 375
    invoke-direct {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->initOperator()V

    .line 376
    invoke-direct {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->initListView()V

    .line 377
    invoke-direct {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->initSearchBox()V

    .line 378
    const-string v3, "common_glance_bkg"

    const-string v4, "drawable"

    invoke-static {v3, v4, v7}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 379
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 383
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/HtcCountryCodePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 385
    .local v0, content:Landroid/view/ViewGroup;
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 386
    .local v2, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_frame"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 387
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 388
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 390
    .end local v0           #content:Landroid/view/ViewGroup;
    .end local v2           #root:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 402
    invoke-super/range {p0 .. p5}, Lcom/htc/app/HtcListActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 403
    iget-object v5, p0, Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    invoke-virtual {v5, p3}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 404
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 415
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lcom/android/htcdialer/HtcCountryCodePicker;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->finish()V

    .line 417
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 396
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 397
    return-void
.end method
