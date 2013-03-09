.class Lcom/htc/android/mail/RequestController$4;
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
    .line 1736
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$4;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$4;->this$0:Lcom/htc/android/mail/RequestController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/RequestController;->mAcceptCertificate:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/RequestController;->access$2302(Lcom/htc/android/mail/RequestController;Z)Z

    .line 1739
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$4;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->resume()V
    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->access$2500(Lcom/htc/android/mail/RequestController;)V

    .line 1740
    return-void
.end method
