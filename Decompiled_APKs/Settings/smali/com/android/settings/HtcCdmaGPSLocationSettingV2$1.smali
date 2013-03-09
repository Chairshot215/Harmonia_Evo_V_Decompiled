.class Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;
.super Landroid/os/Handler;
.source "HtcCdmaGPSLocationSettingV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;
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
    .line 56
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    .line 64
    return-void
.end method
