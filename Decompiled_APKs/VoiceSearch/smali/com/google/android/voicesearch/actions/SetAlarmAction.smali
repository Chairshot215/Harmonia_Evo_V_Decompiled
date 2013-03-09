.class public Lcom/google/android/voicesearch/actions/SetAlarmAction;
.super Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
.source "SetAlarmAction.java"


# static fields
.field private static final CLOCK_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/SetAlarmAction;",
            ">;"
        }
    .end annotation
.end field

.field private static sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

.field private static sDeprecatedClockInstalled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.deskclock.alarmprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "add"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CLOCK_URI:Landroid/net/Uri;

    .line 121
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 7
    .parameter "context"
    .parameter "hour"
    .parameter "minutes"
    .parameter "label"
    .parameter "showDisambig"

    .prologue
    .line 108
    const/16 v2, 0xf

    const/4 v3, 0x0

    const-string v4, "set_alarm"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/TextValue;Z)V
    .locals 9
    .parameter "context"
    .parameter "minutesFromNow"
    .parameter "label"
    .parameter "showDisambig"

    .prologue
    const/16 v8, 0xc

    .line 100
    const/16 v2, 0xf

    const/4 v3, 0x0

    const-string v4, "set_alarm"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 102
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7, v8, p2}, Ljava/util/Calendar;->add(II)V

    .line 103
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/SetAlarmAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V
    .locals 4
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    sget-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v1, "com.google.android.deskclock"

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->getInstalledPackageVersion(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, clockVersion:I
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    .line 165
    const/16 v1, 0xcb

    if-lt v0, v1, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 164
    goto :goto_1

    :cond_2
    move v2, v3

    .line 165
    goto :goto_2
.end method

.method private setUp(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;)V
    .locals 16
    .parameter "context"
    .parameter "hour"
    .parameter "minutes"
    .parameter "label"

    .prologue
    .line 135
    invoke-static/range {p1 .. p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v11

    .line 136
    .local v11, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v11}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, language:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "time"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, slotTime:Ljava/lang/String;
    const-string v2, "_slot_"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v5, "label"

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v3, v5}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, slotLabel:Ljava/lang/String;
    new-instance v2, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v3, "time"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-direct/range {v2 .. v7}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 147
    new-instance v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    const-string v6, "label"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v14

    invoke-direct/range {v5 .. v10}, Lcom/google/android/voicesearch/actions/SlotSpec;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->addSlot(Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 150
    new-instance v15, Lcom/google/android/voicesearch/actions/TimeValue;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v15, v0, v1}, Lcom/google/android/voicesearch/actions/TimeValue;-><init>(II)V

    .line 152
    .local v15, time:Lcom/google/android/voicesearch/actions/TimeValue;
    const-string v2, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 153
    const-string v2, "label"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->setSlotValue(Ljava/lang/String;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actions/SlotValue;

    .line 155
    invoke-interface {v11}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v12

    .line 156
    .local v12, device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    invoke-static {v12}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 157
    return-void
.end method


# virtual methods
.method public getCompletionToast(Landroid/content/Context;)Landroid/widget/Toast;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 262
    sget-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v0

    .line 263
    :cond_1
    sget-object v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const v0, 0x7f0a0728

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->CLOCK_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 246
    sget-object v3, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 257
    :cond_0
    :goto_0
    return-object v1

    .line 248
    :cond_1
    const-string v3, "time"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 249
    .local v2, time:Lcom/google/android/voicesearch/actions/TimeValue;
    const-string v3, "label"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 250
    .local v0, alarmLabel:Lcom/google/android/voicesearch/actions/TextValue;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "hour"

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/TimeValue;->getHourOfDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v3, "minutes"

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/TimeValue;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    if-eqz v0, :cond_0

    .line 255
    const-string v3, "message"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f020004

    return v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SET_ALARM"

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 5
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
    .line 279
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    sget-object v3, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 292
    :goto_0
    return-object v1

    .line 281
    :cond_0
    const-string v3, "time"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 282
    .local v2, time:Lcom/google/android/voicesearch/actions/TimeValue;
    const-string v3, "label"

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 283
    .local v0, alarmLabel:Lcom/google/android/voicesearch/actions/TextValue;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/TimeValue;->getHourOfDay()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v3, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/TimeValue;->getMinute()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    if-eqz v0, :cond_1

    .line 288
    const-string v3, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    const-string v4, "android.intent.extra.alarm.SKIP_UI"

    sget-object v3, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f020005

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v5, "</b>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v5, "time"

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v4

    check-cast v4, Lcom/google/android/voicesearch/actions/TimeValue;

    .line 190
    .local v4, timeValue:Lcom/google/android/voicesearch/actions/TimeValue;
    if-nez v4, :cond_2

    move-object v3, v1

    .line 191
    .local v3, time:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 192
    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    const-string v5, "label"

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actions/TextValue;

    .line 197
    .local v2, labelValue:Lcom/google/android/voicesearch/actions/TextValue;
    if-nez v2, :cond_3

    .line 198
    .local v1, label:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 199
    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 190
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v2           #labelValue:Lcom/google/android/voicesearch/actions/TextValue;
    .end local v3           #time:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p1}, Lcom/google/android/voicesearch/actions/TimeValue;->asString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 197
    .restart local v2       #labelValue:Lcom/google/android/voicesearch/actions/TextValue;
    .restart local v3       #time:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 180
    const v0, 0x7f020006

    return v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "android.intent.action.MAIN"

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SET_ALARM"

    goto :goto_0
.end method

.method public getShortcutIntentComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.deskclock"

    const-string v2, "com.android.deskclock.AlarmClock"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortcutTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->buildListTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMarketUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 331
    const v0, 0x7f0a07f2

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/StringUtils;->getStringResourceOrGservicesOverride(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedActionDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 326
    const v0, 0x7f0a07eb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 234
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

    .line 223
    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    .line 224
    sput-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sClockWithAlarmEditorInstalled:Ljava/lang/Boolean;

    .line 226
    invoke-static {p2}, Lcom/google/android/voicesearch/actions/SetAlarmAction;->determineClockCapabilites(Lcom/google/android/voicesearch/DeviceCapabilityManager;)V

    .line 227
    sget-object v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;->sDeprecatedClockInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    return-void
.end method
