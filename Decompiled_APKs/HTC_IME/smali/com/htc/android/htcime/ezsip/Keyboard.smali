.class public Lcom/htc/android/htcime/ezsip/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;,
        Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    }
.end annotation


# static fields
.field private static final ATTR_ACCENT_PAGE:Ljava/lang/String; = "accentPage"

.field private static final ATTR_BOTTOM_EDGE:Ljava/lang/String; = "bottomEdge"

.field private static final ATTR_CJ_KEY_BACKGROUND:Ljava/lang/String; = "CJKeyBackground"

.field private static final ATTR_CLOSE_KEY_BACKGROUND:Ljava/lang/String; = "closeKeyBackground"

.field private static final ATTR_CODES:Ljava/lang/String; = "codes"

.field private static final ATTR_COMMON_KEY_BACKGROUND:Ljava/lang/String; = "commonKeyBackground"

.field private static final ATTR_DISABLE_PREVIEW:Ljava/lang/String; = "disablePreview"

.field private static final ATTR_ENABLE:Ljava/lang/String; = "enable"

.field private static final ATTR_FEEDBACK_BG:Ljava/lang/String; = "feedbackBG"

.field private static final ATTR_FUNCTION:Ljava/lang/String; = "function"

.field private static final ATTR_FUNCTION_KEY_BACKGROUND:Ljava/lang/String; = "functionKeyBackground"

.field private static final ATTR_GROUP_SET:Ljava/lang/String; = "grouped"

.field private static final ATTR_HEIGHT:Ljava/lang/String; = "height"

.field private static final ATTR_HGAP:Ljava/lang/String; = "hgap"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ICONSOURCE:Ljava/lang/String; = "iconsource"

.field private static final ATTR_ICON_PREVIEW:Ljava/lang/String; = "iconPreview"

.field private static final ATTR_ICON_PREVIEWSOURCE:Ljava/lang/String; = "iconPreviewsource"

.field private static final ATTR_IS_POPUPWIN_SIP:Ljava/lang/String; = "isPopupWinSIP"

.field private static final ATTR_KEYBG:Ljava/lang/String; = "KeyBG"

.field private static final ATTR_KEYBOARD_BACKGROUND:Ljava/lang/String; = "keyboardBackground"

.field private static final ATTR_KEYBOARD_PADDING:Ljava/lang/String; = "keyboardPadding"

.field private static final ATTR_KEY_ICON_OFFSETY:Ljava/lang/String; = "iconOffsetY"

.field private static final ATTR_KEY_LABLE_OFFSETX:Ljava/lang/String; = "labelOffsetX"

.field private static final ATTR_KEY_LABLE_OFFSETY:Ljava/lang/String; = "labelOffsetY"

.field private static final ATTR_KEY_TEXT_SIZE:Ljava/lang/String; = "keyTextSize"

.field private static final ATTR_KEY_TEXT_YOFFSET:Ljava/lang/String; = "keyTextYOffset"

.field private static final ATTR_KEY_TOP_LABLE_OFFSETX:Ljava/lang/String; = "toplabelOffsetX"

.field private static final ATTR_KEY_TOP_LABLE_OFFSETY:Ljava/lang/String; = "toplabelOffsetY"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_LABELSOURCE:Ljava/lang/String; = "labelsource"

.field private static final ATTR_LANG_SWITCH_KEY_BACKGROUND:Ljava/lang/String; = "langKeyBackground"

.field private static final ATTR_LEFT_EDGE:Ljava/lang/String; = "leftEdge"

.field private static final ATTR_LONGPRESS_PREVIEW:Ljava/lang/String; = "longpressPreview"

.field private static final ATTR_MODIFIER:Ljava/lang/String; = "modifier"

.field private static final ATTR_MULTICHARS:Ljava/lang/String; = "multichars"

.field private static final ATTR_PAGE_KEY_BACKGROUND:Ljava/lang/String; = "pageKeyBackground"

.field private static final ATTR_POPUP:Ljava/lang/String; = "popup"

.field private static final ATTR_POPUP_ACCENTTYPE:Ljava/lang/String; = "accentType"

.field private static final ATTR_POPUP_ALIGNINDEX:Ljava/lang/String; = "alignIndex"

.field private static final ATTR_POPUP_CHARS:Ljava/lang/String; = "popupCharacters"

.field private static final ATTR_POPUP_DELAY:Ljava/lang/String; = "popupDelay"

.field private static final ATTR_POPUP_TEXT_SIZE:Ljava/lang/String; = "popupTextSize"

.field private static final ATTR_PREVIEW_TOP_LEVEL:Ljava/lang/String; = "previewTopLevel"

.field private static final ATTR_REDRAW_FEEDBACKBG:Ljava/lang/String; = "redrawFeedbackBG"

.field private static final ATTR_REPEATABLE:Ljava/lang/String; = "repeatable"

.field private static final ATTR_RIGHT_EDGE:Ljava/lang/String; = "rightEdge"

.field private static final ATTR_SHOW_PREVIEW:Ljava/lang/String; = "showPreview"

.field private static final ATTR_SIPFEEDBACKBG:Ljava/lang/String; = "sipFeedbackBG"

