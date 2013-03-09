.class public Lcom/htc/Weather/widget/WeatherFormView;
.super Landroid/widget/RelativeLayout;
.source "WeatherFormView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/widget/WeatherFormView$FormView;
    }
.end annotation


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

.field private TEMPERATURE_LEVEL_VALUE:I

.field private TIME_LINE_HEIGHT:I

.field private TIME_LINE_TEXT_HEIGHT_PADDING:I

.field private TIME_LINE_TEXT_WIDTH_PADDING:I

.field private TOTAL_HUMIDITY_VALUE:I

.field private TOTAL_TEMPERATURE_VALUE:I

.field private VIEW_HEIGHT:I

.field private VIEW_WIDTH:I

.field private formView:Lcom/htc/Weather/widget/WeatherFormView$FormView;

.field private humidityYaxisValue:[I

.field private isInitialize:Z

.field private mBigOval:[Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field mDataPaint:Landroid/graphics/Paint;

.field private mGradLeft:Landroid/widget/LinearLayout;

.field private mGradRight:Landroid/widget/LinearLayout;

.field private mHourName:Landroid/widget/LinearLayout;

.field mHumidityPaint:Landroid/graphics/Paint;

.field mLinePaint:Landroid/graphics/Paint;

.field mLinearGradientData:Landroid/graphics/LinearGradient;

.field mLinearGradientHumidity:Landroid/graphics/LinearGradient;

.field mLinearGradientTime:Landroid/graphics/LinearGradient;

.field mTextPaint:Landroid/graphics/Paint;

.field mTimePaint:Landroid/graphics/Paint;

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
    .line 36
    const-string v0, "WeatherFormView"

    sput-object v0, Lcom/htc/Weather/widget/WeatherFormView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x8

    sput v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    .line 40
    const/16 v0, 0x14

    sput v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    .line 41
    const/16 v0, 0x2d

    sput v0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH_PADDING:I

    .line 42
    const/16 v0, 0x46

    sput v0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_INFO_HIGHT_PADDING:I

    .line 43
    const/16 v0, 0x1e

    sput v0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_INFO_ICON_HIGHT_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xc0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    .line 46
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    .line 47
    const/16 v1, 0x1da

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    .line 48
    iput v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    .line 49
    const/16 v1, 0x14

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->TIME_LINE_HEIGHT:I

    .line 50
    const/16 v1, 0x320

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->VIEW_WIDTH:I

    .line 51
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->VIEW_HEIGHT:I

    .line 87
    const/16 v1, 0x9

    iput v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->start_clock:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->isInitialize:Z

    .line 91
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->metric:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    .line 105
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    const/16 v2, -0x2751

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHumidityPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHumidityPaint:Landroid/graphics/Paint;

    const v2, -0xff9901

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHumidityPaint:Landroid/graphics/Paint;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHumidityPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    .line 121
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTextPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v2, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v1, v2, :cond_0

    const-string v1, "\u00b0"

    :goto_0
    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->metric:Ljava/lang/String;

    .line 134
    new-instance v1, Lcom/htc/Weather/widget/WeatherFormView$FormView;

    invoke-direct {v1, p0, p1}, Lcom/htc/Weather/widget/WeatherFormView$FormView;-><init>(Lcom/htc/Weather/widget/WeatherFormView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->formView:Lcom/htc/Weather/widget/WeatherFormView$FormView;

    .line 136
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->formView:Lcom/htc/Weather/widget/WeatherFormView$FormView;

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/WeatherFormView;->addView(Landroid/view/View;)V

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradLeft:Landroid/widget/LinearLayout;

    .line 141
    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradRight:Landroid/widget/LinearLayout;

    .line 142
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHourName:Landroid/widget/LinearLayout;

    .line 143
    const v1, 0x7f0c003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mWeatherInfo:Landroid/widget/LinearLayout;

    .line 146
    return-void

    .line 132
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "\u00b0"

    goto :goto_0
.end method

.method private DrawDataLine(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 183
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 184
    .local v9, pt:Landroid/graphics/Path;
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 186
    .local v8, ph:Landroid/graphics/Path;
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 189
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v6, v0, :cond_0

    .line 191
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v3, v6, -0x1

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH_HALF:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v4, v6, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 192
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH_HALF:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 196
    :cond_0
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    int-to-float v0, v0

    sget v1, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 205
    .local v7, myPaint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 206
    .local v5, myLinePaint:Landroid/graphics/Paint;
    const v0, -0xffff01

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    const/16 v0, -0x448d

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/high16 v0, 0x4000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    const/4 v10, 0x0

    .local v10, x0:I
    const/4 v11, 0x0

    .line 210
    .local v11, y0:I
    const/4 v6, 0x1

    :goto_1
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v6, v0, :cond_3

    .line 212
    const/4 v0, 0x1

    if-le v6, v0, :cond_1

    .line 213
    int-to-float v1, v10

    int-to-float v2, v11

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v3, v6, -0x1

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v4, v6, -0x1

    aget v0, v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    :cond_1
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v2

    add-int v10, v0, v1

    .line 216
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v1, v6, -0x1

    aget v11, v0, v1

    .line 218
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-ne v6, v0, :cond_2

    .line 219
    int-to-float v1, v10

    int-to-float v2, v11

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    aget v0, v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 224
    :cond_3
    const/4 v6, 0x2

    :goto_2
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v6, v0, :cond_4

    .line 226
    const/16 v0, -0x448d

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40c0

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v6, -0x1

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    add-int/lit8 v2, v6, -0x1

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4080

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 240
    :cond_4
    return-void
.end method

.method private DrawFrom(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    .line 155
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    if-gt v6, v0, :cond_2

    .line 156
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    if-ne v6, v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    :goto_1
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    int-to-float v1, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_HEIGHT:I

    mul-int/2addr v2, v6

    add-int/2addr v0, v2

    int-to-float v2, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_HEIGHT:I

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 169
    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v6, v0, :cond_5

    .line 170
    if-eqz v6, :cond_3

    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-ne v6, v0, :cond_4

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    :goto_3
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    int-to-float v1, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    int-to-float v3, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 177
    :cond_5
    return-void
.end method

.method private DrawOuterEdge(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v1, 0x41a0

    const/high16 v7, 0x4198

    .line 259
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 260
    .local v5, paint:Landroid/graphics/Paint;
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    const/16 v0, 0x80

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    add-int/lit8 v0, v0, 0x54

    int-to-float v3, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_HEIGHT:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x74

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    add-int/lit8 v0, v0, 0x54

    int-to-float v3, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    iget v6, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_HEIGHT:I

    mul-int/2addr v4, v6

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x74

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 267
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x70

    int-to-float v4, v0

    move-object v0, p1

    move v1, v7

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x55

    int-to-float v1, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v0

    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x54

    int-to-float v3, v0

    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x66

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 270
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/Weather/widget/WeatherFormView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/WeatherFormView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->isInitialize:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->DrawOuterEdge(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH_PADDING:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->DrawFrom(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/Weather/widget/WeatherFormView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/WeatherFormView;->DrawDataLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getHourString(I)Ljava/lang/String;
    .locals 3
    .parameter "hour"

    .prologue
    const/16 v1, 0xc

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, hour_string:Ljava/lang/String;
    rem-int/lit8 p1, p1, 0x18

    .line 246
    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_1
    return-object v0

    .line 248
    :cond_2
    if-lt p1, v1, :cond_0

    const/16 v1, 0x18

    if-ge p1, v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, -0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setLayoutContent()V
    .locals 15

    .prologue
    const/16 v14, 0x3d

    const/16 v13, 0x24

    const/16 v12, 0x11

    .line 392
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 393
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradRight:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 394
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    if-gt v1, v9, :cond_4

    .line 395
    if-eqz v1, :cond_0

    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    if-ne v1, v9, :cond_3

    .line 396
    :cond_0
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    :goto_1
    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_1

    .line 402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_TEMPERATURE_VALUE:I

    iget v11, p0, Lcom/htc/Weather/widget/WeatherFormView;->TEMPERATURE_LEVEL_VALUE:I

    mul-int/2addr v11, v1

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->metric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, temp_temperature_level:Ljava/lang/String;
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v5, t:Landroid/widget/TextView;
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v4, p:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .end local v4           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #t:Landroid/widget/TextView;
    .end local v8           #temp_temperature_level:Ljava/lang/String;
    :cond_1
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_2

    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    if-eq v1, v9, :cond_2

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_HUMIDITY_VALUE:I

    iget v11, p0, Lcom/htc/Weather/widget/WeatherFormView;->HUMIDITY_LEVEL_VALUE:I

    mul-int/2addr v11, v1

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .local v7, temp_humidity_level:Ljava/lang/String;
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 415
    .restart local v5       #t:Landroid/widget/TextView;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    .restart local v4       #p:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 418
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mGradRight:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .end local v4           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #t:Landroid/widget/TextView;
    .end local v7           #temp_humidity_level:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_3
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 424
    :cond_4
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHourName:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 425
    const/4 v1, 0x0

    :goto_2
    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v1, v9, :cond_5

    .line 428
    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    .restart local v5       #t:Landroid/widget/TextView;
    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->start_clock:I

    add-int/2addr v9, v1

    invoke-direct {p0, v9}, Lcom/htc/Weather/widget/WeatherFormView;->getHourString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const/high16 v9, 0x4120

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 432
    .restart local v4       #p:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x3f80

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 433
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHourName:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 437
    .end local v4           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #t:Landroid/widget/TextView;
    :cond_5
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mWeatherInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 438
    const/4 v1, 0x0

    :goto_3
    iget v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v1, v9, :cond_6

    .line 441
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030010

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 444
    .local v3, l:Landroid/view/View;
    const v9, 0x7f0c003b

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 445
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->testIconData:[I

    aget v9, v9, v1

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    const v9, 0x7f0c003c

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 449
    .local v6, temp:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->testTemperatureData:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->metric:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const v9, 0x7f0c003e

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    .local v0, humidity:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/Weather/widget/WeatherFormView;->testHumidityData:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v9, p0, Lcom/htc/Weather/widget/WeatherFormView;->mWeatherInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 459
    .end local v0           #humidity:Landroid/widget/TextView;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v3           #l:Landroid/view/View;
    .end local v6           #temp:Landroid/widget/TextView;
    :cond_6
    return-void
.end method


# virtual methods
.method public UpdateData([I[I[II)V
    .locals 6
    .parameter "newTemperatureData"
    .parameter "newHumidityData"
    .parameter "newIconData"
    .parameter "startclock"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    if-nez v1, :cond_0

    .line 346
    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->humidityYaxisValue:[I

    if-nez v1, :cond_1

    .line 348
    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->humidityYaxisValue:[I

    .line 351
    :cond_1
    iput-object p1, p0, Lcom/htc/Weather/widget/WeatherFormView;->testTemperatureData:[I

    .line 352
    iput-object p2, p0, Lcom/htc/Weather/widget/WeatherFormView;->testHumidityData:[I

    .line 353
    iput-object p3, p0, Lcom/htc/Weather/widget/WeatherFormView;->testIconData:[I

    .line 355
    iput p4, p0, Lcom/htc/Weather/widget/WeatherFormView;->start_clock:I

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v0, v1, :cond_4

    .line 358
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->testTemperatureData:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_TEMPERATURE_VALUE:I

    if-lt v1, v2, :cond_2

    .line 359
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    aput v2, v1, v0

    .line 366
    :goto_1
    sget-object v1, Lcom/htc/Weather/widget/WeatherFormView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " temperatureYaxisValue[i] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->testTemperatureData:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_TEMPERATURE_VALUE:I

    if-gt v1, v2, :cond_3

    .line 361
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_TEMPERATURE_VALUE:I

    iget-object v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->testTemperatureData:[I

    aget v5, v5, v0

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_TEMPERATURE_VALUE:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 370
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    if-gt v0, v1, :cond_7

    .line 371
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->testHumidityData:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_HUMIDITY_VALUE:I

    if-lt v1, v2, :cond_5

    .line 372
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->humidityYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    aput v2, v1, v0

    .line 379
    :goto_3
    sget-object v1, Lcom/htc/Weather/widget/WeatherFormView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " humidityYaxisValue[i] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->temperatureYaxisValue:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->testHumidityData:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_HUMIDITY_VALUE:I

    if-gt v1, v2, :cond_6

    .line 374
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->humidityYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_3

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->humidityYaxisValue:[I

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v3, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_HUMIDITY_VALUE:I

    iget-object v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->testHumidityData:[I

    aget v5, v5, v0

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_HUMIDITY_VALUE:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_3

    .line 382
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->isInitialize:Z

    .line 384
    invoke-direct {p0}, Lcom/htc/Weather/widget/WeatherFormView;->setLayoutContent()V

    .line 386
    return-void
.end method

.method public UpdateDataRange(IIII)V
    .locals 2
    .parameter "maxTemp"
    .parameter "minTemp"
    .parameter "maxHumidity"
    .parameter "minHumidity"

    .prologue
    .line 474
    iput p1, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_TEMPERATURE_VALUE:I

    .line 475
    iput p2, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_TEMPERATURE_VALUE:I

    .line 476
    iput p3, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_HUMIDITY_VALUE:I

    .line 477
    iput p4, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_HUMIDITY_VALUE:I

    .line 478
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_TEMPERATURE_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_TEMPERATURE_VALUE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_TEMPERATURE_VALUE:I

    .line 479
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_TEMPERATURE_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TEMPERATURE_LEVEL_VALUE:I

    .line 480
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->HIGHEST_HUMIDITY_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->LOWEST_HUMIDITY_VALUE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_HUMIDITY_VALUE:I

    .line 481
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TOTAL_HUMIDITY_VALUE:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->HUMIDITY_LEVEL_VALUE:I

    .line 483
    return-void
.end method

.method public UpdateWeatherFormParameter(IIII)V
    .locals 9
    .parameter "form_width"
    .parameter "form_height"
    .parameter "row_size"
    .parameter "colume_size"

    .prologue
    const v8, 0x55444444

    const/4 v6, -0x1

    .line 497
    iput p2, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    .line 498
    iput p1, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    .line 499
    iput p3, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    .line 500
    iput p4, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    .line 501
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->ROW_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_HEIGHT:I

    .line 502
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH:I

    iget v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->COLUMN_SIZE:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    .line 503
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_DATA_WIDTH_HALF:I

    .line 504
    sget v0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_WIDTH_PADDING:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TIME_LINE_TEXT_WIDTH_PADDING:I

    .line 505
    iget v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TIME_LINE_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->TIME_LINE_TEXT_HEIGHT_PADDING:I

    .line 507
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    sget v4, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    const v5, -0x9a00

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientData:Landroid/graphics/LinearGradient;

    .line 510
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mDataPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientData:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 512
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    sget v2, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    sget v4, Lcom/htc/Weather/widget/WeatherFormView;->HEIGHT_PADDING:I

    iget v5, p0, Lcom/htc/Weather/widget/WeatherFormView;->FORM_HEIGHT:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    const v5, -0xff9901

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientHumidity:Landroid/graphics/LinearGradient;

    .line 515
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mHumidityPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientHumidity:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 517
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v1, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    sget v3, Lcom/htc/Weather/widget/WeatherFormView;->WIDTH_PADDING:I

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/Weather/widget/WeatherFormView;->VIEW_HEIGHT:I

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v5, v8

    move v6, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientTime:Landroid/graphics/LinearGradient;

    .line 520
    iget-object v0, p0, Lcom/htc/Weather/widget/WeatherFormView;->mTimePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/Weather/widget/WeatherFormView;->mLinearGradientTime:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 522
    return-void
.end method
