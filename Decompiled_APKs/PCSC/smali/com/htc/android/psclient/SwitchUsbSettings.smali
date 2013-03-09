.class public Lcom/htc/android/psclient/SwitchUsbSettings;
.super Landroid/app/Activity;
.source "SwitchUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;
    }
.end annotation


# static fields
.field private static final PREFERDUN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_DUN_URI:Ljava/lang/String; = "content://telephony/carriers/preferdun"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

.field private DUN_ID:Ljava/lang/String;

.field private final ID_INDEX:I

.field private final NAME_INDEX:I

.field private final TYPES_INDEX:I

.field private buttonType:Ljava/lang/String;

.field private button_id:I

.field private connectionTypeFilter:Landroid/content/IntentFilter;

.field private context:Landroid/content/Context;

.field protected editor:Landroid/content/SharedPreferences$Editor;

.field private itemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/String;

.field private layout_left:Landroid/widget/LinearLayout;

.field private layout_right:Landroid/widget/LinearLayout;

.field public list:Landroid/widget/ListView;

.field private mApnSelectedIndex:I

.field private mDunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDunNameItems:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableMultipleDun:Z

.field private mIsFirstCreateNameItems:Z

.field private mIsMVNO:Z

.field private mKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noteColor:Landroid/content/res/ColorStateList;

.field protected prefs:Landroid/content/SharedPreferences;

.field private toggle_left_1:Landroid/widget/ToggleButton;

.field private toggle_right_1:Landroid/widget/ToggleButton;

.field private viewColor:Landroid/content/res/ColorStateList;

.field private view_left_1:Landroid/widget/FrameLayout;

