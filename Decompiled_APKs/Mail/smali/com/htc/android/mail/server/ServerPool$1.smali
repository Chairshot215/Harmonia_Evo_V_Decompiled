.class final Lcom/htc/android/mail/server/ServerPool$1;
.super Ljava/lang/Object;
.source "ServerPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/android/mail/server/ServerPool$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.mailservice.MailIntentService.CLEAR_IDLE_SERVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.mailservice.MailIntentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/htc/android/mail/server/ServerPool$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    return-void
.end method
