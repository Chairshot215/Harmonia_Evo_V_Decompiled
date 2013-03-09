.class final Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;
.super Ljava/lang/Object;
.source "HtcCdmaGPSLocationSettingV2.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;Lcom/android/settings/HtcCdmaGPSLocationSettingV2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;-><init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$GpsSettingsObserver;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateToggles()V
    invoke-static {v0}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$600(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    .line 369
    return-void
.end method
