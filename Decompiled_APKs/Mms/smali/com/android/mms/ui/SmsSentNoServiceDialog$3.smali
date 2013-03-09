.class Lcom/android/mms/ui/SmsSentNoServiceDialog$3;
.super Ljava/lang/Object;
.source "SmsSentNoServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsSentNoServiceDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$3;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;

    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$3;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;-><init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;I)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method
