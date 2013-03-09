.class Lcom/android/mms/ui/ComfirmDialogActivity$1;
.super Ljava/lang/Object;
.source "ComfirmDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 38
    iput-object p1, p0, Lcom/android/mms/ui/ComfirmDialogActivity$1;->this$0:Lcom/android/mms/ui/ComfirmDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 40
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/mms/ui/ComfirmDialogActivity$1;->this$0:Lcom/android/mms/ui/ComfirmDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComfirmDialogActivity;->finish()V

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
