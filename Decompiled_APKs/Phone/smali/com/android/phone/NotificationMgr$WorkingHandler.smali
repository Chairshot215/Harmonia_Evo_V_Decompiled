.class Lcom/android/phone/NotificationMgr$WorkingHandler;
.super Landroid/os/Handler;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$WorkingHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 1811
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1812
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x0

    .line 1817
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1820
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;

    .line 1822
    .local v9, n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    if-eqz v9, :cond_0

    .line 1825
    if-eqz v9, :cond_1

    iget-wide v0, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhotoId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mContactId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1826
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$WorkingHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Photo;->getContactPhoto(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhoto:Landroid/graphics/Bitmap;

    .line 1835
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$WorkingHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mNumber:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mLabel:Ljava/lang/String;

    iget-wide v4, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mDate:J

    iget-object v6, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mCityId:Ljava/lang/String;

    iget-object v7, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr$WorkingHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v9, Lcom/android/phone/NotificationMgr$NotifyMissedCall;->mPhoto:Landroid/graphics/Bitmap;

    invoke-direct {v7, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1844
    .end local v9           #n:Lcom/android/phone/NotificationMgr$NotifyMissedCall;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/database/Cursor;

    .line 1847
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
