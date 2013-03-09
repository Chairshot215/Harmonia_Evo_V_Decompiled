.class public Lcom/htc/Weather/widget/HourlyPanel;
.super Landroid/widget/RelativeLayout;
.source "HourlyPanel.java"


# static fields
.field private static FORM_INFO_HIGHT_PADDING:I

.field private static FORM_INFO_ICON_HIGHT_PADDING:I

.field private static FORM_WIDTH_PADDING:I

.field private static HEIGHT_PADDING:I

.field private static TAG:Ljava/lang/String;

.field private static WIDTH_PADDING:I


# instance fields
.field private COLUMN_SIZE:I

.field private FORM_DATA_HEIGHT:I

.field private FORM_DATA_WIDTH:I

.field private FORM_DATA_WIDTH_HALF:I

.field private FORM_HEIGHT:I

.field private FORM_WIDTH:I

.field private HIGHEST_HUMIDITY_VALUE:I

.field private HIGHEST_TEMPERATURE_VALUE:I

.field private HUMIDITY_LEVEL_VALUE:I

.field private LOWEST_HUMIDITY_VALUE:I

.field private LOWEST_TEMPERATURE_VALUE:I

.field private ROW_SIZE:I

.field private final SET_LOADING_TIME_OUT:I

.field private final SET_LOADING_TXT:I

.field private final SET_REMOVE_LODING_TXT:I

.field private TEMPERATURE_LEVEL_VALUE:I

.field private TIME_LINE_HEIGHT:I

.field private TIME_LINE_TEXT_HEIGHT_PADDING:I

.field private TIME_LINE_TEXT_WIDTH_PADDING:I

.field private TOTAL_HUMIDITY_VALUE:I

.field private TOTAL_TEMPERATURE_VALUE:I

.field private VIEW_HEIGHT:I

.field private VIEW_WIDTH:I

.field private drawFrame:Landroid/widget/FrameLayout;

