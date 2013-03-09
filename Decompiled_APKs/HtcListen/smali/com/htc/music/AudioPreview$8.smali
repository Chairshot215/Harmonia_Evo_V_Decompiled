.class Lcom/htc/music/AudioPreview$8;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$100(Lcom/htc/music/AudioPreview;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentAudioType:I
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;)I

    move-result v2

    #calls: Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/htc/music/AudioPreview;->access$2000(Lcom/htc/music/AudioPreview;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentAudioType:I
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-static {v1}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$100(Lcom/htc/music/AudioPreview;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$100(Lcom/htc/music/AudioPreview;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentAudioType:I
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;)I

    move-result v2

    #calls: Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/htc/music/AudioPreview;->access$2000(Lcom/htc/music/AudioPreview;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #setter for: Lcom/htc/music/AudioPreview;->mActivityPopup:Z
    invoke-static {v1, v3}, Lcom/htc/music/AudioPreview;->access$2202(Lcom/htc/music/AudioPreview;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/htc/music/AudioPreview;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$100(Lcom/htc/music/AudioPreview;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentAudioType:I
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;)I

    move-result v2

    #calls: Lcom/htc/music/AudioPreview;->canUseAsRingtone(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/htc/music/AudioPreview;->access$2000(Lcom/htc/music/AudioPreview;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mCurrentAudioType:I
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$1900(Lcom/htc/music/AudioPreview;)I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_2
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-static {v1}, Lcom/htc/music/util/ShowMeHelper;->notifySetAsRingtone(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v1}, Lcom/htc/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/AudioPreview$8;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$100(Lcom/htc/music/AudioPreview;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->setNotificationRingtone(Landroid/content/Context;J)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
