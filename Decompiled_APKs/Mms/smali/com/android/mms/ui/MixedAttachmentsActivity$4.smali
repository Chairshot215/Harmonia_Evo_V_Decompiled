.class Lcom/android/mms/ui/MixedAttachmentsActivity$4;
.super Ljava/lang/Object;
.source "MixedAttachmentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MixedAttachmentsActivity;->displayDialog(IILcom/android/mms/model/MediaModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

.field final synthetic val$part:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MixedAttachmentsActivity;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->val$part:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, mData:[B
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->val$part:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getData()[B
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 268
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->val$part:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    if-eqz v2, :cond_0

    .line 270
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 273
    const-string v3, "MMS_ID"

    iget-object v4, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget v4, v4, Lcom/android/mms/ui/MixedAttachmentsActivity;->mMsgId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    sget v4, Lcom/android/mms/ui/MixedAttachmentsActivity;->REQUEST_CODE_IMPORT_VCARD:I

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/MixedAttachmentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 285
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Landroid/drm/mobile1/DrmException;
    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->val$part:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    if-eqz v2, :cond_0

    .line 280
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MixedAttachmentsActivity$4;->this$0:Lcom/android/mms/ui/MixedAttachmentsActivity;

    iget v4, v4, Lcom/android/mms/ui/MixedAttachmentsActivity;->mMsgId:I

    int-to-long v4, v4

    invoke-static {v3, v2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->launchVcalendarPrompt(Landroid/content/Context;[BJ)V

    goto :goto_1
.end method
