.class Lcom/htc/android/mail/MailListTab$13;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->setTitleBar()V
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
    .line 1178
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$13;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$13;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/AbsRequestController;->broadcastDoChangeFolder()V

    .line 1181
    return-void
.end method
