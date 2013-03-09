.class Lcom/android/mms/ui/ComposeMessageActivity$52$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$52;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V
    .locals 0
    .parameter

    .prologue
    .line 10026
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v10, 0x0

    .line 10028
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity;->PhoneNumberArray:[Ljava/lang/String;

    sget v8, Lcom/android/mms/ui/ComposeMessageActivity;->sel_value_thread:I

    aget-object v3, v7, v8

    .line 10029
    .local v3, sel_value:Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 10030
    .local v4, testSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10031
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/mms/ui/MessageUtils;->getThreadIdByAddressesSet(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    .line 10032
    .local v5, testid:J
    const-string v7, "ComposeMessageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onOptionsItemSelected MENU_SENSE20_DELETE which==2 testSet=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10033
    const-string v7, "ComposeMessageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onOptionsItemSelected MENU_SENSE20_DELETE which==2 testid=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10037
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10038
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getHtcThreadIdByThreadId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 10039
    .local v0, htcThreadId:J
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://allmessages/conversations/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8, v10}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 10043
    .end local v0           #htcThreadId:J
    .local v2, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v8, 0x7f0900ae

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;IZ)V
    invoke-static {v7, v2, v8, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;IZ)V

    .line 10045
    return-void

    .line 10041
    .end local v2           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :cond_0
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageActivity$52;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v7, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .restart local v2       #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    goto :goto_0
.end method
