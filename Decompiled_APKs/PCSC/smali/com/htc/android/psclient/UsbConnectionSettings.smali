.class public Lcom/htc/android/psclient/UsbConnectionSettings;
.super Landroid/app/Activity;
.source "UsbConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;
    }
.end annotation


# static fields
.field private static final PREFERDUN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_DUN_URI:Ljava/lang/String; = "content://telephony/carriers/preferdun"

.field private static isReceiverRegistered:Z


# instance fields
.field private DUN_ID:Ljava/lang/String;

.field private final ID_INDEX:I

.field private final NAME_INDEX:I

.field private TAG:Ljava/lang/String;

.field private final TYPES_INDEX:I

.field private buttonType:Ljava/lang/String;

.field private button_id:I

.field private context:Landroid/content/Context;

.field protected editor:Landroid/content/SharedPreferences$Editor;

.field private footer:Landroid/view/View;

.field private intentFilter:Landroid/content/IntentFilter;

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

.field private receiver:Landroid/content/BroadcastReceiver;

.field private toggle_left_1:Landroid/widget/ToggleButton;

.field private toggle_right_1:Landroid/widget/ToggleButton;

.field private viewColor:Landroid/content/res/ColorStateList;

.field private view_left_1:Landroid/widget/FrameLayout;

