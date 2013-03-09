.class public Lcom/android/settings/Settings$DataUsageSummaryActivity;
.super Lcom/android/settings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageSummaryActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1382
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1388
    invoke-super {p0, p1}, Lcom/android/settings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 1389
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.usage"

    const-string v3, "com.htc.usage.DataUsageSummaryActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1392
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1393
    invoke-virtual {p0}, Lcom/android/settings/Settings$DataUsageSummaryActivity;->finish()V

    .line 1394
    return-void
.end method
