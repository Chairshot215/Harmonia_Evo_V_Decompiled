.class Lcom/htc/android/mail/ComposeActivity$43;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6006
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$43;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.eas.mail.priority.high"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6009
    .local v0, syncStateIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$43;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ComposeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6010
    return-void
.end method
