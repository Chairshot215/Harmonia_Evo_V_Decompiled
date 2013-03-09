.class final Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "GPSWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/GPSWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/GPSWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 148
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$500(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, bFirstGetGPSValue:Z
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 151
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$600(Lcom/htc/htcsettingwidgets/GPSWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    #setter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v1, v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$302(Lcom/htc/htcsettingwidgets/GPSWidget;Z)Z

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v2

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->displayState(Z)V
    invoke-static {v1, v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$700(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    .line 158
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v2

    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->notifyGPSStatusBar(Z)V
    invoke-static {v1, v2}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$800(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    .line 160
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingsObserver;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #setter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$302(Lcom/htc/htcsettingwidgets/GPSWidget;Z)Z

    goto :goto_1

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method
