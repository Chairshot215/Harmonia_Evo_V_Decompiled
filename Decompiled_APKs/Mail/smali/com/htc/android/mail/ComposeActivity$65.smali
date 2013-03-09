.class Lcom/htc/android/mail/ComposeActivity$65;
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
    .line 8047
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$65;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 8049
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$65;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$65;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->curBtn:Lcom/htc/widget/QuickContactBadge;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$3700(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    #calls: Lcom/htc/android/mail/ComposeActivity;->removeAttachment(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10100(Lcom/htc/android/mail/ComposeActivity;Landroid/view/View;)V

    .line 8050
    return-void
.end method
