.class public Lcom/android/systemui/statusbar/phone/BatteryText;
.super Landroid/widget/TextView;
.source "BatteryText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BatteryText$SettingsObserver;
    }
.end annotation


# static fields
.field private static final STYLE_DISABLE:I = 0x2

.field private static final STYLE_NO_PERCENT:I = 0x4

.field private static final STYLE_SHOW:I = 0x1

.field private static final STYLE_SMALL_PERCENT:I = 0x3


# instance fields
.field private appendText:Ljava/lang/String;

.field private batteryLevel:I

.field private batteryStatus:I

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "% "

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->appendText:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryText$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/BatteryText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "% "

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->appendText:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BatteryText$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BatteryText$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryText;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryText$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/BatteryText;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryText$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BatteryText;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BatteryText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->updateSettings()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/BatteryText;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/BatteryText;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryStatus:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/BatteryText;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    return p1
.end method

.method private updateSettings()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_battery_text_style"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->updateBatteryColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->updateBatteryText()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->mAttached:Z

    :cond_0
    return-void
.end method

.method final updateBatteryColor()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_auto_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    move v0, v8

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_auto_charging"

    const v8, -0x6c2b00

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_auto_regular"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_auto_medium"

    const v8, -0x2a5d00

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_auto_low"

    const v8, -0x2ab500

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_batt_color_static"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v0, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryStatus:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BatteryText;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    const/16 v7, 0x28

    if-ge v6, v7, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryText;->setTextColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/BatteryText;->setTextColor(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/BatteryText;->setTextColor(I)V

    goto :goto_1
.end method

.method final updateBatteryText()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_battery_text_style"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/BatteryText;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->appendText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/BatteryText;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->style:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/BatteryText;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/BatteryText;->setVisibility(I)V

    goto :goto_0
.end method
