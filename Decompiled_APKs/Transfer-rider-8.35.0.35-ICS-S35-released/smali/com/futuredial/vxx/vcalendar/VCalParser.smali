.class public Lcom/futuredial/vxx/vcalendar/VCalParser;
.super Ljava/lang/Object;
.source "VCalParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCalParser"

.field public static final VERSION_VCALENDAR10:Ljava/lang/String; = "vcalendar1.0"

.field public static final VERSION_VCALENDAR20:Ljava/lang/String; = "vcalendar2.0"

.field public static mbTODO:Z


# instance fields
.field private mParser:Lcom/futuredial/vxx/VParser;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mbTODO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mParser:Lcom/futuredial/vxx/VParser;

    .line 41
    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private TransformNodeToItemVCalendar(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V
    .locals 12
    .parameter "objVxxConfig"
    .parameter "node"
    .parameter "item"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 179
    iget-object v7, p2, Lcom/futuredial/vxx/VNode;->VName:Ljava/lang/String;

    const-string v8, "VEVENT"

    if-ne v7, v8, :cond_2

    .line 181
    sput-boolean v10, Lcom/futuredial/vxx/vcalendar/VCalParser;->mbTODO:Z

    .line 182
    iget-object v7, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v8, "BEGIN"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 183
    .local v1, fieldID:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 199
    .end local v1           #fieldID:Ljava/lang/Integer;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p2, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 201
    iget-object v7, p2, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/futuredial/vxx/PropertyNode;

    .line 202
    .local v6, propnode:Lcom/futuredial/vxx/PropertyNode;
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v9, :cond_3

    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v2           #i:I
    .end local v6           #propnode:Lcom/futuredial/vxx/PropertyNode;
    :cond_2
    iget-object v7, p2, Lcom/futuredial/vxx/VNode;->VName:Ljava/lang/String;

    const-string v8, "VTODO"

    if-ne v7, v8, :cond_0

    .line 191
    sput-boolean v9, Lcom/futuredial/vxx/vcalendar/VCalParser;->mbTODO:Z

    .line 192
    iget-object v7, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    const-string v8, "BEGIN"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    .restart local v1       #fieldID:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_0

    .line 206
    .end local v1           #fieldID:Ljava/lang/Integer;
    .restart local v2       #i:I
    .restart local v6       #propnode:Lcom/futuredial/vxx/PropertyNode;
    :cond_3
    iget-object v7, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 207
    .local v3, iFieldID:Ljava/lang/Integer;
    if-nez v3, :cond_4

    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "RRULE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "AALARM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "DALARM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 215
    :cond_4
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "RRULE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    .line 217
    new-instance v5, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;

    invoke-direct {v5}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;-><init>()V

    .line 218
    .local v5, objRecur:Lcom/futuredial/vxx/vcalendar/VCalRecurrence;
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->InitRecurrence(Ljava/lang/String;)Z

    .line 219
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    iget-object v8, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8, p3}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->AddRecurrenceToItem(Ljava/lang/String;Ljava/util/HashMap;Lcom/futuredial/publicobj/Item;)V

    goto :goto_2

    .line 221
    .end local v5           #objRecur:Lcom/futuredial/vxx/vcalendar/VCalRecurrence;
    :cond_5
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "AALARM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "DALARM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 224
    :cond_6
    new-instance v4, Lcom/futuredial/vxx/vcalendar/VCalAlarm;

    invoke-direct {v4}, Lcom/futuredial/vxx/vcalendar/VCalAlarm;-><init>()V

    .line 225
    .local v4, objAlarm:Lcom/futuredial/vxx/vcalendar/VCalAlarm;
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->InitVCalAlarm(Ljava/lang/String;)Z

    .line 226
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    iget-object v8, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalTagToID:Ljava/util/HashMap;

    invoke-virtual {v4, v7, v8, p3}, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->AddVCalAlarmToItem(Ljava/lang/String;Ljava/util/HashMap;Lcom/futuredial/publicobj/Item;)V

    goto/16 :goto_2

    .line 228
    .end local v4           #objAlarm:Lcom/futuredial/vxx/vcalendar/VCalAlarm;
    :cond_7
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "STATUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_9

    .line 230
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    .line 232
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 236
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 239
    :cond_9
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "CLASS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c

    .line 241
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "PRIVATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    .line 243
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 245
    :cond_a
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "PUBLIC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_b

    .line 247
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 251
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 254
    :cond_c
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "CATEGORIES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "X-EPOCAGENDAENTRYTYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    .line 257
    :cond_d
    iget-object v7, p1, Lcom/futuredial/vxx/VxxConfig;->hmVCalCategoryToID:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 258
    .local v0, categoryID:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 263
    .end local v0           #categoryID:Ljava/lang/Integer;
    :cond_e
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v8, "PRIORITY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_11

    .line 265
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    .line 267
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 269
    :cond_f
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_10

    .line 271
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 273
    :cond_10
    iget-object v7, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 275
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 280
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v6, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {p3, v7, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 283
    .end local v3           #iFieldID:Ljava/lang/Integer;
    .end local v6           #propnode:Lcom/futuredial/vxx/PropertyNode;
    :cond_12
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 4
    .parameter "vcalStr"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, versionIdx:I
    const-string v2, "vcalendar1.0"

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 163
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 164
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, versionStr:Ljava/lang/String;
    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 170
    .end local v0           #versionIdx:I
    .end local v1           #versionStr:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    new-instance v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;

    invoke-direct {v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V10;-><init>()V

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mParser:Lcom/futuredial/vxx/VParser;

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Lcom/futuredial/vxx/vcalendar/VCalParser_V20;

    invoke-direct {v2}, Lcom/futuredial/vxx/vcalendar/VCalParser_V20;-><init>()V

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mParser:Lcom/futuredial/vxx/VParser;

    .line 174
    :cond_2
    return-void
.end method

.method private parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z
    .locals 5
    .parameter "vcalendarStr"
    .parameter "builder"
    .parameter "bVerifyVCal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser;->judgeVersion(Ljava/lang/String;)V

    .line 53
    if-eqz p3, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcalendar/VCalParser;->verifyVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mParser:Lcom/futuredial/vxx/VParser;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-virtual {v2, v3, v4, p2}, Lcom/futuredial/vxx/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z

    move-result v1

    .line 63
    .local v1, isSuccess:Z
    if-nez v1, :cond_2

    .line 64
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcalendar1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "VCalParser"

    const-string v3, "Parse failed for vCal 1.0 parser. Try to use 2.0 parser."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "vcalendar2.0"

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalParser;->mVersion:Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/vxx/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z

    move-result v2

    .line 76
    :goto_0
    return v2

    .line 71
    :cond_1
    new-instance v2, Lcom/futuredial/vxx/vcalendar/VCalException;

    const-string v3, "parse failed.(even use 2.0 parser)"

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #isSuccess:Z
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/futuredial/vxx/vcalendar/VCalException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/futuredial/vxx/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #isSuccess:Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private verifyVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "vcalStr"

    .prologue
    const/16 v13, 0x3d

    const/16 v12, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 87
    const-string v9, "\r\n"

    const-string v10, "\n"

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, strlist:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v3, replacedStr:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 92
    .local v1, bQuotedPrintable:Z
    const/4 v0, 0x0

    .line 93
    .local v0, bEndByEqual:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_d

    .line 94
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 96
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    aget-object v9, v6, v2

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1

    .line 98
    aget-object v9, v6, v2

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, strTemp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_0

    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .end local v5           #strTemp:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    aget-object v5, v6, v2

    .line 106
    .restart local v5       #strTemp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_2

    .line 107
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x0

    .line 112
    goto :goto_1

    .line 114
    .end local v5           #strTemp:Ljava/lang/String;
    :cond_3
    aget-object v9, v6, v2

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_4

    aget-object v9, v6, v2

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    aget-object v9, v6, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_8

    .line 115
    :cond_4
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v6, v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_5

    .line 116
    aget-object v9, v6, v2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_5
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 120
    aget-object v9, v6, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_6

    .line 121
    aget-object v9, v6, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 124
    :cond_6
    aget-object v9, v6, v2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 128
    :cond_7
    aget-object v9, v6, v2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 131
    :cond_8
    aget-object v9, v6, v2

    aget-object v10, v6, v2

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, sPropNameAndParam:Ljava/lang/String;
    const-string v9, "QUOTED-PRINTABLE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    move v1, v8

    .line 133
    :goto_2
    if-eqz v1, :cond_9

    .line 135
    aget-object v9, v6, v2

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_b

    move v0, v7

    .line 137
    :cond_9
    :goto_3
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 139
    aget-object v9, v6, v2

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    move v1, v7

    .line 132
    goto :goto_2

    :cond_b
    move v0, v8

    .line 135
    goto :goto_3

    .line 143
    :cond_c
    aget-object v9, v6, v2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 147
    .end local v4           #sPropNameAndParam:Ljava/lang/String;
    :cond_d
    const-string v7, "VCalParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After verify:\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public ParseOneVCalendar(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;Z)Z
    .locals 8
    .parameter "objVxxConfig"
    .parameter "vcalendarStr"
    .parameter "item"
    .parameter "bVerifyVCal"

    .prologue
    const/4 v5, 0x0

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, bRet:Z
    sput-boolean v5, Lcom/futuredial/vxx/vcalendar/VCalParser;->mbTODO:Z

    .line 291
    :try_start_0
    iget-object v5, p1, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCal:Ljava/lang/String;

    sput-object v5, Lcom/futuredial/vxx/VDataBuilder;->sDefaultCharsetForQP:Ljava/lang/String;

    .line 292
    new-instance v1, Lcom/futuredial/vxx/VDataBuilder;

    iget-object v5, p1, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCal:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/futuredial/vxx/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 293
    .local v1, builder:Lcom/futuredial/vxx/VDataBuilder;
    const-string v5, "VCalParser::ParseOneVCalendar"

    const-string v6, "begin to parse vcalendar"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p2, v1, p4}, Lcom/futuredial/vxx/vcalendar/VCalParser;->parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z

    move-result v0

    .line 295
    if-eqz v0, :cond_0

    .line 297
    const-string v5, "VCalParser::ParseOneVCalendar"

    const-string v6, "succeed in parsing vcalendar"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, v1, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 301
    iget-object v5, v1, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/vxx/VNode;

    .line 302
    .local v4, node:Lcom/futuredial/vxx/VNode;
    invoke-direct {p0, p1, v4, p3}, Lcom/futuredial/vxx/vcalendar/VCalParser;->TransformNodeToItemVCalendar(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V

    .line 299
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v3           #i:I
    .end local v4           #node:Lcom/futuredial/vxx/VNode;
    :cond_0
    const-string v5, "VCalParser::ParseOneVCalendar"

    const-string v6, "fail in parsing vcalendar"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/futuredial/vxx/vcalendar/VCalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1           #builder:Lcom/futuredial/vxx/VDataBuilder;
    :cond_1
    :goto_1
    return v0

    .line 310
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Lcom/futuredial/vxx/vcalendar/VCalException;
    const-string v5, "VCalParser::ParseOneVCalendar"

    invoke-virtual {v2}, Lcom/futuredial/vxx/vcalendar/VCalException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/futuredial/vxx/vcalendar/VCalException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v0, 0x0

    goto :goto_1
.end method
