.class Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$2;
.super Ljava/lang/Object;
.source "ConnectionAuthErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->makeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$2;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$2;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->finish()V

    .line 70
    return-void
.end method
