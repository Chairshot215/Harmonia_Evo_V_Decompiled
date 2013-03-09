.class public Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.super Ljava/lang/Object;
.source "EventSpeechRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;,
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;,
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;,
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;,
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$Pair;,
        Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
    }
.end annotation


# static fields
.field private static final COLON:Ljava/lang/String; = ":"

.field private static final NODE_NAME_CUSTOM:Ljava/lang/String; = "custom"

.field private static final NODE_NAME_FILTER:Ljava/lang/String; = "filter"

.field private static final NODE_NAME_FORMATTER:Ljava/lang/String; = "formatter"

.field private static final NODE_NAME_METADATA:Ljava/lang/String; = "metadata"

.field private static final PROPERTY_ADDED_COUNT:Ljava/lang/String; = "addedCount"

.field private static final PROPERTY_BEFORE_TEXT:Ljava/lang/String; = "beforeText"

.field private static final PROPERTY_CHECKED:Ljava/lang/String; = "checked"

.field private static final PROPERTY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final PROPERTY_CONTENT_DESCRIPTION:Ljava/lang/String; = "contentDescription"

.field private static final PROPERTY_CURRENT_ITEM_INDEX:Ljava/lang/String; = "currentItemIndex"

.field private static final PROPERTY_CUSTOM_EARCON:Ljava/lang/String; = "customEarcon"

.field private static final PROPERTY_CUSTOM_VIBRATION:Ljava/lang/String; = "customVibration"

.field private static final PROPERTY_EARCON:Ljava/lang/String; = "earcon"

.field private static final PROPERTY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PROPERTY_EVENT_TIME:Ljava/lang/String; = "eventTime"

.field private static final PROPERTY_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field private static final PROPERTY_FROM_INDEX:Ljava/lang/String; = "fromIndex"

.field private static final PROPERTY_FULL_SCREEN:Ljava/lang/String; = "fullScreen"

.field private static final PROPERTY_ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field private static final PROPERTY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final PROPERTY_PASSWORD:Ljava/lang/String; = "password"

.field private static final PROPERTY_PLATFORM_RELEASE:Ljava/lang/String; = "platformRelease"

.field private static final PROPERTY_PLATFORM_SDK:Ljava/lang/String; = "platformSdk"

.field private static final PROPERTY_QUEUING:Ljava/lang/String; = "queuing"

.field private static final PROPERTY_RECORD_COUNT:Ljava/lang/String; = "recordCount"

.field private static final PROPERTY_REMOVED_COUNT:Ljava/lang/String; = "removedCount"

.field private static final PROPERTY_SCROLLABLE:Ljava/lang/String; = "scrollable"

.field private static final PROPERTY_SCROLL_X:Ljava/lang/String; = "scrollX"

.field private static final PROPERTY_SCROLL_Y:Ljava/lang/String; = "scrollY"

.field private static final PROPERTY_TEXT:Ljava/lang/String; = "text"

.field private static final PROPERTY_TO_INDEX:Ljava/lang/String; = "toIndex"

.field private static final PROPERTY_TYPE_BOOLEAN:I = 0x1

.field private static final PROPERTY_TYPE_FLOAT:I = 0x2

.field private static final PROPERTY_TYPE_INTEGER:I = 0x3

.field private static final PROPERTY_TYPE_STRING:I = 0x4

.field private static final PROPERTY_TYPE_UNKNOWN:I = 0x0

.field private static final PROPERTY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final PROPERTY_VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static final PROPERTY_VIBRATION:Ljava/lang/String; = "vibration"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final UNDEFINED_PACKAGE_NAME:Ljava/lang/String; = "undefined_package_name"

.field private static final mResourceIdentifier:Ljava/util/regex/Pattern;

.field private static final sEventTypeNameToValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sQueueModeNameToQueueModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private mCachedXmlString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCustomEarcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomVibrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEarcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

.field private final mFormatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

.field private final mMetadata:Landroid/os/Bundle;

.field private final mNode:Lorg/w3c/dom/Node;

.field private mPackageName:Ljava/lang/String;

.field private final mPropertyMatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicSourceDir:Ljava/lang/String;

.field private final mRuleIndex:I

.field private final mSpeechStrategy:Ljava/lang/String;

