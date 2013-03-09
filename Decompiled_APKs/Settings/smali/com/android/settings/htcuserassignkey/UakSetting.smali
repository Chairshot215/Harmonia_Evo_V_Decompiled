.class public Lcom/android/settings/htcuserassignkey/UakSetting;
.super Lcom/htc/app/HtcListActivity;
.source "UakSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;,
        Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    }
.end annotation


# static fields
.field private static HW_KEY_NUMBER:I = 0x0

.field public static HW_KEY_REQUEST_CODE:I = 0x0

.field private static LAUNCHER_KEY_ICON_RES:[I = null

.field private static LAUNCHER_QUICK_KEY_NUMBER:I = 0x0

.field private static final MULTIPLE_HW_KEY_NUM:I = 0x2

.field private static PURE_HW_KEY_ICON_RES:[I = null

.field private static PURE_HW_KEY_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UakHWAssignedKeyActivity"

.field private static final TMUS_HW_KEY_NUM:I = 0x3


# instance fields
.field private mActiveKeyindex_0b:I

.field private mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mHWKeyCode:[I

.field private mIsAssigned:[Z

.field private mIsDlgShow:Z

.field private mKeyCodeIntent:Landroid/content/Intent;

.field private mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v1, 0x1

    .line 50
    sput v4, Lcom/android/settings/htcuserassignkey/UakSetting;->LAUNCHER_QUICK_KEY_NUMBER:I

    .line 51
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0001:Z

    if-eqz v0, :cond_1

    const-string v0, "ro.product.uakeyno"

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x4000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->LAUNCHER_QUICK_KEY_NUMBER:I

    :goto_1
    add-int/2addr v0, v2

    sput v0, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    .line 58
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isV0001:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.product.uakeyno"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    sput v1, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    .line 66
    const/16 v0, 0x15

    sput v0, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_REQUEST_CODE:I

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_ICON_RES:[I

    .line 82
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/htcuserassignkey/UakSetting;->LAUNCHER_KEY_ICON_RES:[I

    return-void

    :cond_1
    move v0, v1

    .line 51
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    :array_0
    .array-data 0x4
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
    .end array-data

    .line 82
    :array_1
    .array-data 0x4
        0xet 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
        0x1et 0x1t 0x2t 0x7ft
        0x1ft 0x1t 0x2t 0x7ft
        0x20t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
        0x24t 0x1t 0x2t 0x7ft
        0x25t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsAssigned:[Z

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mHWKeyCode:[I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    .line 284
    return-void

    .line 70
    :array_0
    .array-data 0x4
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/settings/htcuserassignkey/UakSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/htcuserassignkey/UakSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/htcuserassignkey/UakSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/htcuserassignkey/UakSetting;)Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    return v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_ICON_RES:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings/htcuserassignkey/UakSetting;->LAUNCHER_KEY_ICON_RES:[I

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    return v0
.end method

.method public static getSupportKeyNumber()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    return v0
.end method

.method public static getSupportPureKeyNumber()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    return v0
.end method

.method public static transferIntentToString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "target"

    .prologue
    .line 247
    if-eqz p0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transferListItemPosToKeyId_1b(I)I
    .locals 2
    .parameter "pos_0b"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, keyId_1b:I
    sget v1, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-gt v1, p0, :cond_0

    .line 150
    sget v1, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    sub-int v1, p0, v1

    add-int/lit8 v0, v1, 0x61

    .line 154
    :goto_0
    return v0

    .line 152
    :cond_0
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method public static trnsferStringToIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 4
    .parameter "specialString"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 254
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 263
    const/4 v1, 0x1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "UakHWAssignedKeyActivity"

    const-string v3, "persitent uak string failed to turn to intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected callUakFlowActivity()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mKeyCodeIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mKeyCodeIntent:Landroid/content/Intent;

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.UAK_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mKeyCodeIntent:Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mKeyCodeIntent:Landroid/content/Intent;

    const-string v1, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    iget v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mKeyCodeIntent:Landroid/content/Intent;

    sget v1, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/htcuserassignkey/UakSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method protected getTitlePandingWordingForKey(I)Ljava/lang/String;
    .locals 4
    .parameter "index_0b"

    .prologue
    .line 136
    const-string v1, ""

    .line 137
    .local v1, pandingLeter:Ljava/lang/String;
    const/4 v2, 0x1

    sget v3, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    if-ge v2, v3, :cond_0

    .line 138
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v0, v2, -0x61

    .line 139
    .local v0, letterOffset:I
    if-ltz v0, :cond_1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .end local v0           #letterOffset:I
    :cond_0
    :goto_0
    return-object v1

    .line 142
    .restart local v0       #letterOffset:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/HtcListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    const/4 v2, -0x1

    if-ne v2, p2, :cond_1

    .line 226
    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_REQUEST_CODE:I

    if-ne v2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 228
    const v2, 0x7f0c050d

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 233
    const-string v0, ""

    .line 235
    :cond_0
    iget v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferKeyIdToListItemPos_0b(I)I

    move-result v1

    .line 236
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-virtual {v2, v3}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setAssigned(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-virtual {v2, v0}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setTarget(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsAssigned:[Z

    aput-boolean v3, v2, v1

    .line 239
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->notifyDataSetChanged()V

    .line 243
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #pos:I
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 397
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 399
    const/16 v8, 0x23

    new-array v8, v8, [Z

    iput-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsAssigned:[Z

    .line 401
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    .line 403
    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    .line 406
    .local v2, itmCnt:I
    const/4 v4, 0x0

    .line 407
    .local v4, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 408
    .local v6, record:Ljava/lang/String;
    const/4 v1, 0x0

    .line 409
    .local v1, isAssigne:Z
    const/4 v5, 0x0

    .line 410
    .local v5, keyId_0b:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 411
    const/4 v4, 0x0

    .line 412
    const/4 v6, 0x0

    .line 413
    const/4 v1, 0x0

    .line 414
    sget v8, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-lt v3, v8, :cond_1

    .line 415
    sget v8, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x61

    add-int/lit8 v5, v8, -0x1

    .line 421
    :goto_1
    new-instance v7, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v7}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 423
    .local v7, target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8, v7}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    .line 424
    iget-object v6, v7, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 425
    if-nez v6, :cond_0

    const-string v6, ""

    .line 426
    :cond_0
    if-eqz v6, :cond_2

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 427
    const/4 v6, 0x0

    .line 428
    const/4 v1, 0x0

    .line 432
    :goto_2
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsAssigned:[Z

    aput-boolean v1, v8, v3

    .line 447
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-direct {v0, p0, v1, v6}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;-><init>(Lcom/android/settings/htcuserassignkey/UakSetting;ZLjava/lang/String;)V

    .line 448
    .local v0, dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    const/4 v0, 0x0

    .line 410
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    .end local v0           #dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    .end local v7           #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_1
    move v5, v3

    goto :goto_1

    .line 431
    .restart local v7       #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 452
    .end local v7           #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_3
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-direct {v0, p0, v9, v10}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;-><init>(Lcom/android/settings/htcuserassignkey/UakSetting;ZLjava/lang/String;)V

    .line 453
    .restart local v0       #dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 454
    const/4 v0, 0x0

    .line 455
    sget v8, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-lez v8, :cond_4

    .line 456
    new-instance v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    .end local v0           #dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    invoke-direct {v0, p0, v9, v10}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;-><init>(Lcom/android/settings/htcuserassignkey/UakSetting;ZLjava/lang/String;)V

    .line 457
    .restart local v0       #dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 458
    const/4 v0, 0x0

    .line 462
    :cond_4
    new-instance v8, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    iget-object v9, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-direct {v8, p0, p0, v9}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;-><init>(Lcom/android/settings/htcuserassignkey/UakSetting;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakSetting;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 466
    if-eqz p1, :cond_5

    .line 467
    const-string v8, "sub_menu_state"

    iget-boolean v9, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    .line 469
    :cond_5
    iget-boolean v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0, v10}, Lcom/android/settings/htcuserassignkey/UakSetting;->showDialog(Landroid/os/Bundle;)V

    .line 470
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mDialog:Landroid/app/Dialog;

    .line 524
    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 525
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 526
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    .line 90
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->getCount()I

    move-result v1

    .line 114
    .local v1, max:I
    invoke-virtual {p0, p3}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferListItemPosintoNoGroupitemPos(I)I

    move-result v0

    .line 115
    .local v0, adjustPos:I
    invoke-static {v0}, Lcom/android/settings/htcuserassignkey/UakSetting;->transferListItemPosToKeyId_1b(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I

    .line 118
    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    invoke-virtual {v2}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->isAssigned()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakSetting;->callUakFlowActivity()V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/htcuserassignkey/UakSetting;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 474
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 476
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hwk_dirty"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 477
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->clearUakData()V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hwk_dirty"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    :cond_0
    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->HW_KEY_NUMBER:I

    .line 485
    .local v2, itmCnt:I
    const/4 v4, 0x0

    .line 486
    .local v4, key:Ljava/lang/String;
    const/4 v6, 0x0

    .line 487
    .local v6, record:Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, isAssigne:Z
    const/4 v5, 0x0

    .line 489
    .local v5, keyId_0b:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 490
    const/4 v4, 0x0

    .line 491
    const/4 v6, 0x0

    .line 492
    const/4 v1, 0x0

    .line 493
    sget v8, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-lt v3, v8, :cond_3

    .line 494
    sget v8, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x61

    add-int/lit8 v5, v8, -0x1

    .line 498
    :goto_1
    new-instance v7, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;

    invoke-direct {v7}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;-><init>()V

    .line 499
    .local v7, target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    add-int/lit8 v8, v5, 0x1

    invoke-static {p0, v8, v7}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->getUakInfo(Landroid/content/Context;ILcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;)Z

    .line 501
    iget-object v6, v7, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;->name:Ljava/lang/String;

    .line 502
    if-nez v6, :cond_1

    const-string v6, ""

    .line 503
    :cond_1
    if-eqz v6, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 504
    const/4 v6, 0x0

    .line 505
    const/4 v1, 0x0

    .line 509
    :goto_2
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsAssigned:[Z

    aput-boolean v1, v8, v3

    .line 511
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mData:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;

    .line 512
    .local v0, dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0, v1}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setAssigned(Z)V

    .line 514
    invoke-virtual {v0, v6}, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->setTarget(Ljava/lang/String;)V

    .line 516
    :cond_2
    const/4 v0, 0x0

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    .end local v0           #dataItem:Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
    .end local v7           #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_3
    move v5, v3

    goto :goto_1

    .line 508
    .restart local v7       #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 519
    .end local v7           #target:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$UakInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mListadapter:Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;

    invoke-virtual {v8}, Lcom/android/settings/htcuserassignkey/UakSetting$MyArrayAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 530
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    const-string v0, "sub_menu_state"

    iget-boolean v1, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 533
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 168
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mIsDlgShow:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/htcuserassignkey/UakSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    .local v2, r:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0504

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mActiveKeyindex_0b:I

    invoke-virtual {p0, v5}, Lcom/android/settings/htcuserassignkey/UakSetting;->getTitlePandingWordingForKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, dlgTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mDialog:Landroid/app/Dialog;

    .line 174
    .local v3, target:Landroid/app/Dialog;
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 220
    .end local v3           #target:Landroid/app/Dialog;
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 184
    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    const v5, 0x7f070087

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/android/settings/htcuserassignkey/UakSetting$1;

    invoke-direct {v6, p0}, Lcom/android/settings/htcuserassignkey/UakSetting$1;-><init>(Lcom/android/settings/htcuserassignkey/UakSetting;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 214
    iget-object v4, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting;->mDialog:Landroid/app/Dialog;

    .line 215
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    :cond_1
    if-eqz p1, :cond_2

    .line 217
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method protected transferKeyIdToListItemPos_0b(I)I
    .locals 3
    .parameter "keyId_1b"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, pos_0b:I
    sget v1, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-le p1, v1, :cond_0

    .line 160
    add-int/lit8 v1, p1, -0x61

    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    add-int v0, v1, v2

    .line 164
    :goto_0
    return v0

    .line 162
    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method protected transferListItemPosintoNoGroupitemPos(I)I
    .locals 3
    .parameter "pos_0b"

    .prologue
    .line 93
    if-gez p1, :cond_0

    .line 94
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, pos:I
    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 99
    .local v1, withPureHWKey:Z
    :goto_1
    sget v2, Lcom/android/settings/htcuserassignkey/UakSetting;->PURE_HW_KEY_NUMBER:I

    if-gt p1, v2, :cond_2

    .line 100
    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    .line 98
    .end local v1           #withPureHWKey:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 102
    .restart local v1       #withPureHWKey:Z
    :cond_2
    if-eqz v1, :cond_3

    .line 103
    add-int/lit8 v0, p1, -0x2

    goto :goto_0

    .line 105
    :cond_3
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method
