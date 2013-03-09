.class Lcom/android/htccontacts/MoveContactsActivity$3;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/MoveContactsActivity;->displayDialogOnlyOneContactType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$3;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$3;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity;->finish()V

    .line 267
    return-void
.end method
