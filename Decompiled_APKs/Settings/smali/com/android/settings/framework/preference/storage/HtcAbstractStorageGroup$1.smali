.class Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;
.super Landroid/os/storage/StorageEventListener;
.source "HtcAbstractStorageGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;

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
    .line 219
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->isPathMatched(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup$1;->this$0:Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/storage/HtcAbstractStorageGroup;->updateGroupStates()V

    .line 222
    :cond_0
    return-void
.end method
