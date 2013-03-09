.class Lcom/htc/android/htcime/ui/AddWordDialog$4;
.super Ljava/lang/Object;
.source "AddWordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 161
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddWordDialog$4;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$4;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->submitWord()V

    .line 165
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddWordDialog$4;->this$0:Lcom/htc/android/htcime/ui/AddWordDialog;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/AddWordDialog;->finish()V

    .line 166
    return-void
.end method
