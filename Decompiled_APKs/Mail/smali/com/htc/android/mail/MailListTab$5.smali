.class Lcom/htc/android/mail/MailListTab$5;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$5;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$5;->this$0:Lcom/htc/android/mail/MailListTab;

    #calls: Lcom/htc/android/mail/MailListTab;->checkConversationTab()V
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$600(Lcom/htc/android/mail/MailListTab;)V

    .line 630
    return-void
.end method
