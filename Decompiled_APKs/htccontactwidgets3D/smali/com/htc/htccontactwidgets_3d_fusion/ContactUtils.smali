.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    }
.end annotation


# static fields
.field static final CID:Ljava/lang/String; = null

.field public static final DEFAULT_PID:I = -0x2

.field public static final DEFAULT_VOICEMAIL_PID:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ContactUtils"

.field static Orange_FR_CID_num:Ljava/lang/String;

.field static actionType_mail:Ljava/lang/String;

.field static actionType_phone_assistant:Ljava/lang/String;

.field static actionType_phone_car:Ljava/lang/String;

.field static actionType_phone_home:Ljava/lang/String;

.field static actionType_phone_mobile:Ljava/lang/String;

.field static actionType_phone_pager:Ljava/lang/String;

.field static actionType_phone_radio:Ljava/lang/String;

.field static actionType_phone_work:Ljava/lang/String;

.field static actionType_sms:Ljava/lang/String;

.field private static final localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "PhoneMobile"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_mobile:Ljava/lang/String;

    .line 45
    const-string v0, "PhoneWork"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_work:Ljava/lang/String;

    .line 46
    const-string v0, "PhoneHome"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_home:Ljava/lang/String;

    .line 47
    const-string v0, "PhonePager"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_pager:Ljava/lang/String;

    .line 48
    const-string v0, "PhoneAssistant"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_assistant:Ljava/lang/String;

    .line 49
    const-string v0, "ExchangePhoneCar"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_car:Ljava/lang/String;

    .line 50
    const-string v0, "ExchangePhoneRadio"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_radio:Ljava/lang/String;

    .line 51
    const-string v0, "SMS"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_sms:Ljava/lang/String;

    .line 52
    const-string v0, "Mail"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_mail:Ljava/lang/String;

    .line 59
    const-string v0, "ORANG202"

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->Orange_FR_CID_num:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->calculateCID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->CID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkCustomizatedSku(Ljava/lang/String;)Z
    .locals 1
    .parameter "skuCID"

    .prologue
    .line 68
    sget-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->CID:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkGroup(Ljava/util/ArrayList;Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;)Z
    .locals 5
    .parameter
    .parameter "mstrGroupName"
    .parameter "cc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, GroupMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;>;"
    iget-object v3, p2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 236
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v3, p2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 239
    .local v2, size_cc:I
    const/4 v0, 0x1

    .line 240
    .local v0, bRemove:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 241
    iget-object v3, p2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->group:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getGroupName(Ljava/util/ArrayList;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    const/4 v0, 0x0

    .line 243
    goto :goto_0

    .line 240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmSrc"
    .parameter "bmOverlay"

    .prologue
    const/4 v9, 0x0

    .line 423
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 425
    .local v4, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 426
    .local v3, nSrcH:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 427
    .local v2, nOverlayW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 428
    .local v1, nOverlayH:I
    if-ge v2, v4, :cond_0

    if-ge v1, v3, :cond_0

    .line 429
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 430
    .local v0, canvasSrc:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 431
    .local v5, paintDefault:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    sub-int v8, v3, v1

    invoke-direct {v7, v9, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 76
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 78
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v1, ""

    .line 83
    .end local v1           #rawBytes:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 80
    .restart local v1       #rawBytes:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 83
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I
    .locals 9
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;",
            "Ljava/lang/Long;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, mContactAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;>;"
    const/4 v4, -0x1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gtz v3, :cond_1

    move v1, v4

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    if-nez p0, :cond_2

    move v1, v4

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 189
    .local v2, size:I
    const/4 v0, 0x0

    .line 191
    .local v0, bFind:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 192
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v7, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 196
    goto :goto_0
.end method

.method public static getDefaultActionIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "mContext"
    .parameter "action"
    .parameter "actionType"

    .prologue
    const v5, 0x7f020006

    .line 381
    move-object v2, p1

    .line 383
    .local v2, sDefaultActionInfo:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 384
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, sContactCardPattern:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 419
    :goto_0
    return-object v4

    .line 393
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 399
    :cond_2
    move-object v0, p2

    .line 400
    .local v0, sActionType:Ljava/lang/String;
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_mobile:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 402
    :cond_3
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_work:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 404
    :cond_4
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_home:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 406
    :cond_5
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_pager:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 408
    :cond_6
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_assistant:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 410
    :cond_7
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_sms:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    .line 412
    :cond_8
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_mail:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    .line 414
    :cond_9
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_car:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    .line 416
    :cond_a
    sget-object v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->actionType_phone_radio:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    .line 419
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getDefaultImageResID(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 266
    const v0, 0x20800c1

    .line 267
    .local v0, defaultPhotoResource:I
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 270
    const-string v1, "people_default_image"

    .line 271
    .local v1, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.htc.htccontactwidgets"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 275
    .end local v1           #resourceName:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getGroupName(Ljava/util/ArrayList;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "group_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, GroupMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 224
    .local v2, size:I
    const-string v1, ""

    .line 225
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;

    iget-wide v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->id_:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 227
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;

    iget-object v1, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->name_:Ljava/lang/String;

    .line 231
    :cond_0
    return-object v1

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getMailAddressByUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    .locals 12
    .parameter "u"
    .parameter "ConResolver"

    .prologue
    const/4 v6, 0x0

    .line 341
    if-nez p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v6

    .line 344
    :cond_1
    new-instance v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    invoke-direct {v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;-><init>()V

    .line 346
    .local v6, actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 347
    .local v8, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 350
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "data2"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 351
    const/4 v11, 0x0

    .line 352
    .local v11, sMailAddress:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 354
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 357
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    const/4 v11, 0x0

    .line 359
    const/4 v6, 0x0

    .line 366
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 367
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 361
    :cond_4
    iput-object v11, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->address_:Ljava/lang/String;

    .line 362
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->type_:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    .end local v11           #sMailAddress:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 371
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "ContactUtils"

    const-string v2, "Query Mail Address By Uri failed in Widget view"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 373
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static getPhoneNumberByUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    .locals 12
    .parameter "u"
    .parameter "ConResolver"

    .prologue
    const/4 v6, 0x0

    .line 302
    if-nez p0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v6

    .line 305
    :cond_1
    new-instance v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    invoke-direct {v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;-><init>()V

    .line 307
    .local v6, actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 308
    .local v8, dataId:J
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 309
    .local v1, uri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 310
    .local v11, sPhoneNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 312
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "data2"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 313
    if-eqz v7, :cond_0

    .line 315
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 318
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    const/4 v11, 0x0

    .line 320
    const/4 v6, 0x0

    .line 326
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 322
    :cond_4
    iput-object v11, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->phone_:Ljava/lang/String;

    .line 323
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->type_:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v10

    .line 331
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "ContactUtils"

    const-string v2, "Query Phone Number By Uri failed in Widget view"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 333
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 251
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 254
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 261
    :goto_0
    return-object v6

    .line 255
    :catch_0
    move-exception v7

    .line 256
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ContactUtils"

    const-string v2, "Query Specified Contact Info failed in Widget view"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasKeyboard()Z
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, nhasKeyboard:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method public static isAboveOrEqualToSenserVer()Z
    .locals 2

    .prologue
    .line 88
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    return v0
.end method

.method public static isContactExist(Ljava/util/ArrayList;Ljava/lang/Long;)Z
    .locals 8
    .parameter
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, mContactAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;>;"
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-eqz p0, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    .local v2, size:I
    const/4 v0, 0x0

    .line 169
    .local v0, bFind:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v6, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 171
    const/4 v0, 0x1

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isTabletSetting()Z
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, nTabletValue:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 122
    :cond_1
    return v0
.end method

.method public static launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V
    .locals 4
    .parameter "hostActivity"
    .parameter "strGroupName"
    .parameter "nCount"

    .prologue
    .line 135
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "GROUP_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :goto_0
    :try_start_0
    invoke-interface {p0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_1
    return-void

    .line 144
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.group.GroupLayerCarouselActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "GROUP_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "summ_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static launchRearrangeView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;)V
    .locals 3
    .parameter "hostActivity"
    .parameter "strGroupName"

    .prologue
    .line 98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.ArrangeOrder"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :try_start_0
    invoke-interface {p0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseDefaultAction(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    .locals 5
    .parameter "sUri"
    .parameter "ConResolver"

    .prologue
    .line 279
    const-string v1, "mailto:"

    .line 280
    .local v1, sMailtoPattern:Ljava/lang/String;
    const-string v2, "sms:"

    .line 282
    .local v2, sSMSPattern:Ljava/lang/String;
    const/4 v0, 0x0

    .line 284
    .local v0, actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    const-string v4, "mailto:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "mailto:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, sU:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getMailAddressByUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    move-result-object v0

    .line 297
    .end local v3           #sU:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 289
    :cond_0
    const-string v4, "sms:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    const-string v4, "sms:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .restart local v3       #sU:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getPhoneNumberByUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    move-result-object v0

    .line 293
    goto :goto_0

    .line 294
    .end local v3           #sU:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getPhoneNumberByUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeContact(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, mContactAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;>;"
    .local p1, lMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, bFind:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 219
    :cond_0
    return-void

    .line 206
    :cond_1
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 211
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 212
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 213
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v5, v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v7, v4, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_3

    .line 214
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