.field private view_right_1:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/psclient/UsbConnectionSettings;->isReceiverRegistered:Z

    .line 91
    const-string v0, "content://telephony/carriers/preferdun"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/psclient/UsbConnectionSettings;->PREFERDUN_URI:Landroid/net/Uri;

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

    .line 53
    const-string v0, "UsbConnectionSettings"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;

    .line 74
    iput-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mHandler:Landroid/os/Handler;

    .line 81
    iput v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->ID_INDEX:I

    .line 82
    iput v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TYPES_INDEX:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->NAME_INDEX:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    .line 86
    iput-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;

    .line 87
    const-string v0, "dun_id"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->DUN_ID:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    .line 92
    iput-boolean v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsFirstCreateNameItems:Z

    .line 93
    iput-boolean v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsMVNO:Z

    .line 659
    new-instance v0, Lcom/htc/android/psclient/UsbConnectionSettings$5;

    invoke-direct {v0, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$5;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private InitDunData()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 764
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 765
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/psclient/UsbConnectionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->setListViewContent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/psclient/UsbConnectionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/android/psclient/UsbConnectionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/psclient/UsbConnectionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/android/psclient/UsbConnectionSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mApnSelectedIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/android/psclient/UsbConnectionSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getSelectedDunIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/android/psclient/UsbConnectionSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/htc/android/psclient/UsbConnectionSettings;->setSelectedDunId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->itemlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/psclient/UsbConnectionSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/android/psclient/UsbConnectionSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsEnableMultipleDun:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/android/psclient/UsbConnectionSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->items:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/android/psclient/UsbConnectionSettings;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->items:[Ljava/lang/String;

    return-object p1
.end method

.method private fillDunList()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 768
    invoke-direct {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->InitDunData()V

    .line 769
    const/4 v3, 0x0

    .line 770
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 772
    .local v10, op:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsMVNO:Z

    .line 773
    iget-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsMVNO:Z

    if-nez v0, :cond_2

    .line 774
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

    .line 784
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

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/psclient/UsbConnectionSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 787
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 788
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 789
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 790
    .local v6, Key:Ljava/lang/String;
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 791
    .local v11, type:Ljava/lang/String;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 793
    .local v9, name:Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .end local v6           #Key:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_1
    move v0, v13

    .line 772
    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 779
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

    .line 799
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 801
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsFirstCreateNameItems:Z

    if-eqz v0, :cond_5

    .line 802
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;

    .line 803
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 804
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v8

    .line 803
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 806
    :cond_4
    iput-boolean v13, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mIsFirstCreateNameItems:Z

    .line 808
    .end local v8           #j:I
    :cond_5
    return-void
.end method

.method private getSelectedDunIndex()I
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x2

    .line 811
    const/4 v8, 0x0

    .line 812
    .local v8, name:Ljava/lang/String;
    const/4 v9, -0x1

    .line 814
    .local v9, selectIndex:I
    sget-object v1, Lcom/htc/android/psclient/UsbConnectionSettings;->PREFERDUN_URI:Landroid/net/Uri;

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

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/psclient/UsbConnectionSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 816
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 817
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 818
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 820
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    invoke-direct {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->fillDunList()V

    .line 823
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 824
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mDunNameItems:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    move v9, v7

    move v10, v9

    .line 829
    .end local v9           #selectIndex:I
    .local v10, selectIndex:I
    :goto_1
    return v10

    .line 823
    .end local v10           #selectIndex:I
    .restart local v9       #selectIndex:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v10, v9

    .line 829
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

    .line 475
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v4, "-setListViewContent()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/android/psclient/UsbConnectionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, header:Landroid/view/View;
    const v3, 0x7f090002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_left_1:Landroid/widget/FrameLayout;

    .line 480
    const v3, 0x7f090004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    .line 481
    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_right_1:Landroid/widget/FrameLayout;

    .line 482
    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    .line 483
    const v3, 0x7f090001

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_left:Landroid/widget/LinearLayout;

    .line 484
    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    .line 486
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 487
    .local v1, orientation:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 488
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 489
    .local v2, paddingLeft:I
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 495
    :goto_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x24

    if-eq v3, v4, :cond_0

    .line 496
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_right_1:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    const-string v5, "connect_to_pc_btn"

    invoke-static {v4, v5, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 497
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_left_1:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    const-string v5, "connect_to_pc_btn"

    invoke-static {v4, v5, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 500
    :cond_0
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isChargeOnlyAvaliable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 501
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Charge Only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_left_1:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/htc/android/psclient/UsbConnectionSettings$2;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$2;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    :goto_1
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDiskDriveAvaliable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 518
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Disk Drive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_right_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 521
    :cond_2
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->view_right_1:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/htc/android/psclient/UsbConnectionSettings$3;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$3;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 538
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;

    iget-object v5, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    const v6, 0x7f030002

    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->items:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 539
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/htc/android/psclient/UsbConnectionSettings$4;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/UsbConnectionSettings$4;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 657
    return-void

    .line 491
    .end local v2           #paddingLeft:I
    :cond_4
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 492
    .restart local v2       #paddingLeft:I
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 514
    :cond_5
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 531
    :cond_6
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v4, "Disk Drive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 533
    const-string v3, "Charge Only"

    iput-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    .line 534
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->toggle_left_1:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private setSelectedDunId(I)V
    .locals 5
    .parameter "buttonIdx"

    .prologue
    const/4 v4, 0x0

    .line 833
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 834
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 835
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 836
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->DUN_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    sget-object v3, Lcom/htc/android/psclient/UsbConnectionSettings;->PREFERDUN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 675
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v3, "-onConfigurationChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 677
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;

    if-nez v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v3, "footer is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v3, "listview is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 686
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 687
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 688
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 689
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 691
    .local v0, paddingLeft:I
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 693
    .end local v0           #paddingLeft:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->footer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 694
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 695
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 697
    .restart local v0       #paddingLeft:I
    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->layout_right:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v1, "-onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/psclient/PSCommon;->isFunctionLaunched:Z

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->intentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "INTENT_CLOSE_BY_USB_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "INTENT_CLOSE_BY_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    sput-boolean v3, Lcom/htc/android/psclient/UsbConnectionSettings;->isReceiverRegistered:Z

    .line 109
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v1, "registerReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    const-string v1, "pimSyncPref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    .line 112
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 113
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    .line 120
    :cond_0
    :goto_0
    sget v0, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-ne v0, v3, :cond_1

    .line 121
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    const-string v0, "Charge Only"

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    .line 128
    :cond_1
    :goto_1
    new-instance v0, Lcom/htc/android/psclient/UsbConnectionSettings$1;

    const-string v1, "UsbconnectionSettingsUIThread"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings$1;-><init>(Lcom/htc/android/psclient/UsbConnectionSettings;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/android/psclient/UsbConnectionSettings$1;->start()V

    .line 378
    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "usb_default_type"

    const-string v2, "Charge Only"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "dock_default_type"

    const-string v2, "Charge Only"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 748
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 749
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v2, "-onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-boolean v1, Lcom/htc/android/psclient/UsbConnectionSettings;->isReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/psclient/UsbConnectionSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 753
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/android/psclient/UsbConnectionSettings;->isReceiverRegistered:Z

    .line 754
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v2, "unregisterReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when unregister receiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 709
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 710
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v2, "-onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v1, Lcom/htc/android/psclient/PSCommon;->isFunctionLaunched:Z

    if-nez v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v2, "buttonType = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v1, "Charge Only"

    iput-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    .line 717
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Charge Only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :cond_1
    :goto_0
    sput-boolean v5, Lcom/htc/android/psclient/PSCommon;->isFunctionLaunched:Z

    .line 736
    invoke-virtual {p0}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    .line 738
    :cond_2
    return-void

    .line 719
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Disk Drive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 720
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch default function fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "HTC Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 722
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableHtcSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 723
    :cond_5
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Internet Sharing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 724
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableInternetSharing(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 725
    :cond_6
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Modem link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 726
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableModemLink(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 727
    :cond_7
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Media Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 728
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableMediaSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 729
    :cond_8
    iget-object v1, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->buttonType:Ljava/lang/String;

    const-string v2, "Internet Pass Through"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/psclient/PSCommon;->enableInternetPassThrough(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 703
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 704
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v1, "-onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 742
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 743
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;

    const-string v1, "-onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void
.end method
