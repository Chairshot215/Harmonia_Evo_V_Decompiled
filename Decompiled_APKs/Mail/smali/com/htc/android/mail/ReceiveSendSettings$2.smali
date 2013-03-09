.class Lcom/htc/android/mail/ReceiveSendSettings$2;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$2;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$2;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$2;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ReceiveSendSettings;->removeDialog(I)V

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
