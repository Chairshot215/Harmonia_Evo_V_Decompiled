.class Lcom/htc/android/mail/eassvc/contact/ContactManager$1;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/contact/ContactManager;->addContacts(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

.field final synthetic val$contacts:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/contact/ContactManager;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    iput-object p2, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;->val$contacts:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;->this$0:Lcom/htc/android/mail/eassvc/contact/ContactManager;

    #getter for: Lcom/htc/android/mail/eassvc/contact/ContactManager;->mPIMSyncContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/contact/ContactManager;->access$000(Lcom/htc/android/mail/eassvc/contact/ContactManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/contact/ContactManager$1;->val$contacts:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    return-void
.end method
