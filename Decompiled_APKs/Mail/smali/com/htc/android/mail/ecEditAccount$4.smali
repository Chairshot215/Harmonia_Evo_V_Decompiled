.class Lcom/htc/android/mail/ecEditAccount$4;
.super Ljava/lang/Object;
.source "ecEditAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecEditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ecEditAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ecEditAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/htc/android/mail/ecEditAccount$4;->this$0:Lcom/htc/android/mail/ecEditAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$4;->this$0:Lcom/htc/android/mail/ecEditAccount;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/ecEditAccount;->mDelCurrentAccount:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/ecEditAccount;->access$302(Lcom/htc/android/mail/ecEditAccount;Z)Z

    .line 640
    iget-object v0, p0, Lcom/htc/android/mail/ecEditAccount$4;->this$0:Lcom/htc/android/mail/ecEditAccount;

    #calls: Lcom/htc/android/mail/ecEditAccount;->goStep2()V
    invoke-static {v0}, Lcom/htc/android/mail/ecEditAccount;->access$700(Lcom/htc/android/mail/ecEditAccount;)V

    .line 641
    return-void
.end method
