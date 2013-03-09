.class public Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.super Ljava/lang/Object;
.source "StatusBarPreference.java"


# instance fields
.field protected mCheckBox:Lcom/htc/widget/HtcToggleButton;

.field protected mContentView:Landroid/widget/LinearLayout;

.field protected mContext:Landroid/content/Context;

.field protected mDivider:Landroid/widget/ImageView;

.field private mEnable:Z

.field protected mIcon:Landroid/widget/ImageView;

.field protected mItemView:Landroid/widget/LinearLayout;

.field protected mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field protected mSummary:Landroid/widget/TextView;

.field protected mTitle:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mDivider:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->init()V

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00b0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/SeekBar;->setWidth(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00b3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcToggleButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    return-void
.end method


# virtual methods
.method public collapseStatusBar()V
    .locals 1

    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V

    const/4 p0, 0x0

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mEnable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v3, "Unable to start activity"

    const/4 v2, 0x0

    const/high16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "StatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Silly, I do not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateResources()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mItemView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v4, "status_bar_item_background"

    const v5, 0x7f02022e

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->updateSkinResources(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/widget/SeekBar;->updateResources()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method
