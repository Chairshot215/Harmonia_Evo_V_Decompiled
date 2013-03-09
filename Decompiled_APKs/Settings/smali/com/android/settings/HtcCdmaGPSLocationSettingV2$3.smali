.class Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSettingV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->showWarningMessageOnBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$100(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/HtcCdmaFeatureReceiver;->setPrefOfShowWarnningOnBoot(Landroid/content/Context;Z)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 278
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$3;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->finish()V

    .line 279
    return-void
.end method
