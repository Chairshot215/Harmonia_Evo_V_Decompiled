.class Lcom/google/android/apps/uploader/clients/SettingsActivity$10;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;->loadAndValidateFileInfo(Landroid/net/Uri;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

.field final synthetic val$finalMessageId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iput p2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;->val$finalMessageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iget v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;->val$finalMessageId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 502
    return-void
.end method
