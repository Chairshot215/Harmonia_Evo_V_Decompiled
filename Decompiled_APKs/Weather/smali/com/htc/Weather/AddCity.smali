.class public Lcom/htc/Weather/AddCity;
.super Landroid/app/Activity;
.source "AddCity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/AddCity$EditTextWatcher;,
        Lcom/htc/Weather/AddCity$SmartSearchingModule;,
        Lcom/htc/Weather/AddCity$cityAdapter;,
        Lcom/htc/Weather/AddCity$IndexHolder;,
        Lcom/htc/Weather/AddCity$SORT_METHOD;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DELAY_INIT_ALL_CITY_LIST:I = 0x2

.field private static final DELAY_INIT_PARTIAL_CITY_LIST:I = 0x17

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field private static final MAXIMUN_CITY_COUNT:I = 0xf

.field private static final MENU_WEATHERHOME:I = 0x2

.field private static final MODE_CITY:I = 0x0

.field private static final MODE_COUNTRY:I = 0x1

.field private static final REVERSE_GEOCODE_SERVICE_RESULT_PROCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AddCity_ListActivity"

.field private static final USE_DCS_REVERSEGEOCODE:Z = false

.field private static final USE_LOCATION_PICKER:Z = true

.field private static final localLOG:Z


# instance fields
.field private final bAllowNoSearch:Z

.field private bound:Z

.field public default_sortmethod:Lcom/htc/Weather/AddCity$SORT_METHOD;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

.field private mAlertText:Landroid/widget/TextView;

.field private mAllCitiesCursor:Landroid/database/Cursor;

.field private mBoolDisableAllWeather:Z

.field private mBoolFilterReady:Z

.field private mBoolFinishing:Z

.field private mBoolInitReady:Z

.field public mBoolInputAreaVisible:Z

.field private mBoolQueryed:Z

.field public mBoolRequeryDB:Z

.field private mBoolStopQuery:Z

.field private mBoolUnderQueryStatus:Z

.field private mCityList:Lcom/htc/widget/HtcListView;

.field private mCityNotFoundAlert:Landroid/view/View;

.field private mContext:Lcom/htc/Weather/AddCity;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteView:Landroid/widget/Button;

.field public mDisableSmartSearch:Z

.field private mEditText:Landroid/widget/EditText;

.field public mEditTextWatcher:Landroid/text/TextWatcher;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIndexMode:I

.field private mInputArea:Landroid/widget/RelativeLayout;

.field public mKeyClicked:Ljava/lang/String;

.field private mKeypadLocked:Z

.field private mMode:I

.field public mPendingSearch:I

.field private mSearchBox:Landroid/view/View;

.field private mSearchTitle:Landroid/view/ViewGroup;

.field public mTarget:Ljava/lang/String;

.field private mTotalCities:I

.field private mUIHandler:Landroid/os/Handler;

.field private mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

.field public smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "country"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/Weather/AddCity;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput v2, p0, Lcom/htc/Weather/AddCity;->mMode:I

    .line 88
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mDisableSmartSearch:Z

    .line 91
    iput-boolean v3, p0, Lcom/htc/Weather/AddCity;->mBoolInputAreaVisible:Z

    .line 92
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolRequeryDB:Z

    .line 93
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolDisableAllWeather:Z

    .line 94
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolInitReady:Z

    .line 95
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolFinishing:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mTarget:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v0}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/htc/Weather/AddCity;->mIndexMode:I

    .line 111
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolUnderQueryStatus:Z

    .line 112
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->bound:Z

    .line 113
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->bAllowNoSearch:Z

    .line 128
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolFilterReady:Z

    .line 131
    iput v2, p0, Lcom/htc/Weather/AddCity;->mTotalCities:I

    .line 132
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolQueryed:Z

    .line 133
    iput-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z

    .line 134
    iput-boolean v3, p0, Lcom/htc/Weather/AddCity;->mKeypadLocked:Z

    .line 163
    new-instance v0, Lcom/htc/Weather/AddCity$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/AddCity$1;-><init>(Lcom/htc/Weather/AddCity;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/htc/Weather/AddCity$3;

    invoke-direct {v0, p0}, Lcom/htc/Weather/AddCity$3;-><init>(Lcom/htc/Weather/AddCity;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mUIHandler:Landroid/os/Handler;

    .line 1194
    new-instance v0, Lcom/htc/Weather/AddCity$4;

    invoke-direct {v0, p0}, Lcom/htc/Weather/AddCity$4;-><init>(Lcom/htc/Weather/AddCity;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/AddCity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolFinishing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/Weather/AddCity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/Weather/AddCity;->mBoolFinishing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/Weather/AddCity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/Weather/AddCity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/Weather/AddCity;->getSortOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/Weather/AddCity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/Weather/AddCity;->showList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/Weather/AddCity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/AddCity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/Weather/AddCity;->mIndexMode:I

    return v0
.end method

.method static synthetic access$300()Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/Weather/AddCity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$400()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/htc/Weather/AddCity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/Weather/AddCity;)Lcom/htc/Weather/util/SkinUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/Weather/AddCity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/Weather/AddCity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/Weather/AddCity;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/Weather/AddCity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/Weather/AddCity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/Weather/AddCity;->mBoolStopQuery:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/Weather/AddCity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/Weather/AddCity;->resetList(Z)V

    return-void
.end method

.method public static checkCityIsExistInLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "cr"
    .parameter "app"
    .parameter "code"

    .prologue
    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 213
    .local v7, ret:Z
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v4, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v4}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 221
    const/4 v7, 0x1

    .line 224
    :cond_0
    if-eqz v6, :cond_1

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    return v7

    .line 224
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getLocationInfoByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 4
    .parameter "cr"
    .parameter "code"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 193
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    return-object v1

    .line 201
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->default_sortmethod:Lcom/htc/Weather/AddCity$SORT_METHOD;

    sget-object v1, Lcom/htc/Weather/AddCity$SORT_METHOD;->CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v0}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v0}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 1218
    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1221
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initColorSpan()V
    .locals 4

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1211
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    const-string v2, "text_selection_highlight"

    const v3, 0x20a001b

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/Weather/AddCity;->BACKGROUND_SPAN_COLOR:I

    .line 1212
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/Weather/AddCity;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/Weather/AddCity;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 1213
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/Weather/AddCity;->FOREGROUND_SPAN_COLOR:I

    .line 1214
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/htc/Weather/AddCity;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/Weather/AddCity;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 1215
    return-void
