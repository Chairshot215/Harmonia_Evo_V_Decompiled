.class Lcom/htc/Weather/WeatherSettings$1;
.super Ljava/lang/Object;
.source "WeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/WeatherSettings;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/WeatherSettings;


# direct methods
.method constructor <init>(Lcom/htc/Weather/WeatherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/Weather/WeatherSettings$1;->this$0:Lcom/htc/Weather/WeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$1;->this$0:Lcom/htc/Weather/WeatherSettings;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_my_location_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$1;->this$0:Lcom/htc/Weather/WeatherSettings;

    #getter for: Lcom/htc/Weather/WeatherSettings;->prefMonitorMyLocationEnabled:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/Weather/WeatherSettings;->access$000(Lcom/htc/Weather/WeatherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/htc/Weather/WeatherSettings$1;->this$0:Lcom/htc/Weather/WeatherSettings;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.app.autosetting.start.phonestatemonitor"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
