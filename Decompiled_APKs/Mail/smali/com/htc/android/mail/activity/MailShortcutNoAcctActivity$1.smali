.class Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$1;
.super Ljava/lang/Object;
.source "MailShortcutNoAcctActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 48
    iput-object p1, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$1;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 52
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity$1;->this$0:Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;->finish()V

    .line 55
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
