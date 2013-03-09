.class Lcom/htc/android/mail/RequestController$3;
.super Ljava/lang/Object;
.source "RequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$3;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$3;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/RequestController;->access$2302(Lcom/htc/android/mail/RequestController;Z)Z

    .line 1731
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$3;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->redo()V
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2400(Lcom/htc/android/mail/RequestController;)V

    .line 1732
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$3;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->resume()V
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2500(Lcom/htc/android/mail/RequestController;)V

    .line 1733
    return-void
.end method
