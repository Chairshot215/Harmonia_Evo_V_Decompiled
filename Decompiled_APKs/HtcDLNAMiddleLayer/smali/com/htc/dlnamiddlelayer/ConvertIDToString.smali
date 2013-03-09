.class public Lcom/htc/dlnamiddlelayer/ConvertIDToString;
.super Ljava/lang/Object;
.source "ConvertIDToString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BrowsingErrorReason(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "nError"
    .parameter "ctx"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    const-string v1, ""

    .line 296
    :goto_0
    return-object v1

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 279
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, -0x1f5

    if-ne p0, v1, :cond_2

    .line 281
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "BrowsingErrorReason : Server not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 284
    :cond_2
    const/16 v1, -0x1f7

    if-ne p0, v1, :cond_3

    .line 286
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "BrowsingErrorReason : Browsed content is not a container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_3
    const/16 v1, -0x1f8

    if-ne p0, v1, :cond_4

    .line 291
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "BrowsingErrorReason : Wrong parameter for browse command"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 295
    :cond_4
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowsingErrorReason: Unknown , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static ControllerResponseReason(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "resID"
    .parameter "ctx"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    const-string v1, ""

    .line 153
    :goto_0
    return-object v1

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_GENERATE_SUCCESS:I

    if-ne p0, v1, :cond_2

    .line 133
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Response : Playlist generate success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_2
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    if-ne p0, v1, :cond_3

    .line 138
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Response : Playlist ready to play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_3
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_SERVER_RESPONSE:I

    if-ne p0, v1, :cond_4

    .line 143
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Response : Waiting server response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_4
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_RENDERER_RESPONSE:I

    if-ne p0, v1, :cond_5

    .line 148
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Response : Waiting renderer response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_5
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller Response: Unknown, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "nError"
    .parameter "ctx"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    const-string v1, ""

    .line 267
    :goto_0
    return-object v1

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionFailed:I

    if-ne p0, v1, :cond_2

    .line 167
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_2
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ConnectionDeleted:I

    if-ne p0, v1, :cond_3

    .line 172
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Connection deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_3
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidResponse:I

    if-ne p0, v1, :cond_4

    .line 182
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Invalid response from endpoint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_4
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_Cancelled:I

    if-ne p0, v1, :cond_5

    .line 187
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Request cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 190
    :cond_5
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_ServiceUnavailable:I

    if-ne p0, v1, :cond_6

    .line 192
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    :cond_6
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidXML:I

    if-ne p0, v1, :cond_7

    .line 197
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Received invalid XML"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_7
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidDIDL:I

    if-ne p0, v1, :cond_8

    .line 202
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Received invalid media description"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 205
    :cond_8
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_DeviceNoMoreAvailable:I

    if-ne p0, v1, :cond_9

    .line 207
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Endpoint device is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 210
    :cond_9
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_StackNotRunning:I

    if-ne p0, v1, :cond_a

    .line 212
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : UPnPStack is not running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 215
    :cond_a
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferFailed:I

    if-ne p0, v1, :cond_b

    .line 217
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Transfer failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 220
    :cond_b
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_InvalidClass:I

    if-ne p0, v1, :cond_c

    .line 222
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Invalid media type"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 225
    :cond_c
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_TransferInterrupted:I

    if-ne p0, v1, :cond_d

    .line 227
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Transfer interrupted from endpoint"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 230
    :cond_d
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_EventSubscriptionIncomplete:I

    if-ne p0, v1, :cond_e

    .line 232
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Event unable to subscribe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 235
    :cond_e
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_EventUnSubscriptionIncomplete:I

    if-ne p0, v1, :cond_f

    .line 237
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Event unable to unsubscribe"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 240
    :cond_f
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_FunctionUnavailable:I

    if-ne p0, v1, :cond_10

    .line 242
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Function unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 245
    :cond_10
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_OperationAlreadyInProgress:I

    if-ne p0, v1, :cond_11

    .line 247
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Operation already progress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 250
    :cond_11
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_SubscriptionInProgress:I

    if-ne p0, v1, :cond_12

    .line 252
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Subscription is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 255
    :cond_12
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_UnSubscriptionInProgress:I

    if-ne p0, v1, :cond_13

    .line 257
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Unsubscription is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const v1, 0x7f060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 260
    :cond_13
    const/16 v1, 0x321

    if-ne p0, v1, :cond_14

    .line 262
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "UPnPErrorReason : Authorization fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 266
    :cond_14
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnPErrorReason: Unknown , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static controllerErrorReason(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "resID"
    .parameter "ctx"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    const-string v1, ""

    .line 119
    :goto_0
    return-object v1

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const/16 v1, -0x12d

    if-ne p0, v1, :cond_2

    .line 68
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : invalid server id"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    const/16 v1, -0x12c

    if-ne p0, v1, :cond_3

    .line 73
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : invalid renderer id"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_3
    const/16 v1, -0x12f

    if-ne p0, v1, :cond_4

    .line 78
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : invalid container id"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_4
    const/16 v1, -0x12e

    if-ne p0, v1, :cond_5

    .line 83
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : invalid content id"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_5
    const/16 v1, -0x132

    if-ne p0, v1, :cond_6

    .line 88
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : waiting server response timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_6
    const/16 v1, -0x133

    if-ne p0, v1, :cond_7

    .line 93
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : waiting renderer response timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_7
    const/16 v1, -0x134

    if-ne p0, v1, :cond_8

    .line 98
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : Unable to play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 101
    :cond_8
    const/16 v1, -0x13a

    if-ne p0, v1, :cond_9

    .line 103
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : Pause not support"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 106
    :cond_9
    const/16 v1, -0x13c

    if-ne p0, v1, :cond_a

    .line 108
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : SD card unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 111
    :cond_a
    const/16 v1, -0x13e

    if-ne p0, v1, :cond_b

    .line 113
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Controller Error : Renderer play status error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 117
    :cond_b
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller Error: Unknown, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static deviceRemovalReason(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "resID"
    .parameter "ctx"

    .prologue
    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    .line 17
    :cond_0
    const-string v1, ""

    .line 54
    :goto_0
    return-object v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_DiscoveryError:I

    if-ne p0, v1, :cond_2

    .line 24
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removal: Discovery Error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_2
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_FailedToNotify:I

    if-ne p0, v1, :cond_3

    .line 29
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removal : Failed to notify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_3
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_LocalIPAddressChanged:I

    if-ne p0, v1, :cond_4

    .line 34
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removal : Local IP changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_4
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_ByeBye:I

    if-ne p0, v1, :cond_5

    .line 39
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removeal : Bye Bye"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_5
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_FailedEventSubscriptionRenewal:I

    if-ne p0, v1, :cond_6

    .line 44
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removal: Failed event subscription"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_6
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kDeviceRemovalReason_StackStopped:I

    if-ne p0, v1, :cond_7

    .line 49
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Device Removal: Stack stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_7
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Removal: Unknown, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
