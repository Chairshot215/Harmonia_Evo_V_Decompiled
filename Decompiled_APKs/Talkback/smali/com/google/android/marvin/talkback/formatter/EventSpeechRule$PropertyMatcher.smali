.class Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;
.super Ljava/lang/Object;
.source "EventSpeechRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyMatcher"
.end annotation


# static fields
.field private static final GREATER_THAN:Ljava/lang/String; = ">"

.field private static final GREATER_THAN_OR_EQUAL:Ljava/lang/String; = ">="

.field private static final LESS_THAN:Ljava/lang/String; = "<"

.field private static final LESS_THAN_OR_EQUAL:Ljava/lang/String; = "<="

.field private static final PATTERN_GREATER_THAN:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_GREATER_THAN_OR_EQUAL:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_LESS_THAN:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_LESS_THAN_OR_EQUAL:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_OR:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_SPLIT_OR:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_STRING_FLOAT:Ljava/lang/String; = "(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

.field private static final TYPE_EQUALS:I = 0x0

.field private static final TYPE_GREATER_THAN:I = 0x4

.field private static final TYPE_GREATER_THAN_OR_EQUAL:I = 0x2

.field private static final TYPE_LESS_THAN:I = 0x3

.field private static final TYPE_LESS_THAN_OR_EQUAL:I = 0x1

.field private static final TYPE_OR:I = 0x5


# instance fields
.field private final mAcceptedValues:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mPropertyName:Ljava/lang/String;

