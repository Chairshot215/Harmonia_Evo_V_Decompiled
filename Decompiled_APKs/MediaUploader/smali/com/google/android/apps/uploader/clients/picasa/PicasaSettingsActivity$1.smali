.class Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;
.super Ljava/lang/Object;
.source "PicasaSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getAccount()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$000(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getAuthToken()Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$100(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    return-void
.end method
