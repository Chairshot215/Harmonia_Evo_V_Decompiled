.class public Lcom/htc/messaging/util/HtcHttpTransportError;
.super Ljava/io/IOException;
.source "HtcHttpTransportError.java"


# instance fields
.field private httpErrorCode:Ljava/lang/Integer;

.field private isSend:Z

.field private wspErrorCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMessage"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "isSend"
    .parameter "httpErrorCode"
    .parameter "wspErrorCode"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    .line 27
    iput-object p3, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->httpErrorCode:Ljava/lang/Integer;

    .line 28
    iput-object p4, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->wspErrorCode:Ljava/lang/Integer;

    .line 29
    return-void
.end method


# virtual methods
.method public getHttpErrorCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->httpErrorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWspErrorCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->wspErrorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public isSendError()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    return v0
.end method

.method public toTransactionError()I
    .locals 2

    .prologue
    .line 48
    iget-boolean v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    if-eqz v1, :cond_1

    const v0, 0x10081

    .line 50
    .local v0, errorNo:I
    :goto_0
    iget-object v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->httpErrorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->httpErrorCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 48
    .end local v0           #errorNo:I
    :cond_1
    const v0, 0x101c0

    goto :goto_0

    .line 53
    .restart local v0       #errorNo:I
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    if-eqz v1, :cond_2

    const v0, 0x100100e1

    .line 55
    :goto_2
    goto :goto_1

    .line 53
    :cond_2
    const v0, 0x100101e1

    goto :goto_2

    .line 57
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    if-eqz v1, :cond_3

    const v0, 0x100100e4

    .line 59
    :goto_3
    goto :goto_1

    .line 57
    :cond_3
    const v0, 0x100101e2

    goto :goto_3

    .line 61
    :pswitch_3
    iget-boolean v1, p0, Lcom/htc/messaging/util/HtcHttpTransportError;->isSend:Z

    if-eqz v1, :cond_4

    const v0, 0x100100e3

    :goto_4
    goto :goto_1

    :cond_4
    const v0, 0x100101e0

    goto :goto_4

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
