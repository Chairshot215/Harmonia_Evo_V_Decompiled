.class public Lcom/htc/util/phone/DialUtils;
.super Ljava/lang/Object;
.source "DialUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/phone/DialUtils$SimpleContactInfo;,
        Lcom/htc/util/phone/DialUtils$QWERTY;
    }
.end annotation


# static fields
.field public static final EXTRA_IMS_CALL_ADDRESS:Ljava/lang/String; = "com.htc.phone.ims_call_address"

.field public static final EXTRA_IMS_CALL_TYPE:Ljava/lang/String; = "com.htc.phone.ims_call_type"

.field public static final EXTRA_IMS_CALL_TYPE_VALUE_HD_VOICE:Ljava/lang/String; = "hd_voice"

.field public static final EXTRA_IMS_CALL_TYPE_VALUE_VIDEO:Ljava/lang/String; = "video"

.field public static final EXTRA_IS_VTCALL:Ljava/lang/String; = "isVTCall"

.field public static final EXTRA_LAUNCH_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field public static final FROM_DIALER:Ljava/lang/String; = "fromDialer"

.field public static final HAS_PHOTO:Ljava/lang/String; = "hasPhoto"

.field public static final LOOKUP:Ljava/lang/String; = "lookup"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_TYPE:Ljava/lang/String; = "numberType"

.field public static final PERSON_ID:Ljava/lang/String; = "personId"

.field public static final PERSON_LOOKUP_KEY:Ljava/lang/String; = "personLookupKey"

.field private static final PROP_KEY_SHOW_DIALPAD_PREFIX:Ljava/lang/String; = "ro.phone.dialpad_pf"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel"

.field public static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final mDialWithDialpadPrefix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/htc/util/phone/DialUtils;->getDialpadPrefix()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/phone/DialUtils;->mDialWithDialpadPrefix:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method public static callDirectly(Landroid/content/Intent;)Z
    .locals 20
    .parameter "intent"

    .prologue
    .line 248
    const/16 v19, 0x1

    .line 251
    .local v19, result:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 253
    .local v17, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 261
    .end local v17           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v19, :cond_0

    .line 263
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 264
    .local v2, mAm:Landroid/app/IActivityManager;
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v4, p0

    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    .line 266
    .local v18, res:I
    if-nez v18, :cond_1

    const/16 v19, 0x1

    .line 274
    .end local v2           #mAm:Landroid/app/IActivityManager;
    .end local v18           #res:I
    :cond_0
    :goto_1
    return v19

    .line 254
    :catch_0
    move-exception v16

    .line 255
    .local v16, e:Ljava/lang/Exception;
    const-string v3, "DialUtils"

    const-string v4, "callDirectly"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/16 v19, 0x0

    goto :goto_0

    .line 266
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v2       #mAm:Landroid/app/IActivityManager;
    .restart local v18       #res:I
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 267
    .end local v2           #mAm:Landroid/app/IActivityManager;
    .end local v18           #res:I
    :catch_1
    move-exception v16

    .line 268
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v3, "DialUtils"

    const-string v4, "callDirectly"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/16 v19, 0x0

    goto :goto_1
.end method

.method public static copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V
    .locals 3
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    const-string v0, "personId"

    iget-wide v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->personId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "number"

    iget-object v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v0, "numberType"

    iget v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->numberType:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v0, "name"

    iget-object v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "recordNumber"

    iget-wide v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->recordNumber:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    const-string v0, "hasPhoto"

    iget-boolean v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->bHasPhoto:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v0, "raw_contact_id"

    iget-wide v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->raw_contact_id:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    const-string v0, "lookup"

    iget-object v1, p1, Landroid/provider/HtcUnionContact$SimpleContactInfo;->lookup:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v0, "fromDialer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    :cond_0
    return-void
.end method

.method public static copyDialExtra(Landroid/content/Intent;Lcom/htc/util/phone/DialUtils$SimpleContactInfo;)V
    .locals 3
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 211
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 212
    const-string v0, "personId"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->personId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "number"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v0, "numberType"

    iget v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->numberType:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v0, "name"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v0, "recordNumber"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->recordNumber:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    const-string v0, "hasPhoto"

    iget-boolean v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->bHasPhoto:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const-string v0, "raw_contact_id"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->raw_contact_id:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 219
    const-string v0, "lookup"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->lookup:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v0, "fromDialer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    :cond_0
    return-void
.end method

.method public static copyDialExtra2(Landroid/content/Intent;Lcom/htc/util/phone/DialUtils$SimpleContactInfo;)V
    .locals 3
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 226
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 227
    const-string v0, "personId"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->personId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v0, "number"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v0, "numberType"

    iget v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->numberType:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v0, "name"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v0, "recordNumber"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->recordNumber:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    const-string v0, "hasPhoto"

    iget-boolean v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->bHasPhoto:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    const-string v0, "raw_contact_id"

    iget-wide v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->raw_contact_id:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 234
    const-string v0, "lookup"

    iget-object v1, p1, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->lookup:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v0, "fromDialer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    :cond_0
    return-void
.end method

.method public static createEditBeforeCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "number"

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 288
    .local v0, dialerEditor:Landroid/content/Intent;
    const-string v1, "edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    return-object v0
.end method

.method public static final dialWithDialpad(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, showDialpad:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/htc/util/phone/DialUtils;->mDialWithDialpadPrefix:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 305
    sget-object v3, Lcom/htc/util/phone/DialUtils;->mDialWithDialpadPrefix:[Ljava/lang/String;

    array-length v1, v3

    .line 306
    .local v1, prefixSize:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 307
    sget-object v3, Lcom/htc/util/phone/DialUtils;->mDialWithDialpadPrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    const/4 v2, 0x1

    .line 313
    .end local v0           #index:I
    .end local v1           #prefixSize:I
    :cond_0
    return v2

    .line 306
    .restart local v0       #index:I
    .restart local v1       #prefixSize:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final getDialpadPrefix()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, result:[Ljava/lang/String;
    sget-boolean v1, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_DIAL_WITH_DIALPAD:Z

    if-eqz v1, :cond_0

    .line 324
    invoke-static {}, Lcom/htc/util/phone/DialUtils;->getDialpadPrefixByProject()[Ljava/lang/String;

    move-result-object v0

    .line 325
    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/htc/util/phone/DialUtils;->getDialpadPrefixByProp()[Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_0
    return-object v0
.end method

.method private static final getDialpadPrefixByProject()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, result:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 360
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "800"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "888"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "877"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "866"

    aput-object v2, v0, v1

    .line 363
    .restart local v0       #result:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static final getDialpadPrefixByProp()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, result:[Ljava/lang/String;
    sget-object v0, Lcom/htc/util/phone/ProjectUtils;->CID:Ljava/lang/String;

    .line 341
    .local v0, cid:Ljava/lang/String;
    const-string v3, "ro.phone.dialpad_pf"

    invoke-static {v3, v0}, Lcom/htc/util/phone/ProjectUtils;->calculatePropKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, prefixString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 348
    :cond_0
    return-object v2
.end method

.method public static makeDialUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const-string v1, "tel"

    invoke-static {v1, p0, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method
