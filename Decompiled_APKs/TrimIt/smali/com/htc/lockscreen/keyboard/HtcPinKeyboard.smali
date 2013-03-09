.class public Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
.super Landroid/widget/LinearLayout;
.source "HtcPinKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = true

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_CANCEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcPinKeyboard"


# instance fields
.field private mDel:Landroid/view/View;

.field private mExtraButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyMapCode:[I

.field private mNumberButtons:[Landroid/view/View;

.field private mOk:Landroid/view/View;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->KEYCODE_CANCEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 62
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 64
    return-void

    .line 46
    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 69
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 71
    return-void

    .line 46
    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "resName"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 147
    .local v3, pkgContext:Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, id:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    .end local v2           #id:I
    .end local v3           #pkgContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleBackspace()V
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 269
    return-void
.end method

.method private handleCharacter(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendKeyEventsToTarget(I)V

    .line 273
    return-void
.end method

.method private initView()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 75
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const-string v7, "pin_keyboard"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    .line 76
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->addView(Landroid/view/View;)V

    .line 83
    :goto_0
    const/16 v6, 0xa

    new-array v6, v6, [Landroid/view/View;

    const v7, 0x2020189

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    const v8, 0x2020180

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const v8, 0x2020181

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const v8, 0x2020182

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const v8, 0x2020183

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const v8, 0x2020184

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const v8, 0x2020185

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const v8, 0x2020186

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    const v7, 0x2020187

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v6, v11

    const/16 v7, 0x9

    const v8, 0x2020188

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    .line 95
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 96
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 80
    .end local v4           #i:I
    :cond_0
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const v7, 0x20900a5

    invoke-static {v6, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 99
    .restart local v4       #i:I
    :cond_1
    const v6, 0x202015d

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    .line 100
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    const-string v1, "out"

    .line 104
    .local v1, COMMON_RES_OUT:Ljava/lang/String;
    const-string v2, "press"

    .line 105
    .local v2, COMMON_RES_PRESS:Ljava/lang/String;
    const-string v0, "bg"

    .line 106
    .local v0, COMMON_RES_BG:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    const-string v7, "out"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v8, "press"

    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v9, "bg"

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setButtomBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    const v6, 0x202016e

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, cancel:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_2
    const v6, 0x202018a

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    .line 117
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 132
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 133
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 136
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 138
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method public static retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 336
    const-string v7, "HtcPinKeyboard"

    const-string v8, "retrieveLayoutFromLockScreen"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v6, 0x0

    .line 339
    .local v6, view:Landroid/view/View;
    const-string v3, "com.htc.lockscreen"

    .line 342
    .local v3, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 343
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v7, "com.htc.lockscreen"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 344
    .local v5, res:Landroid/content/res/Resources;
    const-string v7, "com.htc.lockscreen"

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 346
    .local v2, inflater:Landroid/view/LayoutInflater;
    const-string v7, "layout"

    const-string v8, "com.htc.lockscreen"

    invoke-virtual {v5, p1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 347
    .local v1, id:I
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 354
    .end local v1           #id:I
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcPinKeyboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveLayoutFromLockScreen e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 226
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 227
    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 231
    .local v3, handler:Landroid/os/Handler;
    if-nez v3, :cond_2

    .line 232
    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target handler"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 237
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 238
    array-length v0, v2

    .line 239
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 240
    aget-object v1, v2, v4

    .line 241
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 243
    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addKey(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "code"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resName"

    .prologue
    .line 123
    const-string v0, "com.htc"

    .line 124
    .local v0, COMMON_RES:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    .local v1, context:Landroid/content/Context;
    const-string v2, "com.htc"

    invoke-static {v1, v2, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public handleKeyDown()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 310
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 277
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 278
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    .line 304
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    if-ne p1, v4, :cond_1

    .line 281
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 286
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 287
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    goto :goto_0

    .line 285
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    :cond_3
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v5

    .line 292
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 293
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 294
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 295
    .local v0, extraView:Landroid/view/View;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #extraView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 297
    .restart local v0       #extraView:Landroid/view/View;
    if-ne v0, p1, :cond_4

    .line 298
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 299
    monitor-exit v5

    goto :goto_0

    .line 302
    .end local v0           #extraView:Landroid/view/View;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #extraView:Landroid/view/View;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleKeyDown()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeKey(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 254
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 255
    .local v12, handler:Landroid/os/Handler;
    if-nez v12, :cond_1

    .line 256
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target handler"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_1
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setButtomBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "view"
    .parameter "outer"
    .parameter "press"
    .parameter "bg"

    .prologue
    .line 160
    const-string v0, "com.htc.widget.HtcRimButton"

    .line 161
    .local v0, CLASS_NAME:Ljava/lang/String;
    const-string v1, "setButtonBackgroundDrawable"

    .line 164
    .local v1, METHOD:Ljava/lang/String;
    const/4 v3, 0x0

    .line 165
    .local v3, c:Ljava/lang/Class;
    :try_start_0
    const-string v7, "com.htc.widget.HtcRimButton"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_0

    .line 167
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    .line 169
    .local v6, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v7, "setButtonBackgroundDrawable"

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 170
    .local v5, m:Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v2, v7

    const/4 v7, 0x1

    aput-object p3, v2, v7

    const/4 v7, 0x2

    aput-object p4, v2, v7

    .line 171
    .local v2, args:[Ljava/lang/Object;
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v5, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v2           #args:[Ljava/lang/Object;
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v4

    .line 177
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    .line 182
    return-void
.end method

.method public setVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, vibration:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 193
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate(Z)V

    .line 194
    return-void

    :cond_0
    move v1, v2

    .line 187
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcPinKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrate e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter "bVibra"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    const v0, 0x107001f

    .line 199
    .local v0, vibrateResId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibratePattern(I)V

    .line 200
    return-void

    .line 197
    .end local v0           #vibrateResId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 212
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 219
    :cond_1
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 208
    const-string v3, "HtcPinKeyboard"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 215
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVibratePattern([J)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 223
    return-void
.end method
