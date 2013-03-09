.class Lcom/android/settings/HtcCdmaGPSLocationSetting$5;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting;->showWarningMessageOnBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$5;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$5;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->setshowGPSONEforWarning(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$5;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->finish()V

    .line 460
    return-void
.end method
