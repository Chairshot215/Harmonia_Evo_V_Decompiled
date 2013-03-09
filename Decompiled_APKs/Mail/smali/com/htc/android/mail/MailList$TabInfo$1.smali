.class Lcom/htc/android/mail/MailList$TabInfo$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$TabInfo;->getOutMailboxHeaderView()Landroid/view/View;
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
    .line 6124
    iput-object p1, p0, Lcom/htc/android/mail/MailList$TabInfo$1;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 6126
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo$1;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->menuRefreshMail()Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$8400(Lcom/htc/android/mail/MailList;)Z

    .line 6127
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo$1;->this$1:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->exitBatchMode()Z
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$8500(Lcom/htc/android/mail/MailList;)Z

    .line 6128
    return-void
.end method
