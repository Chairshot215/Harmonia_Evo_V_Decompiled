.class public Lcom/htc/android/worldclock/TimeZonePicker;
.super Landroid/app/Activity;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;,
        Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;,
        Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;,
        Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field public static final CITY_NOT_FOUND:I = 0x0

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field private static final PRIMARY_TEXT_ITEM:I = 0x0

.field private static final SEARCH_FOR_ADD:I = 0x1

.field private static final SEARCH_FOR_HOME_SETTINGS:I = 0x2

.field private static final SEARCH_FOR_TIMEZONE:I = 0x3

.field private static final SECONDARY_TEXT_ITEM:I = 0x1


# instance fields
.field private final WHAT_ON_ADD_CITY:I

.field private final WHAT_ON_INIT:I

.field private final WHAT_ON_SET_HOME:I

.field private mAdded:Z

.field private mCityNotFoundAlert:Landroid/widget/TextView;

.field public mCreated:Z

.field private mCursor:Landroid/database/Cursor;

.field public mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

.field private mDestroyed:Z

.field public mDisableSearch:Z

.field private mEditor:Landroid/widget/AutoCompleteTextView;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

.field private mInit:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mInputTextWatcher:Landroid/text/TextWatcher;

.field private mIsSipExist:Z

.field private mItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mLooper:Landroid/os/Looper;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field private mSearchKeyPressed:Z

.field public mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

.field private mTimeZoneList:Lcom/htc/widget/HtcListView;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->WHAT_ON_INIT:I

    .line 60
    const/16 v0, 0x2bd

    iput v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->WHAT_ON_ADD_CITY:I

    .line 61
    const/16 v0, 0x2be

    iput v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->WHAT_ON_SET_HOME:I

    .line 63
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z

    .line 73
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 74
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mLooper:Landroid/os/Looper;

    .line 75
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;

    .line 77
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInit:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDestroyed:Z

    .line 84
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDisableSearch:Z

    .line 85
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCreated:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchKeyPressed:Z

    .line 89
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    .line 99
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimeZonePicker$1;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    .line 210
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$3;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimeZonePicker$3;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 622
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimeZonePicker$5;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mUIHandler:Landroid/os/Handler;

    .line 677
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/worldclock/TimeZonePicker;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/android/worldclock/TimeZonePicker;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/android/worldclock/TimeZonePicker;->noCityAlert(ZZ)V

    return-void
.end method

