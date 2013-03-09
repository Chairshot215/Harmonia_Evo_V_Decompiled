.class Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting$7;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 939
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 945
    const/4 v5, 0x0

    .line 946
    .local v5, number:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v6, 0xf

    if-ge v2, v6, :cond_4

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, bMatch:Z
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 949
    .local v4, item:Ljava/lang/Integer;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 950
    const/4 v0, 0x1

    .line 954
    .end local v4           #item:Ljava/lang/Integer;
    :cond_3
    if-nez v0, :cond_5

    .line 955
    add-int/lit8 v5, v2, 0x1

    .line 959
    .end local v0           #bMatch:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x0

    .line 960
    .local v1, defaultName:Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->AccountNameIdList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1200(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 961
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1500(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/lang/String;

    move-result-object v1

    .line 965
    :goto_2
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v6, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v6, v6, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mEditAccountName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1400(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 946
    .end local v1           #defaultName:Ljava/lang/String;
    .restart local v0       #bMatch:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 963
    .end local v0           #bMatch:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #defaultName:Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$7$1;->this$1:Lcom/htc/android/mail/easclient/AccountNameSetting$7;

    iget-object v7, v7, Lcom/htc/android/mail/easclient/AccountNameSetting$7;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->defaultAccountName:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$1500(Lcom/htc/android/mail/easclient/AccountNameSetting;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
