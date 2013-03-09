.class public Lcom/google/android/voicesearch/actions/SendEmailAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SendEmailAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SendEmailAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName;

.field private static final GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

.field protected static sAttachmentSupported:Ljava/lang/Boolean;

.field protected static sAutoSend:Ljava/lang/Boolean;

.field protected static sGmailInstalled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.ComposeActivityGmail"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    .line 69
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.AutoSendActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName;

    .line 162
    new-instance v0, Lcom/google/android/voicesearch/actions/SendEmailAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SendEmailAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Ljava/lang/String;Z)V
    .locals 18
    .parameter "context"
    .parameter "interpretation"
    .parameter "to"
    .parameter "cc"
    .parameter "bcc"
    .parameter "subject"
    .parameter "message"
    .parameter "prefix"
    .parameter "showDisambig"

    .prologue
    .line 107
    const-string v5, "com.google.android.gm.action.AUTO_SEND"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p8

    move/from16 v8, p9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    invoke-static/range {p1 .. p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v11

    .line 110
    .local v11, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v11}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, language:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "to"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, slotTo:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, slotMessage:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "subject"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 119
    .local v17, slotSubject:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cc"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, slotCc:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "bcc"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, slotBcc:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SendEmailAction;->toIsPrimarySlot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    new-instance v2, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v3, "to"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 132
    :goto_0
    new-instance v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v6, "message"

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x3

    move-object/from16 v7, v16

    invoke-direct/range {v5 .. v10}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 135
    new-instance v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v6, "subject"

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object/from16 v7, v17

    invoke-direct/range {v5 .. v10}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 137
    new-instance v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v6, "cc"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v15

    invoke-direct/range {v5 .. v10}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 139
    new-instance v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v6, "bcc"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v7, v14

    invoke-direct/range {v5 .. v10}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 142
    const-string v2, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 143
    const-string v2, "cc"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 144
    const-string v2, "bcc"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 145
    const-string v2, "subject"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 146
    const-string v2, "message"

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 148
    invoke-interface {v11}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v12

    .line 149
    .local v12, device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    invoke-static {v12}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 150
    return-void

    .line 128
    .end local v12           #device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    :cond_0
    new-instance v2, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v3, "to"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    goto/16 :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 10
    .parameter "context"
    .parameter "interpretation"
    .parameter "to"
    .parameter "cc"
    .parameter "bcc"
    .parameter "subject"
    .parameter "message"
    .parameter "showDisambig"

    .prologue
    .line 100
    const-string v8, "send_email"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 9
    .parameter "context"
    .parameter "to"
    .parameter "cc"
    .parameter "bcc"
    .parameter "subject"
    .parameter "message"
    .parameter "showDisambig"

    .prologue
    .line 154
    const/16 v2, 0xd

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    .line 155
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 160
    return-void
.end method

.method private buildListTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 324
    const-string v2, "to"

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 325
    .local v0, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 327
    .local v1, toString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->buildListTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 325
    .end local v1           #toString:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static determineAutoSend(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 2
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 305
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0

    .line 313
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0

    .line 320
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 298
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsActivity(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    .line 300
    const-string v0, "com.google.android.gm"

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->getInstalledPackageVersion(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x84

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private validateContactSlot(Ljava/lang/String;)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 405
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 406
    .local v0, value:Lcom/google/android/voicesearch/actions/ContactsValue;
    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, valueString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/google/android/voicesearch/actions/EmailValidator;->areValidEmailAddresses(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 177
    const v0, 0x7f020011

    return v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getGmailAccountsBlocking(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 203
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 204
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    .line 207
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "com.google.android.gm.action.AUTO_SEND"

    goto :goto_0

    .line 217
    :cond_2
    const-string v0, "android.intent.action.SEND"

    goto :goto_0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    .line 228
    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0

    .line 231
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 239
    sget-object v1, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "mailto"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v4, extras:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 259
    const-string v11, "com.google.android.gm.extra.ACCOUNT"

    iget-object v12, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v11, "account"

    iget-object v12, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    const-string v11, "to"

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v9

    check-cast v9, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 264
    .local v9, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v11, "cc"

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 265
    .local v2, cc:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v11, "bcc"

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 266
    .local v0, bcc:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v11, "subject"

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v7

    check-cast v7, Lcom/google/android/voicesearch/actions/TextValue;

    .line 267
    .local v7, subject:Lcom/google/android/voicesearch/actions/TextValue;
    const-string v11, "message"

    invoke-virtual {p0, v11}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v5

    check-cast v5, Lcom/google/android/voicesearch/actions/TextValue;

    .line 274
    .local v5, message:Lcom/google/android/voicesearch/actions/TextValue;
    if-eqz v9, :cond_1

    invoke-virtual {v9, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    .local v10, toArray:[Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 275
    const-string v11, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 278
    .end local v10           #toArray:[Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .local v3, ccArray:[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 279
    const-string v11, "android.intent.extra.CC"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    .end local v3           #ccArray:[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actions/ContactsValue;->asStringArrayWithFilledAddresses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .local v1, bccArray:[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 283
    const-string v11, "android.intent.extra.BCC"

    invoke-virtual {v4, v11, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    .end local v1           #bccArray:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 286
    .local v8, subjectString:Ljava/lang/CharSequence;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 287
    const-string v11, "android.intent.extra.SUBJECT"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_4
    const/4 v6, 0x0

    .line 290
    .local v6, messageString:Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 291
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 294
    :cond_5
    return-object v4
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "text/plain"

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInvalidSlots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/SlotSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-super {p0}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getInvalidSlots()Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    const-string v1, "to"

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->validateContactSlot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .restart local v0       #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    :cond_0
    const-string v1, "to"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotSpec(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    const-string v1, "cc"

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->validateContactSlot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 386
    if-nez v0, :cond_2

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .restart local v0       #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    :cond_2
    const-string v1, "cc"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotSpec(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_3
    const-string v1, "bcc"

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->validateContactSlot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 393
    if-nez v0, :cond_4

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .restart local v0       #invalidSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    :cond_4
    const-string v1, "bcc"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getSlotSpec(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_5
    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f020011

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SendEmailAction;->buildListTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f020012

    return v0
.end method

.method public getShortcutExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 421
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 422
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 423
    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const-string v0, "android.intent.action.SENDTO"

    .line 359
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "android.intent.action.SEND"

    goto :goto_0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/SendEmailAction;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 366
    :cond_0
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->GMAIL_COMPONENT_NON_AUTO_SEND:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 433
    const v0, 0x7f0a07f1

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/StringUtils;->getStringResourceOrGservicesOverride(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 428
    const v0, 0x7f0a07ea

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 341
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAttachmentSupported:Ljava/lang/Boolean;

    .line 342
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sGmailInstalled:Ljava/lang/Boolean;

    .line 343
    sput-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    .line 344
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineGmailSupport(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 345
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SendEmailAction;->determineAutoSend(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 346
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    return v0
.end method

.method public requiresMailAccount()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public requiresMailAccountSelector()Z
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/google/android/voicesearch/actions/SendEmailAction;->sAutoSend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected toIsPrimarySlot()Z
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    return v0
.end method
