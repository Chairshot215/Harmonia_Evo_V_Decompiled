.class public Lcom/google/android/voicesearch/actions/VoiceActionsFactory;
.super Ljava/lang/Object;
.source "VoiceActionsFactory.java"


# static fields
.field private static sAllActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;

.field private static sSupportedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sDummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 53
    sput-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sSupportedActions:Ljava/util/List;

    .line 56
    sput-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sAllActions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized forceApplicationAvailabilityRefresh(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-class v1, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;

    monitor-enter v1

    :try_start_0
    const-string v0, "VoiceActionsFactory"

    const-string v2, "Applications list changed, recalculating supported actions"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->refreshActionTypes(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v1

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAllActionTypes(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v1, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sAllActions:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->refreshActionTypes(Landroid/content/Context;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sAllActions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBasicActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, basicActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method private static getDummyActions(Landroid/content/Context;)[Lcom/google/android/voicesearch/actions/VoiceAction;
    .locals 15
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 130
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sDummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sDummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xf

    new-array v14, v0, [Lcom/google/android/voicesearch/actions/VoiceAction;

    new-instance v0, Lcom/google/android/voicesearch/actions/CallContactAction;

    const-string v2, ""

    const-string v4, ""

    move-object v1, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    aput-object v0, v14, v3

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/voicesearch/actions/CallNumberAction;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/voicesearch/actions/CallNumberAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v1, v14, v0

    const/4 v0, 0x2

    new-instance v6, Lcom/google/android/voicesearch/actions/CallBusinessAction;

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v7, p0

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/voicesearch/actions/CallBusinessAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v6, v14, v0

    const/4 v0, 0x3

    new-instance v1, Lcom/google/android/voicesearch/actions/DirectionsToAction;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/voicesearch/actions/DirectionsToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v1, v14, v0

    const/4 v0, 0x4

    new-instance v1, Lcom/google/android/voicesearch/actions/MapOfAction;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/voicesearch/actions/MapOfAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v1, v14, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/google/android/voicesearch/actions/NavigateToAction;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/voicesearch/actions/NavigateToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v1, v14, v0

    const/4 v0, 0x6

    new-instance v6, Lcom/google/android/voicesearch/actions/DisplayContactAction;

    const-string v1, "content://contacts/people"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, ""

    move-object v7, p0

    move-object v9, v5

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/voicesearch/actions/DisplayContactAction;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    aput-object v6, v14, v0

    const/4 v0, 0x7

    new-instance v1, Lcom/google/android/voicesearch/actions/PostBuzzAction;

    invoke-direct {v1, p0, v3}, Lcom/google/android/voicesearch/actions/PostBuzzAction;-><init>(Landroid/content/Context;Z)V

    aput-object v1, v14, v0

    const/16 v0, 0x8

    new-instance v6, Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v7, p0

    move v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v6, v14, v0

    const/16 v0, 0x9

    new-instance v6, Lcom/google/android/voicesearch/actions/SendEmailAction;

    new-instance v8, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v8}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>()V

    new-instance v9, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v9}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>()V

    new-instance v10, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v10}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>()V

    new-instance v11, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v1, ""

    invoke-direct {v11, v1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    new-instance v12, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v1, ""

    invoke-direct {v12, v1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    move-object v7, p0

    move v13, v3

    invoke-direct/range {v6 .. v13}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    .local v6, sendEmail:Lcom/google/android/voicesearch/actions/SendEmailAction;
    aput-object v6, v14, v0

    const/16 v0, 0xa

    new-instance v1, Lcom/google/android/voicesearch/actions/SendSmsAction;

    new-instance v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v2}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>()V

    new-instance v4, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v7, ""

    invoke-direct {v4, v7}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/google/android/voicesearch/actions/SendSmsAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    aput-object v1, v14, v0

    const/16 v0, 0xb

    new-instance v1, Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    invoke-direct {v1, p0, v6, v5, v3}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/SendEmailAction;Landroid/net/Uri;Z)V

    aput-object v1, v14, v0

    const/16 v0, 0xc

    new-instance v1, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    new-instance v2, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, p0, v3, v2, v3}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/TextValue;Z)V

    aput-object v1, v14, v0

    const/16 v0, 0xd

    new-instance v7, Lcom/google/android/voicesearch/actions/GoToAction;

    const-string v9, "Google"

    const-string v10, "www.google.com"

    const-string v11, "http://www.google.com"

    move-object v8, p0

    move v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/android/voicesearch/actions/GoToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v14, v0

    const/16 v0, 0xe

    new-instance v1, Lcom/google/android/voicesearch/actions/ListenToAction;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/voicesearch/actions/ListenToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v1, v14, v0

    sput-object v14, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sDummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;

    move-object v0, v14

    goto/16 :goto_0
.end method

.method private static getHintData(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voicesearch/actions/VoiceAction;Z)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 5
    .parameter "context"
    .parameter "language"
    .parameter "action"
    .parameter "returnLongHints"

    .prologue
    const/4 v4, 0x0

    .line 158
    const/4 v1, 0x0

    .line 161
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 162
    const-string v2, "_long_hint_"

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3, v4}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    :cond_0
    if-nez v1, :cond_1

    .line 168
    const-string v2, "_hint_"

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3, v4}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/google/android/voicesearch/Hints$HintData;

    invoke-direct {v2, v1, v0}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static getHintsForSupportedActions(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .parameter "context"
    .parameter "language"
    .parameter "returnLongHints"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getDummyActions(Landroid/content/Context;)[Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v0

    .line 117
    .local v0, dummyActions:[Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getSupportedActionTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, supportedActions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/voicesearch/Hints$HintData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 121
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 122
    .local v4, type:Ljava/lang/Integer;
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    aget-object v5, v0, v1

    invoke-static {p0, p1, v5, p2}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getHintData(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voicesearch/actions/VoiceAction;Z)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v4           #type:Ljava/lang/Integer;
    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getSupportedActionTypes(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-class v1, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sSupportedActions:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->refreshActionTypes(Landroid/content/Context;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sSupportedActions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized refreshActionTypes(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 181
    const-class v6, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v2

    .line 183
    .local v2, device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sAllActions:Ljava/util/List;

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sSupportedActions:Ljava/util/List;

    .line 185
    invoke-static {p0}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getDummyActions(Landroid/content/Context;)[Lcom/google/android/voicesearch/actions/VoiceAction;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/voicesearch/actions/VoiceAction;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 186
    .local v0, action:Lcom/google/android/voicesearch/actions/VoiceAction;
    sget-object v5, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sAllActions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v0, p0, v2}, Lcom/google/android/voicesearch/actions/VoiceAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    sget-object v5, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->sSupportedActions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v0           #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_1
    monitor-exit v6

    return-void

    .line 181
    .end local v1           #arr$:[Lcom/google/android/voicesearch/actions/VoiceAction;
    .end local v2           #device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