.field private static final ATTR_SIPFUNCFEEDBACKBG:Ljava/lang/String; = "sipFuncFeedbackBG"

.field private static final ATTR_SPELL_KEY_BACKGROUND:Ljava/lang/String; = "spellKeyBackground"

.field private static final ATTR_SPLITLABEL:Ljava/lang/String; = "SplitLabel"

.field private static final ATTR_SPLIT_KEY_BACKGROUND:Ljava/lang/String; = "splitKeyBackground"

.field private static final ATTR_SPLIT_LEFT:Ljava/lang/String; = "splitLeft"

.field private static final ATTR_SPLIT_RIGHT:Ljava/lang/String; = "splitRight"

.field private static final ATTR_SPLIT_SET:Ljava/lang/String; = "splitSet"

.field private static final ATTR_STICKY:Ljava/lang/String; = "sticky"

.field private static final ATTR_T9_KEY_BACKGROUND:Ljava/lang/String; = "t9KeyBackground"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_SCALE:Ljava/lang/String; = "textScale"

.field private static final ATTR_TOP_EDGE:Ljava/lang/String; = "topEdge"

.field private static final ATTR_TOP_ICON_YOFFSET:Ljava/lang/String; = "topIconYOffset"

.field private static final ATTR_TOP_LABEL:Ljava/lang/String; = "topLabel"

.field private static final ATTR_TOP_LABEL_TEXT_SIZE:Ljava/lang/String; = "topLabelTextSize"

.field private static final ATTR_TOP_LABEL_TEXT_TYPE:Ljava/lang/String; = "topLabelTextType"

.field private static final ATTR_TOP_LABEL_TEXT_XOFFSET:Ljava/lang/String; = "topLabelTextXOffset"

.field private static final ATTR_TOP_LABEL_TEXT_YOFFSET:Ljava/lang/String; = "topLabelTextYOffset"

.field private static final ATTR_TOTAL_PAGES:Ljava/lang/String; = "totalPages"

.field private static final ATTR_TOTAL_ROWS:Ljava/lang/String; = "totalRows"

.field private static final ATTR_VGAP:Ljava/lang/String; = "vgap"

.field private static final ATTR_WIDTH:Ljava/lang/String; = "width"

.field private static final ATTR_WIDTH_KEY_BACKGROUND:Ljava/lang/String; = "SymWidthKeyBackground"

.field private static final ATTR_XT9_IDX_MAP:Ljava/lang/String; = "xt9idx"

