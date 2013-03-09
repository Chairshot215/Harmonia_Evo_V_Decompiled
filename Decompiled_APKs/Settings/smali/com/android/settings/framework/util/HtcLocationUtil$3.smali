.class Lcom/android/settings/framework/util/HtcLocationUtil$3;
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
    .line 257
    iput-object p1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$3;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$3;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    #getter for: Lcom/android/settings/framework/util/HtcLocationUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->access$100(Lcom/android/settings/framework/util/HtcLocationUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, mEnable:Z
    iget-object v1, p0, Lcom/android/settings/framework/util/HtcLocationUtil$3;->this$0:Lcom/android/settings/framework/util/HtcLocationUtil;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateSystemAGpsSettings(Z)V

    .line 266
    return-void
.end method
