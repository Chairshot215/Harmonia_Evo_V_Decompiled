.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "HandwriteBaseSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHandwritingSIP;


# static fields
.field static final CI_Preference_Key:Ljava/lang/String; = "continuous_input_key"

.field protected static final DUMP_LOG:Z = false

.field private static final FULL_SCREEN_MODE:Z = false

.field public static final HWR_MULTIPLE_ENG_MODE:I = 0x2

.field public static final HWR_MULTIPLE_NUM_MODE:I = 0x3

.field public static final HWR_SINGLE_MODE:I = 0x1

.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteBaseSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteBaseSIP"

.field private static final MSG_SHOW_PANEL:I = 0x1

.field private static final SHOW_PANEL_DELAY_TIME:I = 0x64

.field public static mContinuousInputMode:I

.field public static sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

.field public static sHWR_PANEL_WIDTH_WITH_DPAD:I

.field private static sLAND_HALF_PANEL_HEIGHT:I

.field private static sPORT_HALF_PANEL_HEIGHT:I

.field private static sSIP_BOTTOM_EXTRA_GAP:I

.field private static sSMART_DIAL_FULL_PANEL_HEIGHT:I

.field private static sSMART_DIAL_HIGH_PANEL_HEIGHT:I

.field private static sSMART_DIAL_INPUT_BAR_HEIGHT:I

.field public static sSMART_DIAL_TASK_BAR_HEIGHT:I

.field private static sSTATUS_BAR_HEIGHT:I


# instance fields
.field private dismissKey:Z

.field protected mConfigData:Lcom/htc/android/htcime/util/ConfigData;

.field mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field protected mEngSipID:I

.field protected mHWRBg:Landroid/graphics/drawable/Drawable;

.field protected mHWRPanelBg:Landroid/graphics/drawable/Drawable;

.field mHandler:Landroid/os/Handler;

.field protected mListView:Landroid/widget/ListView;

