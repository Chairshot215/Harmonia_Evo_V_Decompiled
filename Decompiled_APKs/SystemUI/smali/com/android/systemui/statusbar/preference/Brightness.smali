.class public Lcom/android/systemui/statusbar/preference/Brightness;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Brightness.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final BRIGHTNESS_CHANGED:Ljava/lang/String; = "com.android.settings.action.BRIGHTNESS_CHANGED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    new-instance v0, Lcom/android/systemui/statusbar/preference/Brightness$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Brightness$1;-><init>(Lcom/android/systemui/statusbar/preference/Brightness;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/preference/Brightness;->setAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Brightness;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->syncUnderlyingBrightness(I)Z

    move-result v0

    return v0
.end method

.method private static getAutomaticBrightnessMode(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getBrightnessValue(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static setAutomaticBrightnessMode(Landroid/content/Context;Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static setBrightnessValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static syncUnderlyingBrightness(I)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/systemui/statusbar/preference/Brightness;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Brightness;->syncUnderlyingBrightness(I)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Brightness;->onStop()V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->getAutomaticBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessBarVisibility(Z)V

    new-instance v2, Lcom/android/systemui/statusbar/preference/HtcBrightnessMappingSchemeWith226Levels;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/preference/HtcBrightnessMappingSchemeWith226Levels;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->setProgressMax(Lcom/android/systemui/statusbar/widget/SeekBar;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->getBrightnessValue(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->encodeBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget v3, p0, Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessValue(Landroid/content/Context;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    return-void
.end method

.method protected setBrightnessBarVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
