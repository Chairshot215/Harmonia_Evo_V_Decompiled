.class Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;
.super Ljava/lang/Object;
.source "HtcAppStorageLocationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlugInUIEntry"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->mPackageName:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->mTitle:Ljava/lang/String;

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->access$100(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/preference/storage/appstorage/HtcAppStorageLocationPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$PlugInUIEntry;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->mHtcAppStorageRef:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->access$100(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 154
    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method
