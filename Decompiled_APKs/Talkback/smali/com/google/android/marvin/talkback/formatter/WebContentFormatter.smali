.class public final Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;
.super Ljava/lang/Object;
.source "WebContentFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final XML_TEMPLATE:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><div>%s</div>"

.field private static sAxisNames:[Ljava/lang/String;


# instance fields
.field private final mCloseTagPattern:Ljava/util/regex/Pattern;

.field private mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

.field private final mStripDivSpanPattern:Ljava/util/regex/Pattern;

.field private final mStripEntitiesPattern:Ljava/util/regex/Pattern;

.field private final mStripMarkupPattern:Ljava/util/regex/Pattern;

.field private final mTempAction:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "<(.)+?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripMarkupPattern:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "&(.)+?;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripEntitiesPattern:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "</?(div|span).*?>"

    .line 73
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripDivSpanPattern:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "(<(img|input|br).+?)>"

    .line 79
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mCloseTagPattern:Ljava/util/regex/Pattern;

    .line 84
    iput-object v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

    .line 86
    new-instance v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    invoke-direct {v0, p0, v2}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;-><init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mTempAction:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    .line 44
    return-void
.end method

.method private getAxisAnnouncement(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "axisCode"

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->sAxisNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 162
    const v2, 0x7f09007f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 163
    const v2, 0x7f090080

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 164
    const v2, 0x7f090081

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 165
    const v2, 0x7f090084

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 166
    const v2, 0x7f090085

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 167
    const v2, 0x7f090086

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 168
    const v2, 0x7f090087

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 169
    const v2, 0x7f090088

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 160
    sput-object v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->sAxisNames:[Ljava/lang/String;

    .line 173
    :cond_0
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->sAxisNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0
.end method

.method private static loadMapFromStringArrays(Landroid/content/Context;II)Ljava/util/Map;
    .locals 7
    .parameter "context"
    .parameter "keysResource"
    .parameter "valuesResource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 188
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, keys:[Ljava/lang/String;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, values:[Ljava/lang/String;
    array-length v5, v1

    array-length v6, v4

    if-eq v5, v6, :cond_0

    .line 192
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Array size mismatch"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-lt v0, v5, :cond_1

    .line 201
    return-object v2

    .line 198
    :cond_1
    aget-object v5, v1, v0

    aget-object v6, v4, v0

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cleanMarkup(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "markup"

    .prologue
    .line 144
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripDivSpanPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, noDivOrSpan:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripEntitiesPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, noEntities:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mCloseTagPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "$1/>"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, tagsClosed:Ljava/lang/String;
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><div>%s</div>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 15
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 92
    .local v5, contentDescription:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 93
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mTempAction:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    .line 94
    .local v1, action:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->init(Ljava/lang/String;)V

    .line 96
    iget-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mTempAction:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;

    #getter for: Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mActionCode:I
    invoke-static {v13}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->access$1(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I

    move-result v2

    .line 97
    .local v2, actionCode:I
    const/4 v13, 0x3

    if-ne v2, v13, :cond_0

    .line 99
    #getter for: Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mSecondArgument:I
    invoke-static {v1}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->access$2(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I

    move-result v13

    .line 98
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->getAxisAnnouncement(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, axisAnnouncement:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/4 v13, 0x1

    .line 134
    .end local v1           #action:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;
    .end local v2           #actionCode:I
    .end local v3           #axisAnnouncement:Ljava/lang/String;
    :goto_0
    return v13

    .line 107
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventAggregateText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, markup:Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mStripMarkupPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, noTags:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->cleanMarkup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, cleaned:Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

    if-nez v13, :cond_1

    .line 113
    const v13, 0x7f060002

    .line 114
    const v14, 0x7f060003

    .line 113
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->loadMapFromStringArrays(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v7

    .line 116
    .local v7, htmlInputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v13, 0x7f060004

    .line 117
    const v14, 0x7f060005

    .line 116
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->loadMapFromStringArrays(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v8

    .line 119
    .local v8, htmlRoleMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v13, 0x7f060006

    .line 120
    const v14, 0x7f060007

    .line 119
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->loadMapFromStringArrays(Landroid/content/Context;II)Ljava/util/Map;

    move-result-object v9

    .line 122
    .local v9, htmlTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Lcom/google/android/marvin/utils/WebContentHandler;

    invoke-direct {v13, v7, v8, v9}, Lcom/google/android/marvin/utils/WebContentHandler;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

    .line 126
    .end local v7           #htmlInputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #htmlRoleMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #htmlTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    iget-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

    invoke-static {v4, v13}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 127
    iget-object v13, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;->mHtmlHandler:Lcom/google/android/marvin/utils/WebContentHandler;

    invoke-virtual {v13}, Lcom/google/android/marvin/utils/WebContentHandler;->getOutput()Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, speech:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v12           #speech:Ljava/lang/String;
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v6

    .line 130
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 131
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