.field protected static final DUMPLOG:Z = false

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field public static final FEEDBACKBG:[I = null

.field public static final KEYCODE_ABC_SIP:I = -0xb

.field public static final KEYCODE_ACCENT:I = -0xe

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_ARROW_DOWN:I = -0x13

.field public static final KEYCODE_ARROW_LEFT:I = -0x14

.field public static final KEYCODE_ARROW_RIGHT:I = -0x15

.field public static final KEYCODE_ARROW_UP:I = -0x12

.field public static final KEYCODE_ASTERISK:I = 0x2a

.field public static final KEYCODE_AT:I = 0x40

.field public static final KEYCODE_BACKSLASH:I = 0x5c

.field public static final KEYCODE_BPMF_DIPPING:I = 0xef

.field public static final KEYCODE_BPMF_FALLING:I = 0xf0

.field public static final KEYCODE_BPMF_RISING:I = 0xee

.field public static final KEYCODE_BPMF_SOFTMUTE:I = 0xf1

.field public static final KEYCODE_CANGJIE_MODE:I = -0x38

.field public static final KEYCODE_CAPS:I = -0x16

.field public static final KEYCODE_CLOSE_SIP:I = -0x4

.field public static final KEYCODE_COLON:I = 0x3a

.field public static final KEYCODE_COMMA:I = 0x2c

.field public static final KEYCODE_DELETE:I = 0x8

.field public static final KEYCODE_DOTCOM:I = -0x7

.field public static final KEYCODE_EMOTION:I = -0xd

.field public static final KEYCODE_ENG_SIP:I = -0x9

.field public static final KEYCODE_ENG_SIP_NOLP:I = -0x8

.field public static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_EQUALS:I = 0x3d

.field public static final KEYCODE_EXCLAMATION:I = 0x21

.field public static final KEYCODE_FH_COMMA:I = 0xff0c

.field public static final KEYCODE_FH_ELLIPSIS:I = 0x2026

.field public static final KEYCODE_FH_EXCLAMATION:I = 0xff01

.field public static final KEYCODE_FH_PERIOD:I = 0x3002

.field public static final KEYCODE_FH_QUESTION:I = 0xff1f

.field public static final KEYCODE_GLOBAL_LANG_SWITCH:I = -0x10

.field public static final KEYCODE_HONZ_PAGE:I = -0x11

.field public static final KEYCODE_HWKB_SYM_SIP:I = -0x1b

.field public static final KEYCODE_HWR_CONTINUOUS_EN_NUM:I = -0x3b

.field public static final KEYCODE_HWR_SCREEN_SWITCH:I = -0x3a

.field public static final KEYCODE_KEYBOARD_TAB:I = -0x1a

.field public static final KEYCODE_KEYBOARD_TYPE_SWITCH:I = -0x19

.field public static final KEYCODE_LANG_N_VOICE:I = -0x18

.field public static final KEYCODE_LANG_SWITCH:I = -0xf

.field public static final KEYCODE_L_SQUAREBRACKE:I = 0x5b

.field public static final KEYCODE_MINUS:I = 0x2d

.field public static final KEYCODE_NOT_A_KEY:I = -0x62

.field public static final KEYCODE_PAGE:I = -0xc

.field public static final KEYCODE_PERIOD:I = 0x2e

.field public static final KEYCODE_PHONE_PAUSE:I = -0x9

.field public static final KEYCODE_PHONE_WAIT:I = -0xa

.field public static final KEYCODE_PHON_LIST_CAND1:I = 0xf2

.field public static final KEYCODE_PHON_LIST_CAND2:I = 0xf3

.field public static final KEYCODE_PHON_LIST_CAND3:I = 0xf4

.field public static final KEYCODE_PHON_LIST_DOWN:I = 0xf5

.field public static final KEYCODE_PHON_LIST_UP:I = 0xf6

.field public static final KEYCODE_PLUS:I = 0x2b

.field public static final KEYCODE_PY_SEPARATOR:I = 0xef

.field public static final KEYCODE_QUESTION:I = 0x3f

.field public static final KEYCODE_QUOTE:I = 0x27

.field public static final KEYCODE_REMOVE_KEY:I = -0x63

.field public static final KEYCODE_R_SQUAREBRACKE:I = 0x5d

.field public static final KEYCODE_SEMICOLON:I = 0x3b

.field public static final KEYCODE_SETTINGS:I = -0x3

.field public static final KEYCODE_SHIFT:I = -0x1

.field public static final KEYCODE_SLASH:I = 0x2f

.field public static final KEYCODE_SPACE:I = 0x20

.field public static final KEYCODE_STROKE1:I = 0x31

.field public static final KEYCODE_STROKE2:I = 0x32

.field public static final KEYCODE_STROKE3:I = 0x33

.field public static final KEYCODE_STROKE4:I = 0x34

.field public static final KEYCODE_STROKE5:I = 0x35

.field public static final KEYCODE_STROKE_WILDCHAR:I = -0x39

.field public static final KEYCODE_SYMB_EMOTICON:I = -0x35

.field public static final KEYCODE_SYMB_LIST_DOWN:I = -0x40

.field public static final KEYCODE_SYMB_LIST_UP:I = -0x3f

.field public static final KEYCODE_SYMB_MATH:I = -0x34

.field public static final KEYCODE_SYMB_MULTICHAR:I = -0x3e

.field public static final KEYCODE_SYMB_NUM:I = -0x33

.field public static final KEYCODE_SYMB_OTHER:I = -0x36

.field public static final KEYCODE_SYMB_PUNCTUATION:I = -0x3d

.field public static final KEYCODE_SYMB_WIDTH:I = -0x37

.field public static final KEYCODE_SYM_SIP:I = -0x2

.field public static final KEYCODE_T9:I = -0x8

.field public static final KEYCODE_UNDERLINE:I = 0x5f

.field public static final KEYCODE_VOICEINPUT:I = -0x17

.field private static final PREF_TALL_KEYBOARD:Ljava/lang/String; = "tall_keyboard"

.field public static final SPACE_EMAIL:I = 0x3

.field public static final SPACE_NORMAL:I = 0x1

.field public static final SPACE_URL:I = 0x2

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "row"

.field static final packageName:Ljava/lang/String; = "com.htc.android.htcime"

.field private static popupTopLebelColor:Landroid/text/style/ForegroundColorSpan;

.field private static popupTopLebelSize:Landroid/text/style/RelativeSizeSpan;

.field public static sBottomGap:I

.field public static sKDB_GridSize:I

.field public static sKDB_LandRgnRadius:I

.field public static sKDB_PortRgnRadius:I

.field public static sPOPUP_ENLARGE_BOARDER:I


# instance fields
.field public fullInvalidate:Z

.field public mAccentPage:I

.field protected mArrowKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field protected mCJModeKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mCapsKeyIndex:I

.field protected mChineseModeKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCloseKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCommaKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mCommonKeyDrawable:Landroid/graphics/drawable/Drawable;

.field public mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mContinusInputKeyDrawable:Landroid/graphics/drawable/Drawable;

.field public mCountPerRow:[I

.field public mDefKeyWidthLower:I

.field public mDefKeyWidthUpper:I

.field public mDefPopupWidth:I

.field protected mDefalultTopIconYOffset:I

.field protected mDefaultHeight:I

.field protected mDefaultHorizontalGap:I

.field protected mDefaultKeyTextSize:I

.field protected mDefaultKeyTextYOffset:I

.field protected mDefaultPopupTextSize:I

.field protected mDefaultPreviewTopLevel:Z

.field protected mDefaultTopLevelTextSize:I

.field protected mDefaultTopLevelTextXOffset:I

.field protected mDefaultTopLevelTextYOffset:I

.field protected mDefaultVerticalGap:I

.field protected mDefaultWidth:I

.field protected mDisablePreview:Z

.field protected mDisplayWidth:I

.field private mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mFunctionKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGroupKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;",
            ">;"
        }
    .end annotation
.end field

.field protected mHorizontalGap:I

.field protected mIsPopupWinSIP:Z

.field protected mKBDimension:Landroid/graphics/Rect;

.field protected mKeyHeight:I

.field protected mKeyWidth:I

.field protected mKeyboardBackground:Landroid/graphics/drawable/Drawable;

.field protected mKeyboardPaddingBottom:I

.field protected mKeyboardPaddingLeft:I

.field protected mKeyboardPaddingRight:I

.field protected mKeyboardPaddingTop:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field protected mLabel:Ljava/lang/CharSequence;

.field protected mLangKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mLangSwitchKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mPage:I

.field protected mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPeriodKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field public mPopupHeight:I

.field protected mRedrawFeedbackBG:Z

.field protected mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mShiftKeyIndex:I

.field protected mShifted:Z

.field protected mSipFeedbackBG:I

.field protected mSipFuncFeedbackBG:I

.field protected mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSplitKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSplitKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field protected mSymWidthKeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field protected mT9KeyDrawable:Landroid/graphics/drawable/Drawable;

.field protected mT9KeyIndex:I

.field protected mTaller:Z

.field protected mTopLevelTextType:I

.field protected mTotalHeight:I

.field public mTotalPage:I

.field public mTotalRows:I

.field protected mTotalWidth:I

.field protected mVerticalGap:I

.field public mXmlID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard;->FEEDBACKBG:[I

    .line 257
    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    .line 258
    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_PortRgnRadius:I

    .line 259
    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_LandRgnRadius:I

    .line 260
    sput v2, Lcom/htc/android/htcime/ezsip/Keyboard;->sPOPUP_ENLARGE_BOARDER:I

    .line 263
    sput v2, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    .line 447
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x4f4f50

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard;->popupTopLebelColor:Landroid/text/style/ForegroundColorSpan;

    .line 448
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f333333

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sput-object v0, Lcom/htc/android/htcime/ezsip/Keyboard;->popupTopLebelSize:Landroid/text/style/RelativeSizeSpan;

    return-void

    .line 136
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKeyIndex:I

    .line 310
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKeyIndex:I

    .line 316
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyIndex:I

    .line 324
    iput v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 327
    iput v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 330
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    .line 348
    const/16 v2, 0x14

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    .line 351
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextYOffset:I

    .line 354
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextSize:I

    .line 357
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextYOffset:I

    .line 360
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefalultTopIconYOffset:I

    .line 366
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTopLevelTextType:I

    .line 368
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextXOffset:I

    .line 371
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPreviewTopLevel:Z

    .line 374
    const/16 v2, 0x1e

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    .line 439
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalRows:I

    .line 450
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFeedbackBG:I

    .line 451
    iput v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFuncFeedbackBG:I

    .line 1363
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1364
    .local v1, wm:Landroid/view/WindowManager;
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/Keyboard;->loadConstant(Landroid/content/Context;)V

    .line 1365
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisplayWidth:I

    .line 1366
    iput v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    .line 1367
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    .line 1368
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    .line 1369
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    .line 1370
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    .line 1371
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    .line 1372
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    .line 1373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    .line 1374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 1375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeys:Ljava/util/List;

    .line 1376
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    .line 1377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mArrowKeys:Ljava/util/List;

    .line 1379
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1380
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "tall_keyboard"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTaller:Z

    .line 1381
    iput p2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    .line 1382
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisablePreview:Z

    .line 1383
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mIsPopupWinSIP:Z

    .line 1384
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mRedrawFeedbackBG:Z

    .line 1385
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 1386
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;I)V
    .locals 11
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"

    .prologue
    .line 1404
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 1405
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    .line 1406
    .local v1, x:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    .line 1407
    .local v2, y:I
    const/4 v7, 0x0

    .line 1408
    .local v7, column:I
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    .line 1409
    const/4 v0, -0x1

    if-ne p4, v0, :cond_3

    const v10, 0x7fffffff

    .line 1410
    .local v10, maxColumns:I
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1411
    invoke-interface {p3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1412
    .local v6, c:C
    if-ge v7, v10, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    add-int/2addr v0, v1

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisplayWidth:I

    if-le v0, v3, :cond_1

    .line 1414
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    .line 1415
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 1416
    const/4 v7, 0x0

    .line 1418
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->newKey(IIIII)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v9

    .line 1419
    .local v9, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const-string v0, "label"

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, p1, v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v0, "codes"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, p1, v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    add-int/lit8 v7, v7, 0x1

    .line 1422
    iget v0, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    iget v3, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 1423
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    add-int/2addr v0, v1

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    if-le v0, v3, :cond_2

    .line 1425
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    .line 1410
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v6           #c:C
    .end local v8           #i:I
    .end local v9           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v10           #maxColumns:I
    :cond_3
    move v10, p4

    .line 1409
    goto :goto_0

    .line 1429
    .restart local v8       #i:I
    .restart local v10       #maxColumns:I
    :cond_4
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    sget v0, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    :goto_2
    add-int/2addr v0, v3

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    .line 1431
    return-void

    .line 1429
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic access$000()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard;->popupTopLebelColor:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$100()Landroid/text/style/RelativeSizeSpan;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/android/htcime/ezsip/Keyboard;->popupTopLebelSize:Landroid/text/style/RelativeSizeSpan;

    return-object v0
.end method


# virtual methods
.method public DEBUGGroupKey()V
    .locals 2

    .prologue
    .line 2037
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->DEBUG()V

    .line 2037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2040
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCountPerRow()[I
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCountPerRow:[I

    return-object v0
.end method

.method protected getDefaultWidth()I
    .locals 1

    .prologue
    .line 1617
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    return v0
.end method

.method public getDimension()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKBDimension:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getHGap()I
    .locals 1

    .prologue
    .line 1605
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1625
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    return v0
.end method

.method public getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 1497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1498
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1499
    .local v1, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    if-ne v2, p1, :cond_1

    .line 1507
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_0
    :goto_1
    return-object v1

    .line 1497
    .restart local v1       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1503
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1504
    .restart local v1       #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    if-eq v2, p1, :cond_0

    .line 1502
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1507
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ezsip/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method protected getRowHeight()I
    .locals 1

    .prologue
    .line 1613
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    return v0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .prologue
    .line 1657
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKeyIndex:I

    return v0
.end method

.method public getTotalRows()I
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalRows:I

    return v0
.end method

.method protected getVGap()I
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    return v0
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1438
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextSize:I

    .line 1439
    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    .line 1440
    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_PortRgnRadius:I

    .line 1441
    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_LandRgnRadius:I

    .line 1442
    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sPOPUP_ENLARGE_BOARDER:I

    .line 1444
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    .line 1452
    return-void
.end method

.method loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 26
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 1695
    const/4 v12, 0x0

    .line 1696
    .local v12, inKey:Z
    const/4 v13, 0x0

    .line 1697
    .local v13, inRow:Z
    const/16 v16, 0x0

    .line 1698
    .local v16, leftMostKey:Z
    const/16 v20, 0x0

    .line 1699
    .local v20, row:I
    const/4 v3, 0x0

    .line 1700
    .local v3, x:I
    const/4 v4, 0x0

    .line 1701
    .local v4, y:I
    const/4 v8, 0x0

    .line 1702
    .local v8, count:I
    const/4 v15, 0x0

    .line 1706
    .local v15, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, event:I
    const/4 v2, 0x1

    if-eq v10, v2, :cond_3

    .line 1707
    const/4 v2, 0x2

    if-ne v10, v2, :cond_43

    .line 1708
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1709
    .local v22, tag:Ljava/lang/String;
    const-string v2, "row"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1710
    const/4 v13, 0x1

    .line 1711
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    .line 1712
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 1713
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    .line 1714
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    .line 1715
    .local v23, value:Ljava/lang/String;
    const-string v2, "height"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    .line 1712
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1717
    :cond_2
    const-string v2, "width"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1718
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1995
    .end local v10           #event:I
    .end local v11           #i:I
    .end local v18           #name:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1996
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "Keyboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2000
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mArrowKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_46

    .line 2001
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mArrowKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_46

    .line 2002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mArrowKeys:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1719
    .restart local v10       #event:I
    .restart local v18       #name:Ljava/lang/String;
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v23       #value:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v2, "hgap"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1720
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    goto :goto_2

    .line 1721
    :cond_5
    const-string v2, "vgap"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1722
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mVerticalGap:I

    goto/16 :goto_2

    .line 1726
    .end local v11           #i:I
    .end local v18           #name:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_6
    const-string v2, "key"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1727
    const/4 v12, 0x1

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getDefaultWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getRowHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHGap()I

    move-result v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->newKey(IIIII)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v15

    .line 1729
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 1730
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v2, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1733
    :cond_7
    new-instance v2, Landroid/graphics/Rect;

    iget v5, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v6, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v7, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v0, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v24, v0

    add-int v7, v7, v24

    iget v0, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v24, v0

    iget v0, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    .line 1734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1735
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, 0xa

    if-ne v2, v5, :cond_c

    .line 1736
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1779
    :cond_8
    :goto_5
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    if-lez v2, :cond_9

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_9

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1786
    :cond_9
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    if-lez v2, :cond_b

    .line 1787
    const/16 v17, 0x0

    .line 1788
    .local v17, matched:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1789
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_a

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;

    .line 1792
    .local v14, k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    iget v2, v14, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->group:I

    iget v5, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    if-ne v2, v5, :cond_1b

    .line 1793
    iget-object v2, v14, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1795
    const/16 v17, 0x1

    .line 1800
    .end local v14           #k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    :cond_a
    if-nez v17, :cond_b

    .line 1801
    new-instance v14, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;

    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;-><init>(Lcom/htc/android/htcime/ezsip/Keyboard;I)V

    .line 1802
    .restart local v14       #k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object v2, v14, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v14           #k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    .end local v17           #matched:Z
    :cond_b
    if-nez v20, :cond_1c

    .line 1809
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    .line 1737
    :cond_c
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x1

    if-ne v2, v5, :cond_d

    .line 1738
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKeyIndex:I

    .line 1740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1741
    :cond_d
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x16

    if-ne v2, v5, :cond_e

    .line 1742
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKeyIndex:I

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1745
    :cond_e
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x6

    if-ne v2, v5, :cond_f

    .line 1746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1747
    :cond_f
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x8

    if-ne v2, v5, :cond_10

    .line 1748
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyIndex:I

    goto/16 :goto_5

    .line 1750
    :cond_10
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x3b

    if-ne v2, v5, :cond_11

    .line 1751
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mContinuousInputKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1753
    :cond_11
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x12

    if-eq v2, v5, :cond_12

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x13

    if-eq v2, v5, :cond_12

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x14

    if-eq v2, v5, :cond_12

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x15

    if-ne v2, v5, :cond_13

    .line 1757
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mArrowKeys:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1760
    :cond_13
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, 0x20

    if-ne v2, v5, :cond_15

    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_14

    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    if-nez v2, :cond_15

    .line 1761
    :cond_14
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1762
    :cond_15
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_16

    .line 1763
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommaKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1764
    :cond_16
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_17

    .line 1765
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPeriodKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1766
    :cond_17
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0xf

    if-eq v2, v5, :cond_18

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x10

    if-eq v2, v5, :cond_18

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x17

    if-eq v2, v5, :cond_18

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x18

    if-eq v2, v5, :cond_18

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/16 v5, -0x19

    if-ne v2, v5, :cond_19

    .line 1771
    :cond_18
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangSwitchKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1772
    :cond_19
    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    const/4 v5, -0x2

    if-ne v2, v5, :cond_1a

    .line 1773
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSYMKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto/16 :goto_5

    .line 1774
    :cond_1a
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    const/high16 v5, 0x3f80

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8

    .line 1775
    new-instance v21, Landroid/text/SpannableString;

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1776
    .local v21, scaledText:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    iget v5, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    invoke-direct {v2, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v5, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1777
    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 1789
    .end local v21           #scaledText:Landroid/text/SpannableString;
    .restart local v14       #k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    .restart local v17       #matched:Z
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 1811
    .end local v14           #k:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    .end local v17           #matched:Z
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalRows:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_0

    .line 1812
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->edgeFlags:I

    goto/16 :goto_0

    .line 1814
    .end local v11           #i:I
    :cond_1d
    const-string v2, "keyboard"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1815
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_7
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v11, v2, :cond_42

    .line 1816
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    .line 1817
    .restart local v18       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v23

    .line 1818
    .restart local v23       #value:Ljava/lang/String;
    const-string v2, "height"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1819
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    .line 1820
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    .line 1815
    :cond_1e
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1821
    :cond_1f
    const-string v2, "width"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1822
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    .line 1823
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    goto :goto_8

    .line 1824
    :cond_20
    const-string v2, "hgap"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1825
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    .line 1826
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    goto :goto_8

    .line 1827
    :cond_21
    const-string v2, "vgap"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1828
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    .line 1829
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTaller:Z

    if-eqz v2, :cond_22

    .line 1830
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    .line 1832
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultVerticalGap:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mVerticalGap:I

    goto :goto_8

    .line 1833
    :cond_23
    const-string v2, "label"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1834
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 1836
    :cond_24
    const-string v2, "accentPage"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1837
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    goto/16 :goto_8

    .line 1838
    :cond_25
    const-string v2, "functionKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1839
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mFunctionKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1845
    :cond_26
    const-string v2, "commonKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1846
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCommonKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1852
    :cond_27
    const-string v2, "splitKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1853
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1859
    :cond_28
    const-string v2, "t9KeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9KeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1866
    :cond_29
    const-string v2, "langKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1867
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mLangKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1873
    :cond_2a
    const-string v2, "pageKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1874
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPageKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1880
    :cond_2b
    const-string v2, "closeKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1881
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCloseKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1887
    :cond_2c
    const-string v2, "keyboardBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1888
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/android/htcime/HTCIMMData;->getSharedKeyboardBackdround(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    .line 1890
    new-instance v19, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1891
    .local v19, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2d

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1894
    :cond_2d
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    .line 1895
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    .line 1896
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    .line 1897
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    .line 1898
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    .line 1899
    goto/16 :goto_8

    .end local v19           #padding:Landroid/graphics/Rect;
    :cond_2e
    const-string v2, "keyboardPadding"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1900
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v19

    .line 1901
    .restart local v19       #padding:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingLeft:I

    .line 1902
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    .line 1903
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    .line 1904
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    .line 1905
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingTop:I

    .line 1906
    goto/16 :goto_8

    .end local v19           #padding:Landroid/graphics/Rect;
    :cond_2f
    const-string v2, "keyTextSize"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1907
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    goto/16 :goto_8

    .line 1908
    :cond_30
    const-string v2, "popupTextSize"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPopupTextSize:I

    goto/16 :goto_8

    .line 1910
    :cond_31
    const-string v2, "totalRows"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1911
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalRows:I

    goto/16 :goto_8

    .line 1912
    :cond_32
    const-string v2, "keyTextYOffset"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1913
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextYOffset:I

    goto/16 :goto_8

    .line 1914
    :cond_33
    const-string v2, "topLabelTextSize"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1915
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextSize:I

    goto/16 :goto_8

    .line 1916
    :cond_34
    const-string v2, "topLabelTextYOffset"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextYOffset:I

    goto/16 :goto_8

    .line 1918
    :cond_35
    const-string v2, "topIconYOffset"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefalultTopIconYOffset:I

    goto/16 :goto_8

    .line 1920
    :cond_36
    const-string v2, "topLabelTextXOffset"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1921
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->parseDimension(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextXOffset:I

    goto/16 :goto_8

    .line 1922
    :cond_37
    const-string v2, "topLabelTextType"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1923
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTopLevelTextType:I

    goto/16 :goto_8

    .line 1924
    :cond_38
    const-string v2, "previewTopLevel"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1925
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultPreviewTopLevel:Z

    goto/16 :goto_8

    .line 1926
    :cond_39
    const-string v2, "sipFeedbackBG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1927
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFeedbackBG:I

    goto/16 :goto_8

    .line 1928
    :cond_3a
    const-string v2, "sipFuncFeedbackBG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1929
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x0

    const-string v6, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSipFuncFeedbackBG:I

    goto/16 :goto_8

    .line 1930
    :cond_3b
    const-string v2, "totalPages"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1931
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    goto/16 :goto_8

    .line 1934
    :cond_3c
    const-string v2, "CJKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1935
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCJModeKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1942
    :cond_3d
    const-string v2, "SymWidthKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1943
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSymWidthKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1950
    :cond_3e
    const-string v2, "spellKeyBackground"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1951
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "com.htc.android.htcime"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpellKeyDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 1958
    :cond_3f
    const-string v2, "disablePreview"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1959
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisablePreview:Z

    goto/16 :goto_8

    .line 1961
    :cond_40
    const-string v2, "isPopupWinSIP"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1962
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mIsPopupWinSIP:Z

    goto/16 :goto_8

    .line 1964
    :cond_41
    const-string v2, "redrawFeedbackBG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1965
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mRedrawFeedbackBG:Z

    goto/16 :goto_8

    .line 1969
    .end local v18           #name:Ljava/lang/String;
    .end local v23           #value:Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCountPerRow:[I

    if-nez v2, :cond_0

    .line 1970
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalRows:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCountPerRow:[I

    goto/16 :goto_0

    .line 1973
    .end local v11           #i:I
    .end local v22           #tag:Ljava/lang/String;
    :cond_43
    const/4 v2, 0x3

    if-ne v10, v2, :cond_0

    .line 1974
    if-eqz v12, :cond_45

    .line 1975
    const/4 v12, 0x0

    .line 1976
    iget v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->gap:I

    iget v5, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v2, v5

    add-int/2addr v3, v2

    .line 1977
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    if-le v3, v2, :cond_44

    .line 1978
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    .line 1980
    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1981
    :cond_45
    if-eqz v13, :cond_0

    .line 1982
    const/4 v13, 0x0

    .line 1983
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getVGap()I

    move-result v2

    add-int/2addr v4, v2

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getRowHeight()I

    move-result v2

    add-int/2addr v4, v2

    .line 1985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHorizontalGap:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mHorizontalGap:I

    .line 1986
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    .line 1987
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mCountPerRow:[I

    aput v8, v2, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1989
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 2005
    .end local v10           #event:I
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Keyboard;->getVGap()I

    move-result v2

    sub-int v2, v4, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingBottom:I

    add-int/2addr v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_47

    sget v2, Lcom/htc/android/htcime/ezsip/Keyboard;->sBottomGap:I

    :goto_9
    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    .line 2007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyboardPaddingRight:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    .line 2008
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKBDimension:Landroid/graphics/Rect;

    .line 2009
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 2012
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    int-to-double v5, v2

    const-wide v24, 0x3fe999999999999aL

    mul-double v5, v5, v24

    double-to-int v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefKeyWidthLower:I

    .line 2013
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    int-to-double v5, v2

    const-wide v24, 0x3ff599999999999aL

    mul-double v5, v5, v24

    double-to-int v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefKeyWidthUpper:I

    .line 2014
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyWidth:I

    sget v5, Lcom/htc/android/htcime/ezsip/Keyboard;->sPOPUP_ENLARGE_BOARDER:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefPopupWidth:I

    .line 2015
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeyHeight:I

    sget v5, Lcom/htc/android/htcime/ezsip/Keyboard;->sPOPUP_ENLARGE_BOARDER:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPopupHeight:I

    .line 2016
    return-void

    .line 2005
    :cond_47
    const/4 v2, 0x0

    goto :goto_9
.end method

.method protected newKey(IIIII)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "gap"

    .prologue
    .line 1661
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;-><init>(Lcom/htc/android/htcime/ezsip/Keyboard;IIIII)V

    return-object v0
.end method

.method protected parseDimension(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 1671
    const-string v0, "%p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDisplayWidth:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 1678
    :goto_0
    return v0

    .line 1675
    :cond_0
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1678
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected parseRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 1683
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1684
    .local v0, rect:Landroid/graphics/Rect;
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, rectStr:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1686
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1687
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1688
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1689
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1691
    :cond_0
    return-object v0
.end method

.method public setImeOptions(II)V
    .locals 3
    .parameter "options"
    .parameter "inputType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1460
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 1461
    const v0, 0x400000ff

    and-int/2addr v0, p1

    packed-switch v0, :pswitch_data_0

    .line 1478
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 1482
    :goto_0
    const/high16 v0, 0xf00

    and-int/2addr v0, p2

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 1486
    :cond_0
    return-void

    .line 1463
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_0

    .line 1466
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_0

    .line 1469
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_0

    .line 1472
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_0

    .line 1475
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mEnterKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_0

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPage(I)V
    .locals 8
    .parameter "pageNo"

    .prologue
    const/4 v7, 0x0

    .line 1557
    iput p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 1559
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1560
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1562
    .local v1, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v7

    const/16 v5, -0xc

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v7

    const/16 v5, -0x11

    if-ne v4, v5, :cond_3

    .line 1563
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1564
    .local v2, scaledLabel:Landroid/text/SpannableString;
    iget v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 1565
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    iget v5, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1566
    :cond_2
    iput-object v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1567
    invoke-virtual {v1, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setValidate(Z)V

    .line 1569
    .end local v2           #scaledLabel:Landroid/text/SpannableString;
    :cond_3
    iget-boolean v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v7

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    .line 1570
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v4, v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v4, v5, :cond_8

    .line 1571
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    .line 1572
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/16 v5, -0xd

    if-ne v4, v5, :cond_4

    .line 1573
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iput-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1585
    :goto_1
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/16 v5, 0x3002

    if-ne v4, v5, :cond_7

    .line 1586
    #getter for: Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftXBase:I
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->access$400(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    move-result v4

    iput v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    .line 1595
    :goto_2
    invoke-virtual {v1, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setValidate(Z)V

    goto/16 :goto_0

    .line 1574
    :cond_4
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/16 v5, -0x3e

    if-ne v4, v5, :cond_5

    .line 1575
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multichars:Ljava/lang/CharSequence;

    iput-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1577
    :cond_5
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/16 v5, -0xe

    if-ne v4, v5, :cond_6

    .line 1578
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1579
    .local v3, stringArray:[Ljava/lang/String;
    iget v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    aget-object v4, v3, v4

    iput-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1582
    .end local v3           #stringArray:[Ljava/lang/String;
    :cond_6
    iget-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1588
    :cond_7
    iput v7, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftX:I

    goto :goto_2

    .line 1592
    :cond_8
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 1593
    iput-boolean v7, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    goto :goto_2

    .line 1598
    .end local v1           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_9
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shiftState"

    .prologue
    .line 1637
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_0

    .line 1638
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShifted:Z

    .line 1639
    const/4 v0, 0x1

    .line 1641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 11
    .parameter "set"

    .prologue
    const/4 v10, 0x0

    .line 1511
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v6, removeKeys:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/ezsip/Keyboard$Key;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v1, addKeys:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/ezsip/Keyboard$Key;>;"
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSplitKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1516
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1517
    .local v7, tmpKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v8, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    if-ne v8, p1, :cond_2

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1519
    iget-object v8, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v8, v8, v10

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1520
    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1521
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :cond_1
    :goto_1
    #setter for: Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateUpper:Z
    invoke-static {v7, v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->access$202(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Z)Z

    .line 1526
    #setter for: Lcom/htc/android/htcime/ezsip/Keyboard$Key;->validateLower:Z
    invoke-static {v7, v10}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->access$302(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Z)Z

    goto :goto_0

    .line 1523
    :cond_2
    iget v8, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->splitSet:I

    if-eq v8, p1, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1524
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1529
    .end local v7           #tmpKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_5

    .line 1530
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1531
    .local v4, iter2:Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter1:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1532
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1533
    .local v5, removeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1534
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1535
    .local v0, addKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v8, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1538
    .end local v0           #addKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_4
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1542
    .end local v3           #iter1:Ljava/util/Iterator;
    .end local v4           #iter2:Ljava/util/Iterator;
    .end local v5           #removeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1543
    .restart local v4       #iter2:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #iter1:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1544
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1545
    .restart local v0       #addKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1546
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 1547
    .restart local v5       #removeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v8, v9, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1550
    .end local v5           #removeKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_6
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1553
    .end local v0           #addKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_7
    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    return-object v8
.end method

.method public showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 7
    .parameter "group"
    .parameter "key_id"

    .prologue
    const/4 v6, 0x0

    .line 2075
    const/4 v3, 0x0

    .line 2077
    .local v3, key_t:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v4, -0x1

    .line 2078
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 2079
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key_t:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    check-cast v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 2080
    .restart local v3       #key_t:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v5, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mGrouped:I

    if-ne v5, p1, :cond_1

    iget-object v5, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    if-eq v5, p2, :cond_1

    .line 2081
    move v4, v1

    .line 2086
    :cond_0
    if-ltz v4, :cond_4

    .line 2089
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 2090
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mGroupKeys:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;

    .line 2091
    .local v0, gk:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    iget v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->group:I

    if-ne v5, p1, :cond_3

    .line 2092
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2093
    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    if-ne v5, p2, :cond_2

    .line 2094
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    iget-object v6, v0, Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;->mKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2095
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 2102
    .end local v0           #gk:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    .end local v2           #j:I
    :goto_3
    return-object v5

    .line 2078
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2092
    .restart local v0       #gk:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    .restart local v2       #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2089
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2102
    .end local v0           #gk:Lcom/htc/android/htcime/ezsip/Keyboard$GroupedKey;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method
