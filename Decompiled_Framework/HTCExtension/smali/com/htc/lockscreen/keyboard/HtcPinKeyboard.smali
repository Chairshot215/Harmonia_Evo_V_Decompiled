.class public Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
.super Landroid/widget/LinearLayout;
.source "HtcPinKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

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

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->KEYCODE_CANCEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    return-void

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

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    return-void

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
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private handleBackspace()V
    .locals 1

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method private handleCharacter(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendKeyEventsToTarget(I)V

    return-void
.end method

.method private initView()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const-string v7, "pin_keyboard"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->addView(Landroid/view/View;)V

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

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const v7, 0x20900a5

    invoke-static {v6, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    :cond_1
    const v6, 0x202015d

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v1, "out"

    const-string v2, "press"

    const-string v0, "bg"

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

    const v6, 0x202016e

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v6, 0x202018a

    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    const-string v2, "com.htc.lockscreen"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.htc.lockscreen"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "com.htc.lockscreen"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v6, "layout"

    const-string v7, "com.htc.lockscreen"

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9

    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v5, :cond_1

    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v5, "HtcPinKeyboard"

    const-string v6, "sendKeyEventsToTarget no target handler"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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

    if-eqz v2, :cond_0

    array-length v0, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    aget-object v1, v2, v4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addKey(Landroid/view/View;I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "com.htc"

    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-static {v1, v2, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public handleKeyDown()V
    .locals 3

    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    if-ne p1, v4, :cond_0

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    if-ne p1, v4, :cond_1

    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p1, :cond_4

    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleKeyDown()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeKey(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14

    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target handler"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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
    .locals 8

    const-string v0, "com.htc.widget.HtcRimButton"

    const-string v1, "setButtonBackgroundDrawable"

    const/4 v3, 0x0

    :try_start_0
    const-string v6, "com.htc.widget.HtcRimButton"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const-string v6, "setButtonBackgroundDrawable"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v2, v6

    const/4 v6, 0x1

    aput-object p3, v2, v6

    const/4 v6, 0x2

    aput-object p4, v2, v6

    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    return-void
.end method

.method public setVibrate()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

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

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

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

    if-eqz p1, :cond_0

    const v0, 0x1070020

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibratePattern(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibratePattern(I)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    :cond_1
    return-void

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    const-string v3, "HtcPinKeyboard"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVibratePattern([J)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    return-void
.end method
