.class public Landroid/support/v13/dreams/BasicDream;
.super Landroid/app/Activity;
.source "BasicDream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/dreams/BasicDream$BasicDreamView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BasicDream"


# instance fields
.field private mPlugged:Z

.field private final mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    .line 59
    new-instance v0, Landroid/support/v13/dreams/BasicDream$1;

    invoke-direct {v0, p0}, Landroid/support/v13/dreams/BasicDream$1;-><init>(Landroid/support/v13/dreams/BasicDream;)V

    iput-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v13/dreams/BasicDream;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Landroid/support/v13/dreams/BasicDream;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Landroid/support/v13/dreams/BasicDream;->mPlugged:Z

    return p1
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 120
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 123
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    const-string v0, "BasicDream"

    const-string v1, "exiting onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->finish()V

    .line 100
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 84
    new-instance v1, Landroid/support/v13/dreams/BasicDream$BasicDreamView;

    invoke-direct {v1, p0, p0}, Landroid/support/v13/dreams/BasicDream$BasicDreamView;-><init>(Landroid/support/v13/dreams/BasicDream;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/support/v13/dreams/BasicDream;->setContentView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/support/v13/dreams/BasicDream;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    iget-object v0, p0, Landroid/support/v13/dreams/BasicDream;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/support/v13/dreams/BasicDream;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "BasicDream"

    const-string v1, "exiting onUserInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/support/v13/dreams/BasicDream;->finish()V

    .line 128
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 115
    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream;->mView:Landroid/view/View;

    .line 116
    return-void
.end method
