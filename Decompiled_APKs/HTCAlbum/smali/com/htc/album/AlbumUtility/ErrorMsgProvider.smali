.class public Lcom/htc/album/AlbumUtility/ErrorMsgProvider;
.super Ljava/lang/Object;
.source "ErrorMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getErrorIcon(I)I
    .locals 3
    .parameter "errMsg"

    .prologue
    .line 267
    const v2, 0x208086c

    .line 269
    .local v2, pic:I
    sparse-switch p0, :sswitch_data_0

    .line 301
    const v2, 0x208086c

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 273
    :sswitch_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    .line 274
    .local v1, internal:Z
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 276
    .local v0, both:Z
    if-eqz v1, :cond_1

    .line 277
    if-nez v0, :cond_0

    .line 284
    const v2, 0x208086b

    goto :goto_0

    .line 288
    :cond_1
    const v2, 0x2080864

    .line 289
    goto :goto_0

    .line 294
    .end local v0           #both:Z
    .end local v1           #internal:Z
    :sswitch_1
    const v2, 0x2080867

    .line 295
    goto :goto_0

    .line 297
    :sswitch_2
    const v2, 0x208086b

    .line 298
    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x20c00a1 -> :sswitch_1
        0x20c01dd -> :sswitch_1
        0x20c01e1 -> :sswitch_0
        0x20c01e2 -> :sswitch_1
        0x20c01e4 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getErrorMessage(Landroid/content/Context;IZ)I
    .locals 5
    .parameter "context"
    .parameter "mediaType"
    .parameter "bRefresh"

    .prologue
    .line 56
    const v1, 0x20c01e6

    .line 58
    .local v1, message:I
    const-wide/32 v3, 0x500000

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/HtcMemoryChecker;->isInternalStorageEnough(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    const-string v3, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 64
    :cond_0
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, stateExternal:Ljava/lang/String;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 67
    .local v0, bSupportPhoneStorage:Z
    if-eqz v0, :cond_1

    .line 69
    invoke-static {p2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v2, p1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getSDErrorMsg(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getErrorState(Landroid/content/Context;IZ)Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;
    .locals 3
    .parameter "context"
    .parameter "mediaType"
    .parameter "bRefresh"

    .prologue
    .line 47
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorMessage(Landroid/content/Context;IZ)I

    move-result v0

    .line 48
    .local v0, errMsg:I
    invoke-static {v0}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getErrorIcon(I)I

    move-result v1

    .line 50
    .local v1, picture:I
    new-instance v2, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;

    invoke-direct {v2, v0, v1}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider$ErrorMsg;-><init>(II)V

    return-object v2
.end method

.method private static getMountedMediaError(I)I
    .locals 7
    .parameter "mediaType"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 311
    const v4, 0x20c01e0

    .line 313
    .local v4, message:I
    const/16 v0, 0xf

    .line 314
    .local v0, allImageTypes:I
    const/16 v1, 0xf0

    .line 316
    .local v1, allVideoTypes:I
    and-int v6, p0, v0

    if-eqz v6, :cond_0

    move v2, v3

    .line 317
    .local v2, hasImage:Z
    :goto_0
    and-int v6, p0, v1

    if-eqz v6, :cond_1

    .line 319
    .local v3, hasVideo:Z
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 321
    const v4, 0x20c01df

    .line 332
    :goto_2
    return v4

    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_0
    move v2, v5

    .line 316
    goto :goto_0

    .restart local v2       #hasImage:Z
    :cond_1
    move v3, v5

    .line 317
    goto :goto_1

    .line 323
    .restart local v3       #hasVideo:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 325
    const v4, 0x20c01de

    goto :goto_2

    .line 329
    :cond_3
    const v4, 0x20c01e0

    goto :goto_2
.end method

.method private static getSDErrorMsg(Ljava/lang/String;I)I
    .locals 9
    .parameter "status"
    .parameter "mediaType"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 339
    sget-object v6, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ErrorMsgProvider][getSDErrorMsg] status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mediaType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const v4, 0x20c01e3

    .line 342
    .local v4, message:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    const v4, 0x20c01e1

    .line 393
    :goto_0
    return v4

    .line 346
    :cond_0
    const-string v6, "removed"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "bad_removal"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 349
    :cond_1
    const v4, 0x20c00a1

    goto :goto_0

    .line 351
    :cond_2
    const-string v6, "unmounted"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 353
    const v4, 0x20c01e2

    goto :goto_0

    .line 355
    :cond_3
    const-string v6, "unmountable"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 357
    const v4, 0x20c00a1

    goto :goto_0

    .line 359
    :cond_4
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 362
    const/16 v0, 0xf

    .line 363
    .local v0, allImageTypes:I
    const/16 v1, 0xf0

    .line 365
    .local v1, allVideoTypes:I
    and-int v6, p1, v0

    if-eqz v6, :cond_5

    move v2, v3

    .line 366
    .local v2, hasImage:Z
    :goto_1
    and-int v6, p1, v1

    if-eqz v6, :cond_6

    .line 367
    .local v3, hasVideo:Z
    :goto_2
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 369
    const v4, 0x20c01e0

    goto :goto_0

    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_5
    move v2, v5

    .line 365
    goto :goto_1

    .restart local v2       #hasImage:Z
    :cond_6
    move v3, v5

    .line 366
    goto :goto_2

    .line 371
    .restart local v3       #hasVideo:Z
    :cond_7
    if-eqz v2, :cond_8

    .line 373
    const v4, 0x20c01df

    goto :goto_0

    .line 375
    :cond_8
    if-eqz v3, :cond_9

    .line 377
    const v4, 0x20c01de

    goto :goto_0

    .line 381
    :cond_9
    const v4, 0x20c01e0

    goto :goto_0

    .line 384
    .end local v0           #allImageTypes:I
    .end local v1           #allVideoTypes:I
    .end local v2           #hasImage:Z
    .end local v3           #hasVideo:Z
    :cond_a
    const-string v5, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 386
    const v4, 0x20c01e4

    goto :goto_0

    .line 390
    :cond_b
    const-string v5, "Albums"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sd card: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getStoragesErrorMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)I
    .locals 8
    .parameter "external"
    .parameter "phone"
    .parameter "context"
    .parameter "mediaType"

    .prologue
    const v7, 0x20c01e3

    const v6, 0x20c01e5

    const/4 v5, 0x0

    .line 85
    sget-object v2, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ErrorMsgProvider][getStoragesErrorMessage] sd card status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phone storage status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v1, 0x20c01e6

    .line 87
    .local v1, message:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v0

    .line 89
    .local v0, bSupportPhoneStorage:Z
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 93
    :cond_0
    const v1, 0x20c01e1

    .line 259
    :cond_1
    :goto_0
    return v1

    .line 95
    :cond_2
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    const v1, 0x20c01e1

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    const v1, 0x20c01e1

    goto :goto_0

    .line 111
    :cond_4
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    const v1, 0x20c01e1

    .line 114
    if-eqz p2, :cond_1

    .line 115
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_5
    const v1, 0x20c01e1

    goto :goto_0

    .line 122
    :cond_6
    const-string v2, "removed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "bad_removal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "unmountable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 126
    :cond_7
    if-eqz v0, :cond_8

    if-nez p1, :cond_9

    .line 128
    :cond_8
    const v1, 0x20c00a1

    goto :goto_0

    .line 130
    :cond_9
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    const v1, 0x20c01e1

    goto :goto_0

    .line 142
    :cond_a
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 144
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto :goto_0

    .line 146
    :cond_b
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 148
    const v1, 0x20c01e6

    goto :goto_0

    .line 152
    :cond_c
    const v1, 0x20c00a1

    goto :goto_0

    .line 155
    :cond_d
    const-string v2, "unmounted"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 157
    if-eqz v0, :cond_e

    if-nez p1, :cond_f

    .line 159
    :cond_e
    const v1, 0x20c01e2

    goto/16 :goto_0

    .line 161
    :cond_f
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 163
    const v1, 0x20c01e1

    goto/16 :goto_0

    .line 173
    :cond_10
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 175
    const v1, 0x20c01e2

    goto/16 :goto_0

    .line 177
    :cond_11
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 179
    const v1, 0x20c01e2

    .line 180
    if-eqz p2, :cond_1

    .line 181
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 185
    :cond_12
    const v1, 0x20c01e2

    goto/16 :goto_0

    .line 188
    :cond_13
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 190
    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 193
    :cond_14
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    .line 195
    :cond_15
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 197
    const v1, 0x20c01e1

    goto/16 :goto_0

    .line 207
    :cond_16
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 209
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    .line 210
    if-eqz p2, :cond_1

    .line 211
    invoke-static {p2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 215
    :cond_17
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    goto/16 :goto_0

    .line 218
    :cond_18
    const-string v2, "HtcMemoryChecker_LOW_INTERNAL_MEMORY"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 220
    const v1, 0x20c01e4

    goto/16 :goto_0

    .line 222
    :cond_19
    const-string v2, "nofs"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    if-eqz v0, :cond_1a

    if-nez p1, :cond_1b

    .line 226
    :cond_1a
    const v1, 0x20c01e6

    goto/16 :goto_0

    .line 228
    :cond_1b
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaShared(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 230
    const v1, 0x20c01e1

    .line 231
    if-eqz p2, :cond_1

    .line 232
    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_1c
    invoke-static {p1}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 244
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ErrorMsgProvider;->getMountedMediaError(I)I

    move-result v1

    .line 246
    if-eqz p2, :cond_1

    .line 247
    invoke-static {p2, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 249
    :cond_1d
    const-string v2, "nofs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 251
    const v1, 0x20c01e6

    goto/16 :goto_0

    .line 255
    :cond_1e
    const v1, 0x20c01e6

    goto/16 :goto_0
.end method
