.class Lcom/android/mms/ui/DeclineConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DeclineConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeclineConfirmationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

.field final synthetic val$msgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeclineConfirmationDialog;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    iput-object p2, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->val$msgUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    iget-object v1, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/DeclineConfirmationDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->val$msgUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$1;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeclineConfirmationDialog;->finish()V

    .line 56
    return-void
.end method
