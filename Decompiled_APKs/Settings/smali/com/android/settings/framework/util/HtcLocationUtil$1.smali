.class Lcom/android/settings/framework/util/HtcLocationUtil$1;
.super Ljava/lang/Object;
.source "HtcLocationUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 284
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$1;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 287
    const/4 v1, 0x4

    if-ne v1, p2, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$1;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateSystemAGpsSettings(Z)V

    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 294
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$1;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/framework/util/HtcLocationUtil$1;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mLocAGPS:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
    invoke-static {v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$000(Lcom/android/settings/framework/util/HtcLocationUtil;)Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->reflashUI()V

    .line 296
    :cond_0
    const/4 v0, 0x1

    .line 298
    :cond_1
    return v0
.end method
