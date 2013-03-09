.class Lcom/android/mms/ui/ComposeMessageActivity$62;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showContactDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$ContactName:Ljava/lang/String;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$isContact:Z

.field final synthetic val$isPhoneNumber:Z

.field final synthetic val$person_id:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;IZZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10788
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$index:I

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isContact:Z

    iput-boolean p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isPhoneNumber:Z

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$ContactName:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$person_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10791
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$index:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/RecipientList;->findPersonId(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const/4 v0, 0x1

    .line 10792
    .local v0, bContact:Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isContact:Z

    if-eq v6, v0, :cond_2

    .line 10906
    :cond_0
    :goto_1
    return-void

    .line 10791
    .end local v0           #bContact:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 10795
    .restart local v0       #bContact:Z
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 10797
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isPhoneNumber:Z

    if-eqz v6, :cond_6

    .line 10798
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isContact:Z

    if-nez v6, :cond_3

    .line 10799
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10801
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10806
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 10807
    .local v4, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v6, "fromDialer"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10808
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10809
    const-string v6, "ComposeMessageActivity"

    const-string v7, "is not Contact make call"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10811
    .end local v4           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v2

    .line 10813
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "HtcDialer"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10817
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const-string v6, "tel"

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 10818
    .local v5, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10820
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10821
    const-string v6, "name"

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$ContactName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10824
    iget-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 10825
    iget-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$person_id:J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10827
    .local v1, bm:Landroid/graphics/Bitmap;
    const-string v7, "hasPhoto"

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10828
    const-string v6, "personId"

    iget-wide v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$person_id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10829
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 10830
    const-string v6, "number"

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10839
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_1
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 10840
    .restart local v4       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v6, "fromDialer"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10841
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10842
    const-string v6, "ComposeMessageActivity"

    const-string v7, "is Contact make call"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 10844
    .end local v4           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v2

    .line 10846
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "HtcDialer"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10827
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 10852
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_6
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 10853
    .restart local v5       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10854
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 10855
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v2

    .line 10856
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 10862
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v7, Lcom/android/mms/ui/ComposeMessageActivity$62$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/ComposeMessageActivity$62$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$62;)V

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeNewMessageActivity(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 10870
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isContact:Z

    if-nez v6, :cond_7

    .line 10871
    const/4 v3, 0x0

    .line 10872
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$isPhoneNumber:Z

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 10875
    :try_start_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 10876
    :catch_3
    move-exception v2

    .line 10877
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 10880
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const/4 v5, 0x0

    .line 10883
    .restart local v5       #uri:Landroid/net/Uri;
    sget-object v6, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$index:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/RecipientList;->findPersonId(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 10886
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10888
    .restart local v3       #intent:Landroid/content/Intent;
    :try_start_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 10889
    :catch_4
    move-exception v2

    .line 10890
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 10898
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_3
    :try_start_5
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$62;->val$address:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x3c

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 10900
    :catch_5
    move-exception v2

    .line 10901
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 10795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
