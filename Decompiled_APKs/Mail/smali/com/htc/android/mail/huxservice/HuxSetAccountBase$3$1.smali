.class Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;
.super Ljava/lang/Object;
.source "HuxSetAccountBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 336
    return-void
.end method
