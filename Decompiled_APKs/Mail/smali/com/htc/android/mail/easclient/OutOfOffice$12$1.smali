.class Lcom/htc/android/mail/easclient/OutOfOffice$12$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$12;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$12;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$12;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$200(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$12;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelOof(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
