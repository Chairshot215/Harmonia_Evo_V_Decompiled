.class public Lcom/android/systemui/statusbar/phone/BatteryBar;
.super Landroid/widget/TextView;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;
    }
.end annotation


# static fields
.field private static final STYLE_DISABLE:I = 0x2

.field private static final STYLE_SHOW:I = 0x1


# instance fields
.field private batteryLevel:I

.field private batteryStatus:I

.field private height:I

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private style:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/BatteryBar;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BatteryBar$SettingsObserver;->observe()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->updateBatteryBar()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->mAttached:Z

    :cond_0
    return-void
.end method

.method final updateBatteryBar()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->updateBatteryColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_style"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->style:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_height"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->style:I

    if-ne v3, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->width:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setVisibility(I)V

    goto :goto_0
.end method

.method final updateBatteryColor()V
    .locals 10

    const/4 v9, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_auto_color"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_color_auto_charging"

    const v8, -0x6c2b00

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_color_auto_regular"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_color_auto_medium"

    const v8, -0x2a5d00

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_color_auto_low"

    const v8, -0x2ab500

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_color"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v0, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setBackgroundColor(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I

    const/16 v7, 0x28

    if-ge v6, v7, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setBackgroundColor(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setBackgroundColor(I)V

    goto :goto_1
.end method
