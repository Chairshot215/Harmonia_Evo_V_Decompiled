.class public Lcom/htc/android/htcime/PPIME/PPConfigProperty;
.super Ljava/lang/Object;
.source "PPConfigProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;
    }
.end annotation


# static fields
.field public static final COLORFUL_PEN:I = 0x0

.field public static final DIC_TBL_ZHA_CN:I = 0x2

.field public static final DIC_TBL_ZHA_HK:I = 0x3

.field public static final DIC_TBL_ZHA_TW:I = 0x1

.field private static final DUMP_LOG:Z = false

.field public static final ITEM_TYPE_1:I = 0x1

.field public static final ITEM_TYPE_2:I = 0x2

.field public static final ITEM_TYPE_3:I = 0x3

.field public static final ITEM_TYPE_UNKNOWN:I = 0x0

.field public static final LANGUAGE_ALL:I = 0x2

.field public static final LANGUAGE_CHINESE:I = 0x0

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field private static final LOG_CLASS:Ljava/lang/String; = "[PPConfigProperty] "

.field private static final LOG_TITLE:Ljava/lang/String; = "PPLOG"

.field public static final MAX_PEN_SPEED:I = 0x9

.field public static final MAX_PEN_WIDTH:I = 0x5

.field public static final MIN_PEN_SPEED:I = 0x1

.field public static final MIN_PEN_WIDTH:I = 0x1

.field public static final PEN_TYPE_BRUSH:I = 0x1

.field public static final PEN_TYPE_MARK:I = 0x2

.field public static final PEN_TYPE_NORMAL:I = 0x0

.field public static final PROPERTY_CONTENT_TYPE_EMAIL_ADDRESS:I = 0x15

.field public static final PROPERTY_CONTENT_TYPE_EMAIL_CONTENT:I = 0x17

.field public static final PROPERTY_CONTENT_TYPE_EMAIL_SUBJECT:I = 0x16

.field public static final PROPERTY_CONTENT_TYPE_HTC_FILENAME:I = 0x1d

.field public static final PROPERTY_CONTENT_TYPE_HTC_USERID:I = 0x1c

.field public static final PROPERTY_CONTENT_TYPE_NONE:I = 0xf

.field public static final PROPERTY_CONTENT_TYPE_NORMAL_TEXT:I = 0x10

.field public static final PROPERTY_CONTENT_TYPE_PASSWORD:I = 0x1b

.field public static final PROPERTY_CONTENT_TYPE_PEOPLE_NAME:I = 0x18

.field public static final PROPERTY_CONTENT_TYPE_PHONE_NUMBER:I = 0x1a

.field public static final PROPERTY_CONTENT_TYPE_POSTAL_ADDRESS:I = 0x19

.field public static final PROPERTY_CONTENT_TYPE_SHORT_MESSAGE:I = 0x11

.field public static final PROPERTY_CONTENT_TYPE_WEB_EDIT_TEXT:I = 0x14

.field public static final PROPERTY_CONTENT_TYPE_WEB_SEARCH_QUERY:I = 0x13

.field public static final PROPERTY_CONTENT_TYPE_WEB_URL:I = 0x12

.field public static final PROPERTY_ENABLE_ANIMATION:I = 0xd

.field public static final PROPERTY_ENABLE_CHINESE_TYPE:I = 0x0

.field public static final PROPERTY_ENABLE_DYNAMIC_PEN_SPEED:I = 0x1e

.field public static final PROPERTY_ENABLE_ENGLISH_WORD_COMPLETE:I = 0x4

.field public static final PROPERTY_ENABLE_FULL_WIDTH:I = 0x5

.field public static final PROPERTY_ENABLE_GSENSOR:I = 0xe

.field public static final PROPERTY_ENABLE_HONGKONG:I = 0x3

.field public static final PROPERTY_ENABLE_JAPANESE:I = 0x2

.field public static final PROPERTY_ENABLE_RECOGNIZE_TYPE:I = 0x7

.field public static final PROPERTY_ENABLE_SYMBOL:I = 0x1

.field private static final PROPERTY_FILE:Ljava/lang/String; = "ppconfig"

.field private static final PROPERTY_FILE_PATH:Ljava/lang/String; = "config"

.field public static final PROPERTY_PEN_COLOR:I = 0x6

.field public static final PROPERTY_PEN_SPEED:I = 0xb

.field public static final PROPERTY_PEN_TYPE:I = 0xc

.field public static final PROPERTY_PEN_WIDTH:I = 0xa

.field public static final PROPERTY_UNKNOWN_VALUE:I = -0x1

.field public static final SUBLANG_ZH:I = 0x1

.field public static final SUBLANG_ZH_ALL:I = 0x4

.field public static final SUBLANG_ZH_HK:I = 0x3

.field public static final SUBLANG_ZH_TW:I = 0x2

