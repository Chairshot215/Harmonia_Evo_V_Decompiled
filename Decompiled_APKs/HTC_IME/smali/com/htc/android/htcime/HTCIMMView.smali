.class public Lcom/htc/android/htcime/HTCIMMView;
.super Landroid/widget/LinearLayout;
.source "HTCIMMView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/HTCIMMView$14;,
        Lcom/htc/android/htcime/HTCIMMView$WCLMode;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final DEFAULT_WCL:I = 0x0

.field public static final MAX_WCL_NUM:I = 0x3

.field public static final NWP_WCL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HTCIMMView"

.field public static final TWO_LINES_WCL:I = 0x2

.field public static mAttachBtnTextAndImage:Z

.field public static mDisableAttachBtn:Z

.field public static mDisableSendBtn:Z

.field public static mMailBtn1:I

.field public static mMailBtn2:I

.field public static mMailBtn3:I

.field public static mMailBtn4:I

.field public static mMailBtnBarName:Ljava/lang/String;

.field public static mMailBtnName1:Ljava/lang/String;

.field public static mMailBtnName2:Ljava/lang/String;

.field public static mMailBtnName3:Ljava/lang/String;

.field public static mMailBtnName4:Ljava/lang/String;

.field public static mMailBtnText1:Ljava/lang/String;

.field public static mMailBtnText2:Ljava/lang/String;

.field public static mMailBtnText3:Ljava/lang/String;

.field public static mMailBtnText4:Ljava/lang/String;

.field public static mMailPackageName:Ljava/lang/String;

.field public static mSendBtnTextAndImage:Z

.field private static s2LinesWCL_HEIGHT:I

.field private static sFULL_WCL_LAND_BTN_HEIGHT:I

.field private static sFULL_WCL_LAND_HWR_VISIABLE_LINE:I

.field private static sFULL_WCL_LAND_VISIABLE_LINE:I

.field private static sFULL_WCL_VISIABLE_LINE:I

.field private static sFULL_ZY_WCL_VISIABLE_LINE:I

.field private static sHWFullWCL_HEIGHT:I

.field private static sHWR_LAND_WCL_LEFT_PADDING_WITH_DPAD:I

.field private static sIMMVisible:Z

.field private static sLAND_WCL_HEIGHT:I

.field private static sMail_Btn_Height:I

.field private static sSIP_BOTTOM_EXTRA_GAP:I

.field private static sSTATUS_BAR_HEIGHT:I

.field private static sSTROKE_VIEW_LAND_PANEL_HEIGHT:I

.field private static sSTROKE_VIEW_PORT_PANEL_HEIGHT:I

.field private static sWCL_HEIGHT:I

.field private static sWCL_TOP_PADDING:I


# instance fields
.field private AddWordExtractViewListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

.field final DockThreshold:I

.field public final FWCL_SHOWADDWORD:Z

.field private LandMMSBtnListener:Landroid/view/View$OnTouchListener;

.field private final NON_HTC_WARNING:I

.field private final START_TIP_1:I

.field private final START_TUTORIAL:I

.field TwoLinesWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

.field public bIsMMSToField:Z

.field private enableaHideHWSIP:Z

.field floatWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

.field private m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

.field private mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

.field public mCurHWKBSymPos:I

.field public mCurHWKBSymRow:I

.field private mCurrPos_2lineWCL:I

.field private mCustomizedWCLPos:Z

.field private mCustomizedY:I

.field private mFakeWCLView:Landroid/widget/LinearLayout;

.field public mFixedWCLIssueOccure:Z

.field private mFloatWCLY:I

.field private mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

.field private mFullWCLBar:Landroid/widget/LinearLayout;

.field private mFullWCLWindow:Landroid/widget/PopupWindow;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field mHWKBSymWindow:Landroid/widget/PopupWindow;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

.field private mLandHint:Landroid/widget/LinearLayout;

.field private mLandHintTextView:Landroid/widget/TextView;

.field private mLandHintWindow:Landroid/widget/PopupWindow;

.field private mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

.field public mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSAttachText:Ljava/lang/String;

.field public mLandMMSAttachTextSize:I

.field public mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

.field public mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

.field public mLandMMSRemainText:Ljava/lang/String;

.field private mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

.field public mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

.field public mLandMMSSendText:Ljava/lang/String;

.field public mLandMMSSendTextSize:I

.field private mMMSRemain:Landroid/widget/TextView;

.field public mMailBtnPopup:Landroid/widget/PopupWindow;

.field private mMailBtnPopupView:Landroid/view/View;

.field private mMailBtnView:Landroid/view/View;

.field private mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

.field private mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

