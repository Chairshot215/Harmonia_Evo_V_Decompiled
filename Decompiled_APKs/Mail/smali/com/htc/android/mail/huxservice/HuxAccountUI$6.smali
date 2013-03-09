.class Lcom/htc/android/mail/huxservice/HuxAccountUI$6;
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
    .line 356
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 360
    .local v0, cursor:I
    if-eqz p2, :cond_2

    .line 361
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 365
    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1
.end method
