.class Lcom/android/settings/framework/util/HtcLocationUtil$2;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoAGpsOn(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;)V
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
    .line 269
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$2;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$2;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateSystemAGpsSettings(Z)V

    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$2;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$2;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->reflashUI()V

    .line 279
    :cond_0
    return-void
.end method
