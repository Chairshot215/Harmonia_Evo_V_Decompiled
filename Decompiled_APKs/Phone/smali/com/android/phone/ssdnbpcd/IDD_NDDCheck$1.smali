.class Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;
.super Landroid/os/Handler;
.source "IDD_NDDCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;


# direct methods
.method constructor <init>(Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;->this$0:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 197
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 202
    .local v0, curRecord:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 203
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;->this$0:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v2, v2, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:IDD_NDDCheck::close cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v0           #curRecord:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;->this$0:Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;

    iget-object v2, v2, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, " Close cursor exception"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
