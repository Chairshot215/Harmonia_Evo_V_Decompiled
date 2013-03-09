.class Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcAppStorageLocationSettingsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;

    #calls: Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->updateStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;->access$000(Lcom/android/settings/framework/preference/storage/HtcAppStorageLocationSettingsPreference;)V

    .line 129
    return-void
.end method
