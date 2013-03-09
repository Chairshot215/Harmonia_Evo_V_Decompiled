.class Lcom/android/settings/framework/util/HtcLocationUtil$6;
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
    .line 323
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$6;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 326
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$6;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$6;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$300(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$6;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$300(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-string v2, "enable_agps"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$6;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 336
    return-void
.end method
