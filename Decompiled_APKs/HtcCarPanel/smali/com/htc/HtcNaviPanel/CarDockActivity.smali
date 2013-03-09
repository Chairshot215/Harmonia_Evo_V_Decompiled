.class public Lcom/htc/HtcNaviPanel/CarDockActivity;
.super Landroid/app/Activity;
.source "CarDockActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDockActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/htc/HtcNaviPanel/CarDockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 19
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/CarDockActivity;->finish()V

    .line 20
    return-void
.end method
