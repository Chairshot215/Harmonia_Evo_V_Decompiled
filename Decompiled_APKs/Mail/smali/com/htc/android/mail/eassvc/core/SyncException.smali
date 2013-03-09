.class public Lcom/htc/android/mail/eassvc/core/SyncException;
.super Ljava/lang/RuntimeException;
.source "SyncException.java"


# static fields
.field public static final BACKEND_ERROR:I = 0x1fa

.field public static final CANCEL_SYNC_SOURCE:I = 0x259

.field public static final CERTIFICATE_EXPIRED:I = 0x206

.field public static final CERTIFICATE_MISMATCH:I = 0x205

.field public static final CERTIFICATE_NOT_VALID_YET:I = 0x207

.field public static final CERTIFICATE_UNTRUST:I = 0x204

.field public static final COLLECTION_ID_EMPTY:I = 0x2cd

.field public static final CONNECTION_ABORT:I = 0x1c5

.field public static final CONNECTION_FAIL:I = 0x1c2

.field public static final CONNECTION_REFUSED:I = 0x1c7

.field public static final DATABASE_ERROR:I = 0x32c

.field public static final DEST_ALREADY_EXISTS:I = 0x2e9

.field public static final DEVICE_DISK_FULL:I = 0x32b

.field public static final DEVICE_EXTERNAL_DISK_FULL:I = 0x32d

.field public static final DM_ADMIN_NOT_READY:I = 0x3ff

.field public static final DM_DOWNLOAD_POLICY_FAIL:I = 0x44c

.field public static final DM_ENFORCE_REMOTE_WIPE:I = 0x3e8

.field public static final DM_PASSWORD_EXPIRE:I = 0x3fc

.field public static final DM_PASSWORD_NOT_SUFFICIENT:I = 0x3fd

.field public static final DM_POLICY_NOT_FULLY_SUPPORT:I = 0x3fe

.field public static final DM_POLICY_SUPPORT_BUT_NOT_SUFFICIENT:I = 0x400

.field public static final DM_PROVISION_NEED_PROVISION:I = 0x3f3

.field public static final EXACCESS_ERROR:I = 0x2c8

.field public static final EXSERVER_ERROR:I = 0x2c7

.field public static final EXTIMEOUT:I = 0x2c9

.field public static final EXUNKNOWN_ERROR:I = 0x2bc

.field public static final FOLDER_SYNCKEY_ERROR:I = 0x2cc

.field public static final HOST_DOWN_ERROR:I = 0x1c4

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_METHOD_NOT_ALLOWED:I = 0x195

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_PROXY_AUTH_REQUIRED:I = 0x197

.field public static final HTTP_RETRY_WITH:I = 0x1c1

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final INSUFFICIENT_SERVER_STORAGE:I = 0x2eb

.field public static final INVALID_DEST_COLID:I = 0x2e6

.field public static final INVALID_SRC_COLID:I = 0x2e5

.field public static final IO_ERROR:I = 0x322

.field public static final ITEM_LOCKED:I = 0x2ea

.field public static final MOVEITEM_FAIL:I = 0x2e8

.field public static final NETWORK_NOT_READY:I = 0x2be

.field public static final NETWORK_UNREACHABLE:I = 0x1c6

.field public static final NOT_GET_SYNCKEY:I = 0x2c6

.field public static final NUMBER_FORMAT_ERROR:I = 0x325

.field public static final OUT_OF_MEMORY:I = 0x32a

.field public static final SERVER_BUSY:I = 0x1f7

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SOCKET_ERROR:I = 0x1fc

.field public static final SOCKET_NOT_CONNECTED:I = 0x1fb

.field public static final SOCKET_TIMEOUT:I = 0x1fd

.field public static final SRC_DEST_THESAME:I = 0x2e7

.field public static final SSL_FAIL:I = 0x203

.field public static final SYNCFORMAT_ERROR:I = 0x2cb

.field public static final SYNCKEY_ERROR:I = 0x2ca

.field public static final SYNC_CANCEL:I = 0x258

.field public static final SYNC_CONVERSION_ERROR:I = 0x2d2

.field public static final SYNC_DATA_CONFLICT:I = 0x2d3

.field public static final SYNC_DENIED_BY_POLICY:I = 0x2ee

.field public static final SYNC_FOLDER_CHANGED:I = 0x2d4

.field public static final SYNC_OTHER_STATUS_ERROR:I = 0x2d5

