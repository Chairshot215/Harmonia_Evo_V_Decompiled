.class Lcom/android/mms/ui/ComfirmDialogActivity$2;
.super Ljava/lang/Object;
.source "ComfirmDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComfirmDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComfirmDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComfirmDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/mms/ui/ComfirmDialogActivity$2;->this$0:Lcom/android/mms/ui/ComfirmDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity$2;->this$0:Lcom/android/mms/ui/ComfirmDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComfirmDialogActivity;->finish()V

    .line 35
    return-void
.end method
