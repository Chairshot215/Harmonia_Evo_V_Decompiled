.class Lcom/htc/android/mail/ReceiveSendSettings$4$1;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ReceiveSendSettings$4;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings$4;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$4$1;->this$1:Lcom/htc/android/mail/ReceiveSendSettings$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings$4$1;->this$1:Lcom/htc/android/mail/ReceiveSendSettings$4;

    iget-object v0, v0, Lcom/htc/android/mail/ReceiveSendSettings$4;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->commitMailboxChanges()V

    .line 226
    return-void
.end method
