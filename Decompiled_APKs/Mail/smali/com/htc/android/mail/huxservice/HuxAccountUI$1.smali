.class Lcom/htc/android/mail/huxservice/HuxAccountUI$1;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 277
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$1;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->checkLastScreen()V

    .line 284
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 278
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 280
    return-void
.end method
