.class Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;

.field final synthetic val$target:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13353
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;->this$0:Lcom/htc/android/mail/ComposeActivity$showMoveRecipient;

    iput-object p2, p0, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;->val$target:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 13355
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showMoveRecipient$1;->val$target:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->showMoveRecipientMenu()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$14600(Lcom/htc/android/mail/ComposeActivity;)V

    .line 13356
    return-void
.end method
