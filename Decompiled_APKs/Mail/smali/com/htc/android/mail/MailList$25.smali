.class Lcom/htc/android/mail/MailList$25;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 2978
    iput-object p1, p0, Lcom/htc/android/mail/MailList$25;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/htc/android/mail/MailList$25;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->manageULogForPauseAction()V
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$3800(Lcom/htc/android/mail/MailList;)V

    .line 2981
    return-void
.end method
