.class public Lcom/android/systemui/statusbar/preference/Flashlight;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Flashlight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;
    }
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = null

.field private static final FLASHLIGHT_FILE_flashlight:Ljava/lang/String; = "/sys/class/leds/flashlight/brightness"

.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_HIGH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Flashlight"


# instance fields
.field currentMode:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mWriter:Ljava/io/FileWriter;

.field runTimer:Z

.field threadExecutor:Ljava/util/concurrent/ExecutorService;

.field useDeathRay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$1;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->currentMode:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->useDeathRay:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/Flashlight;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/Flashlight;Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/Flashlight;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->getFlashlightEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/Flashlight;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/preference/Flashlight;->setFlashlightEnabled(Z)V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->setup()V

    return-void
.end method

.method private setup()V
    .locals 5

    const/4 v3, 0x0

    const-string v4, "/sys/class/leds/flashlight/brightness"

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "supersonic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->useDeathRay:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/sys/class/leds/flashlight/brightness"

    sput-object v4, Lcom/android/systemui/statusbar/preference/Flashlight;->FLASHLIGHT_FILE:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "/sys/class/leds/flashlight/brightness"

    sput-object v1, Lcom/android/systemui/statusbar/preference/Flashlight;->FLASHLIGHT_FILE:Ljava/lang/String;

    goto :goto_1
.end method

.method private startTimer(Z)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;-><init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->threadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Lcom/android/systemui/statusbar/preference/Flashlight;->FLASHLIGHT_FILE:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    move v3, v4

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Flashlight;->getFlashlightEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v2, 0x10403a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setFlashlightEnabled(Z)V
    .locals 6

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/android/systemui/statusbar/preference/Flashlight;->FLASHLIGHT_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->currentMode:I

    packed-switch v2, :pswitch_data_0

    const v1, 0x7c

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/Flashlight;->startTimer(Z)V

    return-void

    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->useDeathRay:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    const v2, 0x7f

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    const v2, 0x7c

    move v1, v2

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "Flashlight"

    const-string v3, "setFlashlightEnabled failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
