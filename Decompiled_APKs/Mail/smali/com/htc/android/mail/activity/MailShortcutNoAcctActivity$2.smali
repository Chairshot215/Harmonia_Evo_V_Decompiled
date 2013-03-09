.class Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$2;
.super Ljava/lang/Object;
.source "MailShortcutNoAcctActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$2;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$2;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->finish()V

    .line 67
    return-void
.end method
