.class Lcom/android/settings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 67
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    #getter for: Lcom/android/settings/MediaFormat;->mStorageType:I
    invoke-static {v2}, Lcom/android/settings/MediaFormat;->access$000(Lcom/android/settings/MediaFormat;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.FORMAT_INTERNAL_SD_CARD_VOLUME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v2}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v2}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 81
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v2, v0}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
