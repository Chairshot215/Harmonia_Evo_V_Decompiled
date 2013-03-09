.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final ACTION_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final BAD_EMERGENCY_NUMBER_DIALOG:I = 0x0

.field private static final DBG:Z = false

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x3

.field private static final DIGITS:[C = null

.field public static final DSA_ACTION:Ljava/lang/String; = "com.sprint.dsa.DSA_ACTIVITY"

.field public static final DSA_EXTRA:Ljava/lang/String; = "com.sprint.dsa.url"

.field public static final DSA_TYPE:Ljava/lang/String; = "vnd.sprint.dsa/vnd.sprint.dsa.main"

.field private static final DTMF_TONE_TYPE_LONG:I = 0x1

.field private static final DTMF_TONE_TYPE_SHORT:I = 0x0

.field public static EMC_FROM_EMCDIALER:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EmergencyDialer"

.field private static final SECRET_CODE_PREFIX:Ljava/lang/String; = "##"

.field private static final SECRET_HELP_PREFIX:Ljava/lang/String; = "#4357"

.field private static final STOP_TONE:I = 0x1

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static final VIBRATE_DURATION:J = 0x23L

.field private static final VIBRATE_NO_REPEAT:I = -0x1

.field static final sSemiEccCalls:Ljava/util/ArrayList;


# instance fields
.field private mBackspace:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDTMF_TONE_TYPE:I

.field mDigits:Landroid/widget/EditText;

.field public mPhoneType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field mToneStopper:Landroid/os/Handler;

.field private mVibrateEnabled:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->DIGITS:[C

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "110"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "119"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "120"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/phone/EmergencyDialer;->sSemiEccCalls:Ljava/util/ArrayList;

    .line 771
    sput-boolean v4, Lcom/android/phone/EmergencyDialer;->EMC_FROM_EMCDIALER:Z

    return-void

    .line 117
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2at 0x0t
        0x23t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    .line 148
    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyDialer;->mPhoneType:I

    .line 681
    iput v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    .line 894
    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    .line 1095
    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mVibrateEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyDialer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyDialer;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method private applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 1177
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1178
    .local v0, resId:I
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    :cond_0
    return-void
.end method

.method private applyThemeOnActivityCreated()V
    .locals 9

    .prologue
    const v8, 0x102001e

    .line 1109
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1112
    .local v2, res:Landroid/content/res/Resources;
    const-string v5, "htc_btn_dial_delete"

    const-string v6, "drawable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1114
    .local v3, resid:I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1115
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mBackspace:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    const-string v5, "phone_accumulator_bg"

    const-string v6, "drawable"

    const-string v7, "com.android.phone"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1121
    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    .local v0, area:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1124
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    .end local v0           #area:Landroid/view/View;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resid:I
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    const-string v5, ""

    invoke-static {}, Lcom/android/phone/theme/ThemeAdapter;->getSkinPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1129
    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1130
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_panel_input_base"

    const-string v7, "drawable"

    const-string v8, "com.android.phone"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1133
    .restart local v3       #resid:I
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 1134
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    .end local v3           #resid:I
    .end local v4           #view:Landroid/view/View;
    :cond_2
    :goto_1
    const v5, 0x202016a

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "common_b_button_small"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1148
    const v5, 0x2020180

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1150
    const v5, 0x2020181

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1152
    const v5, 0x2020182

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1154
    const v5, 0x2020183

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1156
    const v5, 0x2020184

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1158
    const v5, 0x2020185

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1160
    const v5, 0x2020186

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1162
    const v5, 0x2020187

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1164
    const v5, 0x2020188

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1166
    const v5, 0x2020189

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1168
    const v5, 0x202001a

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    .line 1170
    const v5, 0x202001b

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "htc_dial_button"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "common_panel_input_base"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/EmergencyDialer;->applyThemeBackgroundResource(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private displayErrorBadNumber(Ljava/lang/String;)V
    .locals 7
    .parameter "number"

    .prologue
    const/4 v6, 0x1

    .line 652
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    const v3, 0x7f0e03c4

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, errMsg:Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    .local v0, b:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 664
    const v3, 0x7f0e03c1

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 665
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 666
    const v3, 0x7f0e0264

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 667
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 674
    .local v1, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 675
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 676
    return-void

    .line 655
    .end local v0           #b:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v2           #errMsg:Ljava/lang/CharSequence;
    :cond_0
    const v3, 0x7f0e03c5

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #errMsg:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private initCommandBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 320
    const v7, 0x2020001

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 321
    .local v1, call:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 322
    sget-boolean v7, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v7, :cond_0

    .line 323
    const/4 v6, 0x0

    .line 324
    .local v6, unit:I
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c004c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 326
    .local v4, size:F
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 327
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x7f0e004e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, text:Ljava/lang/String;
    const v7, 0x7f020074

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 329
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v1, v6, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 334
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #size:F
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #unit:I
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_1
    sget-boolean v7, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v7, :cond_2

    .line 338
    const v7, 0x2020006

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, btn:Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 340
    const v7, 0x2020007

    invoke-virtual {p0, v7}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 343
    .end local v0           #btn:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private initVibrator()V
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrateEnabled:Z

    .line 1099
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    .line 1102
    :cond_0
    return-void
.end method

.method private keyPressed(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 474
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 475
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 476
    return-void
.end method

.method private setupKeypad()V
    .locals 7

    .prologue
    const v6, 0x2020182

    const v5, 0x2020181

    const v4, 0x2020180

    const v3, 0x202001b

    const v2, 0x202001a

    .line 402
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v1, 0x2020183

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v1, 0x2020184

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v1, 0x2020185

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v1, 0x2020186

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v1, 0x2020187

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v1, 0x2020188

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v1, 0x2020189

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 417
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 421
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 422
    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    const v1, 0x2020183

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 424
    const v1, 0x2020184

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    const v1, 0x2020185

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    const v1, 0x2020186

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    const v1, 0x2020187

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    const v1, 0x2020188

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 433
    return-void
.end method

.method private stopTone()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 948
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 170
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 158
    return-void
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 499
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 504
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 524
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 529
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 554
    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 562
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    .line 565
    :sswitch_d
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x1020009 -> :sswitch_c
        0x2020001 -> :sswitch_c
        0x202001a -> :sswitch_b
        0x202001b -> :sswitch_a
        0x202016a -> :sswitch_d
        0x2020180 -> :sswitch_0
        0x2020181 -> :sswitch_1
        0x2020182 -> :sswitch_2
        0x2020183 -> :sswitch_3
        0x2020184 -> :sswitch_4
        0x2020185 -> :sswitch_5
        0x2020186 -> :sswitch_6
        0x2020187 -> :sswitch_7
        0x2020188 -> :sswitch_8
        0x2020189 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 174
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x48

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f030012

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 183
    .local v2, contentView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/EmergencyDialer;->setContentView(Landroid/view/View;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 187
    .local v11, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/phone/EmergencyDialer;->mPhoneType:I

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->initVibrator()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v7, 0x1

    .line 194
    .local v7, isHardKeyboardOpen:Z
    :goto_0
    if-eqz p1, :cond_0

    .line 195
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    .line 205
    const v15, 0x202017f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 206
    .local v9, keyPad:Landroid/view/ViewGroup;
    if-eqz v9, :cond_1

    .line 207
    if-eqz v7, :cond_8

    .line 208
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    :cond_1
    :goto_1
    const v15, 0x202016a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBackspace:Landroid/view/View;

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBackspace:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBackspace:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 223
    const v15, 0x1020009

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setInputType(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setClickable(Z)V

    .line 229
    sget-boolean v15, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-nez v15, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setVisibility(I)V

    .line 246
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->initCommandBar()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_4

    .line 260
    :try_start_1
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v17, 0x3

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 261
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    sget-boolean v15, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/phone/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v15, :cond_9

    .line 275
    :cond_5
    const v15, 0x2020080

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 276
    .local v14, view:Landroid/view/View;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 281
    .end local v14           #view:Landroid/view/View;
    :goto_3
    const v15, 0x2020010

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 282
    .local v10, label:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0227

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 286
    .local v5, intent:Landroid/content/Intent;
    const-string v15, "EmergencyDialer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Shawn intent : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v5, :cond_6

    .line 288
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 289
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_6

    .line 290
    const-string v15, "tel"

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 292
    .local v8, isSchemeTel:Z
    const-string v15, "EmergencyDialer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Shawn isSchemeTel : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v8, :cond_6

    .line 294
    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, dialString:Ljava/lang/String;
    const-string v15, "EmergencyDialer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Shawn dialString : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v15, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .end local v3           #dialString:Ljava/lang/String;
    .end local v8           #isSchemeTel:Z
    .end local v13           #uri:Landroid/net/Uri;
    :cond_6
    const-string v15, "common_glance_bkg"

    const-string v16, "drawable"

    const v17, 0x20806b7

    invoke-static/range {v15 .. v17}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 307
    .local v12, resid:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 310
    return-void

    .line 191
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #isHardKeyboardOpen:Z
    .end local v9           #keyPad:Landroid/view/ViewGroup;
    .end local v10           #label:Landroid/widget/TextView;
    .end local v12           #resid:I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v7       #isHardKeyboardOpen:Z
    .restart local v9       #keyPad:Landroid/view/ViewGroup;
    :cond_8
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    goto/16 :goto_1

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v15, "EmergencyDialer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception caught while creating local tone generator: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_2

    .line 267
    .end local v4           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v15

    .line 278
    .restart local v6       #intentFilter:Landroid/content/IntentFilter;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/EmergencyDialer;->applyThemeOnActivityCreated()V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 361
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 367
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    return-void

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 484
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    .line 486
    const/4 v0, 0x1

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1020009
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 440
    sparse-switch p1, :sswitch_data_0

    .line 462
    sget-object v2, Lcom/android/phone/EmergencyDialer;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 463
    .local v0, match:C
    if-eqz v0, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 470
    .end local v0           #match:C
    :goto_0
    return v1

    .line 443
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    .line 456
    :sswitch_1
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    goto :goto_0

    .line 470
    .restart local v0       #match:C
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x17 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 578
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v2

    .line 643
    :goto_1
    return v1

    .line 580
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 584
    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 588
    :sswitch_2
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 593
    :cond_1
    :sswitch_3
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_2

    .line 594
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 598
    :cond_2
    :sswitch_4
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_3

    .line 599
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 603
    :cond_3
    :sswitch_5
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_4

    .line 604
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 608
    :cond_4
    :sswitch_6
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_5

    .line 609
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 613
    :cond_5
    :sswitch_7
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_6

    .line 614
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 618
    :cond_6
    :sswitch_8
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_7

    .line 619
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 623
    :cond_7
    :sswitch_9
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_8

    .line 624
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 628
    :cond_8
    :sswitch_a
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_9

    .line 629
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 633
    :cond_9
    :sswitch_b
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_a

    .line 634
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    .line 638
    :cond_a
    :sswitch_c
    iget v1, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v1, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 578
    nop

    :sswitch_data_0
    .sparse-switch
        0x202001a -> :sswitch_b
        0x202001b -> :sswitch_c
        0x202016a -> :sswitch_0
        0x2020180 -> :sswitch_2
        0x2020181 -> :sswitch_3
        0x2020182 -> :sswitch_4
        0x2020183 -> :sswitch_5
        0x2020184 -> :sswitch_6
        0x2020185 -> :sswitch_7
        0x2020186 -> :sswitch_8
        0x2020187 -> :sswitch_9
        0x2020188 -> :sswitch_a
        0x2020189 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 757
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 758
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 760
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 762
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 766
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 768
    :cond_0
    monitor-exit v2

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 395
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 398
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 374
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 688
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 691
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dtmf_tone"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    .line 697
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mPhoneType:I

    .line 698
    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mPhoneType:I

    if-ne v3, v7, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dtmf_tone_type"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    .line 705
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 707
    iput-boolean v4, p0, Lcom/android/phone/EmergencyDialer;->mVibrateEnabled:Z

    .line 714
    :cond_0
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 715
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 717
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v6, 0x2

    const/16 v7, 0x50

    invoke-direct {v3, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 730
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 731
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 734
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 737
    sget-object v3, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 739
    sget-boolean v3, Lcom/android/phone/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v3, :cond_2

    .line 740
    invoke-static {p0, v4}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 741
    .local v2, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    .end local v2           #wallpaper:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_3
    move v3, v5

    .line 691
    goto :goto_0

    .line 702
    :cond_4
    iput v5, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    goto :goto_1

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 724
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 162
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 951
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 954
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1076
    :cond_0
    :goto_0
    return v2

    .line 956
    :sswitch_0
    if-nez v0, :cond_1

    .line 957
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 958
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 959
    :cond_1
    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_0

    .line 960
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 966
    :sswitch_1
    if-nez v0, :cond_3

    .line 967
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 968
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 969
    :cond_3
    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_0

    .line 970
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 976
    :sswitch_2
    if-nez v0, :cond_5

    .line 977
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 978
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 979
    :cond_5
    if-eq v0, v3, :cond_6

    if-ne v0, v4, :cond_0

    .line 980
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 986
    :sswitch_3
    if-nez v0, :cond_7

    .line 987
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 988
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 989
    :cond_7
    if-eq v0, v3, :cond_8

    if-ne v0, v4, :cond_0

    .line 990
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 996
    :sswitch_4
    if-nez v0, :cond_9

    .line 997
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 998
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 999
    :cond_9
    if-eq v0, v3, :cond_a

    if-ne v0, v4, :cond_0

    .line 1000
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 1006
    :sswitch_5
    if-nez v0, :cond_b

    .line 1007
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 1009
    :cond_b
    if-eq v0, v3, :cond_c

    if-ne v0, v4, :cond_0

    .line 1010
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 1016
    :sswitch_6
    if-nez v0, :cond_d

    .line 1017
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto :goto_0

    .line 1019
    :cond_d
    if-eq v0, v3, :cond_e

    if-ne v0, v4, :cond_0

    .line 1020
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto :goto_0

    .line 1026
    :sswitch_7
    if-nez v0, :cond_f

    .line 1027
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto/16 :goto_0

    .line 1029
    :cond_f
    if-eq v0, v3, :cond_10

    if-ne v0, v4, :cond_0

    .line 1030
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto/16 :goto_0

    .line 1036
    :sswitch_8
    if-nez v0, :cond_11

    .line 1037
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1038
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto/16 :goto_0

    .line 1039
    :cond_11
    if-eq v0, v3, :cond_12

    if-ne v0, v4, :cond_0

    .line 1040
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto/16 :goto_0

    .line 1046
    :sswitch_9
    if-nez v0, :cond_13

    .line 1047
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto/16 :goto_0

    .line 1049
    :cond_13
    if-eq v0, v3, :cond_14

    if-ne v0, v4, :cond_0

    .line 1050
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto/16 :goto_0

    .line 1056
    :sswitch_a
    if-nez v0, :cond_15

    .line 1057
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto/16 :goto_0

    .line 1059
    :cond_15
    if-eq v0, v3, :cond_16

    if-ne v0, v4, :cond_0

    .line 1060
    :cond_16
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto/16 :goto_0

    .line 1066
    :sswitch_b
    if-nez v0, :cond_17

    .line 1067
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->vibrate()V

    goto/16 :goto_0

    .line 1069
    :cond_17
    if-eq v0, v3, :cond_18

    if-ne v0, v4, :cond_0

    .line 1070
    :cond_18
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->stopTone()V

    goto/16 :goto_0

    .line 954
    :sswitch_data_0
    .sparse-switch
        0x202001a -> :sswitch_b
        0x202001b -> :sswitch_a
        0x2020180 -> :sswitch_0
        0x2020181 -> :sswitch_1
        0x2020182 -> :sswitch_2
        0x2020183 -> :sswitch_3
        0x2020184 -> :sswitch_4
        0x2020185 -> :sswitch_5
        0x2020186 -> :sswitch_6
        0x2020187 -> :sswitch_7
        0x2020188 -> :sswitch_8
        0x2020189 -> :sswitch_9
    .end sparse-switch
.end method

.method placeCall()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x1a

    const/high16 v7, 0x1000

    const/4 v8, 0x1

    .line 777
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, number:Ljava/lang/String;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_1

    .line 781
    const-string v5, "omadm.lawmo.lockstate"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, lawmo_flag:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    const-string v5, "#4357"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 787
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://cdma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 790
    .local v4, poundIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    .end local v2           #lawmo_flag:Ljava/lang/String;
    .end local v4           #poundIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 792
    .restart local v2       #lawmo_flag:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    const-string v5, "##"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "##4357"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v8, :cond_1

    .line 795
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://cdma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 798
    .restart local v4       #poundIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 804
    .end local v2           #lawmo_flag:Ljava/lang/String;
    .end local v4           #poundIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 809
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 811
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    .line 815
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 817
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 818
    const-string v5, "com.android.phone.EmergencyDialer"

    const-string v6, "EmergencyDialer"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    sput-boolean v8, Lcom/android/phone/EmergencyDialer;->EMC_FROM_EMCDIALER:Z

    .line 820
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0

    .line 825
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v5, :cond_7

    const-string v5, "*2"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 830
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 832
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto/16 :goto_0

    .line 837
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v0, actIntent:Landroid/content/Intent;
    const-string v5, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v5, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v5, "com.sprint.dsa.url"

    const-string v6, "https://dsa.spcsdns.net:443/dsa/?number=*2"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 843
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto/16 :goto_0

    .line 850
    .end local v0           #actIntent:Landroid/content/Intent;
    :cond_7
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v5, :cond_b

    const-string v5, "*228"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "611"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 856
    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 858
    :cond_9
    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto/16 :goto_0

    .line 861
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 863
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 864
    const-string v5, "com.android.phone.EmergencyDialer"

    const-string v6, "EmergencyDialer"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 866
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto/16 :goto_0

    .line 870
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_d

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v8, :cond_c

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v5, v11, :cond_d

    :cond_c
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v5, v6, :cond_e

    .line 874
    :cond_d
    sget-object v5, Lcom/android/phone/EmergencyDialer;->sSemiEccCalls:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 876
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "tel"

    invoke-static {v5, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 878
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto/16 :goto_0

    .line 889
    .end local v1           #intent:Landroid/content/Intent;
    :cond_e
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 890
    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->displayErrorBadNumber(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method playTone(I)V
    .locals 5
    .parameter "tone"

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 925
    const-string v0, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    monitor-exit v1

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 930
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 938
    iget v0, p0, Lcom/android/phone/EmergencyDialer;->mDTMF_TONE_TYPE:I

    if-nez v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneStopper:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 942
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 1086
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrateEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1093
    :goto_0
    monitor-exit p0

    return-void

    .line 1089
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 1090
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
