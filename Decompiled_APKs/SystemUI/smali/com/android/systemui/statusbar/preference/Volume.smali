.class public Lcom/android/systemui/statusbar/preference/Volume;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Volume.java"

# interfaces
.implements Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field protected static final VOLUME_ICONS:[I

.field protected static final VOLUME_SETTINGS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaxProgress:I

.field private mProgress:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field private sStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Voice Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "System Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Ringer Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Media Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "Alarm Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Notification Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Bluetooth Volume"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sput-object v0, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x58t 0x2t 0x2t 0x7ft
        0x59t 0x2t 0x2t 0x7ft
        0x5at 0x2t 0x2t 0x7ft
        0x5bt 0x2t 0x2t 0x7ft
        0x5ct 0x2t 0x2t 0x7ft
        0x5dt 0x2t 0x2t 0x7ft
        0x5et 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Volume$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Volume$1;-><init>(Lcom/android/systemui/statusbar/preference/Volume;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Volume$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preference/Volume$2;-><init>(Lcom/android/systemui/statusbar/preference/Volume;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Volume;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/Volume;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/preference/Volume;I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/Volume;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/preference/Volume;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    return p1
.end method

.method private init()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    :cond_1
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(IZ)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mMaxProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setOnSeekBarChangeListener(Lcom/android/systemui/statusbar/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I

    sget-object v1, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
