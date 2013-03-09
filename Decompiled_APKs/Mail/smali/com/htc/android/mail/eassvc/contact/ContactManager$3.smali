.class Lcom/htc/android/mail/eassvc/contact/ContactManager$3;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/contact/ContactManager;->deleteContacts(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

.field final synthetic val$contacts:Landroid/content/Intent;

.field final synthetic val$svrCL:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->val$contacts:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->val$svrCL:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    #getter for: Lcom/htc/android/mail/eassvc/contact/ContactManager;->mPIMSyncContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->access$000(Lcom/htc/android/mail/eassvc/contact/ContactManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->val$contacts:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1106
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$3;->val$svrCL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1107
    return-void
.end method
