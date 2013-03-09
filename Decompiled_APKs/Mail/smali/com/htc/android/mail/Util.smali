.class public Lcom/htc/android/mail/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static Big5_arr:[B = null

.field private static Big5_str:Ljava/lang/String; = null

.field public static CUR_LOCALE:Ljava/util/Locale; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static EXTRA_SPACE_FOR_MAIL_ITEM:I = 0x0

.field public static final FORWARD_MAIL:I = 0x2

.field private static JP_Unicode:[B = null

.field private static JP_str:Ljava/lang/String; = null

.field public static final REPLY_MAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TRY_ACTION:I = 0x10

.field public static final TRY_FORWARD_MAIL:I = 0x20000

.field public static final TRY_FORWARD_SHIFT:I = 0x11

.field public static final TRY_REPLY_MAIL:I = 0x10000

.field public static final TRY_REPLY_SHIFT:I = 0x10

.field private static final bufferFileNameForMailAP:Ljava/lang/String; = "/data/data/com.htc.android.mail/bufferFileForMailAP"

.field public static cal:Ljava/util/Calendar; = null

.field private static getMoreSpaceForMailAP:Z = false

.field private static initBufferFileForMailAP:Z = false

.field private static mCurSystemTimeFormat:Ljava/lang/String; = null

.field public static mNowtime:Landroid/text/format/Time; = null

.field private static sDailyFormat:Ljava/lang/CharSequence; = null

.field private static sDailyFormat24:Ljava/lang/CharSequence; = null

.field private static final sDailyMillis:J = 0x5265c00L

.field private static sDateFormat:Ljava/lang/CharSequence; = null

.field private static sDateFormatMDY:Ljava/lang/CharSequence; = null

.field private static sDateTimeWeekFormat:Ljava/lang/CharSequence; = null

.field private static sDateTimeWeekFormatWith24:Ljava/lang/CharSequence; = null

.field private static sFullTimeFormat:Ljava/lang/CharSequence; = null

.field private static sMonthlyFormat:Ljava/lang/CharSequence; = null

.field private static final sMonthlyMillis:J = 0x90321000L

.field private static sWeeklyFormat:Ljava/lang/CharSequence; = null

.field private static final sWeeklyMillis:J = 0x240c8400L

.field private static sYearlyFormat:Ljava/lang/CharSequence; = null

.field private static final sYestodayMillis:J = 0x5265c00L

.field public static today:J

.field public static yearStart:Ljava/util/Calendar;

.field public static yesterday:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1da

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 48
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/mail/Util;->Big5_arr:[B

    .line 49
    sput-object v1, Lcom/htc/android/mail/Util;->Big5_str:Ljava/lang/String;

    .line 50
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/mail/Util;->JP_Unicode:[B

    .line 51
    sput-object v1, Lcom/htc/android/mail/Util;->JP_str:Ljava/lang/String;

    .line 54
    sput-boolean v2, Lcom/htc/android/mail/Util;->initBufferFileForMailAP:Z

    .line 55
    sput-boolean v2, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP:Z

    .line 68
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/Util;->DEBUG:Z

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->yearStart:Ljava/util/Calendar;

    .line 244
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    .line 247
    sput-object v1, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    .line 248
    sput v2, Lcom/htc/android/mail/Util;->EXTRA_SPACE_FOR_MAIL_ITEM:I

    return-void

    .line 48
    :array_0
    .array-data 0x1
        0xc6t
        0xa1t
        0xc6t
        0xa2t
        0xc6t
        0xa3t
        0xc6t
        0xa4t
        0xc6t
        0xa5t
        0xc6t
        0xa6t
        0xc6t
        0xa7t
        0xc6t
        0xa8t
        0xc6t
        0xa9t
        0xc6t
        0xaat
        0xc6t
        0xabt
        0xc6t
        0xact
        0xc6t
        0xadt
        0xc6t
        0xaet
        0xc6t
        0xaft
        0xc6t
        0xb0t
        0xc6t
        0xb1t
        0xc6t
        0xb2t
        0xc6t
        0xb3t
        0xc6t
        0xb4t
        0xc6t
        0xb5t
        0xc6t
        0xb6t
        0xc6t
        0xb7t
        0xc6t
        0xb8t
        0xc6t
        0xb9t
        0xc6t
        0xbat
        0xc6t
        0xbbt
        0xc6t
        0xbct
        0xc6t
        0xbdt
        0xc6t
        0xbet
        0xc6t
        0xbft
        0xc6t
        0xc0t
        0xc6t
        0xc1t
        0xc6t
        0xc2t
        0xc6t
        0xc3t
        0xc6t
        0xc4t
        0xc6t
        0xc5t
        0xc6t
        0xc6t
        0xc6t
        0xc7t
        0xc6t
        0xc8t
        0xc6t
        0xc9t
        0xc6t
        0xcat
        0xc6t
        0xcbt
        0xc6t
        0xcct
        0xc6t
        0xcdt
        0xc6t
        0xcet
        0xc6t
        0xcft
        0xc6t
        0xd0t
        0xc6t
        0xd1t
        0xc6t
        0xd2t
        0xc6t
        0xd3t
        0xc6t
        0xd4t
        0xc6t
        0xd5t
        0xc6t
        0xd6t
        0xc6t
        0xd7t
        0xc6t
        0xd8t
        0xc6t
        0xd9t
        0xc6t
        0xdat
        0xc6t
        0xdbt
        0xc6t
        0xdct
        0xc6t
        0xddt
        0xc6t
        0xe0t
        0xc6t
        0xe1t
        0xc6t
        0xe2t
        0xc6t
        0xe3t
        0xc6t
        0xe4t
        0xc6t
        0xe5t
        0xc6t
        0xe6t
        0xc6t
        0xe7t
        0xc6t
        0xe8t
        0xc6t
        0xe9t
        0xc6t
        0xeat
        0xc6t
        0xebt
        0xc6t
        0xect
        0xc6t
        0xedt
        0xc6t
        0xeet
        0xc6t
        0xeft
        0xc6t
        0xf0t
        0xc6t
        0xf1t
        0xc6t
        0xf2t
        0xc6t
        0xf3t
        0xc6t
        0xf4t
        0xc6t
        0xf5t
        0xc6t
        0xf6t
        0xc6t
        0xf7t
        0xc6t
        0xf8t
        0xc6t
        0xf9t
        0xc6t
        0xfat
        0xc6t
        0xfbt
        0xc6t
        0xfct
        0xc6t
        0xfdt
        0xc6t
        0xfet
        0xc7t
        0x40t
        0xc7t
        0x41t
        0xc7t
        0x42t
        0xc7t
        0x43t
        0xc7t
        0x44t
        0xc7t
        0x45t
        0xc7t
        0x46t
        0xc7t
        0x47t
        0xc7t
        0x48t
        0xc7t
        0x49t
        0xc7t
        0x4at
        0xc7t
        0x4bt
        0xc7t
        0x4ct
        0xc7t
        0x4dt
        0xc7t
        0x4et
        0xc7t
        0x4ft
        0xc7t
        0x50t
        0xc7t
        0x51t
        0xc7t
        0x52t
        0xc7t
        0x53t
        0xc7t
        0x54t
        0xc7t
        0x55t
        0xc7t
        0x56t
        0xc7t
        0x57t
        0xc7t
        0x58t
        0xc7t
        0x59t
        0xc7t
        0x5at
        0xc7t
        0x5bt
        0xc7t
        0x5ct
        0xc7t
        0x5dt
        0xc7t
        0x5et
        0xc7t
        0x5ft
        0xc7t
        0x60t
        0xc7t
        0x61t
        0xc7t
        0x62t
        0xc7t
        0x63t
        0xc7t
        0x64t
        0xc7t
        0x65t
        0xc7t
        0x66t
        0xc7t
        0x67t
        0xc7t
        0x68t
        0xc7t
        0x69t
        0xc7t
        0x6at
        0xc7t
        0x6bt
        0xc7t
        0x6ct
        0xc7t
        0x6dt
        0xc7t
        0x6et
        0xc7t
        0x6ft
        0xc7t
        0x70t
        0xc7t
        0x71t
        0xc7t
        0x72t
        0xc7t
        0x73t
        0xc7t
        0x74t
        0xc7t
        0x75t
        0xc7t
        0x76t
        0xc7t
        0x77t
        0xc7t
        0x78t
        0xc7t
        0x79t
        0xc7t
        0x7at
        0xc7t
        0x7bt
        0xc7t
        0x7ct
        0xc7t
        0x7dt
        0xc7t
        0x7et
        0xc7t
        0xa1t
        0xc7t
        0xa2t
        0xc7t
        0xa3t
        0xc7t
        0xa4t
        0xc7t
        0xa5t
        0xc7t
        0xa6t
        0xc7t
        0xa7t
        0xc7t
        0xa8t
        0xc7t
        0xa9t
        0xc7t
        0xaat
        0xc7t
        0xabt
        0xc7t
        0xact
        0xc7t
        0xadt
        0xc7t
        0xaet
        0xc7t
        0xaft
        0xc7t
        0xb0t
        0xc7t
        0xb1t
        0xc7t
        0xb2t
        0xc7t
        0xb3t
        0xc7t
        0xb4t
        0xc7t
        0xb5t
        0xc7t
        0xb6t
        0xc7t
        0xb7t
        0xc7t
        0xb8t
        0xc7t
        0xb9t
        0xc7t
        0xbat
        0xc7t
        0xbbt
        0xc7t
        0xbct
        0xc7t
        0xbdt
        0xc7t
        0xbet
        0xc7t
        0xbft
        0xc7t
        0xc0t
        0xc7t
        0xc1t
        0xc7t
        0xc2t
        0xc7t
        0xc3t
        0xc7t
        0xc4t
        0xc7t
        0xc5t
        0xc7t
        0xc6t
        0xc7t
        0xc7t
        0xc7t
        0xc8t
        0xc7t
        0xc9t
        0xc7t
        0xcat
        0xc7t
        0xcbt
        0xc7t
        0xcct
        0xc7t
        0xcdt
        0xc7t
        0xcet
        0xc7t
        0xcft
        0xc7t
        0xd0t
        0xc7t
        0xd1t
        0xc7t
        0xd2t
        0xc7t
        0xd3t
        0xc7t
        0xd4t
        0xc7t
        0xd5t
        0xc7t
        0xd6t
        0xc7t
        0xd7t
        0xc7t
        0xd8t
        0xc7t
        0xd9t
        0xc7t
        0xdat
        0xc7t
        0xdbt
        0xc7t
        0xdct
        0xc7t
        0xddt
        0xc7t
        0xdet
        0xc7t
        0xdft
        0xc7t
        0xe0t
        0xc7t
        0xe1t
        0xc7t
        0xe2t
        0xc7t
        0xe3t
        0xc7t
        0xe4t
        0xc7t
        0xe5t
        0xc7t
        0xe6t
        0xc7t
        0xe7t
        0xc7t
        0xe8t
        0xc7t
        0xe9t
        0xc7t
        0xeat
        0xc7t
        0xebt
        0xc7t
        0xect
        0xc7t
        0xedt
        0xc7t
        0xeet
        0xc7t
        0xeft
        0xc7t
        0xf0t
        0xc7t
        0xf1t
        0xc7t
        0xf2t
    .end array-data

    .line 50
    nop

    :array_1
    .array-data 0x1
        0x24t
        0x60t
        0x24t
        0x61t
        0x24t
        0x62t
        0x24t
        0x63t
        0x24t
        0x64t
        0x24t
        0x65t
        0x24t
        0x66t
        0x24t
        0x67t
        0x24t
        0x68t
        0x24t
        0x69t
        0x24t
        0x74t
        0x24t
        0x75t
        0x24t
        0x76t
        0x24t
        0x77t
        0x24t
        0x78t
        0x24t
        0x79t
        0x24t
        0x7at
        0x24t
        0x7bt
        0x24t
        0x7ct
        0x24t
        0x7dt
        0x21t
        0x70t
        0x21t
        0x71t
        0x21t
        0x72t
        0x21t
        0x73t
        0x21t
        0x74t
        0x21t
        0x75t
        0x21t
        0x76t
        0x21t
        0x77t
        0x21t
        0x78t
        0x21t
        0x79t
        0x2ft
        0x2t
        0x2ft
        0x3t
        0x2ft
        0x5t
        0x2ft
        0x7t
        0x2ft
        0xct
        0x2ft
        0xdt
        0x2ft
        0xet
        0x2ft
        0x13t
        0x2ft
        0x16t
        0x2ft
        0x19t
        0x2ft
        0x1bt
        0x2ft
        0x22t
        0x2ft
        0x27t
        0x2ft
        0x2et
        0x2ft
        0x33t
        0x2ft
        0x34t
        0x2ft
        0x35t
        0x2ft
        0x39t
        0x2ft
        0x3at
        0x2ft
        0x41t
        0x2ft
        0x46t
        0x2ft
        0x67t
        0x2ft
        0x68t
        0x2ft
        0xa1t
        0x2ft
        0xaat
        0x0t
        0xa8t
        0xfft
        0x3et
        0x30t
        0xfdt
        0x30t
        0xfet
        0x30t
        0x9dt
        0x30t
        0x9et
        0x30t
        0x5t
        0x30t
        0x6t
        0x30t
        0x7t
        0x30t
        0xfct
        0xfft
        0x3bt
        0xfft
        0x3dt
        0x27t
        0x3dt
        0x30t
        0x41t
        0x30t
        0x42t
        0x30t
        0x43t
        0x30t
        0x44t
        0x30t
        0x45t
        0x30t
        0x46t
        0x30t
        0x47t
        0x30t
        0x48t
        0x30t
        0x49t
        0x30t
        0x4at
        0x30t
        0x4bt
        0x30t
        0x4ct
        0x30t
        0x4dt
        0x30t
        0x4et
        0x30t
        0x4ft
        0x30t
        0x50t
        0x30t
        0x51t
        0x30t
        0x52t
        0x30t
        0x53t
        0x30t
        0x54t
        0x30t
        0x55t
        0x30t
        0x56t
        0x30t
        0x57t
        0x30t
        0x58t
        0x30t
        0x59t
        0x30t
        0x5at
        0x30t
        0x5bt
        0x30t
        0x5ct
        0x30t
        0x5dt
        0x30t
        0x5et
        0x30t
        0x5ft
        0x30t
        0x60t
        0x30t
        0x61t
        0x30t
        0x62t
        0x30t
        0x63t
        0x30t
        0x64t
        0x30t
        0x65t
        0x30t
        0x66t
        0x30t
        0x67t
        0x30t
        0x68t
        0x30t
        0x69t
        0x30t
        0x6at
        0x30t
        0x6bt
        0x30t
        0x6ct
        0x30t
        0x6dt
        0x30t
        0x6et
        0x30t
        0x6ft
        0x30t
        0x70t
        0x30t
        0x71t
        0x30t
        0x72t
        0x30t
        0x73t
        0x30t
        0x74t
        0x30t
        0x75t
        0x30t
        0x76t
        0x30t
        0x77t
        0x30t
        0x78t
        0x30t
        0x79t
        0x30t
        0x7at
        0x30t
        0x7bt
        0x30t
        0x7ct
        0x30t
        0x7dt
        0x30t
        0x7et
        0x30t
        0x7ft
        0x30t
        0x80t
        0x30t
        0x81t
        0x30t
        0x82t
        0x30t
        0x83t
        0x30t
        0x84t
        0x30t
        0x85t
        0x30t
        0x86t
        0x30t
        0x87t
        0x30t
        0x88t
        0x30t
        0x89t
        0x30t
        0x8at
        0x30t
        0x8bt
        0x30t
        0x8ct
        0x30t
        0x8dt
        0x30t
        0x8et
        0x30t
        0x8ft
        0x30t
        0x90t
        0x30t
        0x91t
        0x30t
        0x92t
        0x30t
        0x93t
        0x30t
        0xa1t
        0x30t
        0xa2t
        0x30t
        0xa3t
        0x30t
        0xa4t
        0x30t
        0xa5t
        0x30t
        0xa6t
        0x30t
        0xa7t
        0x30t
        0xa8t
        0x30t
        0xa9t
        0x30t
        0xaat
        0x30t
        0xabt
        0x30t
        0xact
        0x30t
        0xadt
        0x30t
        0xaet
        0x30t
        0xaft
        0x30t
        0xb0t
        0x30t
        0xb1t
        0x30t
        0xb2t
        0x30t
        0xb3t
        0x30t
        0xb4t
        0x30t
        0xb5t
        0x30t
        0xb6t
        0x30t
        0xb7t
        0x30t
        0xb8t
        0x30t
        0xb9t
        0x30t
        0xbat
        0x30t
        0xbbt
        0x30t
        0xbct
        0x30t
        0xbdt
        0x30t
        0xbet
        0x30t
        0xbft
        0x30t
        0xc0t
        0x30t
        0xc1t
        0x30t
        0xc2t
        0x30t
        0xc3t
        0x30t
        0xc4t
        0x30t
        0xc5t
        0x30t
        0xc6t
        0x30t
        0xc7t
        0x30t
        0xc8t
        0x30t
        0xc9t
        0x30t
        0xcat
        0x30t
        0xcbt
        0x30t
        0xcct
        0x30t
        0xcdt
        0x30t
        0xcet
        0x30t
        0xcft
        0x30t
        0xd0t
        0x30t
        0xd1t
        0x30t
        0xd2t
        0x30t
        0xd3t
        0x30t
        0xd4t
        0x30t
        0xd5t
        0x30t
        0xd6t
        0x30t
        0xd7t
        0x30t
        0xd8t
        0x30t
        0xd9t
        0x30t
        0xdat
        0x30t
        0xdbt
        0x30t
        0xdct
        0x30t
        0xddt
        0x30t
        0xdet
        0x30t
        0xdft
        0x30t
        0xe0t
        0x30t
        0xe1t
        0x30t
        0xe2t
        0x30t
        0xe3t
        0x30t
        0xe4t
        0x30t
        0xe5t
        0x30t
        0xe6t
        0x30t
        0xe7t
        0x30t
        0xe8t
        0x30t
        0xe9t
        0x30t
        0xeat
        0x30t
        0xebt
        0x30t
        0xect
        0x30t
        0xedt
        0x30t
        0xeet
        0x30t
        0xeft
        0x30t
        0xf0t
        0x30t
        0xf1t
        0x30t
        0xf2t
        0x30t
        0xf3t
        0x30t
        0xf4t
        0x30t
        0xf5t
        0x30t
        0xf6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 611
    move-object v3, p0

    .line 612
    .local v3, rtn:Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/Util;->Big5_str:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 616
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/htc/android/mail/Util;->Big5_arr:[B

    const-string v6, "Big5"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v4, Lcom/htc/android/mail/Util;->Big5_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_0
    sget-object v4, Lcom/htc/android/mail/Util;->JP_str:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 628
    :try_start_1
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/htc/android/mail/Util;->JP_Unicode:[B

    const-string v6, "unicode"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v4, Lcom/htc/android/mail/Util;->JP_str:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 639
    sget-object v4, Lcom/htc/android/mail/Util;->Big5_str:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, idx:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 641
    sget-object v4, Lcom/htc/android/mail/Util;->Big5_str:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-object v5, Lcom/htc/android/mail/Util;->JP_str:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 636
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    .end local v1           #i:I
    .end local v2           #idx:I
    :catch_0
    move-exception v0

    .line 645
    .end local p0
    :goto_1
    return-object p0

    .line 630
    .restart local p0
    :catch_1
    move-exception v0

    .line 632
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_3
    move-object p0, v3

    .line 645
    goto :goto_1
.end method

.method public static final FixBig5UnicodeForJP([B)Z
    .locals 6
    .parameter "str"

    .prologue
    .line 651
    sget-object v3, Lcom/htc/android/mail/Util;->Big5_arr:[B

    array-length v2, v3

    .line 652
    .local v2, nLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, idx:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 655
    aget-byte v3, p0, v0

    sget-object v4, Lcom/htc/android/mail/Util;->Big5_arr:[B

    aget-byte v4, v4, v1

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/htc/android/mail/Util;->Big5_arr:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_1

    .line 656
    sget-object v3, Lcom/htc/android/mail/Util;->JP_Unicode:[B

    aget-byte v3, v3, v1

    aput-byte v3, p0, v0

    .line 657
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/htc/android/mail/Util;->JP_Unicode:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, p0, v3

    .line 652
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 664
    .end local v1           #idx:I
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public static final GenBoundary(I)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----=_Part_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAvailableSpace()V
    .locals 16

    .prologue
    const-wide/32 v14, 0x10000

    .line 721
    new-instance v11, Landroid/os/StatFs;

    const-string v12, "/data/data/com.htc.android.mail/"

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 722
    .local v11, sf:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    .line 723
    .local v0, availableBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 724
    .local v4, blockSize:J
    const-wide/32 v7, 0x100000

    .line 725
    .local v7, createSize:J
    mul-long v2, v0, v4

    .line 726
    .local v2, availableSize:J
    new-instance v9, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v9}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 727
    .local v9, fs:Landroid/os/FileUtils$FileStatus;
    const-string v12, "/data/data/com.htc.android.mail/bufferFileForMailAP"

    invoke-static {v12, v9}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v10

    .line 728
    .local v10, isBufferFileForMailExists:Z
    iget-wide v12, v9, Landroid/os/FileUtils$FileStatus;->size:J

    long-to-int v6, v12

    .line 730
    .local v6, bufferFileSize:I
    if-nez v10, :cond_4

    .line 731
    cmp-long v12, v2, v7

    if-gez v12, :cond_0

    .line 732
    move-wide v7, v2

    .line 734
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-gtz v12, :cond_2

    .line 750
    :cond_1
    :goto_0
    return-void

    .line 736
    :cond_2
    sget-boolean v12, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "Util"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Available space is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes and the buffuer file does not exist, create one for size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_3
    invoke-static {v7, v8}, Lcom/htc/android/mail/Util;->initBufferFileForMailAP(J)V

    goto :goto_0

    .line 739
    :cond_4
    cmp-long v12, v2, v14

    if-gez v12, :cond_6

    .line 740
    sget-boolean v12, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "Util"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Available space is less than 64K("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes) and the buffuer file exists, delete it to get more space..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP()V

    goto :goto_0

    .line 742
    :cond_6
    int-to-long v12, v6

    cmp-long v12, v12, v7

    if-gez v12, :cond_1

    .line 743
    int-to-long v12, v6

    add-long/2addr v12, v2

    sub-long/2addr v12, v14

    cmp-long v12, v7, v12

    if-lez v12, :cond_7

    .line 744
    int-to-long v12, v6

    add-long/2addr v12, v2

    sub-long v7, v12, v14

    .line 745
    :cond_7
    sget-boolean v12, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "Util"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Available space is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes and the buffuer file size is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes, delete it and create a larger one("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP()V

    .line 747
    invoke-static {v7, v8}, Lcom/htc/android/mail/Util;->initBufferFileForMailAP(J)V

    goto/16 :goto_0
.end method

.method public static checkIsSupportType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "actionType"
    .parameter "schema"
    .parameter "mimetype"

    .prologue
    const/4 v3, 0x0

    .line 818
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v3

    .line 819
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .line 821
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 823
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const/high16 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 825
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_4

    .line 826
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is support."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 830
    :cond_4
    sget-boolean v4, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Util"

    const-string v5, " not support."

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearSignaturePref(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 892
    if-nez p0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    const-string v1, "cusSignature"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 894
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static createBufferFile()V
    .locals 8

    .prologue
    .line 669
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Util"

    const-string v6, "> createBufferFile()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    :try_start_0
    const-string v4, "/data/data/com.htc.android.mail/bufferFile"

    .line 672
    .local v4, strTempFile:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bufferFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 675
    .local v2, fileTempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 676
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "Util"

    const-string v6, "buffer file not found, create new one"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 678
    .local v3, fos:Ljava/io/FileOutputStream;
    const v5, 0xc8000

    new-array v0, v5, [B

    .line 679
    .local v0, byteData:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 680
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 681
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v0           #byteData:[B
    .end local v2           #fileTempFile:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "Util"

    const-string v6, "< createBufferFile()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_4
    return-void

    .line 684
    .restart local v2       #fileTempFile:Ljava/io/File;
    :cond_5
    :try_start_1
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Util"

    const-string v6, "buffer file exist, need not create"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 686
    .end local v2           #fileTempFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 687
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Util"

    const-string v6, "createBufferFile() Exception"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteBufferFile()V
    .locals 5

    .prologue
    .line 695
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Util"

    const-string v4, "> deleteBufferFile()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    :try_start_0
    const-string v2, "/data/data/com.htc.android.mail/bufferFile"

    .line 698
    .local v2, strTempFile:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 701
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Util"

    const-string v4, "delete buffer file success"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v1           #file:Ljava/io/File;
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Util"

    const-string v4, "< deleteBufferFile()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_2
    return-void

    .line 703
    .restart local v1       #file:Ljava/io/File;
    :cond_3
    :try_start_1
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Util"

    const-string v4, "delete buffer file failed"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 709
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Util"

    const-string v4, "deleteBufferFile() Exception"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :cond_4
    :try_start_2
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Util"

    const-string v4, "buffer file doesn\'t exist"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static getAccountCountPref(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 852
    if-nez p0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 853
    :cond_1
    const-string v2, "account"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 854
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "totalCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 855
    .local v0, count:I
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get account count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountLastAccessMailboxId(Landroid/content/Context;J)J
    .locals 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 959
    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    .line 963
    :cond_0
    :goto_0
    return-wide v0

    .line 960
    :cond_1
    const-string v3, "account"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 961
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastMailboxId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 962
    .local v0, id:J
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Last access mailbox id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountLastMove2MailboxId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x0

    .line 935
    if-nez p0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-object v0

    .line 936
    :cond_1
    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 937
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move2MailboxId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, id:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Last access mailbox id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBladeDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 1014
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1015
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 1027
    :goto_0
    return-object v3

    .line 1017
    :cond_0
    const-string v1, "EE,"

    .line 1018
    .local v1, patten1:Ljava/lang/String;
    const-string v2, ", EE"

    .line 1019
    .local v2, patten2:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 1020
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1021
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 1023
    :cond_1
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1024
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 1025
    .local v0, len:I
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 1027
    .end local v0           #len:I
    :cond_2
    sget-object v3, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1
    .parameter "c"

    .prologue
    .line 1036
    sget-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1037
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    .line 1039
    :cond_0
    sget-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    return-object v0
.end method

.method public static final getDateTimeWeekFormat(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 459
    sget-object v1, Lcom/htc/android/mail/Util;->sDateTimeWeekFormat:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/mail/Util;->sDateTimeWeekFormatWith24:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 460
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 461
    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 462
    .local v0, is24Format:Z
    if-eqz v0, :cond_2

    .line 463
    sget-object v1, Lcom/htc/android/mail/Util;->sDateTimeWeekFormatWith24:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    :cond_2
    sget-object v1, Lcom/htc/android/mail/Util;->sDateTimeWeekFormat:Ljava/lang/CharSequence;

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getFullTimeString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 193
    sget-object v1, Lcom/htc/android/mail/Util;->sFullTimeFormat:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 194
    invoke-static {p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 195
    :cond_0
    sget-object v0, Lcom/htc/android/mail/Util;->sFullTimeFormat:Ljava/lang/CharSequence;

    .line 196
    .local v0, format:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getIMSIFromPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 869
    if-nez p0, :cond_1

    const-string v0, ""

    .line 873
    :cond_0
    :goto_0
    return-object v0

    .line 870
    :cond_1
    const-string v2, "siminfo"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 871
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "lastIMSI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, IMSI:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getKeepTempMessage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 911
    if-nez p0, :cond_1

    const/4 v0, -0x1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 912
    :cond_1
    const-string v2, "TempMessage"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 913
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 914
    .local v0, pair:I
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get tmp message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getMonthString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 485
    const v0, 0x7f0b035a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreSpaceForMailAP()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 793
    sget-boolean v2, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP:Z

    if-eqz v2, :cond_0

    .line 815
    .local v1, file:Ljava/io/File;
    :goto_0
    return-void

    .line 795
    .end local v1           #file:Ljava/io/File;
    :cond_0
    sput-boolean v4, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP:Z

    .line 796
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Util"

    const-string v3, "> getMoreSpaceForMailAP()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.htc.android.mail/bufferFileForMailAP"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 800
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 801
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Util"

    const-string v3, "delete buffer file success"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_2
    :goto_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/android/mail/Util;->getMoreSpaceForMailAP:Z

    .line 814
    const-string v2, "Util"

    const-string v3, "< getMoreSpaceForMailAP()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Util"

    const-string v3, "delete buffer file failed"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Util"

    const-string v3, "getMoreSpaceForMailAP() Exception"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Util"

    const-string v3, "buffer file doesn\'t exist"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static final getNewMonthString(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "millis"

    .prologue
    .line 477
    const-string v0, "MMM dd"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getNewTimeWithYearString(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "millis"

    .prologue
    .line 481
    const-string v0, "MM/dd/yy"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 5
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 200
    sget-object v3, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 201
    invoke-static {p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 203
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, p1

    .line 206
    .local v1, span:J
    const-wide/32 v3, 0x5265c00

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 207
    sget-object v0, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    .line 216
    .local v0, format:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 208
    .end local v0           #format:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x240c8400

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 209
    sget-object v0, Lcom/htc/android/mail/Util;->sWeeklyFormat:Ljava/lang/CharSequence;

    .restart local v0       #format:Ljava/lang/CharSequence;
    goto :goto_0

    .line 210
    .end local v0           #format:Ljava/lang/CharSequence;
    :cond_2
    const-wide v3, 0x90321000L

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 211
    sget-object v0, Lcom/htc/android/mail/Util;->sMonthlyFormat:Ljava/lang/CharSequence;

    .restart local v0       #format:Ljava/lang/CharSequence;
    goto :goto_0

    .line 213
    .end local v0           #format:Ljava/lang/CharSequence;
    :cond_3
    sget-object v0, Lcom/htc/android/mail/Util;->sYearlyFormat:Ljava/lang/CharSequence;

    .restart local v0       #format:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public static final getRelativeTimeSpanString2(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 22
    .parameter "c"
    .parameter "millis"
    .parameter "format24"

    .prologue
    .line 253
    sget-object v2, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 254
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 257
    .local v9, currectTime:J
    sget-object v2, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 258
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    invoke-virtual {v2, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 260
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v0, v2, Landroid/text/format/Time;->year:I

    move/from16 v21, v0

    .line 261
    .local v21, year:I
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v0, v2, Landroid/text/format/Time;->weekDay:I

    move/from16 v20, v0

    .line 263
    .local v20, weekday:I
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->monthDay:I

    sget-object v7, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    sget-object v8, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v2 .. v8}, Landroid/text/format/Time;->set(IIIIII)V

    .line 265
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/mail/Util;->today:J

    .line 266
    sget-wide v2, Lcom/htc/android/mail/Util;->today:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/htc/android/mail/Util;->yesterday:J

    .line 269
    sget-object v2, Lcom/htc/android/mail/Util;->yearStart:Ljava/util/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, v21

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 270
    sget-object v2, Lcom/htc/android/mail/Util;->yearStart:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 272
    .local v14, mLongyearStart:J
    const-wide/32 v2, 0x5265c00

    div-long v17, v9, v2

    .line 277
    .local v17, todayValue:J
    const/4 v11, 0x0

    .line 280
    .local v11, format:Ljava/lang/CharSequence;
    sget-wide v2, Lcom/htc/android/mail/Util;->today:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_9

    .line 281
    if-eqz p3, :cond_1

    .line 282
    sget-object v11, Lcom/htc/android/mail/Util;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 326
    :goto_0
    sget-object v2, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    invoke-static {v11, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v19

    :goto_1
    return-object v19

    .line 285
    :cond_1
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 286
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v12, v2, 0xc

    .line 287
    .local v12, hour:I
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v0, v2, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    .line 288
    .local v16, min:I
    if-nez v12, :cond_2

    .line 289
    const/16 v12, 0xc

    .line 290
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v13, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 291
    .local v13, locale:Ljava/util/Locale;
    invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_tw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    if-ge v12, v3, :cond_4

    :cond_4
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 296
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    if-ge v12, v3, :cond_7

    :cond_7
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 299
    .end local v12           #hour:I
    .end local v13           #locale:Ljava/util/Locale;
    .end local v16           #min:I
    :cond_9
    sget-wide v2, Lcom/htc/android/mail/Util;->today:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_a

    sget-wide v2, Lcom/htc/android/mail/Util;->yesterday:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_a

    .line 300
    const v2, 0x7f0b01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    goto/16 :goto_1

    .line 301
    :cond_a
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_b

    move/from16 v0, v20

    int-to-long v2, v0

    sub-long v2, v17, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-gez v2, :cond_b

    .line 304
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 308
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    .line 310
    .local v19, weekDay:Ljava/lang/String;
    goto/16 :goto_1

    .line 311
    .end local v19           #weekDay:Ljava/lang/String;
    :cond_b
    cmp-long v2, p1, v14

    if-ltz v2, :cond_c

    .line 312
    const-string v11, "MMM dd"

    .line 314
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 320
    sget-object v2, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v11, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v19

    goto/16 :goto_1

    .line 322
    :cond_c
    sget-object v11, Lcom/htc/android/mail/Util;->sYearlyFormat:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public static final getRelativeTimeSpanString3(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 11
    .parameter "c"
    .parameter "millis"

    .prologue
    const-wide/32 v9, 0x5265c00

    const-wide/16 v7, 0x1

    .line 220
    sget-object v5, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 221
    invoke-static {p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 223
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long v0, v5, v9

    .line 224
    .local v0, day1:J
    div-long v2, p1, v9

    .line 225
    .local v2, day2:J
    const/4 v4, 0x0

    .line 227
    .local v4, format:Ljava/lang/CharSequence;
    add-long v5, v2, v7

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    .line 228
    sget-object v4, Lcom/htc/android/mail/Util;->sMonthlyFormat:Ljava/lang/CharSequence;

    .line 236
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v5, :cond_2

    .line 237
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "DD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "day>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    return-object v5

    .line 229
    :cond_3
    add-long v5, v2, v7

    cmp-long v5, v0, v5

    if-nez v5, :cond_5

    .line 230
    sget-boolean v5, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v5, :cond_4

    .line 231
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "day>yesterday"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_4
    const-string v5, "Yesterday"

    goto :goto_1

    .line 233
    :cond_5
    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 234
    sget-object v4, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public static getSearchFilterBooleanArray(Landroid/content/Context;J)[Z
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/16 v9, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1061
    new-array v2, v9, [Z

    .line 1062
    .local v2, ret:[Z
    if-eqz p0, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v4, p1, v7

    if-gez v4, :cond_1

    .line 1063
    :cond_0
    const/4 v1, 0x5

    .line 1068
    .local v1, prefValue:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 1069
    shl-int v4, v5, v0

    and-int/2addr v4, v1

    if-lez v4, :cond_2

    move v4, v5

    :goto_2
    aput-boolean v4, v2, v0

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1065
    .end local v0           #i:I
    .end local v1           #prefValue:I
    :cond_1
    const-string v4, "account"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1066
    .local v3, sp:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "SearchFilterPref"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x5

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #prefValue:I
    goto :goto_0

    .end local v3           #sp:Landroid/content/SharedPreferences;
    .restart local v0       #i:I
    :cond_2
    move v4, v6

    .line 1069
    goto :goto_2

    .line 1071
    :cond_3
    sget-boolean v4, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get getSearchFilterBooleanArray="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " account="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_4
    return-object v2
.end method

.method public static getSearchFilterPref(Landroid/content/Context;J)I
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x5

    .line 1052
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v0

    .line 1053
    :cond_1
    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1054
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SearchFilterPref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1055
    .local v0, pref:I
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get SearchFilterPref="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSignatureByLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 884
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-object v0

    .line 885
    :cond_1
    const-string v2, "cusSignature"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 886
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, sig:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get signature from sharePreference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in locale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getThisYearString()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 489
    const-string v0, "yy/MM/dd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeFullString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 469
    const-string v0, "MM/dd/yy h:mmaa"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 455
    const v0, 0x7f0b035c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeWithTimeZone(J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "millis"

    .prologue
    .line 473
    const-string v0, "E, d MMM yyyy kk:mm:ss z"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getTitleTime(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 24
    .parameter "c"
    .parameter "millis"
    .parameter "format24"

    .prologue
    .line 355
    sget-object v5, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 356
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Util;->init(Landroid/content/Context;)V

    .line 357
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 358
    .local v10, cal:Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    const/4 v12, 0x0

    .line 360
    .local v12, head:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 361
    .local v17, tail:Ljava/lang/CharSequence;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 362
    .local v16, nowtime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 364
    sget-object v5, Lcom/htc/android/mail/Util;->sDateFormat:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 365
    .local v19, today:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/mail/Util;->sDateFormat:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 366
    .local v23, yesterday:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/mail/Util;->sDateFormat:Ljava/lang/CharSequence;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 368
    .local v15, mailDay:Ljava/lang/String;
    move-object/from16 v0, v16

    iget v4, v0, Landroid/text/format/Time;->year:I

    .line 369
    .local v4, year:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v22, v0

    .line 370
    .local v22, weekday:I
    const/4 v11, 0x1

    .line 371
    .local v11, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    or-int/lit16 v11, v11, 0x80

    .line 375
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 376
    .local v3, yearStart:Ljava/util/Calendar;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 377
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 378
    .local v13, mLongyearStart:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long v20, v5, v7

    .line 381
    .local v20, todayValue:J
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTitleTime>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v11}, Lcom/htc/android/mail/MailCommon;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v17

    .line 394
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 396
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 427
    :goto_0
    return-object v5

    .line 398
    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 399
    const v5, 0x7f0b01f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 424
    :goto_1
    if-eqz v12, :cond_7

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :cond_4
    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_5

    move/from16 v0, v22

    int-to-long v5, v0

    sub-long v5, v20, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-gez v5, :cond_5

    .line 403
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 404
    .local v18, time:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget v6, v0, Landroid/text/format/Time;->weekDay:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x14

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 410
    goto :goto_1

    .line 411
    .end local v18           #time:Landroid/text/format/Time;
    :cond_5
    cmp-long v5, p1, v13

    if-ltz v5, :cond_6

    .line 412
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 413
    .restart local v18       #time:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget v6, v0, Landroid/text/format/Time;->month:I

    const/16 v7, 0x14

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 419
    goto :goto_1

    .line 422
    .end local v18           #time:Landroid/text/format/Time;
    :cond_6
    sget-object v5, Lcom/htc/android/mail/Util;->sYearlyFormat:Ljava/lang/CharSequence;

    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    goto/16 :goto_1

    .line 427
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static getUsingAccountPref(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v0, 0x0

    .line 977
    if-nez p0, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-wide v0

    .line 978
    :cond_1
    const-string v3, "account"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 979
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "usingAccount"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 980
    .local v0, id:J
    sget-boolean v3, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get using account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getValueString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 598
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 599
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 601
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 606
    :goto_1
    return-object v1

    :cond_0
    move-object v1, v2

    .line 603
    goto :goto_1

    .line 598
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 606
    goto :goto_1
.end method

.method private static final init(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 493
    const v0, 0x7f0b0357

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDailyFormat:Ljava/lang/CharSequence;

    .line 494
    const v0, 0x7f0b0358

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDailyFormat24:Ljava/lang/CharSequence;

    .line 495
    const v0, 0x7f0b0359

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sWeeklyFormat:Ljava/lang/CharSequence;

    .line 496
    const v0, 0x7f0b035a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sMonthlyFormat:Ljava/lang/CharSequence;

    .line 497
    const v0, 0x7f0b035b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sYearlyFormat:Ljava/lang/CharSequence;

    .line 498
    const v0, 0x7f0b035c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDateFormat:Ljava/lang/CharSequence;

    .line 499
    const v0, 0x7f0b035e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sFullTimeFormat:Ljava/lang/CharSequence;

    .line 500
    const v0, 0x7f0b035d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDateFormatMDY:Ljava/lang/CharSequence;

    .line 501
    const v0, 0x7f0b035f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDateTimeWeekFormat:Ljava/lang/CharSequence;

    .line 502
    const v0, 0x7f0b0360

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/Util;->sDateTimeWeekFormatWith24:Ljava/lang/CharSequence;

    .line 503
    return-void
.end method

.method public static initBufferFileForMailAP(J)V
    .locals 8
    .parameter "createSize"

    .prologue
    .line 755
    sget-boolean v5, Lcom/htc/android/mail/Util;->initBufferFileForMailAP:Z

    if-eqz v5, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/android/mail/Util;->initBufferFileForMailAP:Z

    .line 761
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "Util"

    const-string v6, "> initBufferFileForMailAP()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.mail/bufferFileForMailAP"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v2, fileTempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 765
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Util"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buffer file not found, create new one for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, file name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/data/data/com.htc.android.mail/bufferFileForMailAP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 767
    .local v3, fos:Ljava/io/FileOutputStream;
    const/high16 v4, 0x10

    .line 769
    .local v4, size:I
    long-to-int v4, p0

    .line 773
    new-array v0, v4, [B

    .line 774
    .local v0, byteData:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 775
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 776
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v0           #byteData:[B
    .end local v2           #fileTempFile:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #size:I
    :cond_4
    :goto_1
    const/4 v5, 0x0

    sput-boolean v5, Lcom/htc/android/mail/Util;->initBufferFileForMailAP:Z

    .line 787
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Util"

    const-string v6, "< initBufferFileForMailAP()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    .restart local v2       #fileTempFile:Ljava/io/File;
    :cond_5
    :try_start_1
    sget-boolean v5, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "Util"

    const-string v6, "buffer file exist, need not create"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 782
    .end local v2           #fileTempFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 783
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Util"

    const-string v6, "initBufferFileForMailAP() Exception"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final linesToByteString(Ljava/util/ArrayList;IILjava/lang/String;)Lcom/htc/android/mail/ByteString;
    .locals 7
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/android/mail/ByteString;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    new-instance v3, Lcom/htc/android/mail/ByteString;

    invoke-direct {v3, p3}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, b:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v5

    .line 162
    .local v5, bLen:I
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    move v6, p1

    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_2

    .line 164
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    .line 165
    .local v0, s:Lcom/htc/android/mail/ByteString;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/ByteString;->regionMatches(ZILcom/htc/android/mail/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    move p2, v6

    .line 163
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    .end local v0           #s:Lcom/htc/android/mail/ByteString;
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    new-instance v0, Lcom/htc/android/mail/ByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/util/List;II)V

    .line 174
    .restart local v0       #s:Lcom/htc/android/mail/ByteString;
    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const-string v0, "us-ascii"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/mail/Util;->linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "charSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    new-instance v1, Lcom/htc/android/mail/ByteString;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/util/List;II)V

    .line 132
    .local v1, s:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v1, p3}, Lcom/htc/android/mail/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, rtn:Ljava/lang/String;
    const-string v2, "BIG5"

    invoke-virtual {p3, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-static {v0}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    return-object v0
.end method

.method public static final linesToString(Ljava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "charSet"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    new-instance v3, Lcom/htc/android/mail/ByteString;

    invoke-direct {v3, p4}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, b:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v5

    .line 142
    .local v5, bLen:I
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    move v6, p1

    .local v6, i:I
    :goto_0
    if-ge v6, p2, :cond_2

    .line 144
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ByteString;

    .line 145
    .local v0, s:Lcom/htc/android/mail/ByteString;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/ByteString;->regionMatches(ZILcom/htc/android/mail/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    move p2, v6

    .line 143
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 149
    .end local v0           #s:Lcom/htc/android/mail/ByteString;
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",to is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_3
    new-instance v0, Lcom/htc/android/mail/ByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/mail/ByteString;-><init>(Ljava/util/List;II)V

    .line 152
    .restart local v0       #s:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v0, p3}, Lcom/htc/android/mail/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, rtn:Ljava/lang/String;
    const-string v1, "BIG5"

    invoke-virtual {p3, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 154
    invoke-static {v7}, Lcom/htc/android/mail/Util;->FixBig5UnicodeForJP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    :cond_4
    return-object v7
.end method

.method public static final needEncode([B)Z
    .locals 3
    .parameter "check"

    .prologue
    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 507
    aget-byte v1, p0, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    :cond_0
    aget-byte v1, p0, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 508
    :cond_1
    const/4 v1, 0x1

    .line 511
    :goto_1
    return v1

    .line 506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final normalizeLineEndings(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ByteString;

    .line 181
    .local v3, s:Lcom/htc/android/mail/ByteString;
    sget-object v0, Lcom/htc/android/mail/ByteString;->CRLF:Lcom/htc/android/mail/ByteString;

    .line 183
    .local v0, CRLF:Lcom/htc/android/mail/ByteString;
    sget-object v4, Lcom/htc/android/mail/ByteString;->CRLF:Lcom/htc/android/mail/ByteString;

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ByteString;->endsWith(Lcom/htc/android/mail/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    invoke-virtual {v3}, Lcom/htc/android/mail/ByteString;->length()I

    move-result v2

    .line 186
    .local v2, len:I
    add-int/lit8 v4, v2, -0x2

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/ByteString;->set(II)V

    .line 187
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ByteString;->delete(I)V

    .line 179
    .end local v2           #len:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0           #CRLF:Lcom/htc/android/mail/ByteString;
    .end local v3           #s:Lcom/htc/android/mail/ByteString;
    :cond_1
    return-void
.end method

.method public static final parsePairString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "value"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x2

    .line 520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v3, store:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v4, tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 523
    .local v2, mode:I
    const/4 v0, 0x0

    .line 525
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 526
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_4

    .line 527
    if-ne v2, v8, :cond_3

    .line 528
    const/4 v2, 0x1

    .line 585
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    if-nez v2, :cond_2

    .line 586
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 587
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 525
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_3
    if-ne v2, v7, :cond_0

    .line 530
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 533
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_6

    .line 534
    if-ne v2, v9, :cond_5

    .line 535
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 538
    goto :goto_2

    .line 539
    :cond_5
    if-ne v2, v7, :cond_0

    .line 540
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 543
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_9

    .line 544
    if-ne v2, v9, :cond_7

    .line 545
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 547
    :cond_7
    if-ne v2, v7, :cond_8

    .line 548
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 550
    :cond_8
    if-nez v2, :cond_0

    .line 551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 554
    goto :goto_2

    .line 557
    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_b

    .line 558
    if-ne v2, v8, :cond_a

    .line 559
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 561
    :cond_a
    if-ne v2, v7, :cond_0

    .line 562
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #tmp:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .restart local v4       #tmp:Ljava/lang/StringBuilder;
    const/4 v2, -0x1

    .line 565
    goto :goto_2

    .line 569
    :cond_b
    if-ne v2, v8, :cond_c

    .line 571
    const/4 v2, 0x0

    .line 572
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 574
    :cond_c
    if-ne v2, v9, :cond_d

    .line 575
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 577
    :cond_d
    if-nez v2, :cond_e

    .line 578
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 580
    :cond_e
    if-ne v2, v7, :cond_0

    .line 581
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 593
    :cond_f
    return-object v3
.end method

.method public static resetBladeDateFormat()V
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/Util;->mCurSystemTimeFormat:Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public static resetCurrentLocale(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 1043
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    .line 1044
    :cond_0
    return-void
.end method

.method public static resetMailItemExtraHeight(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1047
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    .line 1048
    :cond_0
    sget-object v0, Lcom/htc/android/mail/Util;->CUR_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/htc/android/mail/Util;->EXTRA_SPACE_FOR_MAIL_ITEM:I

    .line 1049
    return-void

    .line 1048
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    .line 991
    if-nez p0, :cond_1

    const-string p0, ""

    .line 1007
    .end local p0
    .local v0, i:I
    .local v1, orgLen:I
    .local v2, theLenAfterTrim:I
    :cond_0
    :goto_0
    return-object p0

    .line 993
    .end local v0           #i:I
    .end local v1           #orgLen:I
    .end local v2           #theLenAfterTrim:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 994
    .restart local v1       #orgLen:I
    move v2, v1

    .line 996
    .restart local v2       #theLenAfterTrim:I
    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 997
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_2

    .line 998
    add-int/lit8 v2, v2, -0x1

    .line 996
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1004
    :cond_2
    if-eq v1, v2, :cond_0

    .line 1007
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V

    move-object p0, v3

    goto :goto_0
.end method

.method public static final unfoldLines(Ljava/util/ArrayList;IIZ)I
    .locals 9
    .parameter
    .parameter "from"
    .parameter "to"
    .parameter "headersOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;IIZ)I"
        }
    .end annotation

    .prologue
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const/4 v6, -0x1

    .line 82
    sub-int v3, p2, p1

    .line 83
    .local v3, numLines:I
    const/4 v1, -0x1

    .line 85
    .local v1, headerBreak:I
    if-nez v3, :cond_1

    move p1, v6

    .line 120
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 89
    .restart local p1
    :cond_1
    const/4 v7, 0x1

    if-ne v7, v3, :cond_2

    sget-object v7, Lcom/htc/android/mail/ByteString;->CRLF:Lcom/htc/android/mail/ByteString;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    :cond_2
    const/4 v2, 0x1

    .line 94
    .local v2, line:I
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/ByteString;

    .line 95
    .local v4, previousLine:Lcom/htc/android/mail/ByteString;
    sget-object v0, Lcom/htc/android/mail/ByteString;->CRLF:Lcom/htc/android/mail/ByteString;

    .line 97
    .local v0, CRLF:Lcom/htc/android/mail/ByteString;
    :cond_3
    :goto_1
    if-ge v2, v3, :cond_6

    .line 98
    add-int v7, p1, v2

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/ByteString;

    .line 100
    .local v5, s:Lcom/htc/android/mail/ByteString;
    invoke-virtual {v5, v0}, Lcom/htc/android/mail/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v6, v1, :cond_4

    .line 101
    add-int v1, p1, v2

    .line 103
    if-eqz p3, :cond_3

    move p1, v1

    .line 104
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v4, v5}, Lcom/htc/android/mail/ByteString;->unfoldLine(Lcom/htc/android/mail/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 111
    add-int v7, p1, v2

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 115
    :cond_5
    move-object v4, v5

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5           #s:Lcom/htc/android/mail/ByteString;
    :cond_6
    move p1, v1

    .line 120
    goto :goto_0
.end method

.method public static final unfoldLines(Ljava/util/ArrayList;IZ)I
    .locals 1
    .parameter
    .parameter "from"
    .parameter "headersOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;IIZ)I

    move-result v0

    return v0
.end method

.method public static final unfoldLines(Ljava/util/ArrayList;Z)I
    .locals 2
    .parameter
    .parameter "headersOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ByteString;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ByteString;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/htc/android/mail/Util;->unfoldLines(Ljava/util/ArrayList;IIZ)I

    move-result v0

    return v0
.end method

.method public static writeAccountCountToPref(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 836
    if-nez p0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 837
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 838
    const-string v2, "account"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 839
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "totalCount"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 844
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {v5}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v0

    .line 845
    .local v0, count:I
    sget-boolean v2, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write account count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_2
    const-string v2, "account"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 847
    .restart local v1       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "totalCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 848
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writeAccountLastAccessMailboxIdToPref(Landroid/content/Context;JJ)V
    .locals 5
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 943
    if-nez p0, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    .line 945
    cmp-long v1, p3, v3

    if-lez v1, :cond_2

    .line 946
    const-string v1, "account"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 947
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastMailboxId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 948
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 949
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 951
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "account"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 952
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastMailboxId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 953
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 954
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remove last mailbox information"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static writeAccountLastMove2MailboxIdToPref(Landroid/content/Context;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v3, 0x0

    .line 919
    if-nez p0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 921
    if-eqz p3, :cond_2

    .line 922
    const-string v1, "account"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 923
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move2MailboxId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 924
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 925
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last mailbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "account"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 928
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Move2MailboxId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 929
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 930
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remove last mailbox information"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static writeIMSIToPref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 860
    if-nez p0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    if-eqz p1, :cond_0

    .line 862
    const-string v1, "siminfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 863
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastIMSI"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 864
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writeKeepTempMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 898
    if-nez p0, :cond_0

    .line 908
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string v1, "TempMessage"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 900
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_1
    if-nez p2, :cond_2

    .line 902
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 903
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 905
    :cond_2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 906
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writeSearchFilterPref(Landroid/content/Context;JI)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "pref"

    .prologue
    .line 1076
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1078
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SearchFilterPref"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1079
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1080
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set SearchFilterPref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeSignatureToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 877
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    const-string v1, "cusSignature"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 879
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writeUsingAccountToPref(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountid"

    .prologue
    .line 967
    if-nez p0, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 970
    sget-boolean v1, Lcom/htc/android/mail/Util;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write using account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_2
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "usingAccount"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
