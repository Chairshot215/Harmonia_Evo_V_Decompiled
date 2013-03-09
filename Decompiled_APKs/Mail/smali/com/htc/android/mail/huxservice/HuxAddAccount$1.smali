.class Lcom/htc/android/mail/huxservice/HuxAddAccount$1;
.super Ljava/lang/Object;
.source "HuxAddAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxAddAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 143
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxAddAccount;->showDialog(I)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, body:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    iget v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    iget v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_endpoint(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAddAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAddAccount;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method
