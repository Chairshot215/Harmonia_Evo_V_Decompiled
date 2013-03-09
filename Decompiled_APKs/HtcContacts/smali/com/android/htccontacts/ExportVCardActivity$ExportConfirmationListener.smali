.class Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportConfirmationListener"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ExportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->mFileName:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 160
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    new-instance v1, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    iget-object v2, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    iget-object v3, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;-><init>(Lcom/android/htccontacts/ExportVCardActivity;Ljava/lang/String;)V

    #setter for: Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->access$302(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;)Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    .line 162
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    #getter for: Lcom/android/htccontacts/ExportVCardActivity;->mActualExportThread:Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;
    invoke-static {v0}, Lcom/android/htccontacts/ExportVCardActivity;->access$300(Lcom/android/htccontacts/ExportVCardActivity;)Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity$ActualExportThread;->start()V

    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$ExportConfirmationListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ExportVCardActivity;->showDialog(I)V

    .line 165
    :cond_0
    return-void
.end method