.field private humidityYaxisValue:[I

.field private isInitialize:Z

.field private mAnimTxt:Landroid/widget/TextView;

.field private mCityName:Landroid/widget/TextView;

.field private mCityTime:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurLocateImg:Landroid/widget/ImageView;

.field private mErrorMsg:Landroid/widget/TextView;

.field private mGradLeft:Landroid/widget/LinearLayout;

.field private mGradRight:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHourName:Landroid/widget/LinearLayout;

.field private mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

.field private mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

.field private mHourlySroll:Landroid/widget/HorizontalScrollView;

.field private mHourlyTable:Lcom/htc/Weather/widget/HourlyTable;

.field private mLeftWhitebar:Landroid/view/View;

.field private mRes:Landroid/content/res/Resources;

.field private mTempImg:Landroid/widget/ImageView;

.field private mUpdateStr:Ljava/lang/String;

.field private mWeatherInfo:Landroid/widget/LinearLayout;

.field private metric:Ljava/lang/String;

.field private start_clock:I

.field private temperatureYaxisValue:[I

.field private testHumidityData:[I

.field private testIconData:[I

.field private testTemperatureData:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "HourlyPanel"

    sput-object v0, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x8

    sput v0, Lcom/htc/Weather/widget/HourlyPanel;->WIDTH_PADDING:I

    .line 50
    const/16 v0, 0x14

    sput v0, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    .line 51
    const/16 v0, 0x2d

    sput v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH_PADDING:I

    .line 52
    const/16 v0, 0x46

    sput v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_INFO_HIGHT_PADDING:I

    .line 53
    const/16 v0, 0x1e

    sput v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_INFO_ICON_HIGHT_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    .line 57
    const/16 v0, 0x1da

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH:I

    .line 58
    const/16 v0, 0xc0

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TIME_LINE_HEIGHT:I

    .line 60
    const/16 v0, 0x320

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->VIEW_WIDTH:I

    .line 61
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->VIEW_HEIGHT:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->start_clock:I

    .line 90
    iput-boolean v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_LOADING_TXT:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_LOADING_TIME_OUT:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_REMOVE_LODING_TXT:I

    .line 541
    new-instance v0, Lcom/htc/Weather/widget/HourlyPanel$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HourlyPanel$1;-><init>(Lcom/htc/Weather/widget/HourlyPanel;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    .line 107
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyPanel;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    .line 57
    const/16 v0, 0x1da

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH:I

    .line 58
    const/16 v0, 0xc0

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TIME_LINE_HEIGHT:I

    .line 60
    const/16 v0, 0x320

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->VIEW_WIDTH:I

    .line 61
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->VIEW_HEIGHT:I

    .line 88
    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->start_clock:I

    .line 90
    iput-boolean v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_LOADING_TXT:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_LOADING_TIME_OUT:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->SET_REMOVE_LODING_TXT:I

    .line 541
    new-instance v0, Lcom/htc/Weather/widget/HourlyPanel$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HourlyPanel$1;-><init>(Lcom/htc/Weather/widget/HourlyPanel;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    .line 114
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyPanel;->init()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/HourlyPanel;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mAnimTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/HourlyPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getHourString(I)Ljava/lang/String;
    .locals 3
    .parameter "hour"

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, hour_string:Ljava/lang/String;
    rem-int/lit8 p1, p1, 0x18

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030011

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->drawFrame:Landroid/widget/FrameLayout;

    .line 120
    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityName:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0c0043

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityTime:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f0c004a

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f0c0040

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    .line 124
    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mTempImg:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f0c0044

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlySroll:Landroid/widget/HorizontalScrollView;

    .line 126
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mLeftWhitebar:Landroid/view/View;

    .line 127
    new-instance v1, Lcom/htc/Weather/widget/HourlyTable;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/Weather/widget/HourlyTable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyTable:Lcom/htc/Weather/widget/HourlyTable;

    .line 128
    new-instance v1, Lcom/htc/Weather/widget/HourlyCurve;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/Weather/widget/HourlyCurve;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

    .line 129
    new-instance v1, Lcom/htc/Weather/widget/HourlyOutline;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/Weather/widget/HourlyOutline;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    .line 130
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->addView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->drawFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyTable:Lcom/htc/Weather/widget/HourlyTable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->drawFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mGradLeft:Landroid/widget/LinearLayout;

    .line 134
    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mWeatherInfo:Landroid/widget/LinearLayout;

    .line 136
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v2, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v1, v2, :cond_0

    const-string v1, "\u00b0"

    :goto_0
    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    .line 138
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mAnimTxt:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mUpdateStr:Ljava/lang/String;

    .line 140
    return-void

    .line 136
    :cond_0
    const-string v1, "\u00b0"

    goto :goto_0
.end method

.method private setLayoutContent()V
    .locals 21

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mGradLeft:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mWeatherInfo:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 272
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080076

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080077

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v9, p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080078

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080079

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mGradLeft:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9           #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f08007a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .restart local v9       #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mWeatherInfo:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9           #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080081

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .restart local v9       #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080082

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080083

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlySroll:Landroid/widget/HorizontalScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v9           #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f08008b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .restart local v9       #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f08008d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f08008e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mLeftWhitebar:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    sget-boolean v17, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-eqz v17, :cond_1

    .line 299
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    if-gt v5, v0, :cond_3

    .line 300
    rem-int/lit8 v17, v5, 0x2

    if-nez v17, :cond_0

    .line 301
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->TEMPERATURE_LEVEL_VALUE:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, temp_temperature_level:Ljava/lang/String;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    .local v12, t:Landroid/widget/TextView;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080076

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v8, p:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800f0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mGradLeft:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .end local v8           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #t:Landroid/widget/TextView;
    .end local v14           #temp_temperature_level:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 319
    .end local v5           #i:I
    :cond_1
    sget-object v17, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Row size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    if-ge v5, v0, :cond_3

    .line 321
    rem-int/lit8 v17, v5, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 322
    sget-object v17, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "temp : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->TEMPERATURE_LEVEL_VALUE:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 324
    .restart local v14       #temp_temperature_level:Ljava/lang/String;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    .restart local v12       #t:Landroid/widget/TextView;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080076

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .restart local v8       #p:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800f0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mGradLeft:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    .end local v8           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #t:Landroid/widget/TextView;
    .end local v14           #temp_temperature_level:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 337
    :cond_3
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v5, v0, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f03000e

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 340
    .local v7, l:Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080085

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080084

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 344
    .restart local v8       #p:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    .line 345
    const v17, 0x7f0c0034

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 346
    .local v15, time:Landroid/widget/TextView;
    const v17, 0x7f0c0035

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 347
    .local v6, icon:Landroid/widget/ImageView;
    const v17, 0x7f0c0036

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 349
    .local v13, temp:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->start_clock:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->getHourString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->testIconData:[I

    move-object/from16 v17, v0

    aget v17, v17, v5

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->testTemperatureData:[I

    move-object/from16 v18, v0

    aget v18, v18, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->metric:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mWeatherInfo:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    .end local v6           #icon:Landroid/widget/ImageView;
    .end local v13           #temp:Landroid/widget/TextView;
    .end local v15           #time:Landroid/widget/TextView;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 358
    :cond_4
    new-instance v16, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 359
    .local v16, v:Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080099

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080086

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v11, r:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mWeatherInfo:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 368
    .end local v7           #l:Landroid/view/View;
    .end local v8           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #r:Landroid/widget/LinearLayout$LayoutParams;
    .end local v16           #v:Landroid/view/View;
    :cond_5
    const v17, 0x7f0c0048

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 369
    .local v4, hour_tmp_img:Landroid/widget/ImageView;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080096

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v10, param:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f080098

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080097

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 376
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    return-void
.end method


# virtual methods
.method public UpdateData([I[I[II)V
    .locals 9
    .parameter "newTemperatureData"
    .parameter "newHumidityData"
    .parameter "newIconData"
    .parameter "startclock"

    .prologue
    .line 154
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    .line 156
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->humidityYaxisValue:[I

    .line 159
    iput-object p1, p0, Lcom/htc/Weather/widget/HourlyPanel;->testTemperatureData:[I

    .line 160
    iput-object p2, p0, Lcom/htc/Weather/widget/HourlyPanel;->testHumidityData:[I

    .line 161
    iput-object p3, p0, Lcom/htc/Weather/widget/HourlyPanel;->testIconData:[I

    .line 163
    iput p4, p0, Lcom/htc/Weather/widget/HourlyPanel;->start_clock:I

    .line 166
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->TEMPERATURE_LEVEL_VALUE:I

    mul-int/lit8 v5, v5, 0x11

    sub-int v2, v4, v5

    .line 167
    .local v2, low_tmp:I
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    sub-int v3, v4, v2

    .line 168
    .local v3, range_tmp:I
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    mul-int/lit8 v0, v4, 0x11

    .line 169
    .local v0, form_height:I
    if-gtz v3, :cond_0

    const/4 v3, 0x1

    .line 170
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    if-gt v1, v4, :cond_3

    .line 171
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->testTemperatureData:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    if-lt v4, v5, :cond_1

    .line 172
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    sget v5, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    aput v5, v4, v1

    .line 178
    :goto_1
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " low_tmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " range_tmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " form_height "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " FORM_DATA_HEIGHT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " temperatureYaxisValue[i] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 173
    :cond_1
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->testTemperatureData:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_TEMPERATURE_VALUE:I

    if-gt v4, v5, :cond_2

    .line 174
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    sget v5, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    iget v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    add-int/2addr v5, v6

    aput v5, v4, v1

    goto/16 :goto_1

    .line 176
    :cond_2
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    iget-object v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->testTemperatureData:[I

    aget v6, v6, v1

    sub-int/2addr v5, v6

    mul-int/2addr v5, v0

    div-int/2addr v5, v3

    iget v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    iget-object v7, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v1

    goto/16 :goto_1

    .line 186
    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    if-gt v1, v4, :cond_6

    .line 187
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->testHumidityData:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_HUMIDITY_VALUE:I

    if-lt v4, v5, :cond_4

    .line 188
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->humidityYaxisValue:[I

    sget v5, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    aput v5, v4, v1

    .line 195
    :goto_3
    sget-object v4, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " humidityYaxisValue[i] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 189
    :cond_4
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->testHumidityData:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_HUMIDITY_VALUE:I

    if-gt v4, v5, :cond_5

    .line 190
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->humidityYaxisValue:[I

    sget v5, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    iget v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    add-int/2addr v5, v6

    aput v5, v4, v1

    goto :goto_3

    .line 192
    :cond_5
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->humidityYaxisValue:[I

    sget v5, Lcom/htc/Weather/widget/HourlyPanel;->HEIGHT_PADDING:I

    iget v6, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    iget v7, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_HUMIDITY_VALUE:I

    iget-object v8, p0, Lcom/htc/Weather/widget/HourlyPanel;->testHumidityData:[I

    aget v8, v8, v1

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/htc/Weather/widget/HourlyPanel;->TOTAL_HUMIDITY_VALUE:I

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v1

    goto :goto_3

    .line 198
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    .line 199
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

    iget-object v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->temperatureYaxisValue:[I

    invoke-virtual {v4, v5}, Lcom/htc/Weather/widget/HourlyCurve;->setHourlyTemperature([I)V

    .line 200
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyTable:Lcom/htc/Weather/widget/HourlyTable;

    iget-boolean v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    invoke-virtual {v4, v5}, Lcom/htc/Weather/widget/HourlyTable;->setEnableDraw(Z)V

    .line 201
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

    iget-boolean v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    invoke-virtual {v4, v5}, Lcom/htc/Weather/widget/HourlyCurve;->setEnableDraw(Z)V

    .line 202
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    iget-boolean v5, p0, Lcom/htc/Weather/widget/HourlyPanel;->isInitialize:Z

    invoke-virtual {v4, v5}, Lcom/htc/Weather/widget/HourlyOutline;->setEnableDraw(Z)V

    .line 203
    invoke-direct {p0}, Lcom/htc/Weather/widget/HourlyPanel;->setLayoutContent()V

    .line 204
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mTempImg:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mTempImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :cond_7
    iget-object v4, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public UpdateDataRange(IIII)V
    .locals 3
    .parameter "maxTemp"
    .parameter "minTemp"
    .parameter "maxHumidity"
    .parameter "minHumidity"

    .prologue
    .line 220
    iput p1, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    .line 221
    iput p2, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_TEMPERATURE_VALUE:I

    .line 222
    iput p3, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_HUMIDITY_VALUE:I

    .line 223
    iput p4, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_HUMIDITY_VALUE:I

    .line 224
    iget v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_TEMPERATURE_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_TEMPERATURE_VALUE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TOTAL_TEMPERATURE_VALUE:I

    .line 225
    iget v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TOTAL_TEMPERATURE_VALUE:I

    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TEMPERATURE_LEVEL_VALUE:I

    .line 226
    iget v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->HIGHEST_HUMIDITY_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->LOWEST_HUMIDITY_VALUE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TOTAL_HUMIDITY_VALUE:I

    .line 227
    iget v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->TOTAL_HUMIDITY_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->HUMIDITY_LEVEL_VALUE:I

    .line 228
    return-void
.end method

.method public UpdateWeatherFormParameter(IIII)V
    .locals 4
    .parameter "form_width"
    .parameter "form_height"
    .parameter "row_size"
    .parameter "colume_size"

    .prologue
    .line 242
    iput p2, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    .line 243
    iput p1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH:I

    .line 244
    iput p3, p0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    .line 245
    iput p4, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    .line 246
    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->ROW_SIZE:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    .line 247
    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH:I

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->COLUMN_SIZE:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    .line 248
    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH_HALF:I

    .line 249
    sget v1, Lcom/htc/Weather/widget/HourlyPanel;->FORM_WIDTH_PADDING:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->TIME_LINE_TEXT_WIDTH_PADDING:I

    .line 250
    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->TIME_LINE_HEIGHT:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->TIME_LINE_TEXT_HEIGHT_PADDING:I

    .line 252
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, p4

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 256
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->drawFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const-string v1, "HourlyTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/htc/Weather/widget/HourlyOutline;->setTableParameter(IIII)V

    .line 261
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyTable:Lcom/htc/Weather/widget/HourlyTable;

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/htc/Weather/widget/HourlyTable;->setTableParameter(IIII)V

    .line 262
    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyCurve:Lcom/htc/Weather/widget/HourlyCurve;

    iget v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_HEIGHT:I

    iget v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->FORM_DATA_WIDTH:I

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/htc/Weather/widget/HourlyCurve;->setTableParameter(IIII)V

    .line 263
    return-void
.end method

.method public setScrollViewEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlySroll:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 450
    if-eqz p1, :cond_1

    .line 451
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlySroll:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlySroll:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWeatherForm()V
    .locals 24

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 466
    sget-object v20, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v21, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual/range {v20 .. v21}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v9

    .line 467
    .local v9, cityinfo:Lcom/htc/Weather/data/CityInfo;
    if-eqz v9, :cond_0

    iget-boolean v0, v9, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 468
    :cond_0
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->showErrorMsg(Z)V

    .line 540
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {v9}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v12

    .line 472
    .local v12, forecast:Lcom/htc/Weather/data/DayForecast;
    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getHourlyTime()[Ljava/lang/String;

    move-result-object v19

    .line 473
    .local v19, times:[Ljava/lang/String;
    const-string v5, ""

    .line 474
    .local v5, cityName:Ljava/lang/String;
    const-string v6, ""

    .line 475
    .local v6, cityTime:Ljava/lang/String;
    iget-object v5, v9, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 476
    iget-boolean v0, v9, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 477
    invoke-virtual {v9}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/Weather/data/DayForecast;->getCityLocalTime()Ljava/lang/String;

    move-result-object v6

    .line 478
    :cond_2
    invoke-virtual {v9}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual {v9}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual {v9}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.htc.htclocationservice"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 480
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/htc/Weather/widget/HourlyPanel;->updateCityInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 484
    :goto_1
    if-nez v19, :cond_4

    .line 485
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->showErrorMsg(Z)V

    goto :goto_0

    .line 482
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/htc/Weather/widget/HourlyPanel;->updateCityInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 488
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->showErrorMsg(Z)V

    .line 490
    const/4 v10, 0x0

    .line 491
    .local v10, column_size:I
    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getCityLocalTime()Ljava/lang/String;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    rem-int/lit8 v7, v20, 0x18

    .line 492
    .local v7, city_next_hour:I
    const/4 v8, 0x0

    .line 493
    .local v8, city_start_hour_position:I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v15, v0, [I

    .line 495
    .local v15, hr:[I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 496
    aget-object v20, v19, v16

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 497
    .local v18, t:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v13

    .line 499
    .local v13, h0:I
    const/16 v20, 0x1

    :try_start_0
    aget-object v14, v18, v20

    .line 500
    .local v14, h1:Ljava/lang/String;
    aput v13, v15, v16

    .line 502
    const-string v20, "PM"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 503
    add-int/lit8 v20, v13, 0xc

    aput v20, v15, v16

    .line 508
    :cond_5
    :goto_3
    aget v20, v15, v16

    move/from16 v0, v20

    if-ne v0, v7, :cond_6

    .line 509
    move/from16 v8, v16

    .line 510
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v17, v20, v16

    .line 511
    .local v17, s:I
    if-lez v17, :cond_6

    .line 512
    move/from16 v10, v17

    .line 495
    .end local v14           #h1:Ljava/lang/String;
    .end local v17           #s:I
    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 504
    .restart local v14       #h1:Ljava/lang/String;
    :cond_7
    const-string v20, "AM"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0xc

    move/from16 v0, v20

    if-ne v13, v0, :cond_5

    .line 505
    const/16 v20, 0x0

    aput v20, v15, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 514
    .end local v14           #h1:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 515
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 519
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #h0:I
    .end local v18           #t:[Ljava/lang/String;
    :cond_8
    if-gtz v10, :cond_9

    .line 521
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->showErrorMsg(Z)V

    goto/16 :goto_0

    .line 525
    :cond_9
    sget-object v20, Lcom/htc/Weather/widget/HourlyPanel;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "column_size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getMaxHourTemp()I

    move-result v20

    add-int/lit8 v20, v20, 0x5

    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getMinHourTemp()I

    move-result v21

    add-int/lit8 v21, v21, -0x5

    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getMaxHourPrecip()I

    move-result v22

    add-int/lit8 v22, v22, 0x5

    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getMinHourPrecip()I

    move-result v23

    add-int/lit8 v23, v23, -0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/Weather/widget/HourlyPanel;->UpdateDataRange(IIII)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090016

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    mul-int v20, v20, v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090015

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090014

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    mul-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/Weather/widget/HourlyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090014

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/htc/Weather/widget/HourlyPanel;->UpdateWeatherFormParameter(IIII)V

    .line 535
    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getHourlyTemp()[I

    move-result-object v20

    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getHourlyPrecipPercent()[I

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Lcom/htc/Weather/data/DayForecast;->getHourlyIcon()[Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/Weather/util/WeatherUtil;->getForecastIconResId(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/htc/Weather/widget/HourlyPanel;->UpdateData([I[I[II)V

    goto/16 :goto_0
.end method

.method public showErrorMsg(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 429
    if-eqz p1, :cond_2

    .line 430
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    invoke-virtual {v0, v4}, Lcom/htc/Weather/widget/HourlyOutline;->setVisibility(I)V

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mErrorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHourlyOutline:Lcom/htc/Weather/widget/HourlyOutline;

    invoke-virtual {v0, v3}, Lcom/htc/Weather/widget/HourlyOutline;->setVisibility(I)V

    goto :goto_0
.end method

.method public showUpdating()V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/HourlyPanel;->mUpdateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    iget-object v0, p0, Lcom/htc/Weather/widget/HourlyPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    return-void
.end method

.method public updateCityInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "name"
    .parameter "time"
    .parameter "current"

    .prologue
    const v6, 0x7f08007b

    const/4 v5, 0x1

    .line 403
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f08007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 406
    .local v1, p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne p3, v5, :cond_3

    .line 408
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 413
    .local v0, lp_layout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0800aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 414
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .end local v0           #lp_layout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 417
    const v2, 0x7f0c0040

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 418
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityTime:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_2
    return-void

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCurLocateImg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 422
    iget-object v2, p0, Lcom/htc/Weather/widget/HourlyPanel;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
