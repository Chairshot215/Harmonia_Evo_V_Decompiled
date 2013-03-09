.class Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;
.super Ljava/lang/Object;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ExportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ExportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ExportVCardActivity;Lcom/android/htccontacts/ExportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ExportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "ExportVCardActivity"

    const-string v1, "Search dialog is dismissed, destroy ExportVCardActivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/ExportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ExportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ExportVCardActivity;->finish()V

    .line 119
    :cond_0
    return-void
.end method
