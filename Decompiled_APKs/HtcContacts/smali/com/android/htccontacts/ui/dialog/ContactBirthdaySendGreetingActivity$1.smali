.class Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity$1;
.super Ljava/lang/Object;
.source "ContactBirthdaySendGreetingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->prepareDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity$1;->this$0:Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 533
    const-string v0, "ContactBirthdaySendGreetingActivity"

    const-string v1, "Dialog onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity$1;->this$0:Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->finish()V

    .line 535
    return-void
.end method
