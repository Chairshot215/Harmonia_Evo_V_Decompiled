.class Lcom/android/mms/ui/ComposeMessageActivity$37;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 7492
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 7494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7495
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 7496
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 7497
    .local v7, count:I
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7498
    if-gtz v7, :cond_0

    .line 7499
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isDiscard:Z
    invoke-static {v0, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 7500
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$37;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 7502
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7504
    .end local v7           #count:I
    :cond_1
    return-void
.end method
