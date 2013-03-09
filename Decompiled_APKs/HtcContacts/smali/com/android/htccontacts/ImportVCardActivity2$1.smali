.class Lcom/android/htccontacts/ImportVCardActivity2$1;
.super Landroid/os/Handler;
.source "ImportVCardActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ImportVCardActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    const-string v0, "ImportVCardActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xxxx CONTACTS_CHANGED_MESSAGE mIsForegroundActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIsForegroundActivity:Z
    invoke-static {v2}, Lcom/android/htccontacts/ImportVCardActivity2;->access$000(Lcom/android/htccontacts/ImportVCardActivity2;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$102(Lcom/android/htccontacts/ImportVCardActivity2;Z)Z

    .line 147
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$200(Lcom/android/htccontacts/ImportVCardActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 150
    .local v13, result:Landroid/os/AsyncResult;
    if-eqz v13, :cond_0

    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "CONTACT_INFO_COMPLETED"

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const/4 v6, 0x0

    .line 153
    .local v6, photo:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v12

    .line 155
    .local v12, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, item:Lcom/android/vcard/VCardEntry$PhotoData;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 158
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    check-cast v11, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 159
    .restart local v11       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    const-string v0, "ImportVCardActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location of first non null photo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    if-eqz v11, :cond_2

    .line 166
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 176
    .end local v10           #i:I
    .end local v11           #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .end local v12           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mVCardEntry:Lcom/android/vcard/VCardEntry;
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$300(Lcom/android/htccontacts/ImportVCardActivity2;)Lcom/android/vcard/VCardEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const v7, 0x7f0a02b3

    invoke-virtual {v5, v7}, Lcom/android/htccontacts/ImportVCardActivity2;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    .line 177
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->hideLinkView()V

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity2;->mCONTACT_INFO_COMPLETED:Z
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$400(Lcom/android/htccontacts/ImportVCardActivity2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    #calls: Lcom/android/htccontacts/ImportVCardActivity2;->dataChanged()V
    invoke-static {v0}, Lcom/android/htccontacts/ImportVCardActivity2;->access$500(Lcom/android/htccontacts/ImportVCardActivity2;)V

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ImportVCardActivity2;->mCONTACT_INFO_COMPLETED:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$402(Lcom/android/htccontacts/ImportVCardActivity2;Z)Z

    .line 184
    .end local v6           #photo:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity2$1;->this$0:Lcom/android/htccontacts/ImportVCardActivity2;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ImportVCardActivity2;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity2;->access$102(Lcom/android/htccontacts/ImportVCardActivity2;Z)Z

    goto/16 :goto_0

    .line 157
    .restart local v6       #photo:Landroid/graphics/Bitmap;
    .restart local v10       #i:I
    .restart local v11       #item:Lcom/android/vcard/VCardEntry$PhotoData;
    .restart local v12       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 170
    :cond_5
    const-string v0, "ImportVCardActivity2"

    const-string v1, "item.photoBytes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