.field public static final SYNC_PROTOCOL_ERROR:I = 0x2d1

.field public static final SYNC_PROTOCOL_MISMATCH:I = 0x2d0

.field public static final UNDEFINE_ERROR:I = 0x320

.field public static final UNGOT_PROTOCOL_VER:I = 0x2bd

.field public static final UNKNOW_HTTP_ERROR:I = 0x1c3

.field public static final UNSUPPORT_ENCODING_ERROR:I = 0x324

.field public static final URI_SYNTAX_ERROR:I = 0x321

.field public static final XML_PARSER_ERROR:I = 0x323


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 163
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    iput p1, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->code:I

    .line 165
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "code"
    .parameter "msg"
    .parameter "data"

    .prologue
    .line 174
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    iput p1, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->code:I

    .line 176
    iput-object p3, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->data:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public static final getMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "code"

    .prologue
    const v4, 0x7f0b024e

    const v3, 0x7f0b022e

    const v2, 0x7f0b022c

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, message:Ljava/lang/String;
    const/16 v1, 0x190

    if-ne p1, v1, :cond_0

    .line 195
    const v1, 0x7f0b0220

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/16 v1, 0x191

    if-ne p1, v1, :cond_1

    .line 197
    const v1, 0x7f0b0221

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    const/16 v1, 0x193

    if-ne p1, v1, :cond_2

    .line 199
    const v1, 0x7f0b0222

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    const/16 v1, 0x194

    if-ne p1, v1, :cond_3

    .line 201
    const v1, 0x7f0b0223

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_3
    const/16 v1, 0x195

    if-ne p1, v1, :cond_4

    .line 203
    const v1, 0x7f0b0224

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_4
    const/16 v1, 0x197

    if-ne p1, v1, :cond_5

    .line 205
    const v1, 0x7f0b0225

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_5
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_6

    .line 207
    const v1, 0x7f0b0226

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_6
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_7

    .line 209
    const v1, 0x7f0b0227

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_7
    const/16 v1, 0x1fb

    if-ne p1, v1, :cond_8

    .line 211
    const v1, 0x7f0b0228

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_8
    const/16 v1, 0x258

    if-ne p1, v1, :cond_9

    .line 213
    const v1, 0x7f0b0229

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_9
    const/16 v1, 0x1c2

    if-ne p1, v1, :cond_a

    .line 215
    const v1, 0x7f0b022a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_a
    const/16 v1, 0x1c4

    if-ne p1, v1, :cond_b

    .line 217
    const v1, 0x7f0b022b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 218
    :cond_b
    const/16 v1, 0x320

    if-ne p1, v1, :cond_c

    .line 219
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :cond_c
    const/16 v1, 0x321

    if-ne p1, v1, :cond_d

    .line 221
    const v1, 0x7f0b022d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 222
    :cond_d
    const/16 v1, 0x322

    if-ne p1, v1, :cond_e

    .line 223
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 224
    :cond_e
    const/16 v1, 0x323

    if-ne p1, v1, :cond_f

    .line 225
    const v1, 0x7f0b022f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :cond_f
    const/16 v1, 0x324

    if-ne p1, v1, :cond_10

    .line 227
    const v1, 0x7f0b0230

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_10
    const/16 v1, 0x325

    if-ne p1, v1, :cond_11

    .line 229
    const v1, 0x7f0b0231

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :cond_11
    const/16 v1, 0x2c6

    if-ne p1, v1, :cond_12

    .line 231
    const v1, 0x7f0b0232

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_12
    const/16 v1, 0x2c7

    if-ne p1, v1, :cond_13

    .line 233
    const v1, 0x7f0b0233

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :cond_13
    const/16 v1, 0x2c8

    if-ne p1, v1, :cond_14

    .line 235
    const v1, 0x7f0b0234

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :cond_14
    const/16 v1, 0x2c9

    if-ne p1, v1, :cond_15

    .line 237
    const v1, 0x7f0b0235

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :cond_15
    const/16 v1, 0x2ca

    if-ne p1, v1, :cond_16

    .line 239
    const v1, 0x7f0b0236

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :cond_16
    const/16 v1, 0x2cb

    if-ne p1, v1, :cond_17

    .line 241
    const v1, 0x7f0b0237

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 242
    :cond_17
    const/16 v1, 0x2bc

    if-ne p1, v1, :cond_18

    .line 243
    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_18
    const/16 v1, 0x2d0

    if-ne p1, v1, :cond_19

    .line 245
    const v1, 0x7f0b0239

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :cond_19
    const/16 v1, 0x2d1

    if-ne p1, v1, :cond_1a

    .line 247
    const v1, 0x7f0b023a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 248
    :cond_1a
    const/16 v1, 0x2d2

    if-ne p1, v1, :cond_1b

    .line 249
    const v1, 0x7f0b023b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :cond_1b
    const/16 v1, 0x2d3

    if-ne p1, v1, :cond_1c

    .line 251
    const v1, 0x7f0b023c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 252
    :cond_1c
    const/16 v1, 0x2d5

    if-ne p1, v1, :cond_1d

    .line 253
    const v1, 0x7f0b023d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :cond_1d
    const/16 v1, 0x2e5

    if-ne p1, v1, :cond_1e

    .line 255
    const v1, 0x7f0b023e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :cond_1e
    const/16 v1, 0x2e6

    if-ne p1, v1, :cond_1f

    .line 257
    const v1, 0x7f0b023f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :cond_1f
    const/16 v1, 0x2e7

    if-ne p1, v1, :cond_20

    .line 259
    const v1, 0x7f0b0240

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 260
    :cond_20
    const/16 v1, 0x2e8

    if-ne p1, v1, :cond_21

    .line 261
    const v1, 0x7f0b0241

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :cond_21
    const/16 v1, 0x2e9

    if-ne p1, v1, :cond_22

    .line 263
    const v1, 0x7f0b0242

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :cond_22
    const/16 v1, 0x2ea

    if-ne p1, v1, :cond_23

    .line 265
    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :cond_23
    const/16 v1, 0x2bd

    if-ne p1, v1, :cond_24

    .line 267
    const v1, 0x7f0b0244

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :cond_24
    const/16 v1, 0x2be

    if-ne p1, v1, :cond_25

    .line 269
    const v1, 0x7f0b0245

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :cond_25
    const/16 v1, 0x1fc

    if-ne p1, v1, :cond_26

    .line 271
    const v1, 0x7f0b0246

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :cond_26
    const/16 v1, 0x1fd

    if-ne p1, v1, :cond_27

    .line 273
    const v1, 0x7f0b0247

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :cond_27
    const/16 v1, 0x203

    if-ne p1, v1, :cond_28

    .line 275
    const v1, 0x7f0b0248

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :cond_28
    const/16 v1, 0x32a

    if-ne p1, v1, :cond_29

    .line 277
    const v1, 0x7f0b0249

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 278
    :cond_29
    const/16 v1, 0x32b

    if-ne p1, v1, :cond_2a

    .line 279
    const v1, 0x7f0b024a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :cond_2a
    const/16 v1, 0x32c

    if-ne p1, v1, :cond_2b

    .line 282
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :cond_2b
    const/16 v1, 0x2eb

    if-ne p1, v1, :cond_2c

    .line 284
    const v1, 0x7f0b024b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 285
    :cond_2c
    const/16 v1, 0x204

    if-ne p1, v1, :cond_2d

    .line 286
    const v1, 0x7f0b01ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 287
    :cond_2d
    const/16 v1, 0x205

    if-ne p1, v1, :cond_2e

    .line 288
    const v1, 0x7f0b01af

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :cond_2e
    const/16 v1, 0x206

    if-ne p1, v1, :cond_2f

    .line 290
    const v1, 0x7f0b01b0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :cond_2f
    const/16 v1, 0x207

    if-ne p1, v1, :cond_30

    .line 292
    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 293
    :cond_30
    const/16 v1, 0x3f3

    if-ne p1, v1, :cond_31

    .line 294
    const v1, 0x7f0b024c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    :cond_31
    const/16 v1, 0x3fd

    if-ne p1, v1, :cond_32

    .line 296
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :cond_32
    const/16 v1, 0x3fc

    if-ne p1, v1, :cond_33

    .line 298
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 299
    :cond_33
    const/16 v1, 0x2ee

    if-ne p1, v1, :cond_34

    .line 300
    const v1, 0x7f0b024d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :cond_34
    const/16 v1, 0x3fe

    if-ne p1, v1, :cond_35

    .line 302
    const v1, 0x7f0b024f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 304
    :cond_35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncException;->data:Ljava/lang/Object;

    .line 186
    return-void
.end method
