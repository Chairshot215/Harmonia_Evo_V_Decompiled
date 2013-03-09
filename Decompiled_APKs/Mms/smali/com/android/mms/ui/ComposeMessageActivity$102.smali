.class Lcom/android/mms/ui/ComposeMessageActivity$102;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSelectCallbackNumbersDialog([Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mCallbackNumbersArray:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17500
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$102;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$102;->val$mCallbackNumbersArray:[Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 17502
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$102;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$102;->val$mCallbackNumbersArray:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->getLauchDialerWithPhoneIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 17503
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17504
    return-void
.end method
