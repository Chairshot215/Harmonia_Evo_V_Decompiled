.class Lcom/android/mms/ui/DeclineConfirmationDialog$2;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeclineConfirmationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$2;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/DeclineConfirmationDialog$2;->this$0:Lcom/android/mms/ui/DeclineConfirmationDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeclineConfirmationDialog;->finish()V

    .line 63
    return-void
.end method