.field private view_right_1:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "SwitchUsbSettings"

    sput-object v0, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    .line 88
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/psclient/SwitchUsbSettings;->PREFERDUN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I

    .line 71
    iput-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;

    .line 72
    iput-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mHandler:Landroid/os/Handler;

    .line 78
    iput v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->ID_INDEX:I

    .line 79
    iput v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->TYPES_INDEX:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->NAME_INDEX:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    .line 83
    iput-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;

    .line 84
    const-string v0, "dun_id"

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->DUN_ID:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    .line 89
    iput-boolean v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsFirstCreateNameItems:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z

    .line 92
    iput-boolean v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsMVNO:Z

    .line 319
    new-instance v0, Lcom/htc/android/psclient/SwitchUsbSettings$2;

    invoke-direct {v0, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$2;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    return-void
.end method

.method private InitDunData()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 638
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/psclient/SwitchUsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/android/psclient/SwitchUsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/psclient/SwitchUsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/android/psclient/SwitchUsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mApnSelectedIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/android/psclient/SwitchUsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getSelectedDunIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/android/psclient/SwitchUsbSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/android/psclient/SwitchUsbSettings;->setSelectedDunId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->itemlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/psclient/SwitchUsbSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/psclient/SwitchUsbSettings;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/psclient/SwitchUsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/android/psclient/SwitchUsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsEnableMultipleDun:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/android/psclient/SwitchUsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->setListViewContent()V

    return-void
.end method

.method private fillDunList()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 642
    invoke-direct {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->InitDunData()V

    .line 643
    const/4 v3, 0x0

    .line 644
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 646
    .local v10, op:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsMVNO:Z

    .line 648
    iget-boolean v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsMVNO:Z

    if-nez v0, :cond_2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    :goto_1
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    const-string v0, "type"

    aput-object v0, v2, v12

    const-string v0, "name"

    aput-object v0, v2, v14

    const/4 v4, 0x0

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/psclient/SwitchUsbSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 664
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 665
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 666
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 667
    .local v6, Key:Ljava/lang/String;
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, type:Ljava/lang/String;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 670
    .local v9, name:Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .end local v6           #Key:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_1
    move v0, v13

    .line 646
    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\' AND operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 677
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 678
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsFirstCreateNameItems:Z

    if-eqz v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;

    .line 680
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 681
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v8

    .line 680
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 683
    :cond_4
    iput-boolean v13, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mIsFirstCreateNameItems:Z

    .line 685
    .end local v8           #j:I
    :cond_5
    return-void
.end method

.method private getSelectedDunIndex()I
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    .line 688
    const/4 v8, 0x0

    .line 689
    .local v8, name:Ljava/lang/String;
    const/4 v9, -0x1

    .line 690
    .local v9, selectIndex:I
    sget-object v1, Lcom/htc/android/psclient/SwitchUsbSettings;->PREFERDUN_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "type"

    aput-object v4, v2, v0

    const-string v0, "name"

    aput-object v0, v2, v11

    const-string v5, "name ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/psclient/SwitchUsbSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 692
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 694
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 696
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 697
    invoke-direct {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->fillDunList()V

    .line 699
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 700
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mDunNameItems:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    move v9, v7

    move v10, v9

    .line 705
    .end local v9           #selectIndex:I
    .local v10, selectIndex:I
    :goto_1
    return v10

    .line 699
    .end local v10           #selectIndex:I
    .restart local v9       #selectIndex:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v10, v9

    .line 705
    .end local v9           #selectIndex:I
    .restart local v10       #selectIndex:I
    goto :goto_1
.end method

.method private setListViewContent()V
    .locals 10

    .prologue
    const v9, 0x7f020004

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    sget-object v3, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    const-string v4, "-setListViewContent()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/android/psclient/SwitchUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, header:Landroid/view/View;
    const v3, 0x7f090002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_left_1:Landroid/widget/FrameLayout;

    .line 432
    const v3, 0x7f090004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    .line 433
    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_right_1:Landroid/widget/FrameLayout;

    .line 434
    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    .line 435
    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_left:Landroid/widget/LinearLayout;

    .line 436
    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    .line 438
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 439
    .local v1, orientation:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 440
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 441
    .local v2, paddingLeft:I
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 447
    :goto_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x24

    if-eq v3, v4, :cond_0

    .line 448
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_right_1:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const-string v5, "connect_to_pc_btn"

    invoke-static {v4, v5, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 449
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_left_1:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const-string v5, "connect_to_pc_btn"

    invoke-static {v4, v5, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 452
    :cond_0
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isChargeOnlyAvaliable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Charge Only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_left_1:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/htc/android/psclient/SwitchUsbSettings$3;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$3;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    :goto_1
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDiskDriveAvaliable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 470
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Disk Drive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 473
    :cond_2
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->view_right_1:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/htc/android/psclient/SwitchUsbSettings$4;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$4;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 491
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;

    iget-object v5, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const v6, 0x7f030002

    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->items:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 492
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/htc/android/psclient/SwitchUsbSettings$5;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/SwitchUsbSettings$5;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 605
    return-void

    .line 443
    .end local v2           #paddingLeft:I
    :cond_4
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 444
    .restart local v2       #paddingLeft:I
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 466
    :cond_5
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 483
    :cond_6
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Disk Drive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 485
    const-string v3, "Charge Only"

    iput-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    .line 486
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private setSelectedDunId(I)V
    .locals 5
    .parameter "buttonIdx"

    .prologue
    const/4 v4, 0x0

    .line 709
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 710
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 711
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 712
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->DUN_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sget-object v3, Lcom/htc/android/psclient/SwitchUsbSettings;->PREFERDUN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 714
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 609
    sget-object v2, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    const-string v3, "-onConfigurationChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 611
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 612
    sget-object v2, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    const-string v3, "listview is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 616
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 617
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 620
    .local v0, paddingLeft:I
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 622
    .end local v0           #paddingLeft:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 623
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 625
    .restart local v0       #paddingLeft:I
    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 631
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 632
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 633
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 98
    sget-object v1, Lcom/htc/android/psclient/SwitchUsbSettings;->TAG:Ljava/lang/String;

    const-string v2, "-onStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    .line 101
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v2, "INTENT_USBCONNECTIONSETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    const-string v2, "INTENT_CLOSE_BY_USB_DISCONNECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->ConnectionTypeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->connectionTypeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/psclient/SwitchUsbSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const-string v2, "pimSyncPref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    .line 106
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 107
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v1, :cond_0

    .line 108
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    const-string v1, "Charge Only"

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v1, v4, :cond_1

    .line 115
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    const-string v1, "Charge Only"

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    .line 122
    :cond_1
    :goto_1
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget v1, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v1, v4, :cond_6

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v1

    if-nez v1, :cond_6

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v5}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 125
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;

    const/high16 v2, 0x7f07

    const v3, 0x7f070021

    invoke-static {v1, v2, v3}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->newInstance(Landroid/content/Context;II)Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    move-result-object v0

    .line 126
    .local v0, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/htc/android/psclient/SwitchUsbSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PcscDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 317
    .end local v0           #newFragment:Landroid/app/DialogFragment;
    :goto_2
    return-void

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "usb_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "dock_previous_type"

    const-string v3, "Charge Only"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/psclient/SwitchUsbSettings;->buttonType:Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_6
    new-instance v1, Lcom/htc/android/psclient/SwitchUsbSettings$1;

    const-string v2, "SwitchUsbSettingsUIThread"

    invoke-direct {v1, p0, v2}, Lcom/htc/android/psclient/SwitchUsbSettings$1;-><init>(Lcom/htc/android/psclient/SwitchUsbSettings;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/android/psclient/SwitchUsbSettings$1;->start()V

    goto :goto_2
.end method
