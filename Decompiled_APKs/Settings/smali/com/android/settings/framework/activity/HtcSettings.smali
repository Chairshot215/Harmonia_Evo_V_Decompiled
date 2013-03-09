.class public final Lcom/android/settings/framework/activity/HtcSettings;
.super Landroid/app/Activity;
.source "HtcSettings.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/HtcSettings;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/HtcSettings;->finish()V

    .line 28
    return-void
.end method
