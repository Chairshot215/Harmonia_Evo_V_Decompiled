.class Lcom/htc/android/mail/ComposeActivity$62;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7959
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$62;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 7961
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$62;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$62;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeAddedContact(Lcom/htc/android/mail/ReceiverList;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10000(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ReceiverList;)V

    .line 7962
    return-void
.end method
