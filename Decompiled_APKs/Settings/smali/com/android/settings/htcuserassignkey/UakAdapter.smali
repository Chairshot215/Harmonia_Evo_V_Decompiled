.class public Lcom/android/settings/htcuserassignkey/UakAdapter;
.super Landroid/widget/BaseAdapter;
.source "UakAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    }
.end annotation


# static fields
.field public static final ADAPTER_MENU:I = 0x1f4

.field public static final ADAPTER_PROGRAM:I = 0x1f5

.field public static final ADAPTER_SHORTCUT:I = 0x1f6

.field public static final ADAPTER_SYSTEM:I = 0x1f7

.field public static final EXCUTE_PROGRAM:I = 0x192

.field public static final EXCUTE_SHORTCUT:I = 0x191

.field public static final EXCUTE_SYSTEM:I = 0x190

.field public static final ITEM_APPLICATION:I = 0x1

.field public static final ITEM_DONOTHING:I = -0x2

.field public static final ITEM_NONE:I = -0x1

.field public static final ITEM_SHORTCUT:I = 0x2

.field public static final ITEM_SYSTEM:I = 0x0

.field public static final ITEM_TITLE:I = 0xc8

.field private static LOG_TAG:Ljava/lang/String;

.field public static localLOGV:Z

.field static uakSystemIcon:[I

.field static uakSystemTitle:[I


# instance fields
.field private mIconHeight:I

.field private mIconWidth:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutMaxItem:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShowTitleId:I

.field private final mTarget:Landroid/app/Activity;

.field private mTitleStrId:[I

.field private mUakAdapterSorter:Lcom/android/settings/htcuserassignkey/UakAdapterSorter;

.field private maddMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private maddProgramItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private maddShortcutItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private maddSystemItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->localLOGV:Z

    .line 52
    const-string v0, "UakAdapter"

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->LOG_TAG:Ljava/lang/String;

    .line 408
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->uakSystemIcon:[I

    .line 417
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->uakSystemTitle:[I

    return-void

    .line 408
    :array_0
    .array-data 0x4
        0x50t 0x1t 0x8t 0x2t
        0x6ft 0x3t 0x8t 0x2t
        0xb7t 0x7t 0x8t 0x2t
        0xb9t 0x7t 0x8t 0x2t
        0xb3t 0x7t 0x8t 0x2t
        0x80t 0x0t 0x8t 0x1t
        0x1dt 0x5t 0x8t 0x1t
        0x53t 0x2t 0x8t 0x2t
        0xf4t 0x4t 0x8t 0x1t
    .end array-data

    .line 417
    :array_1
    .array-data 0x4
        0x12t 0x5t 0xct 0x7ft
        0x13t 0x5t 0xct 0x7ft
        0x14t 0x5t 0xct 0x7ft
        0x15t 0x5t 0xct 0x7ft
        0x16t 0x5t 0xct 0x7ft
        0x17t 0x5t 0xct 0x7ft
        0x18t 0x5t 0xct 0x7ft
        0x19t 0x5t 0xct 0x7ft
        0x1at 0x5t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "ap"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddSystemItems:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddProgramItems:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddShortcutItems:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 110
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mLayoutMaxItem:I

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    .line 117
    iput v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 252
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    .line 254
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 257
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;

    invoke-direct {v0}, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mUakAdapterSorter:Lcom/android/settings/htcuserassignkey/UakAdapterSorter;

    .line 259
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->addMenuItems()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->resetItems()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 274
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    .line 277
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mIconWidth:I

    .line 278
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mIconHeight:I

    .line 279
    return-void

    .line 112
    nop

    :array_0
    .array-data 0x4
        0xet 0x5t 0xct 0x7ft
        0x11t 0x5t 0xct 0x7ft
        0x1bt 0x5t 0xct 0x7ft
        0x1ct 0x5t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/htcuserassignkey/UakAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddSystemItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/htcuserassignkey/UakAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddProgramItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/htcuserassignkey/UakAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddShortcutItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMenuItems()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 374
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 375
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 400
    .local v2, res:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    const v3, 0x7f0c051b

    const v4, 0x2080150

    const/16 v6, 0x1f5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    const v3, 0x7f0c051c

    const v4, 0x2080155

    const/16 v6, 0x1f6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method private addProgramItems()V
    .locals 9

    .prologue
    .line 448
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    iput v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 450
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v6, :cond_0

    .line 452
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 455
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 461
    .local v2, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 462
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 463
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v6, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x192

    invoke-direct {v6, p0, v7, v4, v8}, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v6, Lcom/android/settings/htcuserassignkey/UakAdapter$2;

    invoke-direct {v6, p0}, Lcom/android/settings/htcuserassignkey/UakAdapter$2;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    iget-object v6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    new-instance v7, Lcom/android/settings/htcuserassignkey/UakAdapter$3;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/htcuserassignkey/UakAdapter$3;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 479
    return-void
.end method

.method private addShortcutItems()V
    .locals 10

    .prologue
    .line 483
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    iput v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 485
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v7, :cond_0

    .line 487
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 490
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v6, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v5, shortcutIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 497
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 499
    .local v2, listSize:I
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 504
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 505
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 506
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.mms"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 508
    new-instance v7, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x191

    invoke-direct {v7, p0, v8, v4, v9}, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v7, Lcom/android/settings/htcuserassignkey/UakAdapter$4;

    invoke-direct {v7, p0}, Lcom/android/settings/htcuserassignkey/UakAdapter$4;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 519
    iget-object v7, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    new-instance v8, Lcom/android/settings/htcuserassignkey/UakAdapter$5;

    invoke-direct {v8, p0, v6}, Lcom/android/settings/htcuserassignkey/UakAdapter$5;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method private addSystemItems()V
    .locals 9

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 432
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v8, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;>;"
    sget-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->uakSystemTitle:[I

    array-length v7, v0

    .line 434
    .local v7, size:I
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 435
    .local v2, res:Landroid/content/res/Resources;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 436
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    sget-object v1, Lcom/android/settings/htcuserassignkey/UakAdapter;->uakSystemTitle:[I

    aget v3, v1, v6

    sget-object v1, Lcom/android/settings/htcuserassignkey/UakAdapter;->uakSystemIcon:[I

    aget v4, v1, v6

    const/16 v5, 0x190

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTarget:Landroid/app/Activity;

    new-instance v1, Lcom/android/settings/htcuserassignkey/UakAdapter$1;

    invoke-direct {v1, p0, v8}, Lcom/android/settings/htcuserassignkey/UakAdapter$1;-><init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 616
    sget-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexOutOfBounds on AddAdapter, position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->notifyDataSetChanged()V

    .line 618
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 624
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v4, 0x2090046

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/settings/htcuserassignkey/UakAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .line 579
    .local v0, item:Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    iget v2, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 582
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    move-object v1, p2

    .line 591
    check-cast v1, Landroid/widget/TextView;

    .line 592
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 593
    iget-object v2, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 595
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 596
    iget-object v2, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mIconWidth:I

    iget v4, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mIconHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 599
    iget-object v2, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_1
    return-object p2

    .line 585
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_2
    if-eqz p2, :cond_3

    instance-of v2, p2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 587
    :cond_3
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getWidgetView(Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "item"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 536
    return-object p3
.end method

.method public haseNextLevel(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    iget v0, v0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 530
    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized resetItems()V
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->localLOGV:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetItems start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->addProgramItems()V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->addShortcutItems()V

    .line 295
    sget-boolean v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->localLOGV:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/htcuserassignkey/UakAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetItems end"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAdapter(II)V
    .locals 2
    .parameter "level"
    .parameter "index"

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->addMenuItems()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 304
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddMenuItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    if-lez p1, :cond_0

    .line 307
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/htcuserassignkey/UakAdapter;->addProgramItems()V

    .line 315
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 316
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddProgramItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 311
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddSystemItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mTitleStrId:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mShowTitleId:I

    .line 321
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->maddShortcutItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter;->mItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
