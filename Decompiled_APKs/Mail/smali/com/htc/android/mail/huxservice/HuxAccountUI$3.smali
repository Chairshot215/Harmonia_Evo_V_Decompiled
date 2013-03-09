.class Lcom/htc/android/mail/huxservice/HuxAccountUI$3;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 331
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v3, 0x7f0900d1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 333
    if-eqz p2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
