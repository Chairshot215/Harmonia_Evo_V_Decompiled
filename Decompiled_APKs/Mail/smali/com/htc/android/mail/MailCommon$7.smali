.class Lcom/htc/android/mail/MailCommon$7;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$7;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/htc/android/mail/MailCommon$7;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->downloadAttachmentThread(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/android/mail/MailCommon;->access$400(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V

    .line 1544
    return-void
.end method
