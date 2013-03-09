.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;
.super Ljava/lang/Object;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iput-object p2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v0, v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 108
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v0, v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_encryption"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v0, v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v0, v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v0, v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method