.field private final mPropertyType:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1067
    const-string v0, "(\\s)*<=(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_LESS_THAN_OR_EQUAL:Ljava/util/regex/Pattern;

    .line 1073
    const-string v0, "(\\s)*>=(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_GREATER_THAN_OR_EQUAL:Ljava/util/regex/Pattern;

    .line 1079
    const-string v0, "(\\s)*<(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_LESS_THAN:Ljava/util/regex/Pattern;

    .line 1085
    const-string v0, "(\\s)*>(\\s)*([+-])?((\\d)+(\\.(\\d)+)?|\\.(\\d)+)(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_GREATER_THAN:Ljava/util/regex/Pattern;

    .line 1091
    const-string v0, "(.)+\\|\\|(.)+(\\|\\|(.)+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_OR:Ljava/util/regex/Pattern;

    .line 1096
    const-string v0, "(\\s)*\\|\\|(\\s)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_SPLIT_OR:Ljava/util/regex/Pattern;

    .line 1023
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "propertyName"
    .parameter "acceptedValue"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mContext:Landroid/content/Context;

    .line 1150
    iput-object p2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyName:Ljava/lang/String;

    .line 1151
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->getPropertyType(Ljava/lang/String;)I
    invoke-static {p2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$10(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyType:I

    .line 1153
    if-nez p3, :cond_1

    .line 1154
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    .line 1155
    iput v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    iget v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyType:I

    if-eq v8, v9, :cond_2

    .line 1160
    iget v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyType:I

    if-eq v8, v10, :cond_2

    move v4, v6

    .line 1162
    .local v4, isNumericPropertyType:Z
    :goto_1
    if-eqz v4, :cond_3

    .line 1163
    sget-object v8, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_LESS_THAN_OR_EQUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1164
    iput v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1165
    const-string v8, "<="

    invoke-virtual {p3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1166
    .local v2, fromIndex:I
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, valueString:Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    .line 1168
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1167
    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    goto :goto_0

    .end local v2           #fromIndex:I
    .end local v4           #isNumericPropertyType:Z
    .end local v5           #valueString:Ljava/lang/String;
    :cond_2
    move v4, v7

    .line 1160
    goto :goto_1

    .line 1170
    .restart local v4       #isNumericPropertyType:Z
    :cond_3
    if-eqz v4, :cond_4

    .line 1171
    sget-object v8, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_GREATER_THAN_OR_EQUAL:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1172
    iput v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1173
    const-string v8, ">="

    invoke-virtual {p3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1174
    .restart local v2       #fromIndex:I
    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1175
    .restart local v5       #valueString:Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    .line 1176
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1175
    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    goto :goto_0

    .line 1178
    .end local v2           #fromIndex:I
    .end local v5           #valueString:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 1179
    sget-object v8, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_LESS_THAN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1180
    iput v10, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1181
    const-string v8, "<"

    invoke-virtual {p3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1182
    .restart local v2       #fromIndex:I
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1183
    .restart local v5       #valueString:Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    .line 1184
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1183
    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 1186
    .end local v2           #fromIndex:I
    .end local v5           #valueString:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1187
    sget-object v8, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_GREATER_THAN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1188
    const/4 v8, 0x4

    iput v8, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1189
    const-string v8, ">"

    invoke-virtual {p3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1190
    .restart local v2       #fromIndex:I
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1191
    .restart local v5       #valueString:Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    .line 1192
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, v5}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1191
    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    goto/16 :goto_0

    .line 1194
    .end local v2           #fromIndex:I
    .end local v5           #valueString:Ljava/lang/String;
    :cond_6
    sget-object v8, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_OR:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1195
    const/4 v6, 0x5

    iput v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1196
    sget-object v6, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->PATTERN_SPLIT_OR:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, acceptedValues:[Ljava/lang/String;
    array-length v6, v0

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    .line 1198
    const/4 v3, 0x0

    .local v3, i:I
    array-length v1, v0

    .local v1, count:I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 1199
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    aget-object v7, v0, v3

    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, v7}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1198
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1202
    .end local v0           #acceptedValues:[Ljava/lang/String;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_7
    iput v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    .line 1203
    new-array v7, v7, [Ljava/lang/Object;

    .line 1204
    #calls: Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->parsePropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;
    invoke-static {p2, p3}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule;->access$11(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object v8

    aput-object v8, v7, v6

    .line 1203
    iput-object v7, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private acceptClassNameProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "eventClassName"
    .parameter "eventPackageName"
    .parameter "filteringPackageName"

    .prologue
    const/4 v4, 0x0

    .line 1253
    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_0

    .line 1272
    :goto_1
    return v4

    .line 1253
    :cond_0
    aget-object v0, v6, v5

    .local v0, acceptedValue:Ljava/lang/Object;
    move-object v3, v0

    .line 1254
    check-cast v3, Ljava/lang/String;

    .line 1257
    .local v3, filteringClassName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1258
    const/4 v4, 0x1

    goto :goto_1

    .line 1262
    :cond_1
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v3, p3}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v2

    .line 1265
    .local v2, filteringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mContext:Landroid/content/Context;

    .line 1266
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1265
    invoke-virtual {v8, v9, v10, p2}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v1

    .line 1268
    .local v1, eventClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1269
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    goto :goto_1

    .line 1253
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private acceptComparableProperty(Ljava/lang/Comparable;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Comparable",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, value:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TT;>;"
    .local p2, accepted:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1306
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 1308
    .local v0, result:I
    iget v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 1318
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    .line 1310
    :pswitch_0
    if-lez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1312
    :pswitch_1
    if-gez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1314
    :pswitch_2
    if-ltz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1316
    :pswitch_3
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1318
    goto :goto_0

    .line 1308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private acceptProperty(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 1281
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1285
    .end local p1
    :cond_0
    iget v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1286
    :cond_1
    iget-object v3, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    .line 1301
    :goto_1
    return v1

    .line 1286
    :cond_2
    aget-object v0, v3, v2

    .line 1287
    .local v0, acceptedValue:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1288
    const/4 v1, 0x1

    goto :goto_1

    .line 1286
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    .end local v0           #acceptedValue:Ljava/lang/Object;
    :cond_4
    iget v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1299
    :pswitch_0
    check-cast p1, Ljava/lang/Float;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Float;

    invoke-direct {p0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->acceptComparableProperty(Ljava/lang/Comparable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 1297
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->acceptComparableProperty(Ljava/lang/Comparable;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 1295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public varargs accept(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"
    .parameter "arguments"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1221
    iget-object v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 1242
    .end local p1
    :goto_0
    return v3

    .line 1225
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    .line 1226
    iget v5, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 1227
    const-string p1, ""

    .line 1233
    .end local p1
    :cond_1
    const-string v5, "className"

    iget-object v6, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, p1

    .line 1234
    check-cast v0, Ljava/lang/String;

    .line 1235
    .local v0, eventClassName:Ljava/lang/String;
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/String;

    .line 1236
    .local v1, eventPackageName:Ljava/lang/String;
    aget-object v2, p2, v3

    check-cast v2, Ljava/lang/String;

    .line 1238
    .local v2, filteringPackageName:Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->acceptClassNameProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .end local v0           #eventClassName:Ljava/lang/String;
    .end local v1           #eventPackageName:Ljava/lang/String;
    .end local v2           #filteringPackageName:Ljava/lang/String;
    .restart local p1
    :cond_2
    move v3, v4

    .line 1229
    goto :goto_0

    .line 1242
    .end local p1
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->acceptProperty(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getAcceptedValues()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$PropertyMatcher;->mAcceptedValues:[Ljava/lang/Object;

    return-object v0
.end method
