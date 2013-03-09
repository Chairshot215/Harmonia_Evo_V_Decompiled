.class public Lcom/htc/android/mail/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# static fields
.field public static final KEY_CITY:Ljava/lang/String; = "city"

.field public static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_STREET:Ljava/lang/String; = "street"

.field public static final KEY_ZIP:Ljava/lang/String; = "zip"

.field private static final TAG:Ljava/lang/String; = "VCardComposer"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30_INT:I = 0x2

.field private static final emailTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final emailTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final phoneTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final phoneTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNewline:Ljava/lang/String;

.field private mResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CELL"

    aput-object v2, v1, v4

    const-string v2, "AOL"

    aput-object v2, v1, v5

    const-string v2, "APPLELINK"

    aput-object v2, v1, v6

    const-string v2, "ATTMAIL"

    aput-object v2, v1, v7

    const-string v2, "CIS"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "X400"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->emailTypes:Ljava/util/HashSet;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PREF"

    aput-object v2, v1, v4

    const-string v2, "WORK"

    aput-object v2, v1, v5

    const-string v2, "HOME"

    aput-object v2, v1, v6

    const-string v2, "VOICE"

    aput-object v2, v1, v7

    const-string v2, "FAX"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypes:Ljava/util/HashSet;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    .line 87
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CELL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FAX;WORK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FAX;HOME"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-OTHER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private appendAnniversary(Ljava/lang/String;)V
    .locals 2
    .parameter "anniversary"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "X-ANNIVERSARY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    return-void
.end method

.method private appendBirthday(Ljava/lang/String;)V
    .locals 2
    .parameter "birthday"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "BDAY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    return-void
.end method