.field private final mVibrationPatterns:Ljava/util/List;
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 118
    const-string v0, "@([\\w\\.]+:)?\\w+/\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mResourceIdentifier:Ljava/util/regex/Pattern;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sTempBuilder:Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    .line 127
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_CLICKED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_LONG_CLICKED"

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_SELECTED"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_FOCUSED"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_TEXT_CHANGED"

    .line 133
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_WINDOW_STATE_CHANGED"

    .line 135
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_NOTIFICATION_STATE_CHANGED"

    .line 137
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_HOVER_ENTER"

    .line 139
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_HOVER_EXIT"

    .line 141
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    .line 143
    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    .line 145
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_WINDOW_CONTENT_CHANGED"

    .line 147
    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_SCROLLED"

    .line 149
    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    .line 151
    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_ANNOUNCEMENT"

    .line 153
    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    .line 155
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    .line 157
    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    const-string v1, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    .line 159
    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sQueueModeNameToQueueModeMap:Ljava/util/HashMap;

    .line 168
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sQueueModeNameToQueueModeMap:Ljava/util/HashMap;

    const-string v1, "INTERRUPT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sQueueModeNameToQueueModeMap:Ljava/util/HashMap;

    const-string v1, "QUEUE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sQueueModeNameToQueueModeMap:Ljava/util/HashMap;

    const-string v1, "UNINTERRUPTIBLE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;I)V
    .locals 9
    .parameter "context"
    .parameter "speechStrategy"
    .parameter "packageName"
    .parameter "publicSourceDird"
    .parameter "node"
    .parameter "ruleIndex"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mMetadata:Landroid/os/Bundle;

    .line 183
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mEarcons:Ljava/util/List;

    .line 189
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mVibrationPatterns:Ljava/util/List;

    .line 195
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomEarcons:Ljava/util/List;

    .line 201
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomVibrations:Ljava/util/List;

    .line 205
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPropertyMatchers:Ljava/util/HashMap;

    .line 264
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    .line 265
    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mSpeechStrategy:Ljava/lang/String;

    .line 266
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPackageName:Ljava/lang/String;

    .line 267
    iput-object p4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPublicSourceDir:Ljava/lang/String;

    .line 268
    iput-object p5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mNode:Lorg/w3c/dom/Node;

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, filter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    const/4 v4, 0x0

    .line 275
    .local v4, formatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    invoke-interface {p5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 276
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_1
    if-lt v5, v2, :cond_1

    .line 293
    iput-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFilter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    .line 294
    iput-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFormatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    .line 295
    iput p6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mRuleIndex:I

    .line 296
    return-void

    .line 266
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #count:I
    .end local v3           #filter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    .end local v4           #formatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    .end local v5           #i:I
    .restart local p3
    :cond_0
    const-string p3, "undefined_package_name"

    goto :goto_0

    .line 277
    .end local p3
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v2       #count:I
    .restart local v3       #filter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    .restart local v4       #formatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    .restart local v5       #i:I
    :cond_1
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 279
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 276
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 283
    :cond_3
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, nodeName:Ljava/lang/String;
    const-string v7, "metadata"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 285
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->populateMetadata(Lorg/w3c/dom/Node;)V

    goto :goto_2

    .line 286
    :cond_4
    const-string v7, "filter"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 287
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->createFilter(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    move-result-object v3

    goto :goto_2

    .line 288
    :cond_5
    const-string v7, "formatter"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 289
    invoke-direct {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->createFormatter(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    move-result-object v4

    goto :goto_2
.end method

.method static synthetic access$0(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 739
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 707
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 447
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-static {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPropertyMatchers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 825
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyValue(Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-static {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getLocalizedTextContent(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mEarcons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mVibrationPatterns:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;)I
    .locals 1
    .parameter

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mRuleIndex:I

    return v0
.end method

.method private createFilter(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    .locals 7
    .parameter "node"

    .prologue
    .line 530
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 533
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 546
    new-instance v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFilter;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Landroid/content/Context;Lorg/w3c/dom/Node;)V

    :goto_1
    return-object v5

    .line 534
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 536
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 533
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    :cond_2
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, nodeName:Ljava/lang/String;
    const-string v5, "custom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 542
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    invoke-direct {p0, v5, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->createNewInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    goto :goto_1
.end method

.method private createFormatter(Lorg/w3c/dom/Node;)Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    .locals 7
    .parameter "node"

    .prologue
    .line 556
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 558
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 571
    new-instance v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;

    invoke-direct {v5, p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$DefaultFormatter;-><init>(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;Lorg/w3c/dom/Node;)V

    :goto_1
    return-object v5

    .line 559
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 561
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 558
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, nodeName:Ljava/lang/String;
    const-string v5, "custom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 567
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    invoke-direct {p0, v5, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->createNewInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    goto :goto_1
.end method

.method private createNewInstance(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 586
    .local p2, expectedClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 588
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 589
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 600
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 606
    :goto_1
    return-object v4

    .line 596
    :cond_0
    new-instance v2, Ldalvik/system/DexFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPublicSourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    .line 597
    .local v2, dexFile:Ldalvik/system/DexFile;
    iget-object v4, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 598
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v2, p1, v0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 601
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #dexFile:Ldalvik/system/DexFile;
    :catch_0
    move-exception v3

    .line 602
    .local v3, e:Ljava/lang/Exception;
    const-class v4, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const/4 v5, 0x6

    const-string v6, "Rule: #%d. Could not load class: \'%s\'."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 603
    iget v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mRuleIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 602
    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static createSpeechRules(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "speechStrategy"
    .parameter "targetPackage"
    .parameter "publicSourceDir"
    .parameter "document"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v10, speechRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;>;"
    if-eqz p4, :cond_0

    if-nez p0, :cond_1

    .line 646
    :cond_0
    return-object v10

    .line 631
    :cond_1
    invoke-interface/range {p4 .. p4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 632
    .local v7, children:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .local v8, count:I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 633
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 634
    .local v5, child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 636
    :try_start_0
    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 637
    invoke-direct/range {v0 .. v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;I)V

    .line 636
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 638
    :catch_0
    move-exception v9

    .line 639
    .local v9, e:Ljava/lang/Exception;
    const-class v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const/4 v1, 0x5

    .line 640
    const-string v2, "Failed loading speech rule: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    const/4 v4, 0x1

    .line 641
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    .line 639
    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getLocalizedTextContent(Landroid/content/Context;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    .line 654
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, textContent:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 657
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 658
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .end local v1           #textContent:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static final getPropertyType(Ljava/lang/String;)I
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 448
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->isBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    .line 450
    :cond_0
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->isFloatProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    const/4 v0, 0x2

    goto :goto_0

    .line 452
    :cond_1
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->isIntegerProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const/4 v0, 0x3

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->isStringProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/4 v0, 0x4

    goto :goto_0

    .line 457
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPropertyValue(Landroid/content/Context;Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/Object;
    .locals 4
    .parameter "context"
    .parameter "property"
    .parameter "event"

    .prologue
    .line 826
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 829
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    const-string v1, "eventType"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 878
    :goto_0
    return-object v1

    .line 831
    :cond_0
    const-string v1, "packageName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 833
    :cond_1
    const-string v1, "className"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 834
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 835
    :cond_2
    const-string v1, "text"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    invoke-static {p3}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 837
    :cond_3
    const-string v1, "beforeText"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 838
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 839
    :cond_4
    const-string v1, "contentDescription"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 840
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 841
    :cond_5
    const-string v1, "eventTime"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 842
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 843
    :cond_6
    const-string v1, "itemCount"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 844
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 845
    :cond_7
    const-string v1, "currentItemIndex"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 846
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 847
    :cond_8
    const-string v1, "fromIndex"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 848
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 849
    :cond_9
    const-string v1, "toIndex"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 850
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 851
    :cond_a
    const-string v1, "scrollable"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 852
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->isScrollable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 853
    :cond_b
    const-string v1, "scrollX"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 854
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 855
    :cond_c
    const-string v1, "scrollY"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 856
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 857
    :cond_d
    const-string v1, "recordCount"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 858
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 859
    :cond_e
    const-string v1, "checked"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 860
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 861
    :cond_f
    const-string v1, "enabled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 862
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 863
    :cond_10
    const-string v1, "fullScreen"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 864
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->isFullScreen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 865
    :cond_11
    const-string v1, "password"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 866
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 867
    :cond_12
    const-string v1, "addedCount"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 868
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 869
    :cond_13
    const-string v1, "removedCount"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 870
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 871
    :cond_14
    const-string v1, "versionCode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 872
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 873
    :cond_15
    const-string v1, "versionName"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 874
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getVersionName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 875
    :cond_16
    const-string v1, "platformRelease"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 876
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 877
    :cond_17
    const-string v1, "platformSdk"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 878
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 880
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown property : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "resName"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 677
    if-nez p1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v3

    .line 681
    :cond_1
    sget-object v5, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mResourceIdentifier:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 683
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 688
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, defaultPackage:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 691
    .local v3, resId:I
    if-nez v3, :cond_0

    .line 692
    const-class v4, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const/4 v5, 0x6

    const-string v6, "Failed to load resource: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #defaultPackage:Ljava/lang/String;
    .end local v3           #resId:I
    :cond_2
    move-object v0, v4

    .line 688
    goto :goto_1
.end method

.method private static getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 708
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sTempBuilder:Ljava/lang/StringBuilder;

    .line 709
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContentRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 712
    return-object v1
.end method

.method private static getTextContentRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "node"
    .parameter "builder"

    .prologue
    .line 723
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 724
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-lt v3, v2, :cond_0

    .line 731
    return-void

    .line 725
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 726
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 727
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_1
    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContentRecursive(Lorg/w3c/dom/Node;Ljava/lang/StringBuilder;)V

    .line 724
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .parameter "node"

    .prologue
    .line 740
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, nodeName:Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, colonIndex:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 743
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    :cond_0
    return-object v1
.end method

.method private static isBooleanProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 516
    const-string v0, "checked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "fullScreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const-string v0, "scrollable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const-string v0, "password"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 516
    goto :goto_0
.end method

.method private static isFloatProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 490
    const-string v0, "eventTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIntegerProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 468
    const-string v0, "eventType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    const-string v0, "itemCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const-string v0, "currentItemIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const-string v0, "fromIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    const-string v0, "toIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    const-string v0, "scrollX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const-string v0, "scrollY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    const-string v0, "recordCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    const-string v0, "addedCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "removedCount"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    const-string v0, "queuing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    const-string v0, "versionCode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "platformSdk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 468
    goto :goto_0
.end method

.method private static isStringProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyName"

    .prologue
    .line 500
    const-string v0, "packageName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string v0, "className"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const-string v0, "beforeText"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    const-string v0, "contentDescription"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    const-string v0, "versionName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "platformRelease"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 500
    goto :goto_0
.end method

.method private static parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 417
    const-string v3, "eventType"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    sget-object v2, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sEventTypeNameToValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 441
    :goto_0
    return-object v2

    .line 421
    :cond_0
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyType(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, propertyType:I
    packed-switch v1, :pswitch_data_0

    .line 443
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown property: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 428
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const-string v4, "Property \'%s\' not float."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v3, v7, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    :pswitch_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 436
    :catch_1
    move-exception v0

    .line 437
    .restart local v0       #nfe:Ljava/lang/NumberFormatException;
    const-class v3, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;

    const-string v4, "Property \'%s\' not int."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v3, v7, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    :pswitch_3
    move-object v2, p1

    .line 441
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateMetadata(Lorg/w3c/dom/Node;)V
    .locals 11
    .parameter "node"

    .prologue
    .line 375
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 376
    .local v3, metadata:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 378
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 406
    return-void

    .line 379
    :cond_0
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 381
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 378
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getUnqualifiedNodeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, unqualifiedName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, textContent:Ljava/lang/String;
    const-string v9, "queuing"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 389
    sget-object v9, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->sQueueModeNameToQueueModeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 390
    .local v4, mode:I
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v9, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 391
    .end local v4           #mode:I
    :cond_2
    const-string v9, "earcon"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 392
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 393
    .local v5, resId:I
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mEarcons:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v5           #resId:I
    :cond_3
    const-string v9, "vibration"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 395
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 396
    .restart local v5       #resId:I
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mVibrationPatterns:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v5           #resId:I
    :cond_4
    const-string v9, "customEarcon"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 398
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomEarcons:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_5
    const-string v9, "customVibration"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 400
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomVibrations:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-static {v10, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getResourceIdentifierContent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 402
    :cond_6
    invoke-static {v7, v6}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 403
    .local v8, value:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v9, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public apply(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 3
    .parameter "event"
    .parameter "utterance"

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFilter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFilter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFormatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFormatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mContext:Landroid/content/Context;

    invoke-interface {v1, p1, v2, p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;->format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 360
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mEarcons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mVibrationPatterns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomEarcons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getCustomVibrations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCustomVibrations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFilter()Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFilter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFilter;

    return-object v0
.end method

.method public getFormatter()Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mFormatter:Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mSpeechStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCachedXmlString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/google/android/marvin/utils/NodeUtils;->asXmlString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCachedXmlString:Ljava/lang/String;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->mCachedXmlString:Ljava/lang/String;

    return-object v0
.end method
