.class Lcom/htc/android/mail/MailList$9;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->changeBoxEvent()V
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
    .line 1364
    iput-object p1, p0, Lcom/htc/android/mail/MailList$9;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "childPosition"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/htc/android/mail/MailList$9;->this$0:Lcom/htc/android/mail/MailList;

    #setter for: Lcom/htc/android/mail/MailList;->curBoxIndex:I
    invoke-static {v0, p2}, Lcom/htc/android/mail/MailList;->access$2502(Lcom/htc/android/mail/MailList;I)I

    .line 1368
    iget-object v0, p0, Lcom/htc/android/mail/MailList$9;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->changeBoxByIndex(I)V
    invoke-static {v0, p2}, Lcom/htc/android/mail/MailList;->access$2600(Lcom/htc/android/mail/MailList;I)V

    .line 1369
    return-void
.end method