.end method

.method private resetList(Z)V
    .locals 3
    .parameter "showAlert"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 1096
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mAlertText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1099
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mAlertText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1102
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1099
    goto :goto_0
.end method

.method private setScreenOrientation()V
    .locals 1

    .prologue
    .line 1225
    sget v0, Lcom/htc/Weather/util/WeatherUtil;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/Weather/AddCity;->setRequestedOrientation(I)V

    .line 1226
    return-void
.end method

.method private showList()V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    :cond_1
    return-void
.end method


# virtual methods
.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "filter"

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, resolver:Landroid/content/ContentResolver;
    iget v1, p0, Lcom/htc/Weather/AddCity;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 484
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filtering not allowed in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/Weather/AddCity;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyMappingIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    return-object v0
.end method

.method protected newListAdapter(Landroid/database/Cursor;)Lcom/htc/Weather/AddCity$cityAdapter;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 985
    new-instance v0, Lcom/htc/Weather/AddCity$cityAdapter;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    invoke-virtual {v2}, Lcom/htc/Weather/util/SkinUtil;->getAddCityItemLayout()I

    move-result v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/htc/Weather/AddCity$cityAdapter;-><init>(Lcom/htc/Weather/AddCity;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 986
    .local v0, adapter:Lcom/htc/Weather/AddCity$cityAdapter;
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1131
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1132
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 399
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolInputAreaVisible:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mSearchTitle:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 403
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 404
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mSearchTitle:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 234
    invoke-virtual {p0, v6}, Lcom/htc/Weather/AddCity;->requestWindowFeature(I)Z

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-direct {p0}, Lcom/htc/Weather/AddCity;->setScreenOrientation()V

    .line 242
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->setContentView(I)V

    .line 244
    iput-boolean v5, p0, Lcom/htc/Weather/AddCity;->mBoolFinishing:Z

    .line 245
    iput-boolean v5, p0, Lcom/htc/Weather/AddCity;->mBoolInitReady:Z

    .line 247
    iput-object p0, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    .line 249
    sget-object v2, Lcom/htc/Weather/AddCity$SORT_METHOD;->CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->default_sortmethod:Lcom/htc/Weather/AddCity$SORT_METHOD;

    .line 250
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->default_sortmethod:Lcom/htc/Weather/AddCity$SORT_METHOD;

    sget-object v3, Lcom/htc/Weather/AddCity$SORT_METHOD;->CITY:Lcom/htc/Weather/AddCity$SORT_METHOD;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->ordinal()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/htc/Weather/AddCity;->mIndexMode:I

    .line 254
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 256
    const v2, 0x7f0c0002

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    .line 257
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityNotFoundAlert:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 258
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mAlertText:Landroid/widget/TextView;

    .line 259
    const/high16 v2, 0x7f0c

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mSearchTitle:Landroid/view/ViewGroup;

    .line 262
    new-instance v2, Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    invoke-direct {v2, v3}, Lcom/htc/Weather/util/SkinUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    .line 263
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mSearchTitle:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lcom/htc/Weather/util/SkinUtil;->getAddCitySearchBox(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mSearchBox:Landroid/view/View;

    .line 264
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mSearchBox:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/htc/Weather/util/SkinUtil;->getAddCityEditField(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    .line 266
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    invoke-virtual {v3}, Lcom/htc/Weather/AddCity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mSearchTitle:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iput-boolean v6, p0, Lcom/htc/Weather/AddCity;->mBoolInputAreaVisible:Z

    .line 273
    const v2, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/htc/Weather/AddCity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListView;

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    .line 275
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 277
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 288
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setSaveEnabled(Z)V

    .line 289
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 295
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    new-instance v3, Lcom/htc/Weather/AddCity$2;

    invoke-direct {v3, p0}, Lcom/htc/Weather/AddCity$2;-><init>(Lcom/htc/Weather/AddCity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 375
    new-instance v2, Lcom/htc/Weather/AddCity$SmartSearchingModule;

    iget-object v3, p0, Lcom/htc/Weather/AddCity;->mContext:Lcom/htc/Weather/AddCity;

    iget-object v4, p0, Lcom/htc/Weather/AddCity;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/Weather/AddCity$SmartSearchingModule;-><init>(Lcom/htc/Weather/AddCity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    .line 377
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 378
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 379
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 380
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 382
    invoke-direct {p0}, Lcom/htc/Weather/AddCity;->initColorSpan()V

    .line 383
    return-void

    .line 250
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #theWindow:Landroid/view/Window;
    :cond_0
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->ordinal()I

    move-result v2

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 602
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 603
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolDisableAllWeather:Z

    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x2

    const v1, 0x7f0a0046

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080325

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 609
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1107
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->mUIHandler:Landroid/os/Handler;

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    invoke-virtual {v0}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->destroy()V

    .line 1112
    :cond_1
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    .line 1114
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->mKeyClicked:Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    if-eqz v0, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/Weather/AddCity$cityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1122
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->mAdapter:Lcom/htc/Weather/AddCity$cityAdapter;

    .line 1123
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1126
    return-void

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1120
    iput-object v1, p0, Lcom/htc/Weather/AddCity;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1148
    sparse-switch p1, :sswitch_data_0

    .line 1174
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1168
    :sswitch_0
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mSearchBox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1171
    :sswitch_1
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 637
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 634
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->finish()V

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 392
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 393
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->setInputWatcher()V

    .line 186
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 616
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolInitReady:Z

    if-nez v0, :cond_0

    .line 617
    const-string v0, "AddCity_ListActivity"

    const-string v1, "Add city UI has not been ready, no menu popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 621
    :cond_0
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mBoolDisableAllWeather:Z

    if-nez v0, :cond_1

    .line 622
    const/4 v0, 0x2

    const v1, 0x7f0a0046

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080325

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 627
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    invoke-direct {p0}, Lcom/htc/Weather/AddCity;->setScreenOrientation()V

    .line 441
    iget-boolean v2, p0, Lcom/htc/Weather/AddCity;->mBoolQueryed:Z

    if-nez v2, :cond_0

    .line 442
    iput-boolean v4, p0, Lcom/htc/Weather/AddCity;->mBoolQueryed:Z

    .line 443
    invoke-direct {p0, v5}, Lcom/htc/Weather/AddCity;->resetList(Z)V

    .line 444
    iput-boolean v4, p0, Lcom/htc/Weather/AddCity;->mBoolInitReady:Z

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 449
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 450
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.Weather.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.Weather.intent.action.SEARCH_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    :cond_1
    iput-boolean v4, p0, Lcom/htc/Weather/AddCity;->mBoolDisableAllWeather:Z

    .line 458
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 460
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    if-eqz v2, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/htc/Weather/AddCity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 462
    .local v1, systemLocale:Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 466
    :cond_3
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 471
    .end local v1           #systemLocale:Ljava/util/Locale;
    :cond_4
    :goto_1
    return-void

    .line 454
    :cond_5
    iput-boolean v5, p0, Lcom/htc/Weather/AddCity;->mBoolDisableAllWeather:Z

    goto :goto_0

    .line 468
    .restart local v1       #systemLocale:Ljava/util/Locale;
    :cond_6
    iget-object v2, p0, Lcom/htc/Weather/AddCity;->mCityList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_1
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1138
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1143
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 648
    return v2
.end method

.method public search(ILjava/lang/String;)V
    .locals 2
    .parameter "n"
    .parameter "patternIndex"

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/htc/Weather/AddCity;->mDisableSmartSearch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->smartSearchingModule:Lcom/htc/Weather/AddCity$SmartSearchingModule;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Lcom/htc/Weather/AddCity$SmartSearchingModule;->search(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public setInputWatcher()V
    .locals 2

    .prologue
    .line 991
    new-instance v0, Lcom/htc/Weather/AddCity$EditTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/Weather/AddCity$EditTextWatcher;-><init>(Lcom/htc/Weather/AddCity;)V

    iput-object v0, p0, Lcom/htc/Weather/AddCity;->mEditTextWatcher:Landroid/text/TextWatcher;

    .line 993
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/htc/Weather/AddCity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/Weather/AddCity;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 996
    :cond_0
    return-void
.end method
