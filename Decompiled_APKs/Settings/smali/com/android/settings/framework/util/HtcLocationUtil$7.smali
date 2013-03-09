.class Lcom/android/settings/framework/util/HtcLocationUtil$7;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 429
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$7;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 431
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 435
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$7;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$7;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mAssistedGPS:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$200(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->reflashUI()V

    .line 437
    :cond_0
    return-void
.end method
