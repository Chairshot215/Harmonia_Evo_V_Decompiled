.class Lcom/google/android/apps/uploader/clients/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$000(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->onAccountSelected(Ljava/lang/String;)V
    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$100(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)V

    .line 109
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
    .line 112
    return-void
.end method