.field protected mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field protected mPanelBuffer:Landroid/graphics/Bitmap;

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mSIPList:[I

.field protected mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

.field protected mSipKeyBase:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field protected mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

.field mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mSymSipID:I

.field protected m_bIsPanelEmbeddedInSip:Z

.field private m_bIsSipVisible:Z

.field private m_nContentType:I

.field protected m_nKeyboard:I

.field protected m_nPanel:I

.field private mbStatusBarDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xda

    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    .line 114
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_HIGH_PANEL_HEIGHT:I

    .line 115
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_FULL_PANEL_HEIGHT:I

    .line 116
    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sPORT_HALF_PANEL_HEIGHT:I

    .line 117
    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sLAND_HALF_PANEL_HEIGHT:I

    .line 118
    const/16 v0, 0x38

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    .line 119
    const/16 v0, 0x2d

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_INPUT_BAR_HEIGHT:I

    .line 120
    const/16 v0, 0x18

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSTATUS_BAR_HEIGHT:I

    .line 121
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 122
    const/16 v0, 0x28d

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_WIDTH_WITH_DPAD:I

    .line 123
    const/16 v0, 0x48

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_nContentType:I

    .line 103
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mbStatusBarDisabled:Z

    .line 125
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 127
    const/high16 v0, 0x300

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSipKeyBase:I

    .line 128
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mEngSipID:I

    .line 129
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSymSipID:I

    .line 132
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    .line 135
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 144
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    .line 1517
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;-><init>(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    .line 1682
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1684
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mListView:Landroid/widget/ListView;

    .line 1775
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->dismissKey:Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->loadConstant(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsSipVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->handleSwitchMenuClick(I)V

    return-void
.end method

.method private getPreferHandwritePanelHeight()I
    .locals 7

    .prologue
    .line 675
    const/4 v2, 0x0

    .line 676
    .local v2, nHeight:I
    const/4 v3, 0x0

    .line 678
    .local v3, nStatusBarHeight:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 679
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 680
    .local v4, winMgr:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 681
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 683
    .local v1, nDisplayHeight:I
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCustomizedFullWCLMargenTop:I

    sub-int v2, v5, v6

    .line 694
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #nDisplayHeight:I
    .end local v4           #winMgr:Landroid/view/WindowManager;
    :cond_0
    return v2
.end method

.method private getPreferHandwritePanelWidth()I
    .locals 5

    .prologue
    .line 702
    const/4 v1, 0x0

    .line 704
    .local v1, nWidth:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 706
    .local v2, winMgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 707
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 710
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #winMgr:Landroid/view/WindowManager;
    :cond_0
    return v1
.end method

.method private getSIPRectangle()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 718
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 719
    .local v1, rectSIP:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 721
    .local v2, rectSIPRelativeToIMM:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 722
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 723
    .local v3, winMgr:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 725
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 728
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 729
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 730
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 731
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 736
    .end local v0           #display:Landroid/view/Display;
    .end local v3           #winMgr:Landroid/view/WindowManager;
    :cond_0
    return-object v1
.end method

.method private handleSwitchMenuClick(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1749
    :goto_0
    return-void

    .line 1738
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1741
    .local v0, sp:Landroid/content/SharedPreferences;
    add-int/lit8 v1, p1, 0x1

    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    .line 1744
    const-string v1, "HandwriteBaseSIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HandwriteBaseSIP] handleContinuousSwitchMenuClick, mContinuousInputMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "continuous_input_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1748
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->hideSwitchMenuInner()V

    goto :goto_0
.end method

.method private hasGestureBeenRecognized()Z
    .locals 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, bRet:Z
    const/4 v1, 0x0

    .line 1208
    .local v1, nCode:I
    return v0
.end method

.method private isHVGA()Z
    .locals 9

    .prologue
    const/16 v8, 0x1e0

    const/16 v7, 0x140

    .line 1395
    const/4 v0, 0x0

    .line 1397
    .local v0, bRet:Z
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 1398
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1399
    .local v4, winMgr:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1400
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1401
    .local v2, nDisplayHeight:I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1403
    .local v3, nDisplayWidth:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-ne v2, v8, :cond_1

    if-ne v3, v7, :cond_1

    .line 1404
    const/4 v0, 0x1

    .line 1410
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #nDisplayHeight:I
    .end local v3           #nDisplayWidth:I
    .end local v4           #winMgr:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return v0

    .line 1405
    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #nDisplayHeight:I
    .restart local v3       #nDisplayWidth:I
    .restart local v4       #winMgr:Landroid/view/WindowManager;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    if-ne v2, v7, :cond_0

    if-ne v3, v8, :cond_0

    .line 1406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isQVGA()Z
    .locals 9

    .prologue
    const/16 v8, 0x140

    const/16 v7, 0xf0

    .line 1376
    const/4 v0, 0x0

    .line 1378
    .local v0, bRet:Z
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 1379
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1380
    .local v4, winMgr:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1381
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1382
    .local v2, nDisplayHeight:I
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1384
    .local v3, nDisplayWidth:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    if-ne v2, v8, :cond_1

    if-ne v3, v7, :cond_1

    .line 1385
    const/4 v0, 0x1

    .line 1391
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #nDisplayHeight:I
    .end local v3           #nDisplayWidth:I
    .end local v4           #winMgr:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return v0

    .line 1386
    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #nDisplayHeight:I
    .restart local v3       #nDisplayWidth:I
    .restart local v4       #winMgr:Landroid/view/WindowManager;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    if-ne v2, v7, :cond_0

    if-ne v3, v8, :cond_0

    .line 1387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private voiceTextCheck()V
    .locals 1

    .prologue
    .line 1816
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->getResultFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 1819
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->clearResultFlag()V

    .line 1822
    :cond_0
    return-void
.end method


# virtual methods
.method protected DisableStatusBarExpand()V
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1857
    :cond_0
    const-string v0, "HandwriteBaseSIP"

    const-string v1, "[HandwriteBaseSIP] DisableStatusBarExpand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mbStatusBarDisabled:Z

    .line 1862
    :cond_1
    return-void
.end method

.method protected EnableStatusBarExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1867
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mbStatusBarDisabled:Z

    if-eqz v0, :cond_0

    .line 1870
    const-string v0, "HandwriteBaseSIP"

    const-string v1, "[HandwriteBaseSIP] EnableStatusBarExpand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1873
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mbStatusBarDisabled:Z

    .line 1875
    :cond_0
    return-void
.end method

.method protected adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 9
    .parameter "mKey"

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x10

    const/4 v6, 0x1

    .line 1777
    const/4 v2, 0x0

    .line 1778
    .local v2, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v3, 0x0

    .line 1779
    .local v3, space_type_inc:I
    const/4 v0, 0x0

    .line 1780
    .local v0, disable_gl:Z
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1781
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v4, :cond_2

    .line 1782
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x17

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 1800
    :goto_0
    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1801
    :cond_0
    if-eqz v0, :cond_1

    .line 1802
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v4, :cond_1

    .line 1803
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1804
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v8

    if-ne v4, v7, :cond_6

    .line 1805
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 1811
    .end local v1           #i:I
    :cond_1
    return-void

    .line 1784
    :cond_2
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->dismissKey:Z

    if-eqz v4, :cond_3

    .line 1785
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x63

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 1786
    const/4 v3, 0x3

    goto :goto_0

    .line 1788
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 1789
    const/4 v0, 0x1

    goto :goto_0

    .line 1793
    :cond_4
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v4, :cond_5

    .line 1794
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0x18

    invoke-virtual {v4, v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    goto :goto_0

    .line 1796
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v4, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    goto :goto_0

    .line 1803
    .restart local v1       #i:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected buildHandwritePanel()V
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 934
    const/4 v1, 0x0

    .line 935
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/4 v0, 0x0

    .line 943
    .local v0, bIsNewLocally:Z
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-nez v4, :cond_0

    .line 944
    new-instance v4, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    .line 945
    const/4 v0, 0x1

    .line 947
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 953
    .restart local v1       #colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v4, p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSIP(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V

    .line 954
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-nez v4, :cond_1

    .line 955
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    .line 956
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPPStroke(Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;)V

    .line 959
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v2, :cond_2

    .line 961
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    packed-switch v4, :pswitch_data_0

    .line 987
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v5, 0x11

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_9

    .line 989
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 990
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 991
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 992
    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 994
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v4, v7, v5, v8, v8}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawHWRPanel(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 995
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 996
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 997
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 999
    :cond_5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 1000
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->isQVGA()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v2, 0x2

    :cond_6
    :goto_2
    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setResolution(I)V

    .line 1029
    if-eqz v0, :cond_7

    .line 1030
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    .line 1031
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1033
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1034
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1039
    :cond_7
    return-void

    .line 974
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSwitchButton(Z)V

    .line 975
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSmartDialMode(Z)V

    goto/16 :goto_0

    .line 979
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v4, v8}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSwitchButton(Z)V

    .line 980
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSmartDialMode(Z)V

    goto/16 :goto_0

    .line 1002
    :cond_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1003
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1007
    :cond_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v3, v4, :cond_c

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_FullScreenExpand:Z

    if-eqz v4, :cond_c

    .line 1009
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_a

    .line 1010
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1011
    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 1013
    :cond_a
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelWidth()I

    move-result v5

    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawFullHWRbackground(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 1014
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 1015
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1016
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    :cond_b
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 1019
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1022
    :cond_c
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_nPanel:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 1025
    :cond_d
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->isHVGA()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v3

    goto/16 :goto_2

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clickFeedback(ZZ)V
    .locals 1
    .parameter "bSound"
    .parameter "bVibrate"

    .prologue
    .line 1542
    if-eqz p1, :cond_0

    .line 1543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->playKeyClick(I)V

    .line 1544
    :cond_0
    if-eqz p2, :cond_1

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->VibrationEffect(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 1546
    :cond_1
    return-void
.end method

.method public dispathTouchPoint(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1826
    const/4 v2, 0x0

    .line 1828
    .local v2, ret:Z
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v3, :cond_0

    .line 1829
    const/4 v3, 0x0

    .line 1847
    :goto_0
    return v3

    .line 1832
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1835
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSTATUS_BAR_HEIGHT:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-virtual {v3, p1, v4}, Lcom/htc/android/htcime/HTCIMEService;->dispatchExtractViewPoint(FF)Z

    move-result v2

    :cond_1
    :goto_1
    move v3, v2

    .line 1847
    goto :goto_0

    .line 1838
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1839
    .local v1, pointData:Landroid/os/Bundle;
    const-string v3, "POINT_X"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1840
    const-string v3, "POINT_Y"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1842
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1843
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1844
    const-string v3, "com.htc.android.htcime.touchPoint"

    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    .line 894
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->draw(Landroid/graphics/Canvas;)V

    .line 896
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 897
    .local v1, nScreenWidth:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipWidth:I

    sub-int v0, v1, v3

    .line 899
    .local v0, nLeftPadding:I
    const/4 v2, 0x0

    .line 900
    .local v2, nTopPadding:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v5, v3, :cond_4

    .line 901
    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sPORT_HALF_PANEL_HEIGHT:I

    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSIP_BOTTOM_EXTRA_GAP:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    sub-int v2, v3, v4

    .line 907
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v5, v3, :cond_0

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v3, v4, :cond_3

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 910
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 911
    iput-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 913
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawHWRPanel(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 914
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 915
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 916
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 919
    :cond_2
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 920
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    :cond_3
    return-void

    .line 903
    :cond_4
    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sLAND_HALF_PANEL_HEIGHT:I

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    sub-int v2, v3, v4

    goto :goto_0
.end method

.method public expandPopupWin(Z)V
    .locals 6
    .parameter "bExpand"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1559
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_FullScreenExpand:Z

    if-nez v2, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1562
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelHeight()I

    move-result v0

    .line 1563
    .local v0, height:I
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelWidth()I

    move-result v1

    .line 1565
    .local v1, width:I
    if-eqz p1, :cond_3

    .line 1566
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1567
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1568
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1569
    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 1571
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawFullHWRbackground(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 1581
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1582
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1583
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1585
    :cond_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    .line 1586
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRPanelBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1574
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1575
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1576
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1577
    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    .line 1579
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v2, v1, v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawFullHWRbackground(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPanelBuffer:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public getHandwritingSipID()I
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    return v0
.end method

.method public getSeparateView()Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSeparatePadView:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    return-object v0
.end method

.method public getSymbolCandidate()V
    .locals 3

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 639
    .local v1, i:I
    const/4 v2, 0x0

    .line 640
    .local v2, nCommand:I
    const/4 v0, 0x0

    .line 666
    .local v0, bIsFullWidth:Z
    const v2, 0xa00fffc

    .line 667
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 668
    return-void
.end method

.method protected handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z
    .locals 10
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getAccentMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1593
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getWordIndex()I

    move-result v7

    sput v7, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWordIndex:I

    .line 1594
    const-string v7, "[20091026]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleAccent]: mAccentWordIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWordIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v7, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x10

    if-ne v7, v8, :cond_1

    .line 1597
    const/4 v6, -0x1

    .line 1599
    .local v6, zh_sip:I
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    sget v8, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWordIndex:I

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 1626
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setAccentMode(Z)V

    .line 1628
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/android/htcime/util/SIPSwitcher;->forceUpdateZHSIP(I)V

    .line 1629
    :cond_0
    const/4 v7, 0x1

    .line 1676
    .end local v6           #zh_sip:I
    :goto_1
    return v7

    .line 1602
    .restart local v6       #zh_sip:I
    :sswitch_0
    const/16 v6, 0x11

    .line 1603
    goto :goto_0

    .line 1606
    :sswitch_1
    const/16 v6, 0x9

    .line 1607
    goto :goto_0

    .line 1610
    :sswitch_2
    const/16 v6, 0xb

    .line 1611
    goto :goto_0

    .line 1614
    :sswitch_3
    const/16 v6, 0xd

    .line 1615
    goto :goto_0

    .line 1618
    :sswitch_4
    const/16 v6, 0xf

    .line 1619
    goto :goto_0

    .line 1621
    :sswitch_5
    const/high16 v7, 0x704

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 1622
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->launchSettings()V

    goto :goto_0

    .line 1631
    .end local v6           #zh_sip:I
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1633
    .local v4, accentString:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    .line 1635
    const-string v7, "1#"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1636
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v8, 0x71c

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1637
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 1639
    .local v2, SymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v2, :cond_2

    .line 1640
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1641
    .local v3, SymKeyIdex:I
    iget v7, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v8, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    invoke-virtual {p0, v3, v7, v8}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    .line 1644
    .end local v3           #SymKeyIdex:I
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v8, -0x1b

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1646
    .local v0, HWKBSymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_3

    .line 1647
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1648
    .local v1, HWKBSymKeyIdex:I
    iget v7, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v8, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    invoke-virtual {p0, v1, v7, v8}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    .line 1670
    .end local v0           #HWKBSymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v1           #HWKBSymKeyIdex:I
    .end local v2           #SymKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setAccentMode(Z)V

    .line 1672
    const/4 v7, 0x1

    goto :goto_1

    .line 1653
    :cond_4
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    sget-object v7, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_3

    .line 1654
    sget-object v7, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1655
    const/high16 v7, 0x711

    or-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 1653
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1661
    .end local v5           #i:I
    :cond_6
    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIP_LP_ID:I

    const/high16 v8, 0xf00

    if-ne v7, v8, :cond_7

    .line 1662
    const/high16 v7, 0x71c

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 1663
    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIP_LP_ID:I

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_2

    .line 1666
    :cond_7
    const/high16 v7, 0x71c

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 1667
    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIP_LP_ID:I

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v8}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    or-int/2addr v7, v8

    iget v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mLastCodeX:I

    iget v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mLastCodeY:I

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(III)V

    goto :goto_2

    .line 1676
    .end local v4           #accentString:Ljava/lang/CharSequence;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1599
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_4
        0x11 -> :sswitch_0
        0x100 -> :sswitch_5
    .end sparse-switch
.end method

.method public hideHandwritePanel()V
    .locals 4

    .prologue
    .line 864
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 875
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->EnableStatusBarExpand()V

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->bIsHandwritingPanelDown:Z

    .line 890
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HandwriteBaseSIP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideHandwritePanel() : mPopup.dismiss() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hideSwitchMenuInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1752
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1754
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1756
    :cond_0
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1758
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->updateContinuouslayout()V

    .line 1759
    return-void
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 291
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 292
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 295
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_nKeyboard:I

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 298
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mConfigData:Lcom/htc/android/htcime/util/ConfigData;

    .line 301
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->initialSetting(I)V

    .line 302
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsSipVisible:Z

    .line 310
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStatusBar:Landroid/app/StatusBarManager;

    .line 312
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mbStatusBarDisabled:Z

    .line 313
    return-void
.end method

.method protected initSIPSwitchString()Z
    .locals 14

    .prologue
    const v13, 0x7f0902b2

    const v12, 0x7f0902b1

    const v11, 0x7f0902b0

    const v10, 0x7f0902ad

    const/4 v6, 0x1

    .line 232
    const-string v0, ""

    .line 233
    .local v0, AccentString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 236
    .local v1, SIPListIndex:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, -0x10

    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    .line 238
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-nez v4, :cond_0

    .line 239
    const/4 v5, 0x0

    .line 286
    :goto_0
    return v5

    .line 241
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    if-nez v5, :cond_1

    .line 242
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    .line 244
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    if-ge v3, v5, :cond_8

    .line 245
    if-ne v6, v3, :cond_2

    .line 246
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .local v2, SIPListIndex:I
    const/16 v7, 0x100

    aput v7, v5, v1

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0902b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 250
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :cond_2
    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v5, v5, v3

    packed-switch v5, :pswitch_data_0

    .line 244
    :goto_2
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    :pswitch_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v7, v7, v3

    aput v7, v5, v1

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 255
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto :goto_2

    .line 254
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 258
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v7, v7, v3

    aput v7, v5, v1

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0902b3

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 260
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto :goto_2

    .line 259
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0902b3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 263
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v7, v7, v3

    aput v7, v5, v1

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 265
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_2

    .line 264
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 268
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v7, v7, v3

    aput v7, v5, v1

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 270
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_2

    .line 269
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 273
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :pswitch_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIPList:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    aget v7, v7, v3

    aput v7, v5, v1

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 275
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    goto/16 :goto_2

    .line 274
    .end local v1           #SIPListIndex:I
    .restart local v2       #SIPListIndex:I
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 283
    .end local v2           #SIPListIndex:I
    .restart local v1       #SIPListIndex:I
    :cond_8
    iput-object v0, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 284
    iput v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    move v5, v6

    .line 286
    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initialSetting(I)V
    .locals 11
    .parameter "nContentType"

    .prologue
    .line 1219
    const/4 v4, 0x3

    .line 1220
    .local v4, nType:I
    const/4 v5, 0x0

    .line 1221
    .local v5, nValue:I
    const/4 v0, 0x0

    .line 1222
    .local v0, bUpdated:Z
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 1224
    .local v7, strFace:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v9}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->loadPropertiesEx(Landroid/content/Context;)V

    .line 1226
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 1227
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1228
    const/4 v0, 0x1

    .line 1230
    :cond_0
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 1231
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1232
    const/4 v0, 0x1

    .line 1234
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 1235
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1236
    const/4 v0, 0x1

    .line 1238
    :cond_2
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 1239
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1240
    const/4 v0, 0x1

    .line 1242
    :cond_3
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1243
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1244
    const/4 v0, 0x1

    .line 1246
    :cond_4
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 1247
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x6

    sget-object v10, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->YELLOW:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1248
    const/4 v0, 0x1

    .line 1250
    :cond_5
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1251
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xa

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1252
    const/4 v0, 0x1

    .line 1254
    :cond_6
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 1255
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xb

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1256
    const/4 v0, 0x1

    .line 1258
    :cond_7
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    .line 1259
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1260
    const/4 v0, 0x1

    .line 1262
    :cond_8
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    .line 1263
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 1264
    const/4 v0, 0x1

    .line 1268
    :cond_9
    if-eqz v0, :cond_a

    .line 1269
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v9}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->saveProperties(Landroid/content/Context;)V

    .line 1278
    :cond_a
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_nContentType:I

    .line 1281
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v3

    .line 1282
    .local v3, nPropertyType:I
    if-nez v3, :cond_d

    .line 1283
    const/16 v4, 0x704

    .line 1293
    :goto_0
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v8, 0xa

    if-ne p1, v8, :cond_10

    .line 1294
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1296
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :cond_b
    :goto_1
    const/high16 v8, 0x710

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 1304
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1345
    :goto_2
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v8, :cond_c

    .line 1346
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v6

    .line 1347
    .local v6, pcidx:I
    sget-object v8, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color:[I

    aget v5, v8, v6

    .line 1348
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v8, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPenColor(I)V

    .line 1350
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v5

    .line 1351
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v8, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPenWidth(I)V

    .line 1353
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v5

    .line 1354
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v8, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPenType(I)V

    .line 1356
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v5

    .line 1358
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v8, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPenSpeed(I)V

    .line 1363
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v5

    .line 1364
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-nez v5, :cond_18

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v9, v8}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setAnimation(Z)V

    .line 1366
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v5

    .line 1367
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-nez v5, :cond_19

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setDynamicWatingTimeEnable(Z)V

    .line 1369
    .end local v6           #pcidx:I
    :cond_c
    return-void

    .line 1284
    :cond_d
    const/4 v8, 0x1

    if-ne v3, v8, :cond_e

    .line 1285
    const/16 v4, 0x7f

    goto/16 :goto_0

    .line 1286
    :cond_e
    const/4 v8, 0x2

    if-ne v3, v8, :cond_f

    .line 1287
    const/16 v4, 0x77f

    goto/16 :goto_0

    .line 1289
    :cond_f
    const/16 v4, 0x704

    goto/16 :goto_0

    .line 1297
    :catch_0
    move-exception v1

    .line 1298
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "HandwriteBaseSIP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialSetting() : mPopup.dismiss() exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1306
    .end local v1           #e:Ljava/lang/Exception;
    :cond_10
    const/16 v8, 0x704

    if-eq v4, v8, :cond_11

    const/16 v8, 0x77f

    if-ne v4, v8, :cond_14

    .line 1307
    :cond_11
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    if-nez v8, :cond_16

    .line 1309
    const/16 v8, 0x32

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v8, v9, :cond_12

    const/16 v8, 0x12

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v8, v9, :cond_15

    .line 1311
    :cond_12
    or-int/lit16 v4, v4, 0x2800

    .line 1322
    :cond_13
    :goto_5
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 1323
    or-int/lit8 v4, v4, 0x78

    .line 1326
    :cond_14
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sput v4, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    .line 1328
    const v2, 0xa00fffb

    .line 1329
    .local v2, nCommand:I
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto/16 :goto_2

    .line 1313
    .end local v2           #nCommand:I
    :cond_15
    or-int/lit16 v4, v4, 0x2000

    goto :goto_5

    .line 1314
    :cond_16
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_17

    .line 1315
    or-int/lit16 v4, v4, 0x1000

    goto :goto_5

    .line 1318
    :cond_17
    const/16 v8, 0x32

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v8, v9, :cond_13

    .line 1319
    or-int/lit16 v4, v4, 0x800

    goto :goto_5

    .line 1364
    .restart local v6       #pcidx:I
    :cond_18
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1367
    :cond_19
    const/4 v8, 0x1

    goto/16 :goto_4
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 155
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 157
    .local v2, config:Landroid/content/res/Configuration;
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    const-string v9, "com.android.htcdialer"

    invoke-direct {v0, v9, p1}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 159
    .local v0, DialerapkTool:Lcom/htc/android/htcime/util/APKResTool;
    const/4 v5, 0x0

    .line 161
    .local v5, offset:I
    const-string v9, "ro.sf.lcd_density"

    const/16 v10, 0xa0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, resolution:I
    const/16 v9, 0xf0

    if-ne v7, v9, :cond_0

    .line 164
    const/4 v5, 0x1

    .line 168
    :cond_0
    const-string v9, "dialer_background_height_lotus"

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v4, v9

    .line 169
    .local v4, height:I
    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_1

    .line 170
    if-eqz v4, :cond_3

    .line 171
    add-int v9, v4, v5

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_HIGH_PANEL_HEIGHT:I

    .line 178
    :cond_1
    :goto_0
    const v9, 0x105000a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSTATUS_BAR_HEIGHT:I

    .line 180
    new-instance v1, Lcom/htc/android/htcime/util/APKResTool;

    const-string v9, "com.htc"

    invoke-direct {v1, v9, p1}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 182
    .local v1, apkToolcommon:Lcom/htc/android/htcime/util/APKResTool;
    sget v9, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v10, 0x4060

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 183
    const-string v9, "carousel_widget_height"

    invoke-virtual {v1, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v4, v9

    .line 184
    const-string v9, "task_bar_height"

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v4, v9

    .line 188
    :goto_1
    if-eqz v4, :cond_5

    .line 189
    sput v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    .line 194
    :goto_2
    const-string v9, "dialer_background_height_lotus_fullscreen"

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v4, v9

    .line 195
    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v11, :cond_2

    .line 196
    if-eqz v4, :cond_6

    .line 197
    add-int v9, v4, v5

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_FULL_PANEL_HEIGHT:I

    .line 213
    :cond_2
    :goto_3
    const v9, 0x7f0a002c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sPORT_HALF_PANEL_HEIGHT:I

    .line 214
    const v9, 0x7f0a0025

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sLAND_HALF_PANEL_HEIGHT:I

    .line 215
    const v9, 0x7f0a0022

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 219
    return-void

    .line 173
    .end local v1           #apkToolcommon:Lcom/htc/android/htcime/util/APKResTool;
    :cond_3
    const v9, 0x7f0a002d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_HIGH_PANEL_HEIGHT:I

    goto :goto_0

    .line 186
    .restart local v1       #apkToolcommon:Lcom/htc/android/htcime/util/APKResTool;
    :cond_4
    const-string v9, "cmd_bar_height"

    invoke-virtual {v1, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v4, v9

    goto :goto_1

    .line 191
    :cond_5
    const v9, 0x7f0a002f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    goto :goto_2

    .line 200
    :cond_6
    const-string v9, "accumulator_height"

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/util/APKResTool;->getDimensionByName(Ljava/lang/String;)F

    move-result v9

    float-to-int v4, v9

    .line 201
    if-eqz v4, :cond_7

    .line 202
    sput v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_INPUT_BAR_HEIGHT:I

    .line 206
    :goto_4
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 207
    .local v8, winMgr:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 209
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v9

    sget v10, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    sub-int/2addr v9, v10

    sget v10, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_INPUT_BAR_HEIGHT:I

    sub-int/2addr v9, v10

    sget v10, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSTATUS_BAR_HEIGHT:I

    sub-int/2addr v9, v10

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_FULL_PANEL_HEIGHT:I

    goto :goto_3

    .line 204
    .end local v3           #display:Landroid/view/Display;
    .end local v8           #winMgr:Landroid/view/WindowManager;
    :cond_7
    const v9, 0x7f0a002e

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_INPUT_BAR_HEIGHT:I

    goto :goto_4
.end method

.method public onClick(III)V
    .locals 6
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v5, 0x710

    const/4 v4, 0x0

    .line 446
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v2, p1

    .line 449
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_0

    move v1, p1

    .line 451
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 515
    :goto_1
    invoke-super {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onClick(III)V

    .line 525
    return-void

    .line 449
    .end local v1           #sendBtnIdx:I
    :cond_0
    iget v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 453
    .restart local v1       #sendBtnIdx:I
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 454
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_1

    .line 457
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 459
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSymSipID:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_1

    .line 463
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 466
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 467
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->setHWKBSymSIP(IZ)Z

    goto :goto_1

    .line 470
    :sswitch_3
    iget v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_1

    .line 473
    :sswitch_4
    iget v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSIP_ID:I

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_1

    .line 477
    :sswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->reset()V

    .line 478
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->switchHandwritingMode()V

    goto :goto_1

    .line 491
    :sswitch_6
    const/high16 v2, 0xf00

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_1

    .line 496
    :sswitch_7
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 499
    :sswitch_8
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 502
    :sswitch_9
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 505
    :sswitch_a
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_1

    .line 509
    :sswitch_b
    const v2, 0xf000009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    goto :goto_1

    .line 451
    :sswitch_data_0
    .sparse-switch
        -0x3a -> :sswitch_5
        -0x1b -> :sswitch_2
        -0x1a -> :sswitch_b
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0x13 -> :sswitch_a
        -0x12 -> :sswitch_9
        -0x4 -> :sswitch_0
        -0x2 -> :sswitch_1
        0xa -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_6
        0x2c -> :sswitch_6
        0x2e -> :sswitch_6
        0x3f -> :sswitch_6
        0x2026 -> :sswitch_6
        0x3002 -> :sswitch_6
        0xff01 -> :sswitch_6
        0xff0c -> :sswitch_6
        0xff1f -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(III)V
    .locals 2
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 428
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 435
    .local v0, mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onKeyUp(III)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v3, 0x11

    const/16 v2, 0x9

    const/4 v4, 0x1

    .line 391
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onMeasure(II)V

    .line 394
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->buildHandwritePanel()V

    .line 395
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->initialSetting(I)V

    .line 397
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->isPhoneHWR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 410
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 411
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    .line 414
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->showMailBtnPopup()V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v0, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0x9

    const/4 v2, 0x1

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onSizeChanged(IIII)V

    .line 366
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->buildHandwritePanel()V

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->initialSetting(I)V

    .line 369
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v0, v3, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 538
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 547
    const/high16 v1, 0x74e

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 553
    :goto_0
    return v0

    .line 550
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x11

    const/16 v1, 0x9

    .line 323
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 327
    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->hideHandwritePanel()V

    .line 331
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsSipVisible:Z

    .line 359
    :cond_3
    :goto_0
    return-void

    .line 332
    :cond_4
    if-nez p1, :cond_3

    .line 333
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 334
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->initialSetting(I)V

    .line 357
    :cond_5
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsSipVisible:Z

    goto :goto_0

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v0, v1, :cond_5

    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setSIP(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V

    .line 351
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-nez v0, :cond_8

    .line 352
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    .line 353
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setPPStroke(Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;)V

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->initialSetting(I)V

    goto :goto_1
.end method

.method public playKeyClick(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getAudioService()Lcom/htc/android/htcime/util/AudioService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->playSoundEffect(Lcom/htc/android/htcime/util/AudioService;I)V

    .line 1539
    return-void
.end method

.method public recognize()V
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, i:I
    const/4 v1, 0x0

    .line 601
    .local v1, nCommand:I
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->voiceTextCheck()V

    .line 603
    const v1, 0xa00ffff

    .line 604
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 605
    return-void
.end method

.method public resetStrokeView()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->resetStrokeView()V

    .line 630
    :cond_0
    return-void
.end method

.method public setPanelLinearLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 224
    return-void
.end method

.method public setPanelResolution(II)V
    .locals 4
    .parameter "nWitdh"
    .parameter "nHeight"

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, nCommand:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput p1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_nStrokePanelW:I

    .line 611
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput p2, v1, Lcom/htc/android/htcime/HTCIMMData;->m_nStrokePanelH:I

    .line 614
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-nez v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v2, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->setPanelArea(II)V

    .line 622
    :cond_1
    const v0, 0xa00fffa

    .line 623
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 624
    return-void
.end method

.method public setSIPVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMMView;->setSIPVisibility(I)V

    .line 1552
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->expandPopupWin(Z)V

    .line 1554
    :cond_0
    return-void
.end method

.method public setStrokeView(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    .line 229
    return-void
.end method

.method protected showContinuousSwitchDialog()V
    .locals 6

    .prologue
    .line 1687
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, items:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1693
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "continuous_input_key"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1695
    .local v0, checked:I
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$2;

    invoke-direct {v5, p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$2;-><init>(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1701
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    new-instance v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$3;

    invoke-direct {v5, p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$3;-><init>(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V

    invoke-virtual {v4, v1, v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1709
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_0

    .line 1710
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1711
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1712
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1713
    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1714
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1729
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public showHandwritePanel()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, anim:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 763
    .local v2, nPanelHeight:I
    const/4 v3, 0x0

    .line 764
    .local v3, nPanelWidth:I
    const/16 v1, 0x50

    .line 767
    .local v1, gravity:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->DisableStatusBarExpand()V

    .line 774
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsPanelEmbeddedInSip:Z

    if-eqz v5, :cond_4

    .line 777
    const/16 v5, 0x11

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v6, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v5, v6, :cond_3

    .line 778
    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sPORT_HALF_PANEL_HEIGHT:I

    sget v6, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSIP_BOTTOM_EXTRA_GAP:I

    add-int v2, v5, v6

    .line 795
    :goto_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelWidth()I

    move-result v3

    .line 800
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v4

    .line 801
    .local v4, sipBottomY:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_6

    .line 803
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v5, v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 804
    sget v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_HIGH_PANEL_HEIGHT:I

    .line 805
    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    .line 807
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v2, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    .line 808
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v8}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    .line 834
    :cond_1
    :goto_2
    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setPanelResolution(II)V

    .line 836
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_2

    .line 837
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 838
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 843
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mPopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v1, v6, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 848
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->isFullScreenHWR()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-eqz v5, :cond_2

    .line 849
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->relaunchFixedWCLView()V

    .line 853
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v8, v5, Lcom/htc/android/htcime/HTCIMMData;->bIsHandwritingPanelDown:Z

    goto :goto_0

    .line 780
    .end local v4           #sipBottomY:I
    :cond_3
    sget v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sLAND_HALF_PANEL_HEIGHT:I

    goto :goto_1

    .line 783
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getPreferHandwritePanelHeight()I

    move-result v2

    .line 786
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v5, :cond_5

    .line 787
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v5, v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 788
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    const/high16 v6, 0x3e80

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->SetStrokeShadow(FI)V

    goto :goto_1

    .line 790
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContext:Landroid/content/Context;

    const v6, 0x7f040005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 791
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 792
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 810
    .restart local v4       #sipBottomY:I
    :cond_6
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    .line 812
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v5, v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 817
    sget v2, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_FULL_PANEL_HEIGHT:I

    .line 818
    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    .line 820
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput v2, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    .line 821
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v8}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    goto :goto_2

    .line 825
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_DPADSupport:Z

    if-eqz v5, :cond_1

    .line 827
    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

    add-int/2addr v2, v5

    .line 828
    sget v3, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_WIDTH_WITH_DPAD:I

    .line 829
    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

    .line 830
    const/16 v1, 0x53

    goto/16 :goto_2
.end method

.method public switchHandwritingMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1417
    const/high16 v2, 0x710

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sendKeyEvent(I)V

    .line 1420
    const/4 v0, -0x1

    .line 1422
    .local v0, sipId:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v2, :cond_1

    .line 1423
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    sparse-switch v2, :sswitch_data_0

    .line 1450
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 1487
    :cond_0
    :goto_1
    new-instance v1, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct {v1}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    .line 1488
    .local v1, util:Lcom/htc/android/htcime/util/ConfigData;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/htcime/util/ConfigData;->setHandWritingData(Landroid/content/Context;I)Z

    .line 1490
    return-void

    .line 1425
    .end local v1           #util:Lcom/htc/android/htcime/util/ConfigData;
    :sswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v0, 0x11

    .line 1428
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1431
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    goto :goto_0

    .line 1434
    :sswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x7

    .line 1435
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1437
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    goto :goto_0

    .line 1441
    :sswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v0, 0x16

    .line 1442
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 1445
    :sswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v0, 0x15

    .line 1446
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 1452
    :cond_1
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v2, v3, :cond_0

    .line 1454
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    sparse-switch v2, :sswitch_data_1

    .line 1481
    :goto_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    goto :goto_1

    .line 1456
    :sswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v0, 0x9

    .line 1459
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1462
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrLandHWRSID:I

    goto :goto_2

    .line 1465
    :sswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x3

    .line 1466
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0, v4}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1468
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v0, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrLandHWRSID:I

    goto :goto_2

    .line 1423
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x11 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
    .end sparse-switch

    .line 1454
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
    .end sparse-switch
.end method

.method protected updateContinuouslayout()V
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1765
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHWRBg:Landroid/graphics/drawable/Drawable;

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    sget v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1768
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->invalidateAll()V

    .line 1770
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v0, v1, :cond_2

    .line 1771
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate()V

    .line 1772
    :cond_2
    return-void
.end method
