.class Lcom/htc/android/mail/ReceiveSendSettings$3;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 236
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$3;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings$3;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mDefaultSyncEnabledBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/htc/android/mail/ReceiveSendSettings;->access$100(Lcom/htc/android/mail/ReceiveSendSettings;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 239
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings$3;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReceiveSendSettings;->removeDialog(I)V

    .line 240
    return-void
.end method
