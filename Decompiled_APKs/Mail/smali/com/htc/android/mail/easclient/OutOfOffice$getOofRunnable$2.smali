.class Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$600(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$2;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->showDialog(I)V

    .line 594
    :cond_0
    return-void
.end method
