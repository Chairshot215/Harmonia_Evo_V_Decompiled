.class Lcom/htc/app/ShareListActivity$1;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/ShareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ShareListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    iput p2, v2, Lcom/htc/app/ShareListActivity;->mSelectedItem:I

    .line 116
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v2, p2}, Lcom/htc/app/ShareListActivity;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    iget-object v2, v2, Lcom/htc/app/ShareListActivity;->mLongURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "com.htc.htctwitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.friendstream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.socialnetwork.plurk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    #getter for: Lcom/htc/app/ShareListActivity;->mShareHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$000(Lcom/htc/app/ShareListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    #calls: Lcom/htc/app/ShareListActivity;->startSelectedAppWithoutShortenedURL()V
    invoke-static {v2}, Lcom/htc/app/ShareListActivity;->access$100(Lcom/htc/app/ShareListActivity;)V

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 132
    iget-object v2, p0, Lcom/htc/app/ShareListActivity$1;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v2}, Lcom/htc/app/ShareListActivity;->finish()V

    goto :goto_0
.end method
