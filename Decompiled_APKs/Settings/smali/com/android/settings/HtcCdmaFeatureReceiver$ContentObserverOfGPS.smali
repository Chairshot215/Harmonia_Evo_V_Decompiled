.class Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;
.super Landroid/database/ContentObserver;
.source "HtcCdmaFeatureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaFeatureReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverOfGPS"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaFeatureReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/HtcCdmaFeatureReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;->this$0:Lcom/android/settings/HtcCdmaFeatureReceiver;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/HtcCdmaFeatureReceiver$ContentObserverOfGPS;->this$0:Lcom/android/settings/HtcCdmaFeatureReceiver;

    #calls: Lcom/android/settings/HtcCdmaFeatureReceiver;->syncLocationSettingIcon()V
    invoke-static {v0}, Lcom/android/settings/HtcCdmaFeatureReceiver;->access$000(Lcom/android/settings/HtcCdmaFeatureReceiver;)V

    .line 60
    return-void
.end method
