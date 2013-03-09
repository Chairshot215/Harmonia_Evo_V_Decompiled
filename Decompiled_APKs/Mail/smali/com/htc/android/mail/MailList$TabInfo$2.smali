.class Lcom/htc/android/mail/MailList$TabInfo$2;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$TabInfo;->getEmptyMailboxHeaderView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$TabInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 6141
    iput-object p1, p0, Lcom/htc/android/mail/MailList$TabInfo$2;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 6143
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo$2;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->emptyFolder()V

    .line 6144
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo$2;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->exitBatchMode()Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$8500(Lcom/htc/android/mail/MailList;)Z

    .line 6145
    return-void
.end method
