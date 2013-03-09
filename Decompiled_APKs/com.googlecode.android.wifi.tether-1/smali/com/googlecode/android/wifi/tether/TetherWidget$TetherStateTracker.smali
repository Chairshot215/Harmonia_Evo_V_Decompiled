.class final Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;
.super Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;
.source "TetherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TetherStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;-><init>(Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 242
    packed-switch p0, :pswitch_data_0

    .line 252
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 244
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 250
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 195
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 196
    .local v0, tetherService:Lcom/googlecode/android/wifi/tether/TetherService;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 199
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 233
    const-string v1, "state"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, tetherState:I
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 235
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 208
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;-><init>(Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker;ZLandroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 228
    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$TetherStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method