.method private appendCategory(Ljava/lang/String;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "X-CATEGORIES;CHARSET=UTF-8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    return-void
.end method

.method private appendContactMethodStr(Ljava/util/List;I)V
    .locals 19
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, contactMList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;>;"
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const-string v9, ";"

    .line 363
    .local v9, joinMark:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 364
    .local v6, custNum:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;

    .line 366
    .local v4, contactMethod:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->kind:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    .line 369
    :pswitch_0
    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 370
    new-instance v16, Ljava/lang/Integer;

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 371
    .local v11, methodType:I
    sget-object v16, Lcom/htc/android/mail/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 372
    sget-object v16, Lcom/htc/android/mail/pim/vcard/VCardComposer;->emailTypeMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 377
    .local v10, mailType:Ljava/lang/String;
    :goto_2
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "EMAIL;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :goto_3
    const-string v16, "X-CUSTOM"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "INTERNET;X-CUSTOM-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "X-EMAIL-CUSTOM-TYPE;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "X-CUSTOM-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 362
    .end local v4           #contactMethod:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    .end local v6           #custNum:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #joinMark:Ljava/lang/String;
    .end local v10           #mailType:Ljava/lang/String;
    .end local v11           #methodType:I
    :cond_1
    const-string v9, ","

    goto/16 :goto_0

    .line 374
    .restart local v4       #contactMethod:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    .restart local v6       #custNum:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #joinMark:Ljava/lang/String;
    .restart local v11       #methodType:I
    :cond_2
    const-string v10, "INTERNET"

    .restart local v10       #mailType:Ljava/lang/String;
    goto :goto_2

    .line 380
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "EMAIL;TYPE="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 387
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";CHARSET=UTF-8:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 392
    .end local v10           #mailType:Ljava/lang/String;
    .end local v11           #methodType:I
    :pswitch_1
    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 393
    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "CUSTOM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "ADR;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "HOME"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "X-CUSTOM-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "X-ADR-CUSTOM-TYPE;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "X-CUSTOM-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 403
    :cond_5
    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 407
    .local v12, postal_uri:Landroid/net/Uri;
    :try_start_0
    const-string v16, "street"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 408
    .local v14, street:Ljava/lang/String;
    const-string v16, "\\\\"

    const-string v17, "\\\\\\\\"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ";"

    const-string v18, "\\\\;"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 415
    :goto_4
    :try_start_1
    const-string v16, "city"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, city:Ljava/lang/String;
    const-string v16, "\\\\"

    const-string v17, "\\\\\\\\"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ";"

    const-string v18, "\\\\;"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 423
    :goto_5
    :try_start_2
    const-string v16, "state"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 424
    .local v13, state:Ljava/lang/String;
    const-string v16, "\\\\"

    const-string v17, "\\\\\\\\"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ";"

    const-string v18, "\\\\;"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 431
    :goto_6
    :try_start_3
    const-string v16, "zip"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 432
    .local v15, zip:Ljava/lang/String;
    const-string v16, "\\\\"

    const-string v17, "\\\\\\\\"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ";"

    const-string v18, "\\\\;"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    .line 439
    :goto_7
    :try_start_4
    const-string v16, "country"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, country:Ljava/lang/String;
    const-string v16, "\\\\"

    const-string v17, "\\\\\\\\"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ";"

    const-string v18, "\\\\;"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v5

    .line 446
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "ADR;"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";CHARSET=UTF-8:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 409
    .end local v3           #city:Ljava/lang/String;
    .end local v5           #country:Ljava/lang/String;
    .end local v13           #state:Ljava/lang/String;
    .end local v14           #street:Ljava/lang/String;
    .end local v15           #zip:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 410
    .local v7, e:Ljava/lang/Exception;
    const-string v16, "VCardComposer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ERROR: Get street from: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const-string v14, ""

    .restart local v14       #street:Ljava/lang/String;
    goto/16 :goto_4

    .line 417
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 418
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v16, "VCardComposer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ERROR: Get city from: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    const-string v3, ""

    .restart local v3       #city:Ljava/lang/String;
    goto/16 :goto_5

    .line 425
    .end local v7           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 426
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v16, "VCardComposer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ERROR: Get state from: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    const-string v13, ""

    .restart local v13       #state:Ljava/lang/String;
    goto/16 :goto_6

    .line 433
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 434
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v16, "VCardComposer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ERROR: Get zip from: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    const-string v15, ""

    .restart local v15       #zip:Ljava/lang/String;
    goto/16 :goto_7

    .line 441
    .end local v7           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 442
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v16, "VCardComposer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ERROR: Get country from: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;->data:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const-string v5, ""

    .restart local v5       #country:Ljava/lang/String;
    goto/16 :goto_8

    .line 456
    .end local v3           #city:Ljava/lang/String;
    .end local v4           #contactMethod:Lcom/htc/android/mail/pim/vcard/ContactStruct$ContactMethod;
    .end local v5           #country:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #postal_uri:Landroid/net/Uri;
    .end local v13           #state:Ljava/lang/String;
    .end local v14           #street:Ljava/lang/String;
    .end local v15           #zip:Ljava/lang/String;
    :cond_6
    return-void

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private appendIMStr(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, imList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;

    .line 461
    .local v1, instmsg:Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
    iget-object v2, v1, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->data:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v3, "X-IM;CHARSET=UTF-8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;->data:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 467
    .end local v1           #instmsg:Lcom/htc/android/mail/pim/vcard/ContactStruct$IMData;
    :cond_1
    return-void
.end method

.method private appendLastUpdateTime(Ljava/lang/String;)V
    .locals 2
    .parameter "last_update_time"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "REV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    return-void
.end method

.method private appendNameStr(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "N;CHARSET=UTF-8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    return-void
.end method

.method private appendOrganizationStr(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, type:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, company:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, title:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 474
    .local v2, numMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    const-string v1, ";"

    .line 475
    .local v1, joinMark:Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_0

    .line 476
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #company:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .restart local p2       #company:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-nez p3, :cond_1

    .line 478
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #title:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .restart local p3       #title:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 481
    .local v3, size:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_6

    .line 482
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 483
    iget-object v4, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "ORG;CHARSET=UTF-8:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_5

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 492
    iget-object v4, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "TITLE;CHARSET=UTF-8:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p4}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 474
    .end local v0           #i:I
    .end local v1           #joinMark:Ljava/lang/String;
    .end local v3           #size:I
    :cond_2
    const-string v1, ","

    goto :goto_0

    .line 480
    .restart local v1       #joinMark:Ljava/lang/String;
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    .line 485
    .restart local v0       #i:I
    .restart local v3       #size:I
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "ORG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 494
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v5, "TITLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 497
    :cond_6
    return-void
.end method

.method private appendPhoneStr(Ljava/util/List;I)V
    .locals 9
    .parameter
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;>;"
    const/4 v8, 0x1

    .line 308
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v3, numMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-ne p2, v8, :cond_3

    const-string v2, ";"

    .line 310
    .local v2, joinMark:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 312
    .local v0, custNum:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;

    .line 314
    .local v4, phone:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    iget-object v6, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    invoke-direct {p0, v4}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->getPhoneTypeStr(Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x2

    if-ne p2, v6, :cond_1

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 317
    const-string v6, ";"

    const-string v7, ","

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 319
    :cond_1
    iget-object v6, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    :cond_2
    if-ne p2, v8, :cond_4

    .line 324
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_2
    const-string v6, "X-CUSTOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 330
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "HOME;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X-CUSTOM-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "X-TEL-CUSTOM-TYPE;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "X-CUSTOM-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 309
    .end local v0           #custNum:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #joinMark:Ljava/lang/String;
    .end local v4           #phone:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    const-string v2, ","

    goto/16 :goto_0

    .line 326
    .restart local v0       #custNum:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #joinMark:Ljava/lang/String;
    .restart local v4       #phone:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    .restart local v5       #type:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v7, "TEL;TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 335
    :cond_5
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 341
    .end local v4           #phone:Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;
    .end local v5           #type:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_3

    .line 343
    :cond_7
    return-void
.end method

.method private appendPhotoStr([BLjava/lang/String;I)V
    .locals 8
    .parameter "bytes"
    .parameter "type"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 229
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    .local v1, bd:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {v1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 238
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v5, p3}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, value:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-static {p1, v7}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v5, p3}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->foldingString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 242
    const/4 v1, 0x0

    .line 243
    const/4 v3, 0x0

    .line 245
    invoke-direct {p0, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    const-string p2, "image/jpeg"

    .line 248
    :cond_2
    const-string v5, "jpeg"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    .line 249
    const-string v0, "JPEG"

    .line 259
    .local v0, apptype:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v6, "PHOTO;TYPE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    if-ne p3, v7, :cond_6

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";ENCODING=BASE64:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, encodingStr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    :goto_2
    iget-object v5, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 250
    .end local v0           #apptype:Ljava/lang/String;
    .end local v2           #encodingStr:Ljava/lang/String;
    :cond_3
    const-string v5, "gif"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    .line 251
    const-string v0, "GIF"

    .restart local v0       #apptype:Ljava/lang/String;
    goto :goto_1

    .line 252
    .end local v0           #apptype:Ljava/lang/String;
    :cond_4
    const-string v5, "bmp"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_5

    .line 253
    const-string v0, "BMP"

    .restart local v0       #apptype:Ljava/lang/String;
    goto :goto_1

    .line 255
    .end local v0           #apptype:Ljava/lang/String;
    :cond_5
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #apptype:Ljava/lang/String;
    goto :goto_1

    .line 263
    :cond_6
    const/4 v5, 0x2

    if-ne p3, v5, :cond_0

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";ENCODING=b:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodingStr:Ljava/lang/String;
    goto :goto_2
.end method

.method private foldingString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "version"

    .prologue
    const/4 v1, 0x0

    .line 197
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 205
    :goto_0
    const-string v0, ";"

    const-string v1, "\\\\;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 209
    const-string v0, "\n"

    const-string v1, "\r\n "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_1
    return-object v0

    .line 199
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 202
    goto :goto_1

    .line 210
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 211
    const-string v0, "\n"

    const-string v1, "\n "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p1

    .line 213
    goto :goto_1
.end method

.method private getPhoneTypeStr(Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;)Ljava/lang/String;
    .locals 4
    .parameter "phone"

    .prologue
    .line 347
    iget-object v2, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct$PhoneData;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, phoneType:I
    sget-object v2, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    sget-object v2, Lcom/htc/android/mail/pim/vcard/VCardComposer;->phoneTypeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    .local v1, typeStr:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 354
    .end local v1           #typeStr:Ljava/lang/String;
    :cond_0
    const-string v1, "VOICE"

    .restart local v1       #typeStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createVCard(Lcom/htc/android/mail/pim/vcard/ContactStruct;I)Ljava/lang/String;
    .locals 3
    .parameter "struct"
    .parameter "vcardversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    .line 126
    if-ne p2, v2, :cond_d

    .line 127
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    if-ne p2, v2, :cond_f

    .line 138
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "VERSION:2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_1
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendNameStr(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->company:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->company:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->title:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->title:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 149
    :cond_2
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->orgType:Ljava/util/List;

    iget-object v1, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->company:Ljava/util/List;

    iget-object v2, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->title:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendOrganizationStr(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 151
    :cond_3
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->last_update_time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->last_update_time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendLastUpdateTime(Ljava/lang/String;)V

    .line 154
    :cond_4
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->birthday:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->birthday:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendBirthday(Ljava/lang/String;)V

    .line 157
    :cond_5
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 158
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendAnniversary(Ljava/lang/String;)V

    .line 160
    :cond_6
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->category:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 161
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->category:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendCategory(Ljava/lang/String;)V

    .line 163
    :cond_7
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->notes:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 164
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "NOTE;CHARSET=UTF-8:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_8
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->photoBytes:[B

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->photoBytes:[B

    iget-object v1, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->photoType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendPhotoStr([BLjava/lang/String;I)V

    .line 171
    :cond_9
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 172
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->phoneList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendPhoneStr(Ljava/util/List;I)V

    .line 175
    :cond_a
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 176
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->contactmethodList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendContactMethodStr(Ljava/util/List;I)V

    .line 179
    :cond_b
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->IMList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 180
    iget-object v0, p1, Lcom/htc/android/mail/pim/vcard/ContactStruct;->IMList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/htc/android/mail/pim/vcard/VCardComposer;->appendIMStr(Ljava/util/List;I)V

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "END:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 129
    const-string v0, "\n"

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :cond_e
    new-instance v0, Lcom/htc/android/mail/pim/vcard/VCardException;

    const/16 v1, 0xf

    const-string v2, " version not match VERSION_VCARD21 or VERSION_VCARD30."

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/pim/vcard/VCardException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 140
    :cond_f
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mResult:Ljava/lang/StringBuilder;

    const-string v1, "VERSION:3.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardComposer;->mNewline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
