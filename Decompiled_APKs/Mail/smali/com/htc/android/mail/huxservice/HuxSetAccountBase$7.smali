.class Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;
.super Ljava/lang/Object;
.source "HuxSetAccountBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
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
    .line 1150
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    if-nez v0, :cond_1

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreen()V

    .line 1155
    :cond_1
    return-void
.end method
