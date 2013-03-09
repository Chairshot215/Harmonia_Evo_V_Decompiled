.class public Lcom/android/smith/BatteryLogger;
.super Landroid/app/Activity;
.source "BatteryLogger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/BatteryLogger$Battery;
    }
.end annotation


# static fields
.field public static final ACTION_CONTROLLER_BATTERYLOGGER:Ljava/lang/String; = "com.android.smith.BatteryLogger.CONTROLLER"

.field public static final ACTION_CONTROLLER_BATTERYLOGGER_RESULT:Ljava/lang/String; = "com.android.smith.BatteryLogger.CONTROLLER_RESULT"

.field public static final BATT_PROG_HTC_ATTR:I = 0x4

.field public static final BATT_PROG_NONE:I = 0x1

.field public static final BATT_PROG_RPC_30100001_00000000_5:I = 0x6

.field public static final BATT_PROG_RPC_30100001_00000000_8:I = 0x7

.field public static final BATT_PROG_SMEM_RAW:I = 0x2

.field public static final BATT_PROG_SMEM_TEXT:I = 0x3

.field public static final BATT_PROG_SYS_ATTR:I = 0x5

.field public static final BATT_TEXT_HTC_ATTR:Ljava/lang/String; = "HTC Attribute File"

.field public static final BATT_TEXT_RPC_30100001_00000000_5:Ljava/lang/String; = "RPC 30100001:00000000:5"

.field public static final BATT_TEXT_RPC_30100001_00000000_8:Ljava/lang/String; = "RPC 30100001:00000000:8"

.field public static final BATT_TEXT_SMEM_RAW:Ljava/lang/String; = "Share Memory Raw"

.field public static final BATT_TEXT_SMEM_TEXT:Ljava/lang/String; = "Share memory Text"

.field public static final BATT_TEXT_SYS_ATTR:Ljava/lang/String; = "System Attributes"

.field private static final DELAY:I = 0x1f4

.field public static final LOG_CMD_GETDATA:Ljava/lang/String; = ":getdata:"

.field public static final LOG_CMD_GETDEBUGMORE:Ljava/lang/String; = ":getdebugmore:"

.field public static final LOG_CMD_GETINTERVAL:Ljava/lang/String; = ":getinterval:"

.field public static final LOG_CMD_GETMETHOD:Ljava/lang/String; = ":getmethod:"

.field public static final LOG_CMD_GETPATH:Ljava/lang/String; = ":getpath:"

.field public static final LOG_CMD_ISLOGGING:Ljava/lang/String; = ":islogging:"

.field public static final LOG_CMD_RUN:Ljava/lang/String; = ":run:"

.field public static final LOG_CMD_SETDEBUGMORE:Ljava/lang/String; = ":setdebugmore:"

.field public static final LOG_CMD_SETINTERVAL:Ljava/lang/String; = ":setinterval:"

.field public static final LOG_CMD_SETMETHOD:Ljava/lang/String; = ":setmethod:"

.field public static final LOG_CMD_SETPATH:Ljava/lang/String; = ":setpath:"

.field public static final LOG_CMD_STOP:Ljava/lang/String; = ":stop:"

.field private static final MSG_DATA:I = 0x2

.field private static final MSG_DELAY_UPDATE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SM:BatteryLogger"

.field private static final TEXT_PREPARE:Ljava/lang/String; = "  (0: log on changes)"

.field private static final TEXT_STATE_QUERY:Ljava/lang/String; = "State: Querying ..."

.field private static final VERSION:Ljava/lang/String; = "2.2"


# instance fields
.field private mBatteryViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/smith/BatteryLogger$Battery;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonLog:Landroid/widget/Button;

.field private mButtonStart:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field private mCalendar:Ljava/util/Calendar;

.field private mCheckDebugMore:Landroid/widget/CheckBox;

.field private mCheckExternal:Landroid/widget/CheckBox;

.field private mEditLog:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSocket:Lcom/android/smith/ClientLocalSocket;

.field private mTextHint:Landroid/widget/TextView;

.field private mTextInfo:Landroid/widget/TextView;

