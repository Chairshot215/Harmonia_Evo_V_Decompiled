.class public Lcom/android/systemui/statusbar/tablet/HeightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeightReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.HeightReceiver"


# instance fields
.field mContext:Landroid/content/Context;

.field mHeight:I

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mPlugged:Z

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private setPlugged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->updateHeight()V

    return-void
.end method


# virtual methods
.method public addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->setPlugged(Z)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public removeOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateHeight()V
    .locals 12

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v3, -0x1

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    if-eqz v9, :cond_0

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v9, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v8, v2

    :cond_0
    const v9, 0x105000a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-ge v3, v6, :cond_1

    move v3, v6

    :cond_1
    const-string v9, "StatusBar.HeightReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resizing status bar plugged="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mPlugged:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mHeight:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;

    invoke-interface {v9, v3}, Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;->onBarHeightChanged(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
