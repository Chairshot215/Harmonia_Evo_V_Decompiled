.class Lcom/android/providers/contacts/HtcContactsProvider2$12;
.super Landroid/os/Handler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->newMessageHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 12823
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 12827
    :try_start_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 12973
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 12829
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12830
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->deleteMyContacFacebookInfo()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3000(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 12966
    :catch_0
    move-exception v3

    .line 12967
    .local v3, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v13, "TAG"

    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 12833
    .end local v3           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->deleteMyContacPlurkInfo()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3100(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12969
    :catch_1
    move-exception v4

    .line 12970
    .local v4, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v13, "TAG"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 12837
    .end local v4           #fe:Landroid/database/sqlite/SQLiteFullException;
    :pswitch_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->deleteMyContacTwitterInfo()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3200(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto :goto_0

    .line 12841
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->endHandler()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3300(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto :goto_0

    .line 12845
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 12846
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 12847
    .local v10, sService:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doInsertFacebookMyContactInfo(Ljava/lang/String;)V
    invoke-static {v13, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3400(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    .line 12850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doInsertTwitterMyContactInfo(Ljava/lang/String;)V
    invoke-static {v13, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3500(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    .line 12852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doInsertPlurkMyContactInfo(Ljava/lang/String;)V
    invoke-static {v13, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3600(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    .line 12855
    const-string v13, "facebook"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 12857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doUpdateInsertFacebookSmallContactPhoto()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3700(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto/16 :goto_0

    .line 12860
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doInsertSocialNetworkSmallContactPhoto(Ljava/lang/String;)V
    invoke-static {v13, v10}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3800(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12871
    .end local v10           #sService:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12872
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doCheckMergedFacebookLargeContactPhoto()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$3900(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto/16 :goto_0

    .line 12880
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12881
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mRunnableCheckMergedFacebookLargeContactPhotoEnd:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4000(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/util/contacts/ContactsUtility;->handleSocialNetworkLargePhotoEnd(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 12885
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doCheckFacebookWithPhoneLargeContactPhoto()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4100(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    goto/16 :goto_0

    .line 12889
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Bundle;

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v13, :cond_0

    .line 12890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->updateSocialNetworkSmallContactPhoto(Landroid/os/Bundle;)Z
    invoke-static {v14, v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4200(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 12895
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Bundle;

    if-eqz v13, :cond_0

    .line 12896
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 12897
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 12898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(Landroid/os/Bundle;)V
    invoke-static {v13, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4300(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 12904
    .end local v2           #b:Landroid/os/Bundle;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Landroid/os/Bundle;

    if-eqz v13, :cond_0

    .line 12905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToContactMode()V

    .line 12906
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 12907
    .restart local v2       #b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 12910
    const-string v13, "SocialServiceManager"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 12912
    .local v7, objMsg:Landroid/os/Message;
    if-eqz v7, :cond_0

    .line 12914
    iget-object v11, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/htc/opensense/social/SocialServiceManager;

    .line 12915
    .local v11, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-eqz v11, :cond_0

    .line 12917
    const-string v13, "sourceid"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 12919
    .local v12, sourceId:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    if-nez v13, :cond_0

    .line 12922
    const/4 v13, 0x1

    :try_start_3
    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-virtual {v11, v13}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 12924
    .local v8, people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v6, 0x0

    .line 12925
    .local v6, largeBuddyIconUrl:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    .line 12926
    .local v9, person:Lcom/htc/opensense/social/PersonOp;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 12928
    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/opensense/social/data/Person;->getLargeBuddyIconUrl()Ljava/lang/String;

    move-result-object v6

    .line 12930
    :cond_2
    const-string v13, "HtcContactsProvider2"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadOriginalFacebookLargePhoto Large avatar:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 12938
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v8           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v9           #person:Lcom/htc/opensense/social/PersonOp;
    :catch_2
    move-exception v3

    .line 12939
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :try_start_4
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 12940
    const-string v13, "HtcContactsProvider2"

    const-string v14, "error"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12942
    if-eqz v11, :cond_0

    .line 12943
    :try_start_5
    invoke-virtual {v11}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 12934
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #largeBuddyIconUrl:Ljava/lang/String;
    .restart local v8       #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_3
    :try_start_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 12935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doDownloadOriginalFacebookLargePhoto(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v12, v6}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4400(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_6 .. :try_end_6} :catch_2

    .line 12942
    :cond_4
    if-eqz v11, :cond_0

    .line 12943
    :try_start_7
    invoke-virtual {v11}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    goto/16 :goto_0

    .line 12942
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v8           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_5

    .line 12943
    invoke-virtual {v11}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    :cond_5
    throw v13

    .line 12950
    .end local v2           #b:Landroid/os/Bundle;
    .end local v7           #objMsg:Landroid/os/Message;
    .end local v11           #serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    .end local v12           #sourceId:Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 12951
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 12952
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12953
    const-string v13, "com.facebook.auth.login"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 12955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->switchToProfileMode()V

    .line 12956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/HtcContactsProvider2$12;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->doInsertOriginalFacebookMyContactInfo()V
    invoke-static {v13}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$4500(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 12827
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
