.class Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcMasterClearPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

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
    .line 44
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->updateVisibilityOfExternalStorageContainer()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;->access$000(Lcom/android/settings/framework/activity/storage/HtcMasterClearPatch;)V

    .line 45
    return-void
.end method
