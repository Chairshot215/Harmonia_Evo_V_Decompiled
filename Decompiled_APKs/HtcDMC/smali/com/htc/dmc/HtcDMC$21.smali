.class Lcom/htc/dmc/HtcDMC$21;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3993
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 3995
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3996
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4053
    :goto_0
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4055
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 4057
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v2, v1}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    .line 4064
    :cond_0
    :goto_1
    return-void

    .line 3998
    :pswitch_0
    const-string v2, "com.htc.music.BROWSE_VIEWER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4000
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4001
    const-string v2, "KeepHistory"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4002
    const-string v2, "RemoveStoreHistory"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4011
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4012
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4013
    const-string v2, "Server"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4014
    const-string v2, "SaveRender"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4015
    const-string v2, "[HtcDMC]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passing DMR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4020
    :pswitch_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 4021
    const-string v2, "Skyer"

    const-string v3, "Local mode"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    const-string v2, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4023
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4024
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4025
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4026
    const-string v2, "key_bucket_id"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$5800(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4027
    const-string v2, "key_folder_name"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$5900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4028
    const-string v2, "folder_type"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$6000(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4029
    const-string v2, "browse_mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4031
    :cond_1
    const-string v2, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4032
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "*/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4033
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4034
    const-string v2, "Render"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4035
    const-string v2, "Server"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4036
    const-string v2, "tab_default"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderPanelID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$6100(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4038
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4039
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "server_id"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$5800(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4040
    const-string v2, "server_name"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$5900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    const-string v2, "directory_info"

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFolderList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$6200(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4043
    const-string v2, "browse_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4044
    const-string v2, "browse_mode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4059
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4060
    :cond_3
    const-string v2, "[HtcDMC]"

    const-string v3, "finish() called, 2622"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v2}, Lcom/htc/dmc/HtcDMC;->finish()V

    .line 4062
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$21;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v2, v1}, Lcom/htc/dmc/HtcDMC;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
