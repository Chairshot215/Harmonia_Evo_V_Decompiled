.class Lcom/htc/android/htcime/ui/AddWordDialog$5;
.super Ljava/lang/Object;
.source "AddWordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddWordDialog;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddWordDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddWordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$5;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$5;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    #calls: Lcom/htc/android/htcime/ui/AddWordDialog;->updateButtonState()V
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->access$000(Lcom/htc/android/htcime/ui/AddWordDialog;)V

    .line 197
    return-void
.end method
