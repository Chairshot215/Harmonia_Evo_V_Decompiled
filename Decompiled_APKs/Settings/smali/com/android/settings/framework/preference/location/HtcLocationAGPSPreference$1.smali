.class Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;
.super Lcom/android/settings/framework/receiver/HtcAbstractReceiver;
.source "HtcLocationAGPSPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/receiver/HtcAbstractReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;->this$0:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->dispatchGetValueMessage()V

    .line 87
    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 91
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    return-void
.end method