.field private mOffsetInWindow:[I

.field private mOffsetOnScreen:[I

.field private mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

.field private mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

.field private mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

.field private mTutorialHandler:Landroid/os/Handler;

.field private mWCLID:I

.field private mWCLMode:I

.field predictWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 147
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->sIMMVisible:Z

    .line 168
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mDisableSendBtn:Z

    .line 169
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mDisableAttachBtn:Z

    .line 170
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mSendBtnTextAndImage:Z

    .line 171
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mAttachBtnTextAndImage:Z

    .line 191
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    .line 192
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 193
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 194
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    .line 195
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_VISIABLE_LINE:I

    .line 196
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_VISIABLE_LINE:I

    .line 197
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_HWR_VISIABLE_LINE:I

    .line 198
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sFULL_ZY_WCL_VISIABLE_LINE:I

    .line 199
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_PORT_PANEL_HEIGHT:I

    .line 200
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_LAND_PANEL_HEIGHT:I

    .line 202
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sHWFullWCL_HEIGHT:I

    .line 203
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_BTN_HEIGHT:I

    .line 204
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sWCL_TOP_PADDING:I

    .line 205
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 206
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sHWR_LAND_WCL_LEFT_PADDING_WITH_DPAD:I

    .line 220
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn1:I

    .line 221
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn2:I

    .line 222
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn3:I

    .line 223
    sput v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn4:I

    .line 224
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/htcime/HTCIMMView;->sMail_Btn_Height:I

    .line 226
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    .line 227
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnBarName:Ljava/lang/String;

    .line 228
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName1:Ljava/lang/String;

    .line 229
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName2:Ljava/lang/String;

    .line 230
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName3:Ljava/lang/String;

    .line 231
    const-string v0, ""

    sput-object v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName4:Ljava/lang/String;

    .line 233
    sput-object v1, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText1:Ljava/lang/String;

    .line 234
    sput-object v1, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText2:Ljava/lang/String;

    .line 235
    sput-object v1, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText3:Ljava/lang/String;

    .line 236
    sput-object v1, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText4:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 93
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 94
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    .line 101
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 103
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 105
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 118
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    .line 121
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    .line 122
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    .line 123
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    .line 124
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    .line 126
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 127
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 130
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 131
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 135
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    .line 136
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    .line 137
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHint:Landroid/widget/LinearLayout;

    .line 140
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    .line 141
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMMView;->bIsMMSToField:Z

    .line 150
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    .line 153
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 154
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    .line 160
    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendTextSize:I

    .line 161
    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachTextSize:I

    .line 162
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    const-string v0, "0/160"

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    .line 176
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 177
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 186
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    .line 189
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    .line 207
    iput-boolean v3, p0, Lcom/htc/android/htcime/HTCIMMView;->FWCL_SHOWADDWORD:Z

    .line 208
    iput-boolean v3, p0, Lcom/htc/android/htcime/HTCIMMView;->enableaHideHWSIP:Z

    .line 210
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    .line 213
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    .line 217
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFixedWCLIssueOccure:Z

    .line 219
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    .line 238
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    .line 239
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopupView:Landroid/view/View;

    .line 1431
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->DockThreshold:I

    .line 1494
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedWCLPos:Z

    .line 1495
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedY:I

    .line 1547
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$2;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    .line 2183
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2184
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2247
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$4;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$4;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->AddWordExtractViewListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    .line 2279
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$5;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$5;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->LandMMSBtnListener:Landroid/view/View$OnTouchListener;

    .line 2294
    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    .line 2296
    iput v3, p0, Lcom/htc/android/htcime/HTCIMMView;->START_TUTORIAL:I

    .line 2297
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->NON_HTC_WARNING:I

    .line 2298
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->START_TIP_1:I

    .line 2300
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$6;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$6;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialHandler:Landroid/os/Handler;

    .line 2598
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$7;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$7;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->floatWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    .line 2646
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$8;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$8;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->predictWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    .line 2685
    new-instance v0, Lcom/htc/android/htcime/HTCIMMView$9;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMMView$9;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->TwoLinesWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    .line 245
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    const-string v1, "com.htc.android.htcime"

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    .line 248
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/HTCIMMView;->loadConstant(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method private AdjustFullWCLBtn(I)V
    .locals 5
    .parameter "height"

    .prologue
    .line 1127
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1130
    .local v3, Previouslp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1132
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1135
    .local v2, Nextlp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1137
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1140
    .local v1, Closelp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1142
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1145
    .local v0, AddWordlp:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1147
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/HTCIMMView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMMData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->updateAWExtractViewButtonState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/IMECustomizeButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/IMECustomizeButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/Bubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/tutorial/TipSystem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->feedbackEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/FullWCL;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/HTCIMMView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    return-object v0
.end method

.method private calWCLPositionY(I)I
    .locals 10
    .parameter "height"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1219
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v4

    iget v3, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 1220
    .local v3, sip_id:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v4

    iget v2, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 1224
    .local v2, im_id:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v4, :cond_0

    .line 1225
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 1227
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 1229
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    if-nez v4, :cond_1

    .line 1230
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    .line 1232
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getLocationOnScreen([I)V

    .line 1234
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v7, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->isPhoneHWR()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1235
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->isHWRSip()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1236
    iput p1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1240
    :goto_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    if-eqz v4, :cond_2

    .line 1241
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sMail_Btn_Height:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1243
    :cond_2
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    add-int/2addr v4, p1

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 1244
    iput-boolean v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mFixedWCLIssueOccure:Z

    .line 1245
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1247
    :cond_3
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1342
    :goto_1
    return v4

    .line 1238
    :cond_4
    iput v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto :goto_0

    .line 1250
    :cond_5
    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedWCLPos:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v7, :cond_7

    .line 1251
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedY:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1342
    :cond_6
    :goto_2
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto :goto_1

    .line 1255
    :cond_7
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v4, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    .line 1258
    .local v0, cursor:Landroid/graphics/Rect;
    :goto_3
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mFloatWCL:Z

    .line 1260
    .local v1, float_wcl:Z
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1261
    neg-int v4, p1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1296
    :goto_4
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v7, :cond_8

    .line 1297
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    add-int/2addr v4, p1

    if-lez v4, :cond_14

    .line 1298
    neg-int v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1305
    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eqz v4, :cond_9

    .line 1306
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v7, :cond_9

    .line 1307
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    packed-switch v4, :pswitch_data_0

    .line 1317
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    add-int/2addr v4, p1

    if-lez v4, :cond_15

    .line 1318
    neg-int v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1328
    :cond_9
    :goto_6
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v8, v4, :cond_a

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    if-ne v4, v9, :cond_a

    .line 1331
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1336
    :cond_a
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v4, :cond_6

    if-ne v8, v2, :cond_6

    .line 1337
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v4, v4, v7

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto :goto_2

    .line 1255
    .end local v0           #cursor:Landroid/graphics/Rect;
    .end local v1           #float_wcl:Z
    :cond_b
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v4, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    goto :goto_3

    .line 1263
    .restart local v0       #cursor:Landroid/graphics/Rect;
    .restart local v1       #float_wcl:Z
    :cond_c
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sWCL_TOP_PADDING:I

    add-int/2addr v4, v5

    if-gez v4, :cond_d

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sWCL_TOP_PADDING:I

    add-int/2addr v4, v5

    if-gez v4, :cond_d

    .line 1264
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p1

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1266
    :cond_d
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    if-nez v2, :cond_e

    .line 1267
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p1

    neg-int v4, v4

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1269
    :cond_e
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v7, v4, :cond_10

    .line 1271
    if-eqz v1, :cond_f

    .line 1272
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1274
    :cond_f
    neg-int v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1276
    :cond_10
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_11

    .line 1277
    neg-int v4, p1

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1279
    :cond_11
    if-ne v9, v3, :cond_13

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v8, :cond_13

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_DPADSupport:Z

    if-eqz v4, :cond_13

    .line 1282
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1283
    sget v4, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v4

    sub-int/2addr v4, p1

    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1285
    :cond_12
    sget v4, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_BOTTOM_Y_WITH_DPAD:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1289
    :cond_13
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v4, v4, v7

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_4

    .line 1299
    :cond_14
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    if-ge v4, v5, :cond_8

    .line 1300
    sget v4, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_5

    .line 1311
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getHeight()I

    move-result v4

    sub-int/2addr v4, p1

    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    .line 1312
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v4, :cond_9

    .line 1313
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_6

    .line 1319
    :cond_15
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    if-ge v4, v5, :cond_9

    .line 1320
    sget v4, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    goto/16 :goto_6

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private dismissFullWCL()V
    .locals 4

    .prologue
    .line 2406
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v1, :cond_1

    .line 2414
    :cond_0
    :goto_0
    return-void

    .line 2409
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2410
    :catch_0
    move-exception v0

    .line 2411
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    .line 2412
    const-string v1, "HTCIMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissFullWCL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dismissWCL()V
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 2366
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 2367
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 2368
    return-void
.end method

.method private feedbackEffect()V
    .locals 2

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getAudioService()Lcom/htc/android/htcime/util/AudioService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->playSoundEffect(Lcom/htc/android/htcime/util/AudioService;I)V

    .line 2971
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectMS(Landroid/os/Vibrator;)V

    .line 2972
    return-void
.end method

.method public static getIMMViewVisible()Z
    .locals 1

    .prologue
    .line 564
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->sIMMVisible:Z

    return v0
.end method

.method private getMailBtnView()Landroid/view/View;
    .locals 15

    .prologue
    .line 3072
    const/4 v10, 0x0

    .line 3075
    .local v10, ret:Landroid/view/View;
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnBarName:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object v11, v10

    .line 3158
    .end local v10           #ret:Landroid/view/View;
    .local v11, ret:Landroid/view/View;
    :goto_0
    return-object v11

    .line 3078
    .end local v11           #ret:Landroid/view/View;
    .restart local v10       #ret:Landroid/view/View;
    :cond_1
    new-instance v0, Lcom/htc/android/htcime/util/APKResTool;

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    iget-object v13, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12, v13}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 3079
    .local v0, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnBarName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/util/APKResTool;->getLayoutXMLByName(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 3081
    .local v7, mailBtnParser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v7, :cond_2

    move-object v11, v10

    .line 3082
    .end local v10           #ret:Landroid/view/View;
    .restart local v11       #ret:Landroid/view/View;
    goto :goto_0

    .line 3084
    .end local v11           #ret:Landroid/view/View;
    .restart local v10       #ret:Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    .line 3088
    .local v9, mail_context:Landroid/content/Context;
    :try_start_0
    iget-object v12, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 3094
    if-eqz v9, :cond_e

    .line 3095
    const-string v12, "layout_inflater"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 3096
    .local v6, inflater:Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 3098
    .local v8, mail_btn_view:Landroid/view/View;
    if-eqz v8, :cond_e

    .line 3099
    move-object v10, v8

    .line 3103
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName1:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName1:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn1:I

    .line 3104
    :cond_3
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName2:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName2:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn2:I

    .line 3105
    :cond_4
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName3:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName3:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn3:I

    .line 3106
    :cond_5
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName4:Ljava/lang/String;

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName4:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn4:I

    .line 3108
    :cond_6
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn1:I

    if-eqz v12, :cond_8

    .line 3109
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn1:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 3110
    .local v1, btn1:Landroid/widget/Button;
    if-eqz v1, :cond_8

    .line 3111
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText1:Ljava/lang/String;

    if-eqz v12, :cond_7

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText1:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3112
    :cond_7
    new-instance v12, Lcom/htc/android/htcime/HTCIMMView$10;

    invoke-direct {v12, p0}, Lcom/htc/android/htcime/HTCIMMView$10;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3120
    .end local v1           #btn1:Landroid/widget/Button;
    :cond_8
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn2:I

    if-eqz v12, :cond_a

    .line 3121
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn2:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3122
    .local v2, btn2:Landroid/widget/Button;
    if-eqz v2, :cond_a

    .line 3123
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText2:Ljava/lang/String;

    if-eqz v12, :cond_9

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText2:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3124
    :cond_9
    new-instance v12, Lcom/htc/android/htcime/HTCIMMView$11;

    invoke-direct {v12, p0}, Lcom/htc/android/htcime/HTCIMMView$11;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3132
    .end local v2           #btn2:Landroid/widget/Button;
    :cond_a
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn3:I

    if-eqz v12, :cond_c

    .line 3133
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn3:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 3134
    .local v3, btn3:Landroid/widget/Button;
    if-eqz v3, :cond_c

    .line 3135
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText3:Ljava/lang/String;

    if-eqz v12, :cond_b

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText3:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3136
    :cond_b
    new-instance v12, Lcom/htc/android/htcime/HTCIMMView$12;

    invoke-direct {v12, p0}, Lcom/htc/android/htcime/HTCIMMView$12;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3144
    .end local v3           #btn3:Landroid/widget/Button;
    :cond_c
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn4:I

    if-eqz v12, :cond_e

    .line 3145
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtn4:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3146
    .local v4, btn4:Landroid/widget/Button;
    if-eqz v4, :cond_e

    .line 3147
    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText4:Ljava/lang/String;

    if-eqz v12, :cond_d

    sget-object v12, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText4:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3148
    :cond_d
    new-instance v12, Lcom/htc/android/htcime/HTCIMMView$13;

    invoke-direct {v12, p0}, Lcom/htc/android/htcime/HTCIMMView$13;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v4, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v4           #btn4:Landroid/widget/Button;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #mail_btn_view:Landroid/view/View;
    :cond_e
    move-object v11, v10

    .line 3158
    .end local v10           #ret:Landroid/view/View;
    .restart local v11       #ret:Landroid/view/View;
    goto/16 :goto_0

    .line 3089
    .end local v11           #ret:Landroid/view/View;
    .restart local v10       #ret:Landroid/view/View;
    :catch_0
    move-exception v5

    .line 3090
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "HTCIMMView"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3091
    .end local v10           #ret:Landroid/view/View;
    .restart local v11       #ret:Landroid/view/View;
    goto/16 :goto_0
.end method

.method private hideMMSHintWindow()V
    .locals 3

    .prologue
    .line 2563
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2568
    :goto_0
    return-void

    .line 2564
    :catch_0
    move-exception v0

    .line 2565
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2566
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mMMSRemainCountException:Z

    goto :goto_0
.end method

.method private inflateFullWCL(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const v11, 0x7f020030

    const v10, 0x7f02002a

    const/16 v9, 0xa

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1061
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1063
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/FullWCL;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    .line 1065
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const v3, 0x7f020033

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/FullWCL;->setBackgroundResource(I)V

    .line 1066
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/htcime/ui/FullWCL;->setPadding(IIII)V

    .line 1067
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FullWCL;->requestLayout()V

    .line 1068
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/FullWCL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    .line 1070
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1072
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const-string v4, "full_next"

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/APKResTool;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 1073
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 1074
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1075
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 1076
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1077
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v9, v7, v9, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyPadding(IIII)V

    .line 1081
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const-string v4, "full_previous"

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/APKResTool;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 1082
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 1083
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1084
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 1085
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1087
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v9, v7, v9, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyPadding(IIII)V

    .line 1090
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const-string v4, "full_add_word"

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/APKResTool;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 1091
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 1092
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1093
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 1094
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1096
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v9, v7, v9, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyPadding(IIII)V

    .line 1099
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const-string v4, "full_close"

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/APKResTool;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 1100
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mKeyButtonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 1101
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1102
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v2, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 1103
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mMenuPak:Lcom/htc/android/htcime/util/APKResTool;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const-string v4, "padding_view"

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/htcime/util/APKResTool;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, paddingView:Landroid/view/View;
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x7

    const/16 v5, 0x22

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-direct {v2, v3, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1119
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    .line 1120
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1122
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1123
    return-void
.end method

.method private inflateMMSView(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2442
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHint:Landroid/widget/LinearLayout;

    .line 2443
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHint:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0047

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    .line 2444
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2445
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2447
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    .line 2448
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2449
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2450
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2451
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2452
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2453
    return-void
.end method

.method private inflateWCL(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1150
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v0, p1, v1, p0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1152
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v0, p1, v1, p0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1154
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-direct {v0, p1, v1, p0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1155
    return-void
.end method

.method private showFullWCL(Landroid/view/View;III)V
    .locals 4
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2428
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v1, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    .line 2435
    const-string v1, "HTCIMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFullWCL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMMSHintWindow()V
    .locals 5

    .prologue
    .line 2554
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    :goto_0
    return-void

    .line 2555
    :catch_0
    move-exception v0

    .line 2556
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2557
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mMMSRemainCountException:Z

    goto :goto_0
.end method

.method private updateAWExtractViewButtonState()V
    .locals 4

    .prologue
    .line 2187
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v2, :cond_1

    .line 2202
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2191
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 2194
    invoke-static {v1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getText(Landroid/view/inputmethod/InputConnection;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2196
    .local v0, awText:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 2197
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    goto :goto_0

    .line 2199
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFullWCL(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2417
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v1, :cond_1

    .line 2425
    :cond_0
    :goto_0
    return-void

    .line 2420
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2421
    :catch_0
    move-exception v0

    .line 2422
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    .line 2423
    const-string v1, "HTCIMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFullWCL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AddWordExtractViewInflate()Landroid/view/View;
    .locals 11

    .prologue
    const v10, 0x7f020030

    const v9, 0x7f02002a

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2205
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2207
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2208
    .local v2, v:Landroid/view/View;
    const v3, 0x1020025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2211
    .local v0, mAWEet:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2213
    .local v1, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 2214
    new-instance v3, Lcom/htc/android/htcime/HTCIMMView$3;

    invoke-direct {v3, p0}, Lcom/htc/android/htcime/HTCIMMView$3;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2228
    :cond_0
    const v3, 0x7f0e003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2229
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2230
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2231
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2232
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 2233
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v3, v8, v7, v8, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyPadding(IIII)V

    .line 2235
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->AddWordExtractViewListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 2236
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->updateAWExtractViewButtonState()V

    .line 2238
    const v3, 0x7f0e0039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2239
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2240
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2241
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2242
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownTextColor(I)V

    .line 2243
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->AddWordExtractViewListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 2244
    return-object v2
.end method

.method public CreateHTCExtractTextView()Landroid/view/View;
    .locals 4

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030019

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2095
    .local v0, v:Landroid/view/View;
    return-object v0
.end method

.method public CreateLandMMSTextView()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/high16 v9, -0x100

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 2099
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030037

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2100
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "common_app_mail_body_inputfield_selected"

    invoke-static {v4}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2104
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-eq v1, v4, :cond_0

    move-object v7, v0

    .line 2179
    .end local v7           #v:Landroid/view/View;
    :goto_0
    return-object v7

    .line 2107
    .restart local v7       #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    :cond_1
    move-object v7, v0

    .line 2109
    goto :goto_0

    .line 2112
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->finish()V

    .line 2113
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->finish()V

    .line 2115
    :cond_4
    const v0, 0x7f0e0043

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    .line 2116
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2117
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2121
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2123
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMMSHintWindow()V

    .line 2126
    :cond_6
    const v0, 0x7f0e0044

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    .line 2127
    const v0, 0x7f0e0045

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    .line 2129
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2130
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mSendBtnTextAndImage:Z

    if-eqz v0, :cond_8

    .line 2131
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setMixButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2135
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextColor(I)V

    .line 2136
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextSize(IF)V

    .line 2137
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->LandMMSBtnListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2152
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMMView;->bIsMMSToField:Z

    if-nez v0, :cond_c

    .line 2153
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->mAttachBtnTextAndImage:Z

    if-eqz v0, :cond_b

    .line 2154
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setMixButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2158
    :goto_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextColor(I)V

    .line 2159
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextSize(IF)V

    .line 2160
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->LandMMSBtnListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2133
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2138
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 2139
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImageButton(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2140
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->LandMMSBtnListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2142
    :cond_a
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_7

    .line 2143
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setVisibility(I)V

    goto :goto_2

    .line 2156
    :cond_b
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextButton(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 2161
    :cond_c
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMMView;->bIsMMSToField:Z

    if-nez v0, :cond_d

    .line 2162
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImageButton(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2163
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->LandMMSBtnListener:Landroid/view/View$OnTouchListener;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2165
    :cond_d
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_e

    .line 2169
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2170
    .local v6, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2173
    .end local v6           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 2174
    .restart local v6       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2175
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0
.end method

.method public adjustWCLHeight()V
    .locals 5

    .prologue
    .line 3010
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-nez v2, :cond_0

    .line 3031
    :goto_0
    return-void

    .line 3013
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 3014
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    const v3, 0x7f0e001f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3015
    .local v1, tv:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 3016
    .local v0, height:I
    if-eqz v1, :cond_2

    .line 3017
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->isHWRSip()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3018
    sget v2, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    mul-int/lit8 v0, v2, 0x2

    .line 3022
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 3023
    const-string v2, "HTCIMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FixedWCL] adjustWCLHeight height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3020
    :cond_1
    sget v0, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    goto :goto_1

    .line 3025
    :cond_2
    const-string v2, "HTCIMMView"

    const-string v3, "[FixedWCL] adjustWCLHeight textView == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3028
    .end local v0           #height:I
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_3
    const-string v2, "HTCIMMView"

    const-string v3, "[FixedWCL] adjustWCLHeight mFakeWCLView == null, allocate again"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dismissFixedWCLSymbol()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 1353
    :cond_0
    return-void
.end method

.method public dispatchTrackballevent(Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;I)V
    .locals 4
    .parameter "whichButton"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 2062
    const/4 v0, 0x0

    .line 2063
    .local v0, actionBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    sget-object v1, Lcom/htc/android/htcime/HTCIMMView$14;->$SwitchMap$com$htc$android$htcime$XT9IME$XT9IME$WCLSELECTION:[I

    invoke-virtual {p1}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2065
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2086
    :goto_1
    if-eqz v0, :cond_0

    .line 2087
    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->onTrackballEvent(I)V

    goto :goto_0

    .line 2068
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 2069
    goto :goto_1

    .line 2071
    :pswitch_2
    if-nez p2, :cond_1

    .line 2072
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 2074
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 2077
    :pswitch_3
    if-nez p2, :cond_2

    .line 2078
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 2080
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v1, v3, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 2063
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public doneFirstTimeTutor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2328
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 2329
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2330
    .local v0, sp:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TutorialPlayed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2331
    :cond_1
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    .line 2332
    return-void
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMView;->sIMMVisible:Z

    .line 463
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->setMMSRemainText(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 465
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->removeAllViews()V

    .line 466
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->dismissFullWCL()V

    .line 467
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 469
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearDragged()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 472
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearDragged()V

    .line 474
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 475
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearDragged()V

    .line 476
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->reset()V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->finish()V

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->finish()V

    .line 488
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMailBtnPopup()V

    .line 489
    return-void
.end method

.method public getFixedWCLHeight()I
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 3006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullWCLVisible()Z
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public getLocationTop()I
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 1037
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLowerLineIndex()I
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->findLineSelection(Z)I

    move-result v0

    return v0
.end method

.method public getSIPPosY(I)I
    .locals 2
    .parameter "bodyHeight"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getUpperLineIndex()I
    .locals 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->findLineSelection(Z)I

    move-result v0

    return v0
.end method

.method public getWCLMode()I
    .locals 1

    .prologue
    .line 1959
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    return v0
.end method

.method public getWCLSelectionAtButton()Z
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    packed-switch v0, :pswitch_data_0

    .line 1989
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWCLSelectionAtButton()Z

    move-result v0

    :goto_0
    return v0

    .line 1986
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWCLSelectionAtButton()Z

    move-result v0

    goto :goto_0

    .line 1987
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWCLSelectionAtButton()Z

    move-result v0

    goto :goto_0

    .line 1985
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getWCLView()Landroid/view/View;
    .locals 3

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    .line 3036
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 3038
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFakeWCLView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWCLVisible_ID(I)Z
    .locals 2
    .parameter "wcl_id"

    .prologue
    .line 2943
    const/4 v0, 0x0

    .line 2944
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    packed-switch p1, :pswitch_data_0

    .line 2958
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowing()Z

    move-result v1

    .line 2959
    :goto_1
    return v1

    .line 2946
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2947
    goto :goto_0

    .line 2949
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2950
    goto :goto_0

    .line 2952
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2953
    goto :goto_0

    .line 2959
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleFullWCLClose()V
    .locals 7

    .prologue
    const/high16 v6, 0x712

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1907
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 1909
    const-string v0, ""

    iget v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(Ljava/lang/String;II)V

    .line 1910
    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    .line 1914
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 1918
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    if-lt v0, v1, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    .line 1920
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, v3

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSelection(I)V

    .line 1924
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 1925
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSelection(I)V

    .line 1927
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLTopText:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setTwoLinesWCLSuggestions(Ljava/lang/String;I)V

    .line 1928
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    if-lt v0, v1, :cond_1

    .line 1929
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    .line 1930
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x749

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1933
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 1935
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    if-lt v0, v1, :cond_2

    .line 1936
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v4

    .line 1937
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, v4

    or-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1939
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSelection(I)V

    .line 1941
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1942
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 1945
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v0, :cond_5

    .line 1947
    :cond_4
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 1949
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLTopText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1951
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 1952
    :cond_6
    return-void
.end method

.method public handleKeycodeByHWKBSymSip(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, -0x1

    .line 942
    const/4 v3, 0x0

    .line 944
    .local v3, ret:Z
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    instance-of v5, v5, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-nez v5, :cond_0

    move v4, v3

    .line 1026
    .end local v3           #ret:Z
    .local v4, ret:I
    :goto_0
    return v4

    .line 947
    .end local v4           #ret:I
    .restart local v3       #ret:Z
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v5, Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getTotalRows()I

    move-result v1

    .line 948
    .local v1, TotalRows:I
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v5, Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/KeyboardView;->getCountPerRow()[I

    move-result-object v0

    .line 950
    .local v0, CountPerRow:[I
    const/4 v2, 0x0

    .line 952
    .local v2, bUpdateFoucs:Z
    sparse-switch p1, :sswitch_data_0

    .line 1019
    const/4 v3, 0x1

    .line 1023
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1024
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v5, Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    :cond_2
    move v4, v3

    .line 1026
    .restart local v4       #ret:I
    goto :goto_0

    .line 956
    .end local v4           #ret:I
    :sswitch_0
    const/4 v3, 0x0

    .line 957
    goto :goto_1

    .line 960
    :sswitch_1
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 961
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 962
    const/4 v2, 0x1

    .line 964
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    aget v6, v0, v6

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_3

    .line 965
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 968
    :cond_3
    const/4 v3, 0x1

    .line 969
    goto :goto_1

    .line 972
    :sswitch_2
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    if-lez v5, :cond_4

    .line 973
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 974
    const/4 v2, 0x1

    .line 976
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    if-lez v5, :cond_4

    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v6, v6, -0x1

    aget v6, v0, v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_4

    .line 977
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 980
    :cond_4
    const/4 v3, 0x1

    .line 981
    goto :goto_1

    .line 984
    :sswitch_3
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_5

    .line 985
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 986
    const/4 v2, 0x1

    .line 988
    if-eqz v0, :cond_5

    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    if-ge v5, v6, :cond_5

    .line 989
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    aget v6, v0, v6

    iget v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v7, v7, -0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 992
    :cond_5
    const/4 v3, 0x1

    .line 993
    goto/16 :goto_1

    .line 996
    :sswitch_4
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    if-lez v5, :cond_6

    .line 997
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 998
    const/4 v2, 0x1

    .line 1000
    if-eqz v0, :cond_6

    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    if-lez v5, :cond_6

    .line 1001
    iget v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    add-int/lit8 v6, v6, 0x1

    aget v6, v0, v6

    iget v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    aget v7, v0, v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 1004
    :cond_6
    const/4 v3, 0x1

    .line 1005
    goto/16 :goto_1

    .line 1010
    :sswitch_5
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    instance-of v5, v5, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;

    if-eqz v5, :cond_1

    .line 1011
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v5, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;

    iget v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    invoke-virtual {v5, v6, v7, v7}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->onClick(III)V

    .line 1012
    const/4 v3, 0x1

    .line 1013
    const/4 v2, 0x1

    move v4, v3

    .line 1014
    .restart local v4       #ret:I
    goto/16 :goto_0

    .line 952
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
        0x43 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleWCLDropDown(Ljava/lang/String;II)V
    .locals 2
    .parameter "candidateString"
    .parameter "idx"
    .parameter "idWCL"

    .prologue
    const/4 v1, 0x0

    .line 1893
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->hide()V

    .line 1895
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 1900
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(Ljava/lang/String;II)V

    .line 1901
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 1902
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    .line 1903
    return-void

    .line 1897
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->dismissWCL()V

    goto :goto_0
.end method

.method public hideHWKBSymSip()Z
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 930
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    .line 932
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 934
    const/4 v0, 0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideIMMView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 498
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 511
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 512
    .local v0, im_id:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->removeAllViews()V

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->dismissFullWCL()V

    .line 518
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 519
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 520
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 521
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 523
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->requestHideSelf(I)V

    .line 526
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v1, :cond_3

    .line 527
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->writeSIPUsageDurationLog()V

    .line 528
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMMData;->isCIMESIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->writeCIMESIPUsageDurationLog()V

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const-string v2, ""

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    .line 534
    :cond_3
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMView;->sIMMVisible:Z

    .line 535
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->refreshIMMView()V

    .line 537
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v1, :cond_4

    .line 539
    const-string v1, "0"

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 541
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v3, v3, v3, v3, v1}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchArea(IIIII)V

    .line 545
    :cond_4
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v1, :cond_5

    .line 546
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->finishSIPrecord()V

    .line 548
    :cond_5
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mScoring:Z

    if-eqz v1, :cond_6

    .line 549
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/ScoringUtil;->saveScoringData(Landroid/content/Context;)V

    .line 551
    :cond_6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 552
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-nez v1, :cond_7

    .line 553
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reset()V

    .line 557
    :cond_7
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v3, v1, Lcom/htc/android/htcime/HTCIMMData;->mShowHWSIPFlag:I

    .line 559
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    .line 560
    return-void
.end method

.method public hideMailBtnPopup()V
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3212
    :cond_0
    return-void
.end method

.method public hideMailBtnView()V
    .locals 2

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3205
    :cond_0
    return-void
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 5
    .parameter "htcIMM"

    .prologue
    const/4 v4, 0x0

    .line 575
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 576
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 578
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesView(Landroid/view/View;)V

    .line 582
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 583
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->floatWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 584
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 585
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 587
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 588
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->predictWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 589
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 590
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setDragStatus(Z)V

    .line 591
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 593
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 594
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->TwoLinesWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 595
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 596
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 599
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v1, p0}, Lcom/htc/android/htcime/ui/FullWCL;->init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 602
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    .line 603
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLException:Z

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    .line 606
    return-void
.end method

.method public initVariables()V
    .locals 0

    .prologue
    .line 1956
    return-void
.end method

.method public isFirstTimeTutoring()Z
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_0

    .line 2335
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->isShowing()Z

    move-result v0

    .line 2337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFoucsAtTop_ID(I)Z
    .locals 2
    .parameter "wcl_id"

    .prologue
    .line 3049
    const/4 v0, 0x0

    .line 3050
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    packed-switch p1, :pswitch_data_0

    .line 3063
    :goto_0
    if-eqz v0, :cond_0

    .line 3064
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isFoucsAtTop()Z

    move-result v1

    .line 3066
    :goto_1
    return v1

    .line 3052
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 3053
    goto :goto_0

    .line 3055
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 3056
    goto :goto_0

    .line 3058
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 3059
    goto :goto_0

    .line 3066
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 3050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isFullScreenHWR()Z
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2976
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-nez v3, :cond_2

    move v0, v1

    .line 2977
    .local v0, sip_id:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    move v1, v2

    .line 2981
    :goto_1
    return v1

    .line 2976
    .end local v0           #sip_id:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v0, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    goto :goto_0

    .line 2981
    .restart local v0       #sip_id:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isHWRSip()Z
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2985
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-nez v3, :cond_3

    move v0, v1

    .line 2986
    .local v0, sip_id:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v2, :cond_1

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_2
    move v1, v2

    .line 2991
    :goto_1
    return v1

    .line 2985
    .end local v0           #sip_id:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v0, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    goto :goto_0

    .line 2991
    .restart local v0       #sip_id:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPhoneHWR()Z
    .locals 2

    .prologue
    .line 2995
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-nez v1, :cond_1

    const/4 v0, 0x2

    .line 2996
    .local v0, sip_id:I
    :goto_0
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 2998
    :cond_0
    const/4 v1, 0x1

    .line 2999
    :goto_1
    return v1

    .line 2995
    .end local v0           #sip_id:I
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    goto :goto_0

    .line 2999
    .restart local v0       #sip_id:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isWclSpreaded()Z
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x1

    return v0
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 255
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 256
    .local v3, sp:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const v5, 0x7f0a0012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    .line 260
    const v5, 0x7f0a0013

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 261
    const v5, 0x7f0a000f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sHWFullWCL_HEIGHT:I

    .line 263
    const v5, 0x105000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    .line 264
    const v5, 0x7f0a000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_VISIABLE_LINE:I

    .line 265
    const v5, 0x7f0a000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_HWR_VISIABLE_LINE:I

    .line 266
    const v5, 0x7f0a000b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_VISIABLE_LINE:I

    .line 267
    const v5, 0x7f0a000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sFULL_ZY_WCL_VISIABLE_LINE:I

    .line 268
    const v5, 0x7f0a0022

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 269
    const v5, 0x7f0a002c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget v7, Lcom/htc/android/htcime/HTCIMMView;->sSIP_BOTTOM_EXTRA_GAP:I

    add-int/2addr v5, v7

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_PORT_PANEL_HEIGHT:I

    .line 270
    const v5, 0x7f0a0025

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_LAND_PANEL_HEIGHT:I

    .line 271
    const v5, 0x7f0a0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_BTN_HEIGHT:I

    .line 272
    const v5, 0x7f0a0015

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sWCL_TOP_PADDING:I

    .line 273
    const v5, 0x7f0a0010

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->sHWR_LAND_WCL_LEFT_PADDING_WITH_DPAD:I

    .line 274
    const v5, 0x7f0a0014

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 278
    const v5, 0x7f09030d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0a0069

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, strFeature_AutoHideHwrSip:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, Feature_AutoHideHwrSip:I
    if-ne v0, v6, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/htc/android/htcime/HTCIMMView;->enableaHideHWSIP:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 284
    .end local v0           #Feature_AutoHideHwrSip:I
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "HTCIMMView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " can not resolve value of Feature_AutoHideHwrSip, Feature_AutoHideHwrSip =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v5, "HTCIMMView"

    const-string v7, " set enableaHideHWSIP = true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-boolean v6, p0, Lcom/htc/android/htcime/HTCIMMView;->enableaHideHWSIP:Z

    goto/16 :goto_0

    .line 283
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #Feature_AutoHideHwrSip:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onDpadKeyEventDown(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1975
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    packed-switch v0, :pswitch_data_0

    .line 1979
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventDown(I)Z

    move-result v0

    :goto_0
    return v0

    .line 1976
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventDown(I)Z

    move-result v0

    goto :goto_0

    .line 1977
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventDown(I)Z

    move-result v0

    goto :goto_0

    .line 1975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onDpadKeyEventUp(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1965
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    packed-switch v0, :pswitch_data_0

    .line 1969
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventUp(I)Z

    move-result v0

    :goto_0
    return v0

    .line 1966
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventUp(I)Z

    move-result v0

    goto :goto_0

    .line 1967
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->onDpadKeyEventUp(I)Z

    move-result v0

    goto :goto_0

    .line 1965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1053
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    .line 1055
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->inflateWCL(Landroid/content/Context;)V

    .line 1056
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->inflateFullWCL(Landroid/content/Context;)V

    .line 1057
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->inflateMMSView(Landroid/content/Context;)V

    .line 1058
    return-void
.end method

.method public reInitMMSView()V
    .locals 2

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->inflateMMSView(Landroid/content/Context;)V

    .line 2572
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mMMSRemainCountException:Z

    .line 2573
    return-void
.end method

.method public refreshIMMView()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1516
    const/4 v0, 0x0

    .line 1518
    .local v0, height:I
    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1522
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v2, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 1523
    .local v2, sip_id:I
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v1, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 1525
    .local v1, im_id:I
    const/16 v3, 0x11

    if-ne v3, v2, :cond_1

    if-ne v4, v1, :cond_1

    .line 1526
    sget v0, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_PORT_PANEL_HEIGHT:I

    .line 1534
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v3, :cond_0

    .line 1535
    const/4 v0, 0x0

    .line 1539
    .end local v1           #im_id:I
    .end local v2           #sip_id:I
    :cond_0
    sput v0, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    .line 1541
    return-void

    .line 1527
    .restart local v1       #im_id:I
    .restart local v2       #sip_id:I
    :cond_1
    const/16 v3, 0x9

    if-ne v3, v2, :cond_2

    if-ne v4, v1, :cond_2

    .line 1528
    sget v0, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_LAND_PANEL_HEIGHT:I

    goto :goto_0

    .line 1530
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v0, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    goto :goto_0
.end method

.method public reinitWCL()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2371
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2372
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2373
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->floatWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 2374
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 2375
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2380
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->predictWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 2381
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 2382
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setDragStatus(Z)V

    .line 2383
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2387
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2388
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->predictWCLListener:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 2389
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 2390
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setDragStatus(Z)V

    .line 2391
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWCLID(I)V

    .line 2394
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLException:Z

    .line 2396
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v0, :cond_3

    .line 2397
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    .line 2398
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2399
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2400
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2401
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v4, v0, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    .line 2403
    :cond_3
    return-void
.end method

.method public setHWKBSymSIP(Landroid/view/View;)V
    .locals 3
    .parameter "ContentView"

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    .line 894
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 895
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 896
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 897
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 899
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 900
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 902
    :cond_0
    return-void
.end method

.method public setMMSButtonEnabled()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v5, -0x777778

    const/high16 v6, -0x100

    .line 2525
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v7, :cond_0

    .line 2526
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMView;->mDisableSendBtn:Z

    if-eqz v7, :cond_2

    move v1, v3

    .line 2528
    .local v1, enabled:Z
    :goto_0
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getEnabled()Z

    move-result v7

    if-eq v1, v7, :cond_0

    .line 2529
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMView;->mDisableSendBtn:Z

    if-eqz v7, :cond_3

    move v2, v5

    .line 2530
    .local v2, textcolor:I
    :goto_1
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMView;->mDisableSendBtn:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 2532
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v7, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setEnabled(Z)V

    .line 2533
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v7, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextColor(I)V

    .line 2534
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v7, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 2538
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #enabled:Z
    .end local v2           #textcolor:I
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    if-eqz v7, :cond_1

    .line 2539
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMView;->mDisableAttachBtn:Z

    if-eqz v7, :cond_6

    move v1, v3

    .line 2541
    .restart local v1       #enabled:Z
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->getEnabled()Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 2542
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMView;->mDisableAttachBtn:Z

    if-eqz v3, :cond_7

    move v2, v5

    .line 2543
    .restart local v2       #textcolor:I
    :goto_4
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMView;->mDisableAttachBtn:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 2545
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :goto_5
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setEnabled(Z)V

    .line 2546
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setTextColor(I)V

    .line 2547
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;

    invoke-virtual {v3, v0}, Lcom/htc/android/htcime/ui/IMECustomizeButton;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 2550
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #enabled:Z
    .end local v2           #textcolor:I
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 2526
    goto :goto_0

    .restart local v1       #enabled:Z
    :cond_3
    move v2, v6

    .line 2529
    goto :goto_1

    .line 2530
    .restart local v2       #textcolor:I
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .end local v1           #enabled:Z
    .end local v2           #textcolor:I
    :cond_6
    move v1, v4

    .line 2539
    goto :goto_3

    .restart local v1       #enabled:Z
    :cond_7
    move v2, v6

    .line 2542
    goto :goto_4

    .line 2543
    .restart local v2       #textcolor:I
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public setMMSRemainText(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 2456
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2458
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2459
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMMSHintWindow()V

    .line 2469
    :goto_0
    return-void

    .line 2461
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2462
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2465
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2467
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->showMMSHintWindow()V

    goto :goto_0
.end method

.method public setMMSRemainText(Ljava/lang/String;I)V
    .locals 2
    .parameter "s"
    .parameter "color"

    .prologue
    .line 2472
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2475
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMMSHintWindow()V

    .line 2485
    :goto_0
    return-void

    .line 2477
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2478
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2479
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2481
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2483
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->showMMSHintWindow()V

    goto :goto_0
.end method

.method public setMMSRemainText(Ljava/lang/String;IF)V
    .locals 4
    .parameter "s"
    .parameter "color"
    .parameter "size"

    .prologue
    const/4 v3, 0x5

    const/high16 v2, 0x40a0

    .line 2488
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2517
    :goto_0
    return-void

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2494
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2495
    :cond_2
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMMSHintWindow()V

    goto :goto_0

    .line 2498
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 2499
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2501
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_4

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 2502
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mMMSRemain:Landroid/widget/TextView;

    div-float v1, p3, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2505
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->setMMSButtonEnabled()V

    goto :goto_0

    .line 2508
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2509
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2511
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    div-float v1, p3, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2512
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mLandHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2514
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->showMMSHintWindow()V

    goto :goto_0
.end method

.method public setSIPView(Landroid/view/View;)Z
    .locals 21
    .parameter "sip"

    .prologue
    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getChildCount()I

    move-result v17

    if-lez v17, :cond_0

    .line 774
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 775
    const/16 v17, 0x0

    .line 887
    .end local p1
    :goto_0
    return v17

    .line 778
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 779
    .local v15, sip_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    sget-object v17, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface/range {v17 .. v17}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v17

    move-object/from16 v0, v17

    iget v9, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 781
    .local v9, im_id:I
    const/16 v17, 0x11

    move/from16 v0, v17

    if-eq v0, v15, :cond_1

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v0, v15, :cond_7

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v9, :cond_7

    const/4 v7, 0x1

    .line 783
    .local v7, bIsHalfScreenPPSip:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->removeAllViews()V

    .line 784
    if-eqz p1, :cond_6

    .line 787
    if-eqz v7, :cond_2

    move-object/from16 v17, p1

    .line 789
    check-cast v17, Lcom/htc/android/htcime/Intf/IHandwritingSIP;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/htc/android/htcime/Intf/IHandwritingSIP;->setStrokeView(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V

    .line 795
    :cond_2
    :try_start_0
    sget-boolean v17, Lcom/htc/android/htcime/HTCIMMData;->mSupportMailBtnUponSIP:Z

    if-eqz v17, :cond_3

    sget-boolean v17, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v17, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getMailBtnView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 802
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->setOrientation(I)V

    .line 803
    const/16 v17, 0x1

    sput-boolean v17, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    .line 804
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 805
    .local v14, root:Landroid/widget/LinearLayout;
    const v17, 0x7f020023

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 807
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 808
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/HTCIMMView;->addView(Landroid/view/View;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMailBtnView()V

    .line 820
    .end local v14           #root:Landroid/widget/LinearLayout;
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 821
    const/16 v17, 0x11

    move/from16 v0, v17

    if-ne v0, v15, :cond_a

    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_PORT_PANEL_HEIGHT:I

    .line 823
    .local v12, nPanelHeight:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 824
    .local v16, winMgr:Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 826
    .local v8, display:Landroid/view/Display;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->setOrientation(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMMView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    move-object/from16 v0, p1

    check-cast v0, Lcom/htc/android/htcime/Intf/IHandwritingSIP;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v12}, Lcom/htc/android/htcime/Intf/IHandwritingSIP;->setPanelResolution(II)V

    .line 834
    .end local v8           #display:Landroid/view/Display;
    .end local v12           #nPanelHeight:I
    .end local v16           #winMgr:Landroid/view/WindowManager;
    :cond_4
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMMView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 839
    .local v13, nScreenWidth:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMView;->enableaHideHWSIP:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 842
    .local v11, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    if-eqz v7, :cond_b

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipWidth:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 853
    .end local v11           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 855
    check-cast p1, Lcom/htc/android/htcime/Intf/IHandwritingSIP;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lcom/htc/android/htcime/Intf/IHandwritingSIP;->getSeparateView()Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;

    move-result-object v5

    .line 856
    .local v5, SeparateVew:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;
    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->getPadHeight()I

    move-result v4

    .line 857
    .local v4, Height:I
    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->getPadWidth()I

    move-result v6

    .line 859
    .local v6, Width:I
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    .line 862
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/htc/android/htcime/HTCIMMView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 869
    .restart local v11       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v7, :cond_c

    .line 871
    neg-int v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 872
    sub-int v17, v13, v6

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v4           #Height:I
    .end local v5           #SeparateVew:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;
    .end local v6           #Width:I
    .end local v11           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #nScreenWidth:I
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->refreshIMMView()V

    .line 887
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 781
    .end local v7           #bIsHalfScreenPPSip:Z
    .restart local p1
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 812
    .restart local v7       #bIsHalfScreenPPSip:Z
    :cond_8
    const/16 v17, 0x0

    :try_start_1
    sput-boolean v17, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 881
    .end local p1
    :catch_0
    move-exception v10

    .line 882
    .local v10, ise:Ljava/lang/IllegalStateException;
    const-string v17, "HTCIMMView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setSIPView() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 815
    .end local v10           #ise:Ljava/lang/IllegalStateException;
    .restart local p1
    :cond_9
    const/16 v17, 0x0

    :try_start_2
    sput-boolean v17, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    goto/16 :goto_2

    .line 821
    :cond_a
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sSTROKE_VIEW_LAND_PANEL_HEIGHT:I

    goto/16 :goto_3

    .line 848
    .restart local v11       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #nScreenWidth:I
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_4

    .line 875
    .end local p1
    .restart local v4       #Height:I
    .restart local v5       #SeparateVew:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteSeparatePadView;
    .restart local v6       #Width:I
    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5
.end method

.method public setSIPVisibility(I)V
    .locals 6
    .parameter "visibility"

    .prologue
    const/4 v4, 0x0

    .line 2343
    const/4 v2, 0x0

    .line 2344
    .local v2, mSIP:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v5, :cond_1

    .line 2345
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .end local v2           #mSIP:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2349
    .restart local v2       #mSIP:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v3, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 2350
    .local v3, sip_id:I
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v5

    iget v1, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 2352
    .local v1, im_id:I
    const/16 v5, 0x11

    if-eq v5, v3, :cond_0

    const/16 v5, 0x9

    if-ne v5, v3, :cond_2

    :cond_0
    const/4 v5, 0x2

    if-ne v5, v1, :cond_2

    const/4 v0, 0x1

    .line 2355
    .local v0, bIsHalfScreenPPSip:Z
    :goto_0
    iget-boolean v5, p0, Lcom/htc/android/htcime/HTCIMMView;->enableaHideHWSIP:Z

    if-eqz v5, :cond_1

    .line 2356
    if-eqz v0, :cond_3

    .line 2357
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2362
    .end local v0           #bIsHalfScreenPPSip:Z
    .end local v1           #im_id:I
    .end local v3           #sip_id:I
    :cond_1
    :goto_1
    return-void

    .restart local v1       #im_id:I
    .restart local v3       #sip_id:I
    :cond_2
    move v0, v4

    .line 2352
    goto :goto_0

    .line 2359
    .restart local v0       #bIsHalfScreenPPSip:Z
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTwoLinesWCLSuggestions(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "idx"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setTwoLinesWCLSuggestions(Ljava/lang/String;I)V

    .line 744
    return-void
.end method

.method public setWCLButtonFocus(ZZZZ)V
    .locals 7
    .parameter "dropDownHasFocus"
    .parameter "fullAddWordHasFocus"
    .parameter "fullCancelHasFocus"
    .parameter "wclAddWordHasFocus"

    .prologue
    const v6, 0x7f02002d

    const v5, 0x7f02002a

    const/4 v4, 0x1

    .line 1994
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1995
    .local v1, r:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    packed-switch v2, :pswitch_data_0

    .line 2053
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1997
    :pswitch_1
    if-eqz p2, :cond_1

    .line 1998
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2004
    :goto_1
    if-eqz p3, :cond_2

    .line 2005
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2001
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2008
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullCloseBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2013
    :pswitch_2
    const/4 v0, 0x0

    .line 2014
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    iget v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    if-nez v2, :cond_4

    .line 2015
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2025
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 2028
    if-eqz p1, :cond_6

    .line 2029
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_0

    .line 2017
    :cond_4
    iget v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    if-ne v4, v2, :cond_5

    .line 2018
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    goto :goto_2

    .line 2020
    :cond_5
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    if-ne v2, v3, :cond_3

    .line 2021
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    goto :goto_2

    .line 2030
    :cond_6
    if-eqz p4, :cond_7

    .line 2031
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {v0, v4, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_0

    .line 2033
    :cond_7
    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButtonState([I)V

    goto :goto_0

    .line 1995
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setWCLSelByIndex_ID(I)V
    .locals 10
    .parameter "wcl_id"

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const v7, -0x777778

    const/4 v6, 0x0

    .line 2872
    if-lt p1, v5, :cond_1

    .line 2926
    :cond_0
    :goto_0
    return-void

    .line 2875
    :cond_1
    iget v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    if-ne v4, v5, :cond_6

    .line 2876
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/FullWCL;->getTotalVisibleCandPage()I

    move-result v0

    .line 2878
    .local v0, TotalPage:I
    const/4 v4, 0x2

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v4, :cond_3

    .line 2879
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ui/FullWCL;->setSelection(I)V

    .line 2884
    :goto_1
    if-lez v0, :cond_0

    .line 2885
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v2

    .line 2886
    .local v2, nFirstPageCanNum:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ui/FullWCL;->getPerPageCandNum(I)I

    move-result v3

    .line 2888
    .local v3, nLatestPageCanNum:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    if-lt v4, v2, :cond_4

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2889
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2890
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v9}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    .line 2897
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    if-lt v4, v3, :cond_5

    .line 2898
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2899
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    goto :goto_0

    .line 2881
    .end local v2           #nFirstPageCanNum:I
    .end local v3           #nLatestPageCanNum:I
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ui/FullWCL;->setSelection(I)V

    goto :goto_1

    .line 2892
    .restart local v2       #nFirstPageCanNum:I
    .restart local v3       #nLatestPageCanNum:I
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    if-ge v4, v2, :cond_2

    .line 2893
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2894
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    goto :goto_2

    .line 2901
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    if-ge v4, v3, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2902
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v8}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 2903
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v4, v9}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2909
    .end local v0           #TotalPage:I
    .end local v2           #nFirstPageCanNum:I
    .end local v3           #nLatestPageCanNum:I
    :cond_6
    const/4 v1, 0x0

    .line 2910
    .local v1, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    packed-switch p1, :pswitch_data_0

    .line 2924
    :goto_3
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSelection(I)V

    goto/16 :goto_0

    .line 2912
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2913
    goto :goto_3

    .line 2915
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2916
    goto :goto_3

    .line 2918
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2919
    goto :goto_3

    .line 2910
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWCLText()V
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->setWCLTextByID(I)V

    .line 630
    return-void
.end method

.method public setWCLTextByID(I)V
    .locals 6
    .parameter "wclID"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 648
    iput p1, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    .line 649
    iget v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    packed-switch v0, :pswitch_data_0

    .line 663
    packed-switch p1, :pswitch_data_1

    .line 739
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 655
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FullWCL;->setWCLID(I)V

    .line 657
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLButtonFocus(ZZZZ)V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(Ljava/lang/String;II)V

    goto :goto_0

    .line 665
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearText()V

    .line 668
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->hide()V

    .line 669
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto :goto_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 673
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getCandidateCount()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    if-ne v0, v3, :cond_4

    .line 675
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v4, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    .line 684
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->calWCLBarWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWidth(I)V

    .line 686
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 687
    iput v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto/16 :goto_0

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getCandidateCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 679
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v1, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    goto :goto_1

    .line 692
    :pswitch_3
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    .line 693
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 694
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearText()V

    .line 695
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->hide()V

    .line 696
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto/16 :goto_0

    .line 699
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 700
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    .line 702
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->calWCLBarWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWidth(I)V

    .line 704
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 705
    iput v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto/16 :goto_0

    .line 712
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 713
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 715
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    .line 720
    :goto_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->clearText()V

    .line 721
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->hide()V

    .line 722
    iput v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto/16 :goto_0

    .line 718
    :cond_8
    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    goto :goto_2

    .line 725
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setSuggestions(Ljava/lang/String;I)V

    .line 726
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setButton(Z[I)V

    .line 728
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->calWCLBarWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWidth(I)V

    .line 730
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 731
    iput v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    goto/16 :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 663
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setWCLText_ID(I)V
    .locals 0
    .parameter "wcl_id"

    .prologue
    .line 2933
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/HTCIMMView;->setWCLTextByID(I)V

    .line 2934
    return-void
.end method

.method public setWCLVisible(Z)V
    .locals 0
    .parameter "visibleFlag"

    .prologue
    .line 759
    return-void
.end method

.method public showFixedWCLSymbol()V
    .locals 1

    .prologue
    .line 1346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 1347
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->hide()V

    .line 1348
    return-void
.end method

.method public showFullWCL(I)V
    .locals 2
    .parameter "wclID"

    .prologue
    .line 3043
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->setPressAtBottomLine(Z)V

    .line 3045
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FullWCL;->setWCLID(I)V

    .line 3046
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/android/htcime/HTCIMMView;->handleWCLDropDown(Ljava/lang/String;II)V

    .line 3047
    return-void
.end method

.method public showFullWCL(Ljava/lang/String;II)V
    .locals 17
    .parameter "candidateString"
    .parameter "idx"
    .parameter "idWCL"

    .prologue
    .line 1647
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v12

    iget v9, v12, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 1649
    .local v9, sip_id:I
    const/4 v12, 0x7

    if-eq v12, v9, :cond_0

    const/16 v12, 0x11

    if-eq v12, v9, :cond_0

    const/16 v12, 0x15

    if-eq v12, v9, :cond_0

    const/16 v12, 0x16

    if-ne v12, v9, :cond_a

    :cond_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v12, v13, :cond_a

    const/4 v3, 0x1

    .line 1652
    .local v3, bIsPortHandWritingMode:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x3

    if-ge v9, v12, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    const/4 v12, 0x7

    if-lt v9, v12, :cond_b

    :cond_2
    const/4 v2, 0x1

    .line 1655
    .local v2, bISCPSIP:Z
    :goto_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMView;->mWCLID:I

    .line 1657
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->isExtractViewShown()Z

    move-result v5

    .line 1659
    .local v5, isExtractViewOn:Z
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v12, :cond_c

    sget v8, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    .line 1664
    .local v8, nFixWCLheight:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-nez v12, :cond_3

    if-eqz v2, :cond_d

    .line 1665
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    .line 1678
    :goto_3
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-nez v12, :cond_e

    .line 1679
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    .line 1691
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v12, :cond_5

    .line 1692
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 1694
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    if-nez v12, :cond_6

    .line 1697
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    .line 1699
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/HTCIMMView;->getLocationOnScreen([I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1704
    .local v7, manager:Landroid/view/WindowManager;
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x8

    if-ne v12, v13, :cond_11

    .line 1705
    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v12, :cond_f

    const/4 v12, 0x0

    :goto_5
    sub-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_10

    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    :goto_6
    sub-int v4, v13, v12

    .line 1721
    .local v4, height:I
    :goto_7
    const/16 v12, 0x15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v12, v13, :cond_18

    .line 1722
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v12, :cond_17

    .line 1723
    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    .line 1733
    :cond_7
    :goto_8
    const/4 v11, 0x0

    .line 1735
    .local v11, y:I
    const/16 v12, 0x15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v12, v13, :cond_1b

    .line 1736
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v12, :cond_1a

    .line 1737
    sget v12, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    add-int/2addr v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v11, v12

    .line 1765
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_29

    .line 1772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ui/FullWCL;->getPaddingLeft()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ui/FullWCL;->getPaddingTop()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/htc/android/htcime/ui/FullWCL;->setCandidateViewHeight(II)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/4 v13, -0x1

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1779
    if-eqz v3, :cond_27

    .line 1780
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sHWFullWCL_HEIGHT:I

    div-int v6, v4, v12

    .line 1781
    .local v6, line_count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v12, v6}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    .line 1787
    .end local v6           #line_count:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setLastLineWidth(I)V

    .line 1846
    :goto_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/htc/android/htcime/ui/FullWCL;->showWCL(I)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v14, 0x0

    move/from16 v0, p3

    invoke-interface {v13, v0, v14}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCount(IZ)I

    move-result v13

    iput v13, v12, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    .line 1851
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_30

    .line 1853
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->dismissFullWCL()V

    .line 1854
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    .line 1866
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v12

    iget v12, v12, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/htc/android/htcime/ui/FullWCL;->getFirstPageCandNum(I)I

    move-result v13

    if-gt v12, v13, :cond_9

    .line 1867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const v13, -0x777778

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const v13, -0x777778

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    .line 1873
    :cond_9
    return-void

    .line 1649
    .end local v2           #bISCPSIP:Z
    .end local v3           #bIsPortHandWritingMode:Z
    .end local v4           #height:I
    .end local v5           #isExtractViewOn:Z
    .end local v7           #manager:Landroid/view/WindowManager;
    .end local v8           #nFixWCLheight:I
    .end local v11           #y:I
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1652
    .restart local v3       #bIsPortHandWritingMode:Z
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1659
    .restart local v2       #bISCPSIP:Z
    .restart local v5       #isExtractViewOn:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1668
    .restart local v8       #nFixWCLheight:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/16 v13, 0xa

    const/4 v14, 0x0

    const/16 v15, 0xa

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyPadding(IIII)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 1682
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullPreviousBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const v13, -0x777778

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setEnabled(Z)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullNextBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpTextColor(I)V

    goto/16 :goto_4

    .line 1705
    .restart local v7       #manager:Landroid/view/WindowManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v12

    iget v12, v12, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    goto/16 :goto_5

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1707
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v12, :cond_12

    const/4 v12, 0x3

    if-ne v12, v9, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_13

    .line 1708
    :cond_12
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int v4, v12, v13

    .restart local v4       #height:I
    goto/16 :goto_7

    .line 1709
    .end local v4           #height:I
    :cond_13
    const/4 v12, 0x7

    if-ne v12, v9, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 1711
    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v12, :cond_14

    const/4 v12, 0x0

    :goto_d
    sub-int v12, v13, v12

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int v4, v12, v13

    .restart local v4       #height:I
    goto/16 :goto_7

    .end local v4           #height:I
    :cond_14
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    goto :goto_d

    .line 1713
    :cond_15
    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v12

    :goto_e
    add-int v4, v13, v12

    .restart local v4       #height:I
    goto/16 :goto_7

    .end local v4           #height:I
    :cond_16
    const/4 v12, 0x0

    goto :goto_e

    .line 1725
    .restart local v4       #height:I
    :cond_17
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    sub-int/2addr v12, v13

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int/2addr v12, v13

    sget v13, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    sub-int v4, v12, v13

    goto/16 :goto_8

    .line 1726
    :cond_18
    const/16 v12, 0x16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v12, v13, :cond_7

    .line 1727
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v12, :cond_19

    .line 1728
    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    goto/16 :goto_8

    .line 1730
    :cond_19
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int/2addr v12, v13

    sget v13, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    sub-int v4, v12, v13

    goto/16 :goto_8

    .line 1739
    .restart local v11       #y:I
    :cond_1a
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    add-int/2addr v12, v4

    sget v13, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    add-int/2addr v12, v13

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSIP_BOTTOM_EXTRA_GAP:I

    sub-int/2addr v12, v13

    neg-int v11, v12

    goto/16 :goto_9

    .line 1741
    :cond_1b
    const/16 v12, 0x16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    iget v13, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v12, v13, :cond_1d

    .line 1742
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v12, :cond_1c

    .line 1743
    sget v12, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    add-int/2addr v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v11, v12

    goto/16 :goto_9

    .line 1745
    :cond_1c
    sget v12, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sSMART_DIAL_TASK_BAR_HEIGHT:I

    add-int/2addr v12, v4

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sSIP_BOTTOM_EXTRA_GAP:I

    sub-int/2addr v12, v13

    neg-int v11, v12

    goto/16 :goto_9

    .line 1747
    :cond_1d
    const/4 v12, 0x3

    if-ne v12, v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1f

    .line 1749
    if-eqz v5, :cond_1e

    const/4 v11, 0x0

    :goto_f
    goto/16 :goto_9

    :cond_1e
    sget v12, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v11, v12, v13

    goto :goto_f

    .line 1750
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v12, :cond_20

    const/4 v12, 0x7

    if-ne v12, v9, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_23

    .line 1751
    :cond_20
    neg-int v12, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v10, v12, v13

    .line 1752
    .local v10, tmpY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v12, :cond_21

    const/4 v11, 0x0

    .line 1753
    :goto_10
    goto/16 :goto_9

    .line 1752
    :cond_21
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    if-eqz v12, :cond_22

    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sMail_Btn_Height:I

    add-int v11, v10, v12

    goto :goto_10

    :cond_22
    move v11, v10

    goto :goto_10

    .line 1754
    .end local v10           #tmpY:I
    :cond_23
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    if-eqz v12, :cond_25

    .line 1755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v13, 0x1

    aget v13, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v12

    sget v14, Lcom/htc/android/htcime/HTCIMMView;->sMail_Btn_Height:I

    sub-int/2addr v12, v14

    :goto_11
    sub-int v11, v13, v12

    goto/16 :goto_9

    :cond_24
    const/4 v12, 0x0

    goto :goto_11

    .line 1757
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v13, 0x1

    aget v13, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v12

    :goto_12
    sub-int v11, v13, v12

    goto/16 :goto_9

    :cond_26
    const/4 v12, 0x0

    goto :goto_12

    .line 1782
    :cond_27
    const/16 v12, 0xb

    if-ne v12, v9, :cond_28

    .line 1783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sFULL_ZY_WCL_VISIABLE_LINE:I

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto/16 :goto_a

    .line 1785
    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_VISIABLE_LINE:I

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto/16 :goto_a

    .line 1791
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ui/FullWCL;->getPaddingLeft()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v14}, Lcom/htc/android/htcime/ui/FullWCL;->getPaddingTop()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLBar:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/htc/android/htcime/ui/FullWCL;->setCandidateViewHeight(II)V

    .line 1796
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2d

    .line 1797
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v12, :cond_2b

    .line 1798
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    .line 1840
    :goto_13
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-nez v12, :cond_2a

    .line 1841
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_BTN_HEIGHT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/android/htcime/HTCIMMView;->AdjustFullWCLBtn(I)V

    .line 1843
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setLastLineWidth(I)V

    goto/16 :goto_b

    .line 1801
    :cond_2b
    const/4 v12, 0x3

    if-ne v12, v9, :cond_2c

    .line 1802
    sget v12, Lcom/htc/android/htcime/HTCIMMView;->sHWFullWCL_HEIGHT:I

    div-int v6, v4, v12

    .line 1803
    .restart local v6       #line_count:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    invoke-virtual {v12, v6}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto :goto_13

    .line 1805
    .end local v6           #line_count:I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto :goto_13

    .line 1808
    :cond_2d
    sget-short v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v13, 0xc

    if-ne v12, v13, :cond_2e

    .line 1810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto :goto_13

    .line 1822
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->isHWRSip()Z

    move-result v12

    if-eqz v12, :cond_2f

    .line 1823
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_HWR_VISIABLE_LINE:I

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto :goto_13

    .line 1825
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCL:Lcom/htc/android/htcime/ui/FullWCL;

    sget v13, Lcom/htc/android/htcime/HTCIMMView;->sFULL_WCL_LAND_VISIABLE_LINE:I

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/ui/FullWCL;->setVisiableLineCount(I)V

    goto :goto_13

    .line 1857
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMMView;->mFullWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_31

    .line 1858
    const/4 v12, 0x0

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v13, v4}, Lcom/htc/android/htcime/HTCIMMView;->updateFullWCL(IIII)V

    goto/16 :goto_c

    .line 1861
    :cond_31
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13, v11}, Lcom/htc/android/htcime/HTCIMMView;->showFullWCL(Landroid/view/View;III)V

    .line 1862
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sput-wide v12, Lcom/htc/android/htcime/HTCIMMData;->WCL_Show_Time:J

    goto/16 :goto_c
.end method

.method public showHWKBSymSip()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 906
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 912
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    instance-of v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0, p0, v4, v4, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 920
    :cond_2
    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 921
    iput v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 922
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    instance-of v0, v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v0, Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    .line 924
    :cond_3
    return-void
.end method

.method public showIMMView(Z)V
    .locals 23
    .parameter "sipChanged"

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 313
    .local v22, winMgr:Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 314
    .local v15, display:Landroid/view/Display;
    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    .line 315
    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    move/from16 v21, v0

    .line 318
    .local v21, sip_id:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    move/from16 v16, v0

    .line 320
    .local v16, im_id:I
    const/16 v1, 0x11

    move/from16 v0, v21

    if-eq v1, v0, :cond_0

    const/16 v1, 0x9

    move/from16 v0, v21

    if-ne v1, v0, :cond_8

    :cond_0
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v1, v0, :cond_8

    const/4 v14, 0x1

    .line 324
    .local v14, bIsHalfScreenPPSip:Z
    :goto_0
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v1, :cond_1

    .line 325
    const-string v1, "30"

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    move/from16 v20, v0

    .line 329
    .local v20, sipHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 330
    const/4 v1, 0x3

    const/4 v2, 0x3

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    move/from16 v0, v20

    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchArea(IIIII)V

    .line 338
    .end local v20           #sipHeight:I
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->dismissFullWCL()V

    .line 339
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-nez v1, :cond_a

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 348
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 356
    .local v19, r:Landroid/content/res/Resources;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    .line 357
    .local v17, mISZH:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v1, :cond_2

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 360
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->dismiss()V

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 365
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 371
    if-eqz v14, :cond_b

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setVisibility(I)V

    .line 377
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->setVisibility(I)V

    .line 382
    :cond_3
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v1, :cond_5

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMMData;->getSIPNameByIHTCSIP(ILcom/htc/android/htcime/Intf/IHTCSIP;)Ljava/lang/String;

    move-result-object v18

    .line 385
    .local v18, newSIPName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v1, :cond_5

    .line 386
    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    if-nez v1, :cond_c

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mIMEUsage_start:J

    .line 400
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, v18

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    .line 404
    .end local v18           #newSIPName:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMView;->sIMMVisible:Z

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->refreshIMMView()V

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    .line 419
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_6

    .line 422
    new-instance v1, Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    const v4, 0x7f020012

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_12

    const/16 v3, 0x82

    :goto_5
    int-to-float v3, v3

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v6, v3

    if-eqz v17, :cond_13

    const v3, 0x7f0a0055

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v8, 0x0

    const v3, 0x7f090042

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v13}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialBuuble:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/htc/android/htcime/HTCIMMView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/android/htcime/HTCIMMView$1;-><init>(Lcom/htc/android/htcime/HTCIMMView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getTipInstance()Lcom/htc/android/htcime/tutorial/TipSystem;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tutorial/TipSystem;->getTipStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_14

    .line 458
    :cond_7
    :goto_7
    return-void

    .line 320
    .end local v14           #bIsHalfScreenPPSip:Z
    .end local v17           #mISZH:Z
    .end local v19           #r:Landroid/content/res/Resources;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 333
    .restart local v14       #bIsHalfScreenPPSip:Z
    .restart local v20       #sipHeight:I
    :cond_9
    const/4 v1, 0x0

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sub-int v3, v3, v20

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchArea(IIIII)V

    goto/16 :goto_1

    .line 346
    .end local v20           #sipHeight:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    goto/16 :goto_2

    .line 374
    .restart local v17       #mISZH:Z
    .restart local v19       #r:Landroid/content/res/Resources;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mStrokeView:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->setVisibility(I)V

    goto/16 :goto_3

    .line 389
    .restart local v18       #newSIPName:Ljava/lang/String;
    :cond_c
    const-string v1, "SYMBOL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_4

    .line 391
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    const-string v2, "SIP_LAND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "SIP_PORT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    const-string v2, "SIP_PORT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "SIP_LAND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    const-string v2, "SIP_PORT_PP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "SIP_PORT_PP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->writeSIPUsageDurationLog()V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPrevSIPName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMMData;->isCIMESIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMData;->writeCIMESIPUsageDurationLog()V

    .line 397
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mIMEUsage_start:J

    goto/16 :goto_4

    .line 422
    .end local v18           #newSIPName:Ljava/lang/String;
    :cond_12
    const/16 v3, 0x13

    goto/16 :goto_5

    :cond_13
    const v3, 0x7f0a0054

    goto/16 :goto_6

    .line 453
    :cond_14
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/HTCIMMView;->mTutorialHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7
.end method

.method public showMailBtnPopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3166
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->hideMailBtnView()V

    .line 3168
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_1

    .line 3169
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    .line 3170
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3171
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3173
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMMView;->getMailBtnView()Landroid/view/View;

    move-result-object v2

    .line 3175
    .local v2, mailbtnview:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3176
    .local v0, container:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3178
    const v3, 0x7f020023

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3179
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3180
    invoke-virtual {v0, v6, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 3182
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3183
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3186
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v2           #mailbtnview:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3187
    .restart local v0       #container:Landroid/widget/LinearLayout;
    .restart local v2       #mailbtnview:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 3188
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HTCIMMView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3191
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #mailbtnview:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3193
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3194
    :catch_1
    move-exception v1

    .line 3195
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "HTCIMMView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showWCLBar(I)V
    .locals 12
    .parameter "wcl_id"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1356
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->getWidth()I

    move-result v6

    .line 1357
    .local v6, width:I
    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v9, v11, :cond_8

    sget v3, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 1358
    .local v3, height:I
    :goto_0
    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v9}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v9

    iget v4, v9, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 1359
    .local v4, sip_id:I
    const/4 v1, 0x0

    .local v1, Y:I
    const/4 v7, 0x0

    .line 1360
    .local v7, y2:I
    const/4 v0, 0x0

    .line 1361
    .local v0, X:I
    const/4 v2, 0x0

    .line 1362
    .local v2, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    packed-switch p1, :pswitch_data_0

    .line 1380
    :goto_1
    const/4 v8, 0x3

    if-ne v8, v4, :cond_0

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v8, v11, :cond_0

    if-eqz v2, :cond_0

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_DPADSupport:Z

    if-eqz v8, :cond_0

    .line 1383
    sget v8, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_WIDTH_WITH_DPAD:I

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v0, v8, 0x2

    .line 1384
    sget v8, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_WIDTH_WITH_DPAD:I

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getPaddingSpace()I

    move-result v9

    add-int v6, v8, v9

    .line 1387
    :cond_0
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    sput v8, Lcom/htc/android/htcime/HTCIMMView;->sMail_Btn_Height:I

    .line 1389
    :cond_1
    if-eqz v2, :cond_7

    .line 1391
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mShowMailBtnUponSIP:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->showMailBtnPopup()V

    .line 1393
    :cond_2
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isDragged()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1394
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/HTCIMMView;->calWCLPositionY(I)I

    move-result v1

    .line 1395
    sub-int/2addr v1, v7

    .line 1398
    iget v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    sget v9, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    add-int/2addr v8, v9

    sub-int v1, v8, v3

    .line 1399
    :cond_3
    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWindowPositionY(I)V

    .line 1403
    :cond_4
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->calWCLBarWidth()I

    move-result v5

    .line 1404
    .local v5, tmpW:I
    if-lez v5, :cond_5

    .line 1405
    move v6, v5

    .line 1410
    :cond_5
    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setCandidateHeight(I)V

    .line 1412
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1413
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v8

    invoke-virtual {v2, v0, v8, v6, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateWCL(IIII)V

    .line 1427
    :cond_6
    :goto_2
    iput v10, p0, Lcom/htc/android/htcime/HTCIMMView;->mWCLMode:I

    .line 1429
    .end local v5           #tmpW:I
    :cond_7
    return-void

    .line 1357
    .end local v0           #X:I
    .end local v1           #Y:I
    .end local v2           #cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    .end local v3           #height:I
    .end local v4           #sip_id:I
    .end local v7           #y2:I
    :cond_8
    sget v3, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    goto :goto_0

    .line 1364
    .restart local v0       #X:I
    .restart local v1       #Y:I
    .restart local v2       #cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    .restart local v3       #height:I
    .restart local v4       #sip_id:I
    .restart local v7       #y2:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1365
    goto :goto_1

    .line 1367
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1368
    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowingAndVisible()Z

    move-result v9

    if-ne v9, v10, :cond_9

    move v7, v3

    .line 1369
    :goto_3
    goto :goto_1

    :cond_9
    move v7, v8

    .line 1368
    goto :goto_3

    .line 1371
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 1372
    sget v3, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 1373
    iput v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mCurrPos_2lineWCL:I

    goto/16 :goto_1

    .line 1415
    .restart local v5       #tmpW:I
    :cond_a
    invoke-virtual {v2, v3, v6}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setDimension(II)V

    .line 1416
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v8

    invoke-virtual {v2, v0, v8}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->showWindow(II)V

    .line 1417
    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getException()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1418
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v8, :cond_b

    .line 1419
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMMView;->reinitWCL()V

    .line 1420
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v8}, Lcom/htc/android/htcime/HTCIMEService;->relaunchFixedWCLView()V

    goto :goto_2

    .line 1422
    :cond_b
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v10, v8, Lcom/htc/android/htcime/HTCIMMData;->mWCLException:Z

    goto :goto_2

    .line 1362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateCustomizedWCLPos(ZII)V
    .locals 0
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1501
    iput-boolean p1, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedWCLPos:Z

    .line 1502
    iput p3, p0, Lcom/htc/android/htcime/HTCIMMView;->mCustomizedY:I

    .line 1503
    return-void
.end method

.method public updateOffset(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mFloatWCLY:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public updateWCLRightSpace(I)V
    .locals 1
    .parameter "w"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    if-eqz v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 2580
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    if-eqz v0, :cond_1

    .line 2584
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 2585
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    if-eqz v0, :cond_2

    .line 2589
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updatemRSpaceReserve(I)V

    .line 2590
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateDimension()V

    .line 2593
    :cond_2
    return-void
.end method

.method public updateWCLWin(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "offset"

    .prologue
    .line 1465
    return-void
.end method

.method public updateWCLWin_ID(II)V
    .locals 11
    .parameter "wcl_id"
    .parameter "offset"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 2816
    const/4 v0, 0x0

    .line 2817
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v5

    iget v1, v5, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 2818
    .local v1, im_id:I
    const/4 v2, 0x0

    .line 2819
    .local v2, nBottomThreshold:I
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v5, v6, :cond_5

    sget v3, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 2820
    .local v3, nHeightWCL:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2835
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2836
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v5, :cond_0

    .line 2837
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 2839
    :cond_0
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 2841
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    if-nez v5, :cond_1

    .line 2842
    new-array v5, v6, [I

    iput-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    .line 2844
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMMView;->getLocationOnScreen([I)V

    .line 2846
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v4

    .line 2847
    .local v4, y:I
    add-int/2addr v4, p2

    .line 2850
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v5, :cond_2

    if-ne v6, v1, :cond_2

    .line 2851
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v2, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 2853
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v8

    sub-int v5, v4, v5

    sget v6, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    add-int/lit8 v6, v6, 0xf

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    .line 2854
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    sget v6, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v6, v6, v8

    add-int v4, v5, v6

    .line 2858
    :cond_3
    :goto_2
    invoke-virtual {v0, v4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWindowPositionY(I)V

    .line 2861
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->calWCLBarWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWidth(I)V

    .line 2863
    invoke-virtual {v0, v9, v4, v10, v10}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateWCL(IIII)V

    .line 2865
    .end local v4           #y:I
    :cond_4
    return-void

    .line 2819
    .end local v3           #nHeightWCL:I
    :cond_5
    sget v3, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    goto :goto_0

    .line 2822
    .restart local v3       #nHeightWCL:I
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2823
    goto :goto_1

    .line 2825
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2826
    goto :goto_1

    .line 2828
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2829
    sget v3, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 2830
    goto :goto_1

    .line 2855
    .restart local v4       #y:I
    :cond_6
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v8

    sub-int v5, v4, v5

    neg-int v6, v3

    add-int/lit8 v6, v6, -0xf

    if-le v5, v6, :cond_3

    .line 2856
    neg-int v5, v3

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    add-int v4, v5, v2

    goto :goto_2

    .line 2820
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateWCLWin_ID(III)V
    .locals 7
    .parameter "wcl_id"
    .parameter "origSIPHeight"
    .parameter "newSIPHeight"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 2732
    const/4 v0, 0x0

    .line 2733
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v5, :cond_1

    sget v2, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 2734
    .local v2, nHeightWCL:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2749
    :goto_1
    if-nez v0, :cond_2

    .line 2775
    :cond_0
    :goto_2
    return-void

    .line 2733
    .end local v2           #nHeightWCL:I
    :cond_1
    sget v2, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    goto :goto_0

    .line 2736
    .restart local v2       #nHeightWCL:I
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2737
    goto :goto_1

    .line 2739
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2740
    goto :goto_1

    .line 2742
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2743
    sget v2, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 2744
    goto :goto_1

    .line 2751
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isDragged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2754
    sub-int v1, p3, p2

    .line 2755
    .local v1, heightDiff:I
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v3

    .line 2756
    .local v3, y:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v4, :cond_3

    .line 2757
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 2759
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 2761
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    if-nez v4, :cond_4

    .line 2762
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    .line 2764
    :cond_4
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetOnScreen:[I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getLocationOnScreen([I)V

    .line 2766
    rsub-int/lit8 v4, v2, 0x0

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v6

    add-int/2addr v4, v5

    if-eq v3, v4, :cond_5

    .line 2767
    add-int/2addr v3, v1

    .line 2771
    :cond_5
    neg-int v4, v2

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v6

    add-int/2addr v4, v5

    if-le v3, v4, :cond_6

    .line 2772
    neg-int v4, v2

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v6

    add-int v3, v4, v5

    .line 2774
    :cond_6
    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWindowPositionY(I)V

    goto :goto_2

    .line 2734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateWCLWin_ID(IIII)V
    .locals 9
    .parameter "wcl_id"
    .parameter "x"
    .parameter "y"
    .parameter "offset"

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2778
    const/4 v0, 0x0

    .line 2779
    .local v0, cv:Lcom/htc/android/htcime/ui/CandidateViewWindow;
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v5, :cond_2

    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sLAND_WCL_HEIGHT:I

    .line 2780
    .local v1, nHeightWCL:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2795
    :goto_1
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 2796
    sub-int v3, p3, p4

    .line 2798
    .local v3, wcl_tp:I
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    if-nez v4, :cond_0

    .line 2799
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    .line 2801
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 2802
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->getWindowPositionY()I

    move-result v2

    .line 2804
    .local v2, py:I
    sget v4, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    add-int/lit8 v4, v4, 0xf

    if-ge v3, v4, :cond_3

    .line 2805
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v4

    sget v5, Lcom/htc/android/htcime/HTCIMMView;->sSTATUS_BAR_HEIGHT:I

    sub-int/2addr v4, v5

    neg-int v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int v2, v4, v5

    .line 2810
    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setWindowPositionY(I)V

    .line 2811
    invoke-virtual {v0, p2, v2, v8, v8}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->updateWCL(IIII)V

    .line 2813
    .end local v2           #py:I
    .end local v3           #wcl_tp:I
    :cond_1
    return-void

    .line 2779
    .end local v1           #nHeightWCL:I
    :cond_2
    sget v1, Lcom/htc/android/htcime/HTCIMMView;->sWCL_HEIGHT:I

    goto :goto_0

    .line 2782
    .restart local v1       #nHeightWCL:I
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mCVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2783
    goto :goto_1

    .line 2785
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->mNWP_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2786
    goto :goto_1

    .line 2788
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView;->m2LINES_CVW:Lcom/htc/android/htcime/ui/CandidateViewWindow;

    .line 2789
    sget v1, Lcom/htc/android/htcime/HTCIMMView;->s2LinesWCL_HEIGHT:I

    .line 2790
    goto :goto_1

    .line 2806
    .restart local v2       #py:I
    .restart local v3       #wcl_tp:I
    :cond_3
    add-int v4, v3, v1

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 2807
    rsub-int/lit8 v4, v1, 0x0

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int v2, v4, v5

    goto :goto_2

    .line 2809
    :cond_4
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/HTCIMMView;->getSIPPosY(I)I

    move-result v4

    sub-int v4, v2, v4

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMMView;->mOffsetInWindow:[I

    aget v5, v5, v7

    add-int v2, v4, v5

    goto :goto_2

    .line 2780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
