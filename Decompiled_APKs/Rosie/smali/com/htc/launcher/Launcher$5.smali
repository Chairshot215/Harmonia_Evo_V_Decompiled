.class Lcom/htc/launcher/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1370
    const-string v0, "Rosie"

    const-string v1, "[ROSIE_INIT] registerTelephonyManager() - get telephonyManager"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1700(Lcom/htc/launcher/Launcher;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/htc/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    #setter for: Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1, v0}, Lcom/htc/launcher/Launcher;->access$1702(Lcom/htc/launcher/Launcher;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 1373
    iget-object v0, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1700(Lcom/htc/launcher/Launcher;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1374
    const-string v0, "Rosie"

    const-string v1, "cannot get telephonyManager"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1700(Lcom/htc/launcher/Launcher;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/Launcher$5;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->phoneStateListener:Lcom/htc/launcher/Launcher$RosiePhoneStateListener;
    invoke-static {v1}, Lcom/htc/launcher/Launcher;->access$1800(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$RosiePhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method
