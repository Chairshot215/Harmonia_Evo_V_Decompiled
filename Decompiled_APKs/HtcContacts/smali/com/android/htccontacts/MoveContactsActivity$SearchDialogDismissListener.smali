.class Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchDialogDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;-><init>(Lcom/android/htccontacts/MoveContactsActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "MoveContactsActivity"

    const-string v1, "Search dialog is dismissed, destroy ExportVCardActivity..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$SearchDialogDismissListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity;->finish()V

    .line 131
    :cond_0
    return-void
.end method
