.class Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;
.super Ljava/lang/Object;
.source "HuxSetAccountBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 251
    return-void
.end method
