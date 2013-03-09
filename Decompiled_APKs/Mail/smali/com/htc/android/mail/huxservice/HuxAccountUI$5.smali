.class Lcom/htc/android/mail/huxservice/HuxAccountUI$5;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$5;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$5;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->btnFncR()V

    .line 353
    return-void
.end method
