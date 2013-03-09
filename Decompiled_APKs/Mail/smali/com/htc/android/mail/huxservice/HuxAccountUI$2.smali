.class Lcom/htc/android/mail/huxservice/HuxAccountUI$2;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 300
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 304
    if-nez p2, :cond_2

    .line 305
    const/4 v1, 0x0

    .local v1, emailaddr:Ljava/lang/String;
    move-object v3, p1

    .line 306
    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, userName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 309
    .local v0, domainName:Ljava/lang/String;
    const-string v3, "Yahoo"

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    const-string v0, "yahoo.com"

    .line 319
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 320
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v0           #domainName:Ljava/lang/String;
    .end local v1           #emailaddr:Ljava/lang/String;
    .end local v2           #userName:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 311
    .restart local v0       #domainName:Ljava/lang/String;
    .restart local v1       #emailaddr:Ljava/lang/String;
    .restart local v2       #userName:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v3, "MSN"

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    const-string v0, "hotmail.com"

    goto :goto_0

    .line 313
    :cond_4
    const-string v3, "Google"

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    const-string v0, "gmail.com"

    goto :goto_0

    .line 315
    :cond_5
    const-string v3, "AOL"

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;->this$0:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    const-string v0, "aol.com"

    goto :goto_0

    .line 322
    :cond_6
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