.field public static final TOTAL_PROPERTY_COUNT:I = 0x1f

.field public static final children_title:[[Ljava/lang/String;

.field public static final children_type:[[I

.field public static cur_db:I

.field public static final groups_title:[Ljava/lang/String;

.field public static final pen_color:[I

.field public static final pen_color_string:[Ljava/lang/String;

.field public static final pen_color_used_in_setting:[I

.field public static final pen_type_string:[Ljava/lang/String;


# instance fields
.field private mProperties:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 125
    const/16 v0, 0x678

    sput v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Input DB Settings"

    aput-object v1, v0, v3

    const-string v1, "English Setting"

    aput-object v1, v0, v5

    const-string v1, "Writing Setting"

    aput-object v1, v0, v4

    const-string v1, "Others"

    aput-object v1, v0, v7

    const-string v1, "Help"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->groups_title:[Ljava/lang/String;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Simplied Chinese"

    aput-object v2, v1, v3

    const-string v2, "Symbol"

    aput-object v2, v1, v5

    const-string v2, "Japanese"

    aput-object v2, v1, v4

    const-string v2, "Hong Kong"

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Word Completion"

    aput-object v2, v1, v3

    const-string v2, "Full Width"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Pen Color"

    aput-object v2, v1, v3

    const-string v2, "Pen Width"

    aput-object v2, v1, v5

    const-string v2, "Writing Speed"

    aput-object v2, v1, v4

    const-string v2, "Pen Type"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Animation"

    aput-object v2, v1, v3

    const-string v2, "G-Sensor"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->children_title:[[Ljava/lang/String;

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    new-array v1, v3, [I

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->children_type:[[I

    .line 165
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Colorful"

    aput-object v1, v0, v3

    const-string v1, "Black"

    aput-object v1, v0, v5

    const-string v1, "Brown"

    aput-object v1, v0, v4

    const-string v1, "Green"

    aput-object v1, v0, v7

    const-string v1, "Olive"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Dark Blue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Purple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Green-blue"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Gray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Light Gray"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Red"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Blue Grass"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Yellow"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Blue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Pink"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Light Blue"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "White"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_string:[Ljava/lang/String;

    .line 183
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color:[I

    .line 202
    const/16 v0, 0x9

    new-array v0, v0, [I

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->COLORFUL:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v1

    aput v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->BLACK:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->GREEN:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->BLUE:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v1

    aput v1, v0, v7

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->PURPLE:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v1

    aput v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->LIGHTGRAY:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->RED:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->YELLOW:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->WHITE:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    .line 213
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Normal"

    aput-object v1, v0, v3

    const-string v1, "Brush"

    aput-object v1, v0, v5

    const-string v1, "Marker"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_type_string:[Ljava/lang/String;

    return-void

    .line 157
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 183
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xfft
        0x2at 0x2at 0xa5t 0xfft
        0x0t 0x80t 0x0t 0xfft
        0x0t 0x80t 0x80t 0xfft
        0x70t 0x19t 0x19t 0xfft
        0x80t 0x0t 0x80t 0xfft
        0x9ft 0xfft 0x54t 0xfft
        0x80t 0x80t 0x80t 0xfft
        0xc7t 0xc7t 0xc7t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x64t 0x70t 0x4ct 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfet 0x0t 0x0t 0xfft
        0xcbt 0xc0t 0xfft 0xfft
        0xe6t 0xd8t 0xadt 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    .line 223
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 225
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method private isQVGA(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x140

    const/16 v6, 0xf0

    .line 616
    const/4 v0, 0x0

    .line 618
    .local v0, bRet:Z
    if-eqz p1, :cond_2

    .line 619
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 620
    .local v4, winMgr:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 621
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 622
    .local v2, nDisplayHeight:I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 624
    .local v3, nDisplayWidth:I
    if-ne v2, v7, :cond_0

    if-eq v3, v6, :cond_1

    :cond_0
    if-ne v2, v6, :cond_3

    if-ne v3, v7, :cond_3

    .line 625
    :cond_1
    const/4 v0, 0x1

    .line 631
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #nDisplayHeight:I
    .end local v3           #nDisplayWidth:I
    .end local v4           #winMgr:Landroid/view/WindowManager;
    :cond_2
    :goto_0
    return v0

    .line 627
    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #nDisplayHeight:I
    .restart local v3       #nDisplayWidth:I
    .restart local v4       #winMgr:Landroid/view/WindowManager;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChildTitle(II)Ljava/lang/String;
    .locals 2
    .parameter "nGroup"
    .parameter "nChild"

    .prologue
    .line 592
    const-string v0, ""

    .line 594
    .local v0, strTitle:Ljava/lang/String;
    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getChildrenCount(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 595
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->children_title:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    .line 598
    :cond_0
    return-object v0
.end method

.method public getChildType(II)I
    .locals 2
    .parameter "nGroup"
    .parameter "nChild"

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, nType:I
    if-ltz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getChildrenCount(I)I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 609
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->children_type:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 612
    :cond_0
    return v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "nGroup"

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, nCount:I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getGroupCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 567
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->children_title:[[Ljava/lang/String;

    aget-object v1, v1, p1

    array-length v0, v1

    .line 570
    :cond_0
    return v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->groups_title:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "nGroup"

    .prologue
    .line 578
    const-string v0, ""

    .line 580
    .local v0, strTitle:Ljava/lang/String;
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getGroupCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 581
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->groups_title:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 584
    :cond_0
    return-object v0
.end method

.method public getProperty(I)I
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public loadProperties(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 267
    :try_start_0
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 268
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ppconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .local v1, stream:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    if-eqz v1, :cond_0

    .line 276
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    .end local v0           #f:Ljava/io/File;
    .end local v1           #stream:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v2, v2, v6

    if-ne v2, v5, :cond_1

    .line 286
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v6, v2, v6

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v4, v2, v4

    .line 292
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v3, 0x2

    aput-byte v6, v2, v3

    .line 295
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v3, 0x3

    aput-byte v6, v2, v3

    .line 298
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v3, 0x4

    aput-byte v6, v2, v3

    .line 300
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v2, v2, v7

    if-ne v2, v5, :cond_2

    .line 301
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v6, v2, v7

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v2, v2, v8

    if-ne v2, v5, :cond_3

    .line 304
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    sget-object v3, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->YELLOW:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v3}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 320
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_4

    .line 321
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xa

    aput-byte v8, v2, v3

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_5

    .line 324
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xb

    aput-byte v7, v2, v3

    .line 327
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_6

    .line 328
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xc

    aput-byte v6, v2, v3

    .line 330
    :cond_6
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_7

    .line 331
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xd

    aput-byte v6, v2, v3

    .line 333
    :cond_7
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_8

    .line 334
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xe

    aput-byte v6, v2, v3

    .line 339
    :cond_8
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_9

    .line 340
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0xf

    aput-byte v6, v2, v3

    .line 342
    :cond_9
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x10

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_a

    .line 343
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x10

    aput-byte v6, v2, v3

    .line 345
    :cond_a
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_b

    .line 346
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x11

    aput-byte v6, v2, v3

    .line 348
    :cond_b
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x12

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_c

    .line 349
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x12

    aput-byte v4, v2, v3

    .line 351
    :cond_c
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x13

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_d

    .line 352
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x13

    aput-byte v4, v2, v3

    .line 354
    :cond_d
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x14

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_e

    .line 355
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x14

    aput-byte v6, v2, v3

    .line 357
    :cond_e
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x15

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_f

    .line 358
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x15

    aput-byte v4, v2, v3

    .line 360
    :cond_f
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x16

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_10

    .line 361
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x16

    aput-byte v6, v2, v3

    .line 363
    :cond_10
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x17

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_11

    .line 364
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x17

    aput-byte v6, v2, v3

    .line 366
    :cond_11
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x18

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_12

    .line 367
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x18

    aput-byte v6, v2, v3

    .line 369
    :cond_12
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x19

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_13

    .line 370
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x19

    aput-byte v6, v2, v3

    .line 372
    :cond_13
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1a

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_14

    .line 373
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1a

    aput-byte v4, v2, v3

    .line 375
    :cond_14
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1b

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_15

    .line 376
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1b

    aput-byte v4, v2, v3

    .line 378
    :cond_15
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1c

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_16

    .line 379
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1c

    aput-byte v4, v2, v3

    .line 381
    :cond_16
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1d

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_17

    .line 382
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1d

    aput-byte v4, v2, v3

    .line 384
    :cond_17
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_18

    .line 385
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v3, 0x7

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 387
    :cond_18
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1e

    aget-byte v2, v2, v3

    if-ne v2, v5, :cond_19

    .line 388
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v3, 0x1e

    aput-byte v6, v2, v3

    .line 390
    :cond_19
    return-void

    .line 275
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #stream:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1a

    .line 276
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1a
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    .end local v0           #f:Ljava/io/File;
    .end local v1           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public loadPropertiesEx(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 399
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 400
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->isQVGA(Landroid/content/Context;)Z

    move-result v0

    .line 402
    .local v0, bIsQVGA:Z
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const-string v6, "handwriting_settings_mode"

    const-string v7, "0"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    aput-byte v6, v3, v5

    .line 404
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v3, v3, v5

    if-ne v3, v9, :cond_0

    .line 405
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v5, v3, v5

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v4, v3, v4

    .line 411
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    .line 414
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v5, v3, v10

    .line 417
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x4

    aput-byte v5, v3, v6

    .line 420
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const-string v3, "handwriting_settings_writing_width"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    :goto_0
    aput-byte v3, v6, v11

    .line 422
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aget-byte v3, v3, v11

    if-ne v3, v9, :cond_1

    .line 423
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    aput-byte v5, v3, v11

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x7

    const-string v7, "handwriting_recognize_mode"

    const-string v8, "2"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->byteValue()B

    move-result v7

    aput-byte v7, v3, v6

    .line 427
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x7

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_2

    .line 428
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x7

    const/4 v7, 0x2

    aput-byte v7, v3, v6

    .line 432
    :cond_2
    const-string v3, "handwriting_settings_writing_stroke_color"

    const-string v6, "7"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, value:I
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/4 v6, 0x6

    sget-object v7, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    aget v7, v7, v2

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 445
    if-eqz v0, :cond_17

    .line 446
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xa

    const-string v7, "handwriting_settings_writing_stroke_width"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 454
    :goto_1
    if-eqz v0, :cond_18

    .line 455
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xb

    const-string v7, "handwriting_settings_writing_stroke_speed"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 462
    :goto_2
    iget-object v6, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v7, 0x1e

    const-string v3, "handwriting_settings_dynamic_writing_stroke_speed"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v4

    :goto_3
    aput-byte v3, v6, v7

    .line 464
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x1e

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_3

    .line 465
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x1e

    aput-byte v5, v3, v6

    .line 468
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xc

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_4

    .line 469
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xc

    aput-byte v5, v3, v6

    .line 471
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xd

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_5

    .line 472
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xd

    aput-byte v5, v3, v6

    .line 474
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xe

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_6

    .line 475
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xe

    aput-byte v5, v3, v6

    .line 480
    :cond_6
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xf

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_7

    .line 481
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xf

    aput-byte v5, v3, v6

    .line 483
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x10

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_8

    .line 484
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x10

    aput-byte v5, v3, v6

    .line 486
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_9

    .line 487
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x11

    aput-byte v5, v3, v6

    .line 489
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x12

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_a

    .line 490
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x12

    aput-byte v4, v3, v6

    .line 492
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x13

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_b

    .line 493
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x13

    aput-byte v4, v3, v6

    .line 495
    :cond_b
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x14

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_c

    .line 496
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x14

    aput-byte v5, v3, v6

    .line 498
    :cond_c
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x15

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_d

    .line 499
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x15

    aput-byte v4, v3, v6

    .line 501
    :cond_d
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x16

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_e

    .line 502
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x16

    aput-byte v5, v3, v6

    .line 504
    :cond_e
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x17

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_f

    .line 505
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x17

    aput-byte v5, v3, v6

    .line 507
    :cond_f
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x18

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_10

    .line 508
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x18

    aput-byte v5, v3, v6

    .line 510
    :cond_10
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x19

    aget-byte v3, v3, v6

    if-ne v3, v9, :cond_11

    .line 511
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0x19

    aput-byte v5, v3, v6

    .line 513
    :cond_11
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1a

    aget-byte v3, v3, v5

    if-ne v3, v9, :cond_12

    .line 514
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1a

    aput-byte v4, v3, v5

    .line 516
    :cond_12
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1b

    aget-byte v3, v3, v5

    if-ne v3, v9, :cond_13

    .line 517
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1b

    aput-byte v4, v3, v5

    .line 519
    :cond_13
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1c

    aget-byte v3, v3, v5

    if-ne v3, v9, :cond_14

    .line 520
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1c

    aput-byte v4, v3, v5

    .line 522
    :cond_14
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1d

    aget-byte v3, v3, v5

    if-ne v3, v9, :cond_15

    .line 523
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v5, 0x1d

    aput-byte v4, v3, v5

    .line 525
    :cond_15
    return-void

    .end local v2           #value:I
    :cond_16
    move v3, v5

    .line 420
    goto/16 :goto_0

    .line 448
    .restart local v2       #value:I
    :cond_17
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xa

    const-string v7, "handwriting_settings_writing_stroke_width"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    goto/16 :goto_1

    .line 457
    :cond_18
    iget-object v3, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    const/16 v6, 0xb

    const-string v7, "handwriting_settings_writing_stroke_speed"

    invoke-interface {v1, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    goto/16 :goto_2

    :cond_19
    move v3, v5

    .line 462
    goto/16 :goto_3
.end method

.method public saveProperties(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 535
    :try_start_0
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 536
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ppconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .local v1, stream:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    if-eqz v1, :cond_0

    .line 544
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 549
    .end local v0           #f:Ljava/io/File;
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 543
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 546
    .end local v0           #f:Ljava/io/File;
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setProperty(II)Z
    .locals 3
    .parameter "nIndex"
    .parameter "nValue"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    if-ge p1, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->mProperties:[B

    int-to-byte v2, p2

    aput-byte v2, v1, p1

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method
