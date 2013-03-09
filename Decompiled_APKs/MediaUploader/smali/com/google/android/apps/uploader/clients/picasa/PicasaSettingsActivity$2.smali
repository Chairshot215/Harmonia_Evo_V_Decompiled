.class Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$2;
.super Ljava/lang/Object;
.source "PicasaSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$200(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->sessionAlbumId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$302(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method
