.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;
.super Landroid/os/Handler;
.source "MediaAutoUploadSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 154
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 162
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;

    .line 163
    .local v3, param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    iget-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->serviceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mService:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->serviceTitle:Ljava/lang/String;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mServiceTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$202(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->uploadServiceComponent:Landroid/content/ComponentName;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadServiceComponent:Landroid/content/ComponentName;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$302(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 167
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->albumList:Ljava/util/ArrayList;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 168
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAccountType:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$502(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$402(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 175
    :cond_2
    iget-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->defaultAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v4, :cond_7

    .line 177
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v4, v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 178
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v5

    iget-object v6, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->defaultAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v6}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Album;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 187
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 189
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mMoreImageView:Lcom/htc/widget/HtcListItemImageButton;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$800(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 193
    :cond_4
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 197
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Album;

    iget-object v2, v4, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 198
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 200
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v4, v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 201
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 205
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    const/4 v5, 0x0

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumDefault:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$902(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .end local v0           #i:I
    :cond_6
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->readablePrivacyList:Ljava/util/ArrayList;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1002(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 209
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mReadablePrivacyList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v5

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->restorePrivacySetting(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1100(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/util/ArrayList;)V

    .line 211
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v4, v4, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mDoneButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 181
    :cond_7
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 183
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #setter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v4, v8}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$602(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;I)I

    .line 184
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumTextView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$700(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/widget/HtcListItem2LineText;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mAlbumIndex:I
    invoke-static {v6}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$600(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Album;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    .restart local v0       #i:I
    .restart local v2       #name:Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 216
    .end local v0           #i:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 218
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$000(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 221
    :cond_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;

    .line 222
    .restart local v3       #param:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isLogin(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 226
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->loginService(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1300(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)V

    .line 228
    :cond_a
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    iget-object v5, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->accountType:Ljava/lang/String;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->isLogin(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1200(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->sso:Z

    if-ne v4, v7, :cond_0

    iget-boolean v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoLogin:Z

    if-eq v4, v7, :cond_0

    .line 230
    new-instance v1, Landroid/content/Intent;

    iget-object v4, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$MsgParameter;->ssoAction:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, intent1:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$1;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    const/16 v5, 0x65

    invoke-virtual {v4, v1, v5}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
