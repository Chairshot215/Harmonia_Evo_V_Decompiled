.class Lcom/htc/android/mail/ComposeActivity$showRecipientDialogClickListener;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showRecipientDialogClickListener"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogClickListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1698
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogClickListener;->mTarget:Ljava/lang/ref/WeakReference;

    .line 1699
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1701
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogClickListener;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ComposeActivity;

    .line 1702
    .local v0, target:Lcom/htc/android/mail/ComposeActivity;
    if-nez v0, :cond_0

    .line 1706
    :goto_0
    return-void

    .line 1704
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ReceiverList;

    iput-object v1, v0, Lcom/htc/android/mail/ComposeActivity;->currRecipient:Lcom/htc/android/mail/ReceiverList;

    .line 1705
    new-instance v1, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogClickListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;-><init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ComposeActivity$showRecipientDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
