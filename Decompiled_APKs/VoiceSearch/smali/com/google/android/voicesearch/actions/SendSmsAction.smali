.class public Lcom/google/android/voicesearch/actions/SendSmsAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SendSmsAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SendSmsAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/voicesearch/actions/SendSmsAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SendSmsAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SendSmsAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 12
    .parameter "context"
    .parameter "to"
    .parameter "message"
    .parameter "showDisambig"

    .prologue
    .line 56
    const/16 v2, 0xe

    const-string v3, "com.google.android.apps.googlevoice.action.AUTO_SEND"

    const-string v4, "send_sms"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 59
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, language:Ljava/lang/String;
    const-string v0, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v3, "to"

    invoke-static {p1, v10, v0, v1, v3}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, slotTo:Ljava/lang/String;
    const-string v0, "_slot_"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v3, "message"

    invoke-static {p1, v10, v0, v1, v3}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, slotMessage:Ljava/lang/String;
    new-instance v0, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v1, "to"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actions/SendSmsAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 70
    new-instance v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v4, "message"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v8, 0x1b8

    const/4 v9, 0x7

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SendSmsAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 74
    const-string v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/voicesearch/actions/SendSmsAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 75
    const-string v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/voicesearch/actions/SendSmsAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/SendSmsAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SendSmsAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private buildListTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 136
    const-string v2, "to"

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 137
    .local v0, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 139
    .local v1, toString:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/voicesearch/actions/SendSmsAction;->buildListTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 137
    .end local v1           #toString:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/ContactsValue;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f020027

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 7
    .parameter "context"

    .prologue
    .line 117
    const-string v5, "to"

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v4

    check-cast v4, Lcom/google/android/voicesearch/actions/ContactsValue;

    .line 118
    .local v4, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/ContactsValue;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 120
    invoke-virtual {v4, v2}, Lcom/google/android/voicesearch/actions/ContactsValue;->get(I)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v1

    .line 121
    .local v1, contact:Lcom/google/android/voicesearch/actions/Contact;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/Contact;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1           #contact:Lcom/google/android/voicesearch/actions/Contact;
    :cond_0
    const-string v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, recipients:Ljava/lang/String;
    const-string v5, "smsto"

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 4
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
    .line 129
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actions/SendSmsAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actions/TextValue;

    .line 131
    .local v1, message:Lcom/google/android/voicesearch/actions/TextValue;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f020028

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SendSmsAction;->buildListTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f020029

    return v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "android.intent.action.SENDTO"

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 144
    invoke-virtual {p2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->isTelephoneCapable()Z

    move-result v0

    return v0
.end method

.method public shouldWaitForActivityResult()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
