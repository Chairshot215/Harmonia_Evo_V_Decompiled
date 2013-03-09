.class Lcom/htc/android/mail/MailList$21;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
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
    .line 2059
    iput-object p1, p0, Lcom/htc/android/mail/MailList$21;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/htc/android/mail/MailList$21;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->moveBatchMail2()V

    .line 2062
    return-void
.end method
