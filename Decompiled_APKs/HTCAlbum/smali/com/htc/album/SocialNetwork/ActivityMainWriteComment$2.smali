.class Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;
.super Ljava/lang/Object;
.source "ActivityMainWriteComment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 141
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][ActivitymainWriteComment][onClick]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    #getter for: Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->access$400(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, szComment:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setResult(ILandroid/content/Intent;)V

    .line 149
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->finish()V

    .line 150
    return-void
.end method
