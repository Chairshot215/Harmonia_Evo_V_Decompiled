.class Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;
.super Ljava/lang/Object;
.source "TagDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "childPosition"

    .prologue
    .line 96
    iget-object v4, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v4, v4, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I
    invoke-static {v4}, Lcom/htc/android/mail/TagDialogPicker;->access$400(Lcom/htc/android/mail/TagDialogPicker;)I

    move-result v4

    if-eq p2, v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v4, v4, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/mail/TagDialogPicker;->access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 98
    .local v1, tagId:J
    iget-object v4, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v4, v4, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    #getter for: Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/android/mail/TagDialogPicker;->access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, tagName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, data:Landroid/content/Intent;
    const-string v4, "tagId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    const-string v4, "tagName"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v4, v4, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/htc/android/mail/TagDialogPicker;->setResult(ILandroid/content/Intent;)V

    .line 104
    .end local v0           #data:Landroid/content/Intent;
    .end local v1           #tagId:J
    .end local v3           #tagName:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    iget-object v4, p0, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask$1;->this$1:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    iget-object v4, v4, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->this$0:Lcom/htc/android/mail/TagDialogPicker;

    invoke-virtual {v4}, Lcom/htc/android/mail/TagDialogPicker;->finish()V

    .line 106
    return-void
.end method