.field private mTextMessage:Landroid/widget/TextView;

.field private mTextState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    .line 126
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    .line 127
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    .line 128
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    .line 129
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    .line 130
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mTextState:Landroid/widget/TextView;

    .line 131
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    .line 132
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;

    .line 133
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    .line 134
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 135
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    .line 136
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mCalendar:Ljava/util/Calendar;

    .line 139
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    .line 481
    new-instance v0, Lcom/android/smith/BatteryLogger$1;

    invoke-direct {v0, p0}, Lcom/android/smith/BatteryLogger$1;-><init>(Lcom/android/smith/BatteryLogger;)V

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/smith/BatteryLogger;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/smith/BatteryLogger;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/smith/BatteryLogger;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/smith/BatteryLogger;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/smith/BatteryLogger;->composeTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/smith/BatteryLogger;F)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/smith/BatteryLogger;->composeFloat(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/smith/BatteryLogger;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/smith/BatteryLogger;)Lcom/android/smith/ClientLocalSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/smith/BatteryLogger;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private composeFloat(F)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 165
    float-to-int v0, p1

    .line 166
    .local v0, n1:I
    int-to-float v2, v0

    sub-float v2, p1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 167
    .local v1, n2:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private composeTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "ca"

    .prologue
    const/4 v3, 0x2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/smith/BatteryLogger;->fixNumber(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findViews()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 172
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    .line 173
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    .line 174
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    .line 175
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    .line 176
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextState:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 181
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    .line 182
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/android/smith/BatteryLogger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    .line 184
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 189
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 191
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    const-string v1, "Save logs to external storage"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    const-string v1, "Also dump \"dumpsys power\" & \"dumpsys batteryinfo\" with log (may consume lots of disk space, use carefully)"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    return-void
.end method

.method private fixNumber(II)Ljava/lang/String;
    .locals 4
    .parameter "num"
    .parameter "len"

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mTextState:Landroid/widget/TextView;

    const-string v1, "State: Querying ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    .line 205
    iget-object v7, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/smith/BatteryLogger$Battery;

    const/4 v2, 0x5

    const-string v3, "System Attributes"

    iget-object v4, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/smith/BatteryLogger$Battery;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/RadioGroup;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/smith/BatteryLogger$Battery;

    const/4 v2, 0x2

    const-string v3, "Share Memory Raw"

    iget-object v4, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/smith/BatteryLogger$Battery;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/RadioGroup;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v7, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/smith/BatteryLogger$Battery;

    const/4 v2, 0x3

    const-string v3, "Share memory Text"

    iget-object v4, p0, Lcom/android/smith/BatteryLogger;->mRadioGroup:Landroid/widget/RadioGroup;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/smith/BatteryLogger$Battery;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/RadioGroup;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v0, v0, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void
.end method

.method private setRunningState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 387
    :cond_0
    if-eqz p1, :cond_5

    .line 389
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":setinterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":setdebugmore:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v1, v1, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":setmethod:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/smith/BatteryLogger$Battery;

    iget v1, v1, Lcom/android/smith/BatteryLogger$Battery;->mProg:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/smith/BatteryLogger;->hasExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":setpath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/smith/Device;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "htclog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    :goto_3
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v2, ":run:"

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .end local v0           #i:I
    :goto_4
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 390
    :cond_2
    const-string v1, "0"

    goto/16 :goto_1

    .line 392
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 404
    :cond_4
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v2, ":setpath:/data/data/com.android.smith/htclog/"

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 410
    .end local v0           #i:I
    :cond_5
    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v2, ":stop:"

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, bRun:Z
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v3, ":islogging:"

    invoke-virtual {v2, v3}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 334
    :cond_0
    if-eqz v0, :cond_3

    .line 336
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 337
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v2, v2, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 345
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 347
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output File:\n["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v5, ":getpath:"

    invoke-virtual {v4, v5}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    :goto_1
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mTextState:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v2, "Running"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-void

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    const-string v3, "  (0: log on changes)"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    .end local v1           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 363
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 364
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v2, v2, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 370
    :cond_4
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 373
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    const-string v3, "  (0: log on changes)"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 379
    :cond_5
    const-string v2, "Stopped"

    goto :goto_2
.end method


# virtual methods
.method public hasExternalStorage()Z
    .locals 4

    .prologue
    .line 523
    invoke-static {}, Lcom/android/smith/Device;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "SM:BatteryLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v1, "SM:BatteryLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/smith/Device;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    .line 532
    :goto_0
    return v1

    .line 531
    :cond_0
    const-string v1, "SM:BatteryLogger"

    const-string v2, "No External Storage!!!"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "viewObject"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 419
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 475
    :goto_0
    return-void

    .line 426
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v2, v2, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    if-ne v2, p1, :cond_1

    .line 430
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":setmethod:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/smith/BatteryLogger$Battery;

    iget v2, v2, Lcom/android/smith/BatteryLogger$Battery;->mProg:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextState:Landroid/widget/TextView;

    const-string v3, "State: Querying ..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 441
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 443
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v2, v2, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 448
    :cond_3
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 449
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 451
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mButtonStart:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/smith/BatteryLogger;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_3
    iget v2, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    if-gez v2, :cond_4

    .line 464
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mTextHint:Landroid/widget/TextView;

    const-string v3, "Invalid value!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v2, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    iput v4, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    goto :goto_3

    .line 469
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/smith/BatteryLogger;->setRunningState(Z)V

    goto/16 :goto_0

    .line 473
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/smith/BatteryLogger;->setRunningState(Z)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 277
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 279
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/android/smith/BatteryLogger;->setContentView(I)V

    .line 281
    invoke-direct {p0}, Lcom/android/smith/BatteryLogger;->findViews()V

    .line 282
    invoke-direct {p0}, Lcom/android/smith/BatteryLogger;->initViews()V

    .line 284
    const-string v3, "logbattery"

    invoke-static {v3}, Lcom/android/smith/ClientLocalSocket;->getServicePort(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, port:I
    const-string v3, "SM:BatteryLogger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get service port ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-lez v1, :cond_0

    .line 289
    new-instance v3, Lcom/android/smith/ClientLocalSocket;

    invoke-direct {v3, v1}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    if-nez v3, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/smith/BatteryLogger;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v6, "2.2"

    invoke-static {v3, v6}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/smith/BatteryLogger;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    :goto_0
    iget v3, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    if-gez v3, :cond_1

    .line 316
    iput v5, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mEditLog:Landroid/widget/EditText;

    iget v6, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mButtonLog:Landroid/widget/Button;

    iget v6, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mCheckExternal:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v7, ":getpath:"

    invoke-virtual {v6, v7}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/smith/Device;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/smith/BatteryLogger;->hasExternalStorage()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 322
    return-void

    .line 297
    :cond_2
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v6, ":getmethod:"

    invoke-virtual {v3, v6}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    .local v2, prog:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/smith/BatteryLogger$Battery;

    iget v3, v3, Lcom/android/smith/BatteryLogger$Battery;->mProg:I

    if-ne v3, v2, :cond_4

    .line 303
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/smith/BatteryLogger$Battery;

    iget-object v3, v3, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 308
    :cond_3
    iget-object v6, p0, Lcom/android/smith/BatteryLogger;->mCheckDebugMore:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v7, ":getdebugmore:"

    invoke-virtual {v3, v7}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    iget-object v3, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v6, ":getinterval:"

    invoke-virtual {v3, v6}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/smith/BatteryLogger;->mInterval:I

    .line 312
    invoke-virtual {p0}, Lcom/android/smith/BatteryLogger;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v6, "2.2"

    iget-object v7, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    const-string v8, ":getver:"

    invoke-virtual {v7, v8}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/smith/BatteryLogger;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 299
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v3, v5

    .line 308
    goto :goto_3

    .end local v0           #i:I
    .end local v2           #prog:I
    :cond_6
    move v4, v5

    .line 321
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mBatteryViews:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 252
    iput-object v1, p0, Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;

    .line 254
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 260
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/android/smith/BatteryLogger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method
