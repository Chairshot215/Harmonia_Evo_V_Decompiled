.class Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

.field final synthetic val$ContactName:Ljava/lang/String;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$isContact:Z

.field final synthetic val$isPhoneNumber:Z

.field final synthetic val$person_id:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;ZZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3341
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isPhoneNumber:Z

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isContact:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$ContactName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$person_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3345
    packed-switch p2, :pswitch_data_0

    .line 3542
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6010(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    .line 3543
    return-void

    .line 3347
    :pswitch_0
    iget-boolean v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isPhoneNumber:Z

    if-eqz v11, :cond_5

    .line 3348
    iget-boolean v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isContact:Z

    if-nez v11, :cond_1

    .line 3349
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    const-string v12, "tel"

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3351
    .local v5, intent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3356
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 3357
    .local v8, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v11, "fromDialer"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3358
    invoke-interface {v8, v5}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3359
    const-string v11, "ComposeMessageActivity"

    const-string v12, "is not Contact make call"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3361
    .end local v8           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3363
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "HtcDialer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3367
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    const-string v11, "tel"

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3368
    .local v10, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v5, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3370
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3371
    const-string v11, "name"

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$ContactName:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3374
    iget-wide v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$person_id:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    .line 3378
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    .line 3379
    .local v4, instance:Lcom/android/mms/util/ContactNameCache;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    move-result-object v3

    .line 3380
    .local v3, info:Landroid/provider/Telephony$namephoto;
    if-eqz v3, :cond_4

    iget-wide v11, v3, Landroid/provider/Telephony$namephoto;->mPersonId:J

    iget-wide v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$person_id:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_4

    .line 3381
    iget-object v0, v3, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 3382
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/android/mms/util/ContactNameCache;->getDefaultPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eq v0, v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/android/mms/util/ContactNameCache;->getGroupPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eq v0, v11, :cond_3

    .line 3384
    const-string v11, "hasPhoto"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3391
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_1
    const-string v11, "personId"

    iget-wide v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$person_id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3392
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 3393
    const-string v11, "number"

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3402
    .end local v3           #info:Landroid/provider/Telephony$namephoto;
    .end local v4           #instance:Lcom/android/mms/util/ContactNameCache;
    :cond_2
    :try_start_1
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 3403
    .restart local v8       #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v11, "fromDialer"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3404
    invoke-interface {v8, v5}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3405
    const-string v11, "ComposeMessageActivity"

    const-string v12, "is Contact make call"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3407
    .end local v8           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v1

    .line 3409
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v11, "HtcDialer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3386
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #info:Landroid/provider/Telephony$namephoto;
    .restart local v4       #instance:Lcom/android/mms/util/ContactNameCache;
    :cond_3
    const-string v11, "hasPhoto"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 3388
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_4
    const-string v11, "hasPhoto"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 3414
    .end local v3           #info:Landroid/provider/Telephony$namephoto;
    .end local v4           #instance:Lcom/android/mms/util/ContactNameCache;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mailto:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 3415
    .restart local v10       #uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-direct {v5, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3416
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3421
    .end local v5           #intent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-boolean v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isContact:Z

    if-nez v11, :cond_7

    .line 3423
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveToContDialogView:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    move-result-object v11

    if-nez v11, :cond_6

    .line 3424
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v12, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v13, 0x7f03000c

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSaveToContDialogView:Lcom/android/mms/ui/HtcSaveToContactsDialogView;
    invoke-static {v12, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6102(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/HtcSaveToContactsDialogView;)Lcom/android/mms/ui/HtcSaveToContactsDialogView;

    .line 3427
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isPhoneNumber:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setContactDialogView(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Z)V

    .line 3428
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 3434
    :cond_7
    const/4 v10, 0x0

    .line 3437
    .restart local v10       #uri:Landroid/net/Uri;
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->findPersonId(I)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 3441
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/RecipientList;->findPersonId(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_8

    .line 3442
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v12, 0x7f09034a

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3447
    :cond_8
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3448
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v11, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 3449
    .end local v5           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 3450
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3452
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v2

    .line 3453
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v12, 0x7f09034a

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 3462
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_2
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientLeft()Ljava/lang/String;

    move-result-object v9

    .line 3463
    .local v9, text:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 3464
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v12, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->createRecipientListByEditor(Z)V
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3468
    :cond_9
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->getRecipient(I)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v12

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->deleteRecipientButton(Lcom/android/mms/ui/RecipientList$Recipient;)V
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 3469
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/RecipientList;->delete(I)V

    .line 3476
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v7

    .line 3477
    .local v7, num:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v12

    if-lez v7, :cond_d

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    .line 3479
    iget-boolean v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$isPhoneNumber:Z

    if-nez v11, :cond_a

    .line 3480
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkSMSEmailandUpdateEditor()V
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3485
    :cond_a
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageTextEditor;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    if-ne v7, v11, :cond_b

    .line 3488
    const-string v11, "ComposeMessageActivity"

    const-string v12, "----------mMsgTextEditor.requestFocus()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageTextEditor;->requestFocus()Z

    .line 3494
    :cond_b
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageTextEditor;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    if-lez v7, :cond_c

    .line 3495
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->recipientsRequireMms()Z
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/StateWatcher;->updateHasNonSmsRecipients(Z)V

    .line 3498
    :cond_c
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->reDrawAllRecipientButtons()V
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3501
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v11

    if-nez v11, :cond_0

    .line 3502
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->createRecipientText()V
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_0

    .line 3477
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 3509
    .end local v7           #num:I
    .end local v9           #text:Ljava/lang/String;
    :pswitch_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientLeft()Ljava/lang/String;

    move-result-object v9

    .line 3510
    .restart local v9       #text:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 3511
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v12, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->createRecipientListByEditor(Z)V
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5800(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 3515
    :cond_e
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v12, v12, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v13}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/RecipientList;->getRecipient(I)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v12

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->deleteRecipientButton(Lcom/android/mms/ui/RecipientList$Recipient;)V
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/RecipientList$Recipient;)V

    .line 3516
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->index:I
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/RecipientList;->delete(I)V

    .line 3518
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->reDrawAllRecipientButtons()V
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3521
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/ui/RecipientList;->size()I

    move-result v7

    .line 3522
    .restart local v7       #num:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v12

    if-lez v7, :cond_f

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Lcom/android/mms/ui/StateWatcher;->updateHasRecipients(Z)V

    .line 3531
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->val$address:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 3532
    .local v6, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageActivity$ButtonClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v11, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3522
    .end local v6           #msg:Landroid/os/Message;
    :cond_f
    const/4 v11, 0x0

    goto :goto_3

    .line 3345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
