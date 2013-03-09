.class Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;
.super Landroid/os/Handler;
.source "ContactListSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadCursorHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 4608
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4609
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4612
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4637
    :cond_0
    :goto_0
    return-void

    .line 4615
    :pswitch_0
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4617
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3902(Z)Z

    .line 4619
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$4100()Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactListSearchPicker$PreloadCursorHandler;->removeMessages(I)V

    .line 4623
    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 4625
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 4626
    invoke-static {}, Lcom/android/htccontacts/ContactListSearchPicker;->access$2500()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4630
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3902(Z)Z

    goto :goto_0

    .line 4627
    :catch_0
    move-exception v0

    .line 4628
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ContactListSearchPicker"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4612
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
