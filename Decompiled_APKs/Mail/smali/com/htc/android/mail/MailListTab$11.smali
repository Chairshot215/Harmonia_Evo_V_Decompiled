.class Lcom/htc/android/mail/MailListTab$11;
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
    .line 1127
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$11;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$11;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 1132
    return-void
.end method
