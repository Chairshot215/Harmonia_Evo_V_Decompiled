.class Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;
.super Ljava/lang/Object;
.source "ConnectionAuthErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 55
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    #calls: Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->bindService()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->access$000(Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog$1;->this$0:Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;->finish()V

    goto :goto_0
.end method