.method static synthetic access$1502(Lcom/htc/android/worldclock/TimeZonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIsSipExist:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->checkFocusToHideSIP()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->onInitParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/TimeZonePicker;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimeZonePicker;->addCityToDB([Lcom/htc/util/weather/WeatherLocation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/TimeZonePicker;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimeZonePicker;->setHomeToDB([Lcom/htc/util/weather/WeatherLocation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/TimeZonePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/worldclock/TimeZonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mAdded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/TimeZonePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getInputText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/android/worldclock/TimeZonePicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$900()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/htc/android/worldclock/TimeZonePicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method private addCityToDB([Lcom/htc/util/weather/WeatherLocation;)V
    .locals 9
    .parameter "w"

    .prologue
    .line 253
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 254
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 255
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 256
    .local v3, exist:Z
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    .line 257
    .local v6, loc:[Lcom/htc/util/weather/WeatherLocation;
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 258
    .local v2, data:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    const/4 v3, 0x1

    .line 264
    .end local v2           #data:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    if-nez v3, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, p1}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 277
    :goto_1
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/TimeZonePicker;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->finish()V

    .line 279
    return-void

    .line 257
    .restart local v2       #data:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v2           #data:Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    new-instance v7, Lcom/htc/android/worldclock/TimeZonePicker$4;

    invoke-direct {v7, p0}, Lcom/htc/android/worldclock/TimeZonePicker$4;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/TimeZonePicker;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private checkFocusToHideSIP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 694
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchKeyPressed:Z

    if-eqz v0, :cond_1

    .line 695
    iput-boolean v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchKeyPressed:Z

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIsSipExist:Z

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private getInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 533
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initColorSpan()V
    .locals 3

    .prologue
    .line 708
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 709
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 710
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/ResUtils;->get_common_skin_color(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/android/worldclock/TimeZonePicker;->BACKGROUND_SPAN_COLOR:I

    .line 711
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/android/worldclock/TimeZonePicker;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/android/worldclock/TimeZonePicker;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 712
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/android/worldclock/TimeZonePicker;->FOREGROUND_SPAN_COLOR:I

    .line 713
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/htc/android/worldclock/TimeZonePicker;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/android/worldclock/TimeZonePicker;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 714
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 172
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TimeZonePicker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 173
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 174
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mLooper:Landroid/os/Looper;

    .line 175
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$2;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/TimeZonePicker$2;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method private noCityAlert(ZZ)V
    .locals 3
    .parameter "isVisible"
    .parameter "isShowText"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :goto_0
    if-eqz p2, :cond_1

    .line 355
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    :goto_1
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private onInitParent()V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 197
    iget-boolean v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v1, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    .line 201
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    if-nez v1, :cond_1

    .line 202
    new-instance v1, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, IMEfilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    .end local v0           #IMEfilter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0
.end method

.method private setHomeToDB([Lcom/htc/util/weather/WeatherLocation;)V
    .locals 3
    .parameter "w"

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 283
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 284
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 285
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/TimeZonePicker;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->finish()V

    .line 287
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 363
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 364
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 366
    iput-boolean v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchKeyPressed:Z

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public handleStuffAfterOnResume()V
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCreated:Z

    .line 617
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDisableSearch:Z

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->search(Ljava/lang/String;)V

    .line 620
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 119
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/htc/android/worldclock/TimeZonePicker;->requestWindowFeature(I)Z

    .line 122
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p0}, Lcom/htc/android/worldclock/ResUtils;->getCommonAppBkg(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 123
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/TimeZonePicker;->setContentView(I)V

    .line 125
    const v3, 0x7f0b007a

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/TimeZonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarInput;

    .line 126
    .local v0, headerInput:Lcom/htc/widget/HeaderBarInput;
    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 127
    invoke-virtual {v0, v6}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 128
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    .line 130
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    const v4, 0x7f08002e

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/TimeZonePicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    const/high16 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 133
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->setInputWatcher()V

    .line 136
    const v3, 0x7f0b007b

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/TimeZonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    .line 137
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mItemClick:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    .local v2, systemLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, systemLang:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 149
    :goto_0
    const v3, 0x7f0b007c

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/TimeZonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCityNotFoundAlert:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5}, Landroid/widget/TextView;->setRoundedCornerEnabled(ZZ)V

    .line 152
    invoke-direct {p0, v5, v6}, Lcom/htc/android/worldclock/TimeZonePicker;->noCityAlert(ZZ)V

    .line 153
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->initColorSpan()V

    .line 154
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimeZonePicker;->initHandler()V

    .line 156
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2bc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    return-void

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDestroyed:Z

    .line 314
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/TimeZonePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursor:Landroid/database/Cursor;

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->destroy()V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;->onDestroy()V

    .line 337
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mCursorAdapter:Lcom/htc/android/worldclock/TimeZonePicker$CityListAdapter;

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mTimeZoneList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 340
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 341
    iput-object v2, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mIMEStateRecv:Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;

    .line 342
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 343
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 161
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 301
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 293
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInit:Z

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInit:Z

    .line 297
    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 606
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 607
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mDisableSearch:Z

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mSearchModule:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    .line 612
    :cond_0
    return-void
.end method

.method public setInputWatcher()V
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 524
    new-instance v0, Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimeZonePicker$EditTextWatcher;-><init>(Lcom/htc/android/worldclock/TimeZonePicker;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputTextWatcher:Landroid/text/TextWatcher;

    .line 526
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mEditor:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 529
    :cond_0
    return-void
.end method
