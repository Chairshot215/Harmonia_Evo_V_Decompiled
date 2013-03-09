.class Lcom/htc/android/mail/MailListTab$14;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->initSearchBar()V
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
    .line 1198
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$14;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1200
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "press search filter>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$14;->this$0:Lcom/htc/android/mail/MailListTab;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab;->showDialog(I)V

    .line 1202
    return-void
.end method
