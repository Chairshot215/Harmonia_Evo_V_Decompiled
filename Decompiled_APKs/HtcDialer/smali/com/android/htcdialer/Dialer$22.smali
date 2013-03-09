.class Lcom/android/htcdialer/Dialer$22;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$msg2:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6386
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$22;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$22;->val$msg2:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6391
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$22;->val$msg2:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6392
    return-void
.end method
