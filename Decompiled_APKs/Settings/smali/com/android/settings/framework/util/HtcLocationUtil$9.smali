.class Lcom/android/settings/framework/util/HtcLocationUtil$9;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoMobileNetwork(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;)V
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
    .line 405
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$9;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$9;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 411
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 414
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$9;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$9;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->reflashUI()V

    .line 416
    :cond_0
    return-void
.end method
