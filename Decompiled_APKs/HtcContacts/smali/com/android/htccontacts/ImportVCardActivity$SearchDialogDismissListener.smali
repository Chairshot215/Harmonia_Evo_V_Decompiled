.class Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "ImportVCardActivity"

    const-string v1, "Search dialog is dismissed, destroy ImportVCardActivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    .line 228
    :cond_0
    return-void
.end method
