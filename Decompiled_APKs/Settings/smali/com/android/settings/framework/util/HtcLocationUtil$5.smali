.class Lcom/android/settings/framework/util/HtcLocationUtil$5;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoAGpsOnQCT(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/util/HtcLocationUtil;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/util/HtcLocationUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$300(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$300(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-string v2, "disable_agps"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 352
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$5;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->reflashUI()V

    .line 358
    :cond_1
    return-void
.end method
