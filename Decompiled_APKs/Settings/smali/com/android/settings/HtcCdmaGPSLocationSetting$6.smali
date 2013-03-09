.class Lcom/android/settings/HtcCdmaGPSLocationSetting$6;
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
    .line 451
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$6;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-virtual {v0}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->finish()V

    .line 454
    return-void
.end method
