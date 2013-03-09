.class Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcAppStorageLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

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
    .line 226
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    #calls: Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->updateStatus()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->access$200(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V

    .line 227
    return-void
.end method
