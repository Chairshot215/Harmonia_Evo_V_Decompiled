.class Lcom/android/htcdialer/Dialer$21;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->createMissingVoicemailDialog(Landroid/os/Message;Landroid/os/Message;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6393
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$21;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$21;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 6398
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$21;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6399
    return-void
.end method
