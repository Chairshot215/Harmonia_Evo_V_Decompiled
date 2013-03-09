.class Lcom/htc/android/mail/ReadScreen$45;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->updateAllAttachmentButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;

.field final synthetic val$successKey:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6902
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$45;->this$0:Lcom/htc/android/mail/ReadScreen;

    iput p2, p0, Lcom/htc/android/mail/ReadScreen$45;->val$successKey:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 6904
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$45;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    .line 6905
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$45;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 6906
    .local v2, count:I
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pop3 attach count> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6907
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v6

    .line 6908
    .local v6, tokenId:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 6910
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$45;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v7, v7, Lcom/htc/android/mail/ReadScreen;->mAttachListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6911
    .local v1, attView:Landroid/view/View;
    const v7, 0x7f09000e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/Attachment;

    move-object v0, v7

    check-cast v0, Lcom/htc/android/mail/Attachment;

    move-object v3, v0

    .line 6912
    .local v3, curAttach:Lcom/htc/android/mail/Attachment;
    iget-object v7, p0, Lcom/htc/android/mail/ReadScreen$45;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v8, p0, Lcom/htc/android/mail/ReadScreen$45;->val$successKey:I

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentButton(ILcom/htc/android/mail/Attachment;I)V
    invoke-static {v7, v6, v3, v8}, Lcom/htc/android/mail/ReadScreen;->access$7700(Lcom/htc/android/mail/ReadScreen;ILcom/htc/android/mail/Attachment;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6908
    .end local v1           #attView:Landroid/view/View;
    .end local v3           #curAttach:Lcom/htc/android/mail/Attachment;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6913
    :catch_0
    move-exception v4

    .line 6914
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v7, "ReadScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null pointer exception occur> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6918
    .end local v2           #count:I
    .end local v4           #e:Ljava/lang/NullPointerException;
    .end local v5           #i:I
    .end local v6           #tokenId:I
    :cond_1
    return-void
.end method
